// rde_emotes | js/app.js
// NUI Logic — Category Nav, Search, Favorites, Preview trigger

'use strict';

// ─── State ────────────────────────────────────
const State = {
    emotes:     [],         // alle Emotes
    categories: [],         // Kategorie-Definitionen
    favorites:  new Set(),  // Set von Emote-IDs
    activeId:   null,       // aktuell spielendes Emote
    currentCat: 'favorites',
    searchQuery: '',
    locales:    {},
};

// ─── DOM Refs ─────────────────────────────────
const $ = (id) => document.getElementById(id);
const app         = $('app');
const catNav      = $('catNav');
const emoteGrid   = $('emoteGrid');
const emptyState  = $('emptyState');
const emptyMsg    = $('emptyMsg');
const contentTitle = $('contentTitle');
const contentCount = $('contentCount');
const searchInput = $('searchInput');
const searchClear = $('searchClear');
const stopBtn     = $('stopBtn');
const closeBtn    = $('closeBtn');
const activeBar   = $('activeBar');
const activeLabel = $('activeLabel');

// ─── NUI Bridge ───────────────────────────────
const nuiFetch = (action, data = {}) => fetch(`https://rde_emotes/${action}`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(data),
});

// ─── Message Handler ─────────────────────────
window.addEventListener('message', (e) => {
    const { action, data } = e.data;
    switch (action) {
        case 'open':        onOpen(data);        break;
        case 'close':       onClose();           break;
        case 'setFavorites': onSetFavorites(data); break;
        case 'setActive':   onSetActive(data);   break;
    }
});

function onOpen(data) {
    State.emotes     = data.emotes     || [];
    State.categories = data.categories || [];
    State.locales    = data.locales    || {};

    buildCategoryNav();
    selectCategory('favorites');

    app.classList.remove('hidden');
    searchInput.focus();
}

function onClose() {
    app.classList.add('hidden');
    searchInput.value = '';
    State.searchQuery = '';
}

function onSetFavorites(favMap) {
    // favMap = { emoteId: true/false }
    State.favorites.clear();
    for (const [id, val] of Object.entries(favMap)) {
        if (val) State.favorites.add(id);
    }
    // Update fav counts
    updateCatCount('favorites', State.favorites.size);
    // Re-render if on favorites or update fav buttons
    if (State.currentCat === 'favorites') {
        renderEmotes();
    } else {
        // Update only the fav buttons in current view
        document.querySelectorAll('.fav-btn').forEach(btn => {
            const id = btn.dataset.id;
            btn.classList.toggle('active', State.favorites.has(id));
            btn.textContent = State.favorites.has(id) ? '❤️' : '🤍';
        });
    }
}

function onSetActive(emoteId) {
    State.activeId = emoteId;
    if (emoteId) {
        const emote = State.emotes.find(e => e.id === emoteId);
        activeBar.classList.remove('hidden');
        activeLabel.textContent = emote ? emote.label : emoteId;
    } else {
        activeBar.classList.add('hidden');
    }
    // Update active state on cards
    document.querySelectorAll('.emote-card').forEach(card => {
        card.classList.toggle('active', card.dataset.id === emoteId);
    });
}

// ─── Category Nav ─────────────────────────────
function buildCategoryNav() {
    // Remove dynamic buttons (keep favorites at top)
    document.querySelectorAll('.cat-btn[data-cat]:not([data-cat="favorites"])')
        .forEach(el => el.remove());

    State.categories.forEach(cat => {
        const count = State.emotes.filter(e => e.category === cat.id).length;
        const btn = document.createElement('button');
        btn.className = 'cat-btn';
        btn.dataset.cat = cat.id;
        btn.innerHTML = `
            <span class="cat-icon">${cat.icon}</span>
            <span class="cat-label">${cat.label}</span>
            <span class="cat-count" id="cnt-${cat.id}">${count}</span>
        `;
        btn.addEventListener('click', () => selectCategory(cat.id));
        catNav.insertBefore(btn, catNav.querySelector('.cat-btn:last-child'));
    });

    // Favorites count
    updateCatCount('favorites', State.favorites.size);

    // Favorites button click
    const favBtn = document.querySelector('.cat-btn[data-cat="favorites"]');
    if (favBtn) favBtn.addEventListener('click', () => selectCategory('favorites'));
}

function updateCatCount(catId, count) {
    const el = $(`cnt-${catId}`);
    if (el) el.textContent = count;
}

function selectCategory(catId) {
    State.currentCat = catId;
    State.searchQuery = '';
    searchInput.value = '';
    searchClear.classList.add('hidden');

    // Active state auf Buttons
    document.querySelectorAll('.cat-btn').forEach(btn => {
        btn.classList.toggle('active', btn.dataset.cat === catId);
    });

    // Titel
    if (catId === 'favorites') {
        contentTitle.textContent = State.locales.favorites || 'Favoriten';
    } else {
        const cat = State.categories.find(c => c.id === catId);
        contentTitle.textContent = cat ? `${cat.icon} ${cat.label}` : catId;
    }

    renderEmotes();
}

// ─── Search ───────────────────────────────────
searchInput.addEventListener('input', () => {
    State.searchQuery = searchInput.value.toLowerCase().trim();
    searchClear.classList.toggle('hidden', !State.searchQuery);
    renderEmotes();
});

searchClear.addEventListener('click', () => {
    searchInput.value = '';
    State.searchQuery = '';
    searchClear.classList.add('hidden');
    searchInput.focus();
    renderEmotes();
});

// ─── Render ───────────────────────────────────
function getFilteredEmotes() {
    let list = State.emotes;

    // Kategorie Filter
    if (State.currentCat === 'favorites') {
        list = list.filter(e => State.favorites.has(e.id));
    } else {
        list = list.filter(e => e.category === State.currentCat);
    }

    // Search Filter
    if (State.searchQuery) {
        const q = State.searchQuery;
        list = list.filter(e => {
            if (e.label.toLowerCase().includes(q)) return true;
            if (e.id.toLowerCase().includes(q)) return true;
            if (e.tags && e.tags.some(t => t.toLowerCase().includes(q))) return true;
            return false;
        });
    }

    return list;
}

function renderEmotes() {
    const list = getFilteredEmotes();

    emoteGrid.innerHTML = '';
    contentCount.textContent = `${list.length} Emotes`;

    if (list.length === 0) {
        emoteGrid.classList.add('hidden');
        emptyState.classList.remove('hidden');
        if (State.currentCat === 'favorites' && !State.searchQuery) {
            emptyMsg.textContent = State.locales.no_favorites || 'Noch keine Favoriten';
        } else if (State.searchQuery) {
            emptyMsg.textContent = `${State.locales.no_results?.replace('%s', State.searchQuery) || 'Keine Ergebnisse für "' + State.searchQuery + '"'}`;
        } else {
            emptyMsg.textContent = 'Keine Emotes in dieser Kategorie';
        }
        return;
    }

    emoteGrid.classList.remove('hidden');
    emptyState.classList.add('hidden');

    const frag = document.createDocumentFragment();
    list.forEach(emote => {
        const card = createEmoteCard(emote);
        frag.appendChild(card);
    });
    emoteGrid.appendChild(frag);
}

function createEmoteCard(emote) {
    const isFav    = State.favorites.has(emote.id);
    const isActive = emote.id === State.activeId;

    const card = document.createElement('div');
    card.className = `emote-card${isActive ? ' active' : ''}`;
    card.dataset.id = emote.id;
    card.title = emote.id;

    card.innerHTML = `
        <button class="fav-btn${isFav ? ' active' : ''}" data-id="${emote.id}" title="Zu Favoriten">
            ${isFav ? '❤️' : '🤍'}
        </button>
        <div class="emote-card__label">${emote.label}</div>
        <div class="emote-card__meta">
            ${emote.loop ? '<span class="badge badge-loop">LOOP</span>' : ''}
            ${emote.hasProp ? '<span class="badge badge-prop">PROP</span>' : ''}
        </div>
        <div class="emote-card__play"><span class="play-icon">▶</span></div>
    `;

    // Play on click
    card.addEventListener('click', (e) => {
        if (e.target.classList.contains('fav-btn') || e.target.closest('.fav-btn')) return;
        playEmote(emote.id);
    });

    // Hover → preview
    card.addEventListener('mouseenter', () => {
        nuiFetch('previewEmote', { id: emote.id });
    });
    card.addEventListener('mouseleave', () => {
        // Stoppe preview nur wenn kein Emote aktiv
        if (emote.id !== State.activeId) {
            nuiFetch('previewEmote', { id: null });
        }
    });

    // Fav toggle
    const favBtn = card.querySelector('.fav-btn');
    favBtn.addEventListener('click', (e) => {
        e.stopPropagation();
        nuiFetch('toggleFavorite', { id: emote.id });
    });

    return card;
}

// ─── Actions ──────────────────────────────────
function playEmote(id) {
    State.activeId = id;
    onSetActive(id);
    nuiFetch('playEmote', { id });
}

stopBtn.addEventListener('click', () => {
    State.activeId = null;
    onSetActive(null);
    nuiFetch('stopEmote');
});

closeBtn.addEventListener('click', () => {
    nuiFetch('close');
});

// ESC Key
document.addEventListener('keydown', (e) => {
    if (e.key === 'Escape') nuiFetch('close');
});
