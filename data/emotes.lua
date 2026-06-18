-- rde_emotes | data/emotes.lua
-- VALIDATED: Extracted from rpemotes-reborn v2.1.1
-- Native GTA5 animations only — 487 emotes across 10 categories
-- type="anim" → TaskPlayAnim | type="scenario" → TaskStartScenarioInPlace

Emotes = {}

-- ────────────────────────────────────────────────────────────
-- 💃  DANCE
-- ────────────────────────────────────────────────────────────
Emotes['dance'] = {
    {
        id='dance', label='Dance', loop=true,
        type='anim', dict='anim@amb@nightclub@dancers@podium_dancers@', clip='hi_dance_facedj_17_v2_male^5',
        tags={'dancers','anim','nightclub','musik','tanzen','dance'},
    },
    {
        id='dance2', label='Dance 2', loop=true,
        type='anim', dict='anim@amb@nightclub@mini@dance@dance_solo@male@var_b@', clip='high_center_down',
        tags={'mini','anim','nightclub','dance 2','musik','dance2'},
    },
    {
        id='dance3', label='Dance 3', loop=true,
        type='anim', dict='anim@amb@nightclub@mini@dance@dance_solo@male@var_a@', clip='high_center',
        tags={'dance3','mini','anim','nightclub','musik','tanzen'},
    },
    {
        id='dance4', label='Dance 4', loop=true,
        type='anim', dict='anim@amb@nightclub@mini@dance@dance_solo@male@var_b@', clip='high_center_up',
        tags={'dance 4','dance4','mini','anim','nightclub','musik'},
    },
    {
        id='dance5', label='Dance 5', loop=true,
        type='anim', dict='anim@amb@casino@mini@dance@dance_solo@female@var_a@', clip='med_center',
        tags={'casino','dance 5','mini','anim','dance5','musik'},
    },
    {
        id='dance6', label='Dance 6', loop=true,
        type='anim', dict='misschinese2_crystalmazemcs1_cs', clip='dance_loop_tao',
        tags={'misschinese2','crystalmazemcs1','musik','dance 6','dance6','tanzen'},
    },
    {
        id='dance7', label='Dance 7', loop=true,
        type='anim', dict='misschinese2_crystalmazemcs1_ig', clip='dance_loop_tao',
        tags={'dance 7','misschinese2','crystalmazemcs1','dance7','musik','tanzen'},
    },
    {
        id='dance8', label='Dance 8', loop=true,
        type='anim', dict='missfbi3_sniping', clip='dance_m_default',
        tags={'missfbi3','dance8','musik','sniping','tanzen','dance'},
    },
    {
        id='dance9', label='Dance 9', loop=true,
        type='anim', dict='anim@amb@nightclub@mini@dance@dance_solo@female@var_a@', clip='med_center_up',
        tags={'dance9','dance 9','mini','anim','nightclub','musik'},
    },
    {
        id='dancef', label='Dance F', loop=true,
        type='anim', dict='anim@amb@nightclub@dancers@solomun_entourage@', clip='mi_dance_facedj_17_v1_female^1',
        tags={'dancef','dance f','dancers','anim','nightclub','musik'},
    },
    {
        id='dancef2', label='Dance F2', loop=true,
        type='anim', dict='anim@amb@nightclub@mini@dance@dance_solo@female@var_a@', clip='high_center',
        tags={'dancef2','mini','anim','nightclub','musik','tanzen'},
    },
    {
        id='dancef3', label='Dance F3', loop=true,
        type='anim', dict='anim@amb@nightclub@mini@dance@dance_solo@female@var_a@', clip='high_center_up',
        tags={'dance f3','mini','anim','nightclub','musik','dancef3'},
    },
    {
        id='dancef4', label='Dance F4', loop=true,
        type='anim', dict='anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity', clip='hi_dance_facedj_09_v2_female^1',
        tags={'dance f4','dancers','dancef4','anim','nightclub','musik'},
    },
    {
        id='dancef5', label='Dance F5', loop=true,
        type='anim', dict='anim@amb@nightclub@dancers@crowddance_facedj@hi_intensity', clip='hi_dance_facedj_09_v2_female^3',
        tags={'dancers','dance','dancef5','anim','nightclub','musik'},
    },
    {
        id='dancef6', label='Dance F6', loop=true,
        type='anim', dict='anim@amb@nightclub@mini@dance@dance_solo@female@var_a@', clip='high_center_up',
        tags={'dancef6','mini','anim','nightclub','dance f6','musik'},
    },
    {
        id='danceclub', label='Dance Club', loop=true,
        type='anim', dict='anim@amb@nightclub_island@dancers@beachdance@', clip='hi_idle_a_m03',
        tags={'danceclub','anim','nightclub','island','musik','tanzen'},
    },
    {
        id='danceclubb', label='Dance Club 2', loop=true,
        type='anim', dict='anim@amb@nightclub_island@dancers@beachdance@', clip='hi_idle_a_m05',
        tags={'tanzen','anim','nightclub','island','musik','danceclubb'},
    },
    {
        id='danceclubc', label='Dance Club 3', loop=true,
        type='anim', dict='anim@amb@nightclub_island@dancers@beachdance@', clip='hi_idle_a_m02',
        tags={'island','dance club 3','anim','nightclub','danceclubc','musik'},
    },
    {
        id='danceclubd', label='Dance Club 4', loop=true,
        type='anim', dict='anim@amb@nightclub_island@dancers@beachdance@', clip='hi_idle_b_f01',
        tags={'dance club 4','anim','nightclub','danceclubd','island','musik'},
    },
    {
        id='danceclube', label='Dance Club 5', loop=true,
        type='anim', dict='anim@amb@nightclub_island@dancers@club@', clip='hi_idle_a_f02',
        tags={'island','dance club 5','anim','nightclub','danceclube','musik'},
    },
    {
        id='danceclubf', label='Dance Club 6', loop=true,
        type='anim', dict='anim@amb@nightclub_island@dancers@club@', clip='hi_idle_b_m03',
        tags={'dance','dance club 6','anim','nightclub','island','musik'},
    },
    {
        id='danceclubg', label='Dance Club 7', loop=true,
        type='anim', dict='anim@amb@nightclub_island@dancers@club@', clip='hi_idle_d_f01',
        tags={'dance club 7','danceclubg','anim','nightclub','island','musik'},
    },
    {
        id='danceclubh', label='Dance Club 8', loop=true,
        type='anim', dict='anim@amb@nightclub_island@dancers@crowddance_facedj@', clip='mi_dance_facedj_17_v2_male^4',
        tags={'danceclubh','dance club 8','anim','nightclub','island','musik'},
    },
    {
        id='danceclubi', label='Dance Club 9', loop=true,
        type='anim', dict='anim@amb@nightclub_island@dancers@crowddance_single_props@', clip='mi_dance_prop_13_v1_male^3',
        tags={'danceclubi','dance club 9','anim','nightclub','island','musik'},
    },
    {
        id='danceclubj', label='Dance Club 10', loop=true,
        type='anim', dict='anim@amb@nightclub_island@dancers@crowddance_groups@groupd@', clip='mi_dance_crowd_13_v2_male^1',
        tags={'dance club 10','anim','nightclub','island','musik','tanzen'},
    },
    {
        id='danceclubk', label='Dance Club 11', loop=true,
        type='anim', dict='anim@amb@nightclub_island@dancers@crowddance_facedj@', clip='mi_dance_facedj_15_v2_male^4',
        tags={'dance club 11','danceclubk','anim','nightclub','island','musik'},
    },
    {
        id='danceclubl', label='Dance Club 12', loop=true,
        type='anim', dict='anim@amb@nightclub@mini@dance@dance_solo@female@var_a@', clip='high_center_up',
        tags={'dance club 12','danceclubl','mini','anim','nightclub','musik'},
    },
    {
        id='danceclubm', label='Dance Club 13', loop=true,
        type='anim', dict='anim@amb@nightclub_island@dancers@crowddance_facedj@', clip='hi_dance_facedj_hu_15_v2_male^5',
        tags={'dance club 13','danceclubm','anim','nightclub','island','musik'},
    },
    {
        id='danceclubn', label='Dance Club 14', loop=true,
        type='anim', dict='anim@amb@nightclub_island@dancers@crowddance_facedj@', clip='hi_dance_facedj_hu_17_male^5',
        tags={'dance club 14','danceclubn','anim','nightclub','island','musik'},
    },
    {
        id='danceclubo', label='Dance Club 15', loop=true,
        type='anim', dict='anim@amb@nightclub@mini@dance@dance_solo@shuffle@', clip='high_center',
        tags={'dance club 15','danceclubo','mini','anim','nightclub','musik'},
    },
    {
        id='danceclubp', label='Dance Club 16', loop=true,
        type='anim', dict='anim@amb@nightclub@mini@dance@dance_solo@shuffle@', clip='high_left_down',
        tags={'mini','dance club 16','anim','nightclub','danceclubp','musik'},
    },
    {
        id='danceclubq', label='Dance Club 17', loop=true,
        type='anim', dict='fix_stu_ext-25', clip='a_f_y_studioparty_01_dual-25',
        tags={'dance club 17','ext-25','danceclubq','musik','tanzen','dance'},
    },
    {
        id='danceslow2', label='Dance Slow 2', loop=true,
        type='anim', dict='anim@amb@nightclub@mini@dance@dance_solo@female@var_a@', clip='low_center',
        tags={'danceslow2','mini','dance slow 2','anim','nightclub','musik'},
    },
    {
        id='danceslow3', label='Dance Slow 3', loop=true,
        type='anim', dict='anim@amb@nightclub@mini@dance@dance_solo@female@var_a@', clip='low_center_down',
        tags={'dance slow 3','mini','anim','nightclub','danceslow3','musik'},
    },
    {
        id='danceslow4', label='Dance Slow 4', loop=true,
        type='anim', dict='anim@amb@nightclub@mini@dance@dance_solo@female@var_b@', clip='low_center',
        tags={'mini','danceslow4','anim','nightclub','musik','tanzen'},
    },
    {
        id='danceupper', label='Dance Upper', loop=false,
        type='anim', dict='anim@amb@nightclub@mini@dance@dance_solo@female@var_b@', clip='high_center',
        tags={'dance upper','danceupper','mini','anim','nightclub','musik'},
    },
    {
        id='danceupper2', label='Dance Upper 2', loop=false,
        type='anim', dict='anim@amb@nightclub@mini@dance@dance_solo@female@var_b@', clip='high_center_up',
        tags={'dance upper 2','danceupper2','mini','anim','nightclub','musik'},
    },
    {
        id='danceshy', label='Dance Shy', loop=true,
        type='anim', dict='anim@amb@nightclub@mini@dance@dance_solo@male@var_a@', clip='low_center',
        tags={'mini','anim','nightclub','dance shy','danceshy','musik'},
    },
    {
        id='danceshy2', label='Dance Shy 2', loop=true,
        type='anim', dict='anim@amb@nightclub@mini@dance@dance_solo@female@var_b@', clip='low_center_down',
        tags={'danceshy2','mini','anim','nightclub','musik','tanzen'},
    },
    {
        id='danceshy3', label='Dance Shy 3', loop=true,
        type='anim', dict='anim@amb@nightclub@mini@drinking@bar@player_bartender@idle_a', clip='idle_a',
        tags={'danceshy3','dance','mini','anim','nightclub','musik'},
    },
    {
        id='danceslow', label='Dance Slow', loop=true,
        type='anim', dict='anim@amb@nightclub@mini@dance@dance_solo@male@var_b@', clip='low_center',
        tags={'dance slow','mini','anim','nightclub','danceslow','musik'},
    },
    {
        id='dancesilly1', label='Dance Silly 1', loop=true,
        type='anim', dict='rcmnigel1bnmt_1b', clip='dance_loop_tyler',
        tags={'rcmnigel1bnmt','dancesilly1','dance silly 1','musik','tanzen','dance'},
    },
    {
        id='dancesilly2', label='Dance Silly 2', loop=true,
        type='anim', dict='move_clown@p_m_zero_idles@', clip='fidget_short_dance',
        tags={'zero','clown','move','dance silly 2','musik','dancesilly2'},
    },
    {
        id='dancesilly3', label='Dance Silly 3', loop=true,
        type='anim', dict='move_clown@p_m_two_idles@', clip='fidget_short_dance',
        tags={'idles','move','dance silly 3','musik','clown','tanzen'},
    },
    {
        id='dancesilly4', label='Dance Silly 4', loop=true,
        type='anim', dict='anim@amb@nightclub@lazlow@hi_podium@', clip='danceidle_hi_11_buttwiggle_b_laz',
        tags={'lazlow','dancesilly4','anim','nightclub','musik','tanzen'},
    },
    {
        id='dancesilly7', label='Dance Silly 7', loop=true,
        type='anim', dict='anim@amb@casino@mini@dance@dance_solo@female@var_b@', clip='med_center',
        tags={'casino','dance silly 7','mini','dancesilly7','anim','musik'},
    },
    {
        id='dancesilly8', label='Dance Silly 8', loop=true,
        type='anim', dict='anim@amb@casino@mini@dance@dance_solo@female@var_b@', clip='high_center',
        tags={'casino','dancesilly8','mini','anim','musik','dance silly 8'},
    },
    {
        id='dancesilly10', label='Dance Silly 10', loop=true,
        type='anim', dict='anim@amb@nightclub@lazlow@hi_podium@', clip='danceidle_hi_17_spiderman_laz',
        tags={'dance silly 10','lazlow','anim','nightclub','musik','tanzen'},
    },
    {
        id='dancesilly11', label='Dance Silly 11', loop=true,
        type='anim', dict='anim@amb@nightclub@lazlow@hi_podium@', clip='danceidle_mi_11_pointthrust_laz',
        tags={'lazlow','anim','nightclub','dance silly 11','musik','dancesilly11'},
    },
    {
        id='dancesilly12', label='Dance Silly 12', loop=true,
        type='anim', dict='anim@amb@nightclub@lazlow@hi_podium@', clip='danceidle_hi_17_smackthat_laz',
        tags={'dance silly 12','lazlow','anim','nightclub','dancesilly12','musik'},
    },
    {
        id='danceold', label='Dance Old', loop=true,
        type='anim', dict='anim@mp_player_intupperuncle_disco', clip='idle_a',
        tags={'intupperuncle','dance old','anim','danceold','musik','player'},
    },
    {
        id='dj', label='DJ', loop=false,
        type='anim', dict='anim@amb@nightclub@djs@dixon@', clip='dixn_dance_cntr_open_dix',
        tags={'dixon','anim','dj','nightclub','musik','tanzen'},
    },
    {
        id='dj2', label='DJ 2', loop=true,
        type='anim', dict='anim@amb@nightclub@djs@solomun@', clip='sol_idle_ctr_mid_a_sol',
        tags={'solomun','dj2','anim','nightclub','musik','dj 2'},
    },
    {
        id='dj3', label='DJ 3', loop=true,
        type='anim', dict='anim@amb@nightclub@djs@solomun@', clip='sol_dance_l_sol',
        tags={'dj3','dj 3','solomun','anim','nightclub','musik'},
    },
    {
        id='dj4', label='DJ 4', loop=true,
        type='anim', dict='anim@amb@nightclub@djs@black_madonna@', clip='dance_b_idle_a_blamadon',
        tags={'black','dj 4','anim','nightclub','musik','tanzen'},
    },
    {
        id='dj1', label='DJ 1', loop=true,
        type='anim', dict='anim@amb@nightclub@djs@dixon@', clip='dixn_end_dix',
        tags={'dj1','dj 1','dixon','anim','nightclub','musik'},
    },
    {
        id='dj5', label='DJ 5', loop=true,
        type='anim', dict='anim@amb@nightclub@djs@dixon@', clip='dixn_idle_cntr_a_dix',
        tags={'dj 5','dixon','anim','nightclub','dj5','musik'},
    },
    {
        id='dj6', label='DJ 6', loop=true,
        type='anim', dict='anim@amb@nightclub@djs@dixon@', clip='dixn_idle_cntr_b_dix',
        tags={'dance','dixon','anim','nightclub','dj 6','musik'},
    },
    {
        id='dj7', label='DJ 7', loop=true,
        type='anim', dict='anim@amb@nightclub@djs@dixon@', clip='dixn_idle_cntr_g_dix',
        tags={'dixon','anim','dj7','nightclub','dj 7','musik'},
    },
    {
        id='dj8', label='DJ 8', loop=true,
        type='anim', dict='anim@amb@nightclub@djs@dixon@', clip='dixn_idle_cntr_gb_dix',
        tags={'tanzen','dixon','anim','nightclub','musik','dj8'},
    },
    {
        id='dj9', label='DJ 9', loop=true,
        type='anim', dict='anim@amb@nightclub@djs@dixon@', clip='dixn_sync_cntr_j_dix',
        tags={'dj9','dixon','dj 9','anim','nightclub','musik'},
    },
    {
        id='dj10', label='DJ 10', loop=true,
        type='anim', dict='mini@strip_club@idles@dj@base', clip='base',
        tags={'club','dj 10','mini','dj10','musik','strip'},
    },
    {
        id='dj11', label='DJ 11', loop=true,
        type='anim', dict='mini@strip_club@idles@dj@idle_04', clip='idle_04',
        tags={'club','dj11','dj 11','mini','musik','strip'},
    },
    {
        id='dj12', label='DJ 12', loop=true,
        type='anim', dict='mini@strip_club@idles@dj@idle_02', clip='idle_02',
        tags={'dj12','club','mini','dj 12','musik','strip'},
    },
    {
        id='twerk', label='Twerk', loop=true,
        type='anim', dict='switch@trevor@mocks_lapdance', clip='001443_01_trvs_28_idle_stripper',
        tags={'twerk','switch','trevor','mocks','musik','tanzen'},
    },
    {
        id='lapdance', label='Lapdance', loop=false,
        type='anim', dict='mp_safehouse', clip='lap_dance_girl',
        tags={'lapdance','safehouse','musik','tanzen','dance'},
    },
    {
        id='lapdance2', label='Lapdance 2', loop=true,
        type='anim', dict='mini@strip_club@private_dance@idle', clip='priv_dance_idle',
        tags={'club','lapdance2','lapdance 2','mini','musik','strip'},
    },
    {
        id='lapdance3', label='Lapdance 3', loop=true,
        type='anim', dict='mini@strip_club@private_dance@part1', clip='priv_dance_p1',
        tags={'club','dance','mini','lapdance3','musik','strip'},
    },
    {
        id='lapdance4', label='Lapdance 4', loop=true,
        type='anim', dict='mini@strip_club@private_dance@part2', clip='priv_dance_p2',
        tags={'lapdance 4','club','mini','lapdance4','musik','strip'},
    },
    {
        id='lapdance5', label='Lapdance 5', loop=true,
        type='anim', dict='mini@strip_club@private_dance@part3', clip='priv_dance_p3',
        tags={'club','lapdance 5','lapdance5','mini','musik','strip'},
    },
    {
        id='lapdancewith', label='Lapdance With', loop=true,
        type='anim', dict='mini@strip_club@lap_dance_2g@ld_2g_p3', clip='ld_2g_p3_s2',
        tags={'lapdancewith','club','mini','musik','strip','tanzen'},
    },
    {
        id='lapdancewith2', label='Lapdance With2', loop=true,
        type='anim', dict='mini@strip_club@lap_dance_2g@ld_2g_p2', clip='ld_2g_p2_s2',
        tags={'club','lapdance with2','mini','musik','lapdancewith2','strip'},
    },
    {
        id='lapdancewith3', label='Lapdance With3', loop=true,
        type='anim', dict='mini@strip_club@lap_dance_2g@ld_2g_p1', clip='ld_2g_p1_s2',
        tags={'club','lapdancewith3','lapdance with3','mini','musik','strip'},
    },
    {
        id='lapchair', label='Lap Chair', loop=true,
        type='anim', dict='mini@strip_club@lap_dance@ld_girl_a_song_a_p1', clip='ld_girl_a_song_a_p1_f',
        tags={'lapchair','club','mini','lap chair','musik','strip'},
    },
    {
        id='lapchair2', label='Lap Chair2', loop=true,
        type='anim', dict='mini@strip_club@lap_dance@ld_girl_a_song_a_p2', clip='ld_girl_a_song_a_p2_f',
        tags={'lap chair2','club','mini','lapchair2','musik','strip'},
    },
    {
        id='lapchair3', label='Lap Chair3', loop=true,
        type='anim', dict='mini@strip_club@lap_dance@ld_girl_a_song_a_p3', clip='ld_girl_a_song_a_p3_f',
        tags={'lap chair3','club','lapchair3','mini','musik','strip'},
    },
    {
        id='salsa', label='Salso Roll', loop=true,
        type='anim', dict='anim@mp_player_intuppersalsa_roll', clip='idle_a',
        tags={'salsa','intuppersalsa','salso roll','anim','musik','player'},
    },
    {
        id='dancecrankdat', label='Dance Crank Dat', loop=true,
        type='anim', dict='anim@amb@nightclub@mini@dance@dance_solo@shuffle@', clip='high_right_up',
        tags={'dancecrankdat','dance crank dat','mini','anim','nightclub','musik'},
    },
    {
        id='dancecrankdat2', label='Dance Crank Dat 2', loop=true,
        type='anim', dict='anim@amb@nightclub@mini@dance@dance_solo@shuffle@', clip='high_right_down',
        tags={'dancecrankdat2','dance crank dat 2','mini','anim','nightclub','musik'},
    },
    {
        id='dancemonkey', label='Monkey Dance', loop=true,
        type='anim', dict='anim@amb@nightclub@mini@dance@dance_solo@techno_monkey@', clip='high_center',
        tags={'mini','anim','nightclub','dancemonkey','monkey dance','musik'},
    },
    {
        id='dancemonkey2', label='Monkey Dance 2', loop=true,
        type='anim', dict='anim@amb@nightclub@mini@dance@dance_solo@techno_monkey@', clip='high_center_down',
        tags={'monkey dance 2','mini','anim','nightclub','musik','tanzen'},
    },
    {
        id='dancemonkey3', label='Monkey Dance 3', loop=true,
        type='anim', dict='anim@amb@nightclub@mini@dance@dance_solo@techno_monkey@', clip='med_center_down',
        tags={'mini','anim','dancemonkey3','nightclub','monkey dance 3','musik'},
    },
    {
        id='boxdance', label='Boxing Dance Solo', loop=true,
        type='anim', dict='anim@amb@nightclub@mini@dance@dance_solo@beach_boxing@', clip='med_right_down',
        tags={'boxing dance solo','mini','anim','nightclub','boxdance','musik'},
    },
    {
        id='dancehiphop', label='Hip Hop Dance', loop=true,
        type='anim', dict='anim@amb@nightclub@mini@dance@dance_paired@dance_d@', clip='ped_a_dance_idle',
        tags={'dancehiphop','mini','hip hop dance','anim','nightclub','musik'},
    },
    {
        id='dancehiphop2', label='Hip Hop Dance 2', loop=true,
        type='anim', dict='anim@amb@nightclub@mini@dance@dance_paired@dance_b@', clip='ped_a_dance_idle',
        tags={'dancehiphop2','mini','anim','nightclub','musik','tanzen'},
    },
    {
        id='dancehiphop3', label='Hip Hop Dance 3', loop=true,
        type='anim', dict='anim@amb@nightclub@mini@dance@dance_paired@dance_a@', clip='ped_a_dance_idle',
        tags={'dancehiphop3','hip hop dance 3','mini','anim','nightclub','musik'},
    },
    {
        id='technodance', label='Techno Dance', loop=true,
        type='anim', dict='anim@amb@nightclub@mini@dance@dance_solo@techno_karate@', clip='high_left_up',
        tags={'techno dance','mini','anim','nightclub','musik','technodance'},
    },
    {
        id='technodance2', label='Techno Dance 2', loop=true,
        type='anim', dict='anim@amb@nightclub@mini@dance@dance_solo@techno_karate@', clip='med_center_up',
        tags={'mini','techno dance 2','anim','nightclub','technodance2','musik'},
    },
    {
        id='technodance3', label='Techno Dance 3', loop=true,
        type='anim', dict='anim@amb@nightclub@mini@dance@dance_solo@techno_karate@', clip='high_left',
        tags={'technodance3','mini','techno dance 3','anim','nightclub','musik'},
    },
    {
        id='technodance4', label='Techno Dance 4', loop=true,
        type='anim', dict='anim@amb@nightclub@mini@dance@dance_solo@techno_karate@', clip='high_right_up',
        tags={'technodance4','techno dance 4','mini','anim','nightclub','musik'},
    },
    {
        id='fishdance', label='Fish Dance', loop=true,
        type='anim', dict='anim@mp_player_intupperfind_the_fish', clip='idle_a',
        tags={'fishdance','anim','intupperfind','fish dance','musik','player'},
    },
}

-- ────────────────────────────────────────────────────────────
-- 🪑  SIT
-- ────────────────────────────────────────────────────────────
Emotes['sit'] = {
    {
        id='kneel', label='Kneel',
        type='scenario', scenario='CODE_HUMAN_MEDIC_KNEEL',
        loop=true, tags={'relax','sit','sitzen','kneel'},
    },
    {
        id='yoga', label='Yoga',
        type='scenario', scenario='WORLD_HUMAN_YOGA',
        loop=true, tags={'relax','sit','yoga','sitzen'},
    },
    {
        id='cuffedback', label='Handcuffed - Back', loop=true,
        type='anim', dict='mp_arresting', clip='idle',
        tags={'relax','cuffedback','arresting','sit','sitzen','handcuffed - back'},
    },
    {
        id='dead2', label='Play Dead Act', loop=false,
        type='anim', dict='anim@scripted@data_leak@fixf_fin_ig2_johnnyguns_wounded@', clip='enter',
        tags={'relax','play dead act','data','sit','anim','sitzen'},
    },
    {
        id='cloudgaze', label='Cloudgaze', loop=true,
        type='anim', dict='switch@trevor@annoys_sunbathers', clip='trev_annoys_sunbathers_loop_girl',
        tags={'relax','switch','sit','trevor','sitzen','cloudgaze'},
    },
    {
        id='cloudgaze2', label='Cloudgaze 2', loop=true,
        type='anim', dict='switch@trevor@annoys_sunbathers', clip='trev_annoys_sunbathers_loop_guy',
        tags={'relax','cloudgaze2','switch','sit','trevor','sitzen'},
    },
    {
        id='crouchreach', label='Crouch & Reach', loop=true,
        type='anim', dict='anim@veh@van@mule5@rds', clip='lean_back_idle',
        tags={'relax','mule5','crouchreach','crouch & reach','sit','anim'},
    },
    {
        id='crouchreach2', label='Crouch & Reach 2', loop=true,
        type='anim', dict='anim@scripted@npc@mission@pln_ig4_cargo@', clip='line_5_dax',
        tags={'relax','mission','crouch & reach 2','crouchreach2','sit','anim'},
    },
    {
        id='blowkiss2', label='Blow Kiss 2', loop=true,
        type='anim', dict='anim@mp_player_intselfieblow_kiss', clip='exit',
        tags={'relax','intselfieblow','blowkiss2','sit','blow kiss 2','anim'},
    },
    {
        id='curtsy', label='Curtsy', loop=false,
        type='anim', dict='anim@mp_player_intcelebrationpaired@f_f_sarcastic', clip='sarcastic_left',
        tags={'relax','curtsy','sit','anim','sitzen','player'},
    },
    {
        id='surrender', label='Surrender', loop=true,
        type='anim', dict='random@arrests@busted', clip='idle_a',
        tags={'relax','random','busted','arrests','sit','sitzen'},
    },
    {
        id='surrender5', label='Surrender 5', loop=true,
        type='anim', dict='random@arrests', clip='kneeling_arrest_idle',
        tags={'relax','surrender 5','random','surrender5','arrests','sit'},
    },
    {
        id='surrender7', label='Surrender 7', loop=true,
        type='anim', dict='anim@scripted@bty4@ig2_bounty_kneel@male@', clip='on_knee_idle_a',
        tags={'surrender7','relax','surrender 7','bty4','sit','anim'},
    },
    {
        id='facepalm4', label='Facepalm 4', loop=true,
        type='anim', dict='anim@mp_player_intupperface_palm', clip='idle_a',
        tags={'relax','facepalm 4','facepalm4','sit','anim','sitzen'},
    },
    {
        id='fallasleep', label='Fall Asleep', loop=true,
        type='anim', dict='mp_sleep', clip='sleep_loop',
        tags={'relax','sleep','fallasleep','fall asleep','sit','sitzen'},
    },
    {
        id='fallasleep2', label='Fall Asleep 2', loop=true,
        type='anim', dict='mp_sleep', clip='sleep_loopfemale',
        tags={'relax','sleep','fallasleep2','sit','sitzen','fall asleep 2'},
    },
    {
        id='finger', label='Finger', loop=true,
        type='anim', dict='anim@mp_player_intselfiethe_bird', clip='idle_a',
        tags={'relax','sit','anim','finger','sitzen','intselfiethe'},
    },
    {
        id='finger2', label='Finger 2', loop=true,
        type='anim', dict='anim@mp_player_intupperfinger', clip='idle_a_fp',
        tags={'relax','intupperfinger','sit','anim','sitzen','finger2'},
    },
    {
        id='kneel2', label='Kneel 2', loop=true,
        type='anim', dict='rcmextreme3', clip='idle',
        tags={'relax','rcmextreme3','kneel2','sit','sitzen','kneel 2'},
    },
    {
        id='kneel3', label='Kneel 3', loop=true,
        type='anim', dict='amb@world_human_bum_wash@male@low@idle_a', clip='idle_a',
        tags={'relax','kneel 3','world','sit','kneel3','sitzen'},
    },
    {
        id='kneel4', label='Kneel 4', loop=true,
        type='anim', dict='anim@scripted@cbr5@ig3_drill_box@pattern_03@lockbox_03@male@', clip='rest',
        tags={'relax','kneel4','sit','anim','sitzen','kneel 4'},
    },
    {
        id='kneel5', label='Kneel 5', loop=true,
        type='anim', dict='anim@scripted@cbr5@ig3_drill_box@pattern_01@lockbox_02@male@', clip='rest',
        tags={'relax','kneel5','sit','kneel 5','sitzen','anim'},
    },
    {
        id='kneelhide', label='Kneel Hide', loop=true,
        type='anim', dict='anim@scripted@bty2@ig1_hiding_target@male@', clip='hiding_kneel',
        tags={'relax','kneel hide','kneelhide','sit','anim','sitzen'},
    },
    {
        id='kneelcry', label='Kneel And Cry', loop=true,
        type='anim', dict='random@robbery', clip='f_cower_01',
        tags={'relax','random','kneelcry','robbery','sit','kneel and cry'},
    },
    {
        id='meditate', label='Meditate', loop=true,
        type='anim', dict='rcmcollect_paperleadinout@', clip='meditiate_idle',
        tags={'relax','meditate','rcmcollect','paperleadinout','sit','sitzen'},
    },
    {
        id='meditate2', label='Meditate 2', loop=true,
        type='anim', dict='rcmepsilonism3', clip='ep_3_rcm_marnie_meditating',
        tags={'relax','meditate 2','rcmepsilonism3','sit','sitzen','meditate2'},
    },
    {
        id='meditate3', label='Meditate 3', loop=true,
        type='anim', dict='rcmepsilonism3', clip='base_loop',
        tags={'relax','meditate3','rcmepsilonism3','meditate 3','sit','sitzen'},
    },
    {
        id='metal', label='Metal', loop=true,
        type='anim', dict='anim@mp_player_intincarrockstd@ps@', clip='idle_a',
        tags={'relax','sit','metal','anim','sitzen','player'},
    },
    {
        id='no2', label='No 2', loop=true,
        type='anim', dict='mp_player_int_upper_nod', clip='mp_player_int_nod_no',
        tags={'relax','no2','no 2','sit','sitzen','upper'},
    },
    {
        id='ok', label='OK', loop=true,
        type='anim', dict='anim@mp_player_intselfiedock', clip='idle_a',
        tags={'relax','intselfiedock','ok','sit','anim','sitzen'},
    },
    {
        id='dock', label='Dock', loop=true,
        type='anim', dict='anim@mp_player_intincardockstd@rds@', clip='idle_a',
        tags={'relax','intincardockstd','dock','sit','anim','sitzen'},
    },
    {
        id='pushup', label='Pushup', loop=true,
        type='anim', dict='amb@world_human_push_ups@male@idle_a', clip='idle_d',
        tags={'relax','world','pushup','push','sit','sitzen'},
    },
    {
        id='salute', label='Salute', loop=true,
        type='anim', dict='anim@mp_player_intincarsalutestd@ds@', clip='idle_a',
        tags={'relax','intincarsalutestd','salute','sit','anim','sitzen'},
    },
    {
        id='salute2', label='Salute 2', loop=true,
        type='anim', dict='anim@mp_player_intincarsalutestd@ps@', clip='idle_a',
        tags={'relax','intincarsalutestd','salute 2','sit','anim','sitzen'},
    },
    {
        id='salute3', label='Salute 3', loop=true,
        type='anim', dict='anim@mp_player_intuppersalute', clip='idle_a',
        tags={'relax','salute 3','salute3','intuppersalute','sit','anim'},
    },
    {
        id='bumsleep', label='Bum Sleep', loop=true,
        type='anim', dict='amb@world_human_bum_slumped@male@laying_on_left_side@idle_a', clip='idle_b',
        tags={'relax','bumsleep','world','slumped','sit','sitzen'},
    },
    {
        id='sit', label='Sit', loop=true,
        type='anim', dict='anim@amb@business@bgen@bgen_no_work@', clip='sit_phone_phoneputdown_idle_nowork',
        tags={'relax','bgen','business','sit','anim','sitzen'},
    },
    {
        id='sit2', label='Sit 2', loop=true,
        type='anim', dict='rcm_barry3', clip='barry_3_sit_loop',
        tags={'relax','sit2','barry3','sit 2','sit','sitzen'},
    },
    {
        id='sit3', label='Sit 3', loop=true,
        type='anim', dict='amb@lo_res_idles@', clip='world_human_picnic_male_lo_res_base',
        tags={'relax','idles','sit','sitzen','sit 3','sit3'},
    },
    {
        id='sit4', label='Sit 4', loop=true,
        type='anim', dict='amb@lo_res_idles@', clip='world_human_picnic_female_lo_res_base',
        tags={'relax','idles','sit4','sit 4','sit','sitzen'},
    },
    {
        id='sit5', label='Sit 5', loop=true,
        type='anim', dict='anim@heists@fleeca_bank@ig_7_jetski_owner', clip='owner_idle',
        tags={'relax','sit 5','sit5','sit','anim','sitzen'},
    },
    {
        id='sit7', label='Sit 7', loop=true,
        type='anim', dict='anim@amb@nightclub@lazlow@lo_alone@', clip='lowalone_base_laz',
        tags={'relax','sit 7','lazlow','sit','anim','sitzen'},
    },
    {
        id='sit9', label='Sit 9', loop=true,
        type='anim', dict='amb@world_human_stupor@male@idle_a', clip='idle_a',
        tags={'relax','sit 9','world','sit','sitzen','sit9'},
    },
    {
        id='sit10', label='Sit 10', loop=true,
        type='anim', dict='anim@scripted@bty2@ig1_hiding_target@male@', clip='hiding_sit',
        tags={'relax','sit10','sit','anim','sitzen','bty2'},
    },
    {
        id='sitlean2', label='Sit Lean 2', loop=true,
        type='anim', dict='anim@scripted@player@fix_astu_ig8_weed_smoke_v1@male@', clip='male_pos_a_p2_base',
        tags={'relax','scripted','sit','sit lean 2','sitzen','anim'},
    },
    {
        id='sitlean3', label='Sit Lean 3', loop=true,
        type='anim', dict='anim@scripted@freemode@ig7_office_cell_floor@heeled@', clip='base_pose_01',
        tags={'relax','sit lean 3','freemode','sit','anim','sitzen'},
    },
    {
        id='sitsad', label='Sit Sad', loop=true,
        type='anim', dict='anim@amb@business@bgen@bgen_no_work@', clip='sit_phone_phoneputdown_sleeping-noworkfemale',
        tags={'relax','bgen','business','sit','anim','sitzen'},
    },
    {
        id='sitscared', label='Sit Scared', loop=true,
        type='anim', dict='anim@heists@ornate_bank@hostages@hit', clip='hit_loop_ped_b',
        tags={'relax','ornate','sitscared','sit','anim','sitzen'},
    },
    {
        id='sitscared2', label='Sit Scared 2', loop=true,
        type='anim', dict='anim@heists@ornate_bank@hostages@ped_c@', clip='flinch_loop',
        tags={'relax','ornate','sit scared 2','sit','anim','sitzen'},
    },
    {
        id='sitscared3', label='Sit Scared 3', loop=true,
        type='anim', dict='anim@heists@ornate_bank@hostages@ped_e@', clip='flinch_loop',
        tags={'relax','ornate','sit scared 3','sit','anim','sitzen'},
    },
    {
        id='sitchair7', label='Sit Chair Attentive', loop=true,
        type='anim', dict='anim@scripted@freemode_npc@fix_astu_ig3_pooh_jimmy@jimmy@', clip='sit_base_jimmy',
        tags={'relax','freemode','sit','anim','sitzen','sitchair7'},
    },
    {
        id='sitchair8', label='Sit Chair Lonely', loop=true,
        type='anim', dict='anim@scripted@freemode_npc@fix_dre_studio_entourage@', clip='lonely_ballas',
        tags={'relax','sit chair lonely','freemode','sit','anim','sitzen'},
    },
    {
        id='sittoilet', label='Sit toilet', loop=true,
        type='anim', dict='anim@scripted@freemode@ig5_office_cell_seat@heeled@', clip='base_pose_01',
        tags={'relax','freemode','sit toilet','sittoilet','sit','anim'},
    },
    {
        id='sittoilet2', label='Sit Toilet 2', loop=true,
        type='anim', dict='anim@scripted@cbr5@ig3_drill_box@pattern_01@lockbox_04@male@', clip='idle',
        tags={'relax','sit toilet 2','sittoilet2','sit','anim','sitzen'},
    },
    {
        id='situp', label='Sit Up', loop=true,
        type='anim', dict='amb@world_human_sit_ups@male@idle_a', clip='idle_a',
        tags={'relax','world','sit','situp','sitzen','male'},
    },
    {
        id='slowclap3', label='Slow Clap 3', loop=true,
        type='anim', dict='anim@mp_player_intupperslow_clap', clip='idle_a',
        tags={'relax','intupperslow','sit','anim','sitzen','player'},
    },
    {
        id='sunbathe', label='Sunbathe - Hand On Head', loop=true,
        type='anim', dict='amb@world_human_sunbathe@male@back@base', clip='base',
        tags={'relax','world','sit','sitzen','sunbathe - hand on head','human'},
    },
    {
        id='sunbathe2', label='Sunbathe 2 - Hand Over Face', loop=true,
        type='anim', dict='amb@world_human_sunbathe@female@back@base', clip='base',
        tags={'relax','world','sunbathe 2 - hand over face','sunbathe','sit','sitzen'},
    },
    {
        id='sunbathe3', label='Sunbathe 3 - Lay On Stomach', loop=true,
        type='anim', dict='amb@world_human_sunbathe@female@front@base', clip='base',
        tags={'relax','world','sunbathe 3 - lay on stomach','sunbathe','sunbathe3','sit'},
    },
    {
        id='sunbathe4', label='Sunbathe 4', loop=true,
        type='anim', dict='amb@world_human_sunbathe@male@back@idle_a', clip='idle_a',
        tags={'relax','world','sunbathe4','sunbathe','sit','sitzen'},
    },
    {
        id='sunbathe5', label='Sunbathe 5', loop=true,
        type='anim', dict='amb@world_human_sunbathe@female@back@idle_a', clip='idle_a',
        tags={'relax','world','sunbathe 5','sunbathe','sit','sitzen'},
    },
    {
        id='sunbathe6', label='Sunbathe 6', loop=true,
        type='anim', dict='amb@world_human_sunbathe@female@front@idle_a', clip='idle_c',
        tags={'sunbathe 6','relax','world','sunbathe6','sunbathe','sit'},
    },
    {
        id='sunbathe7', label='Sunbathe 7', loop=true,
        type='anim', dict='amb@world_human_sunbathe@male@front@base', clip='base',
        tags={'relax','world','sunbathe','sunbathe7','sit','sitzen'},
    },
    {
        id='tpose', label='T Pose', loop=true,
        type='anim', dict='missfam5_yoga', clip='a2_pose',
        tags={'t pose','relax','tpose','sit','yoga','sitzen'},
    },
    {
        id='tpose2', label='T Pose 2', loop=true,
        type='anim', dict='mp_sleep', clip='bind_pose_180',
        tags={'relax','sleep','sit','sitzen','t pose 2','tpose2'},
    },
    {
        id='thumbsup3', label='Thumbs Up 3', loop=true,
        type='anim', dict='anim@mp_player_intincarthumbs_uplow@ds@', clip='enter',
        tags={'relax','thumbs up 3','sit','anim','sitzen','intincarthumbs'},
    },
    {
        id='thumbsup2', label='Thumbs Up 2', loop=true,
        type='anim', dict='anim@mp_player_intselfiethumbs_up', clip='idle_a',
        tags={'relax','thumbsup2','sit','thumbs up 2','anim','sitzen'},
    },
    {
        id='thumbsup', label='Thumbs Up', loop=true,
        type='anim', dict='anim@mp_player_intupperthumbs_up', clip='idle_a',
        tags={'relax','thumbs up','thumbsup','sit','anim','sitzen'},
    },
    {
        id='yeah', label='Yeah', loop=true,
        type='anim', dict='anim@mp_player_intupperair_shagging', clip='idle_a',
        tags={'relax','yeah','intupperair','sit','anim','sitzen'},
    },
    {
        id='gangsign', label='Gang Sign', loop=true,
        type='anim', dict='mp_player_int_uppergang_sign_a', clip='mp_player_int_gang_sign_a',
        tags={'relax','sign','uppergang','gangsign','sit','sitzen'},
    },
    {
        id='gangsign2', label='Gang Sign 2', loop=true,
        type='anim', dict='mp_player_int_uppergang_sign_b', clip='mp_player_int_gang_sign_b',
        tags={'relax','sign','uppergang','sit','gangsign2','sitzen'},
    },
    {
        id='crawl', label='Crawl', loop=true,
        type='anim', dict='move_injured_ground', clip='front_loop',
        tags={'relax','injured','crawl','sit','move','sitzen'},
    },
    {
        id='keyfob', label='Key Fob', loop=true,
        type='anim', dict='anim@mp_player_intmenu@key_fob@', clip='fob_click',
        tags={'relax','key fob','sit','anim','sitzen','intmenu'},
    },
    {
        id='peace', label='Peace', loop=true,
        type='anim', dict='mp_player_int_upperpeace_sign', clip='mp_player_int_peace_sign',
        tags={'relax','upperpeace','sign','sit','sitzen','player'},
    },
    {
        id='peace2', label='Peace 2', loop=true,
        type='anim', dict='anim@mp_player_intupperpeace', clip='idle_a',
        tags={'relax','peace 2','sit','anim','sitzen','peace2'},
    },
    {
        id='peace3', label='Peace 3', loop=true,
        type='anim', dict='anim@mp_player_intupperpeace', clip='idle_a_fp',
        tags={'relax','peace3','sit','peace 3','anim','sitzen'},
    },
    {
        id='peace4', label='Peace 4', loop=true,
        type='anim', dict='anim@mp_player_intincarpeacestd@ds@', clip='idle_a',
        tags={'relax','peace4','peace 4','sit','anim','sitzen'},
    },
    {
        id='peace5', label='Peace 5', loop=true,
        type='anim', dict='anim@mp_player_intincarpeacestd@ds@', clip='idle_a_fp',
        tags={'relax','peace 5','peace5','sit','anim','sitzen'},
    },
    {
        id='peace6', label='Peace 6', loop=true,
        type='anim', dict='anim@mp_player_intincarpeacebodhi@ds@', clip='idle_a',
        tags={'relax','peace6','intincarpeacebodhi','sit','peace 6','sitzen'},
    },
    {
        id='peace7', label='Peace 7', loop=true,
        type='anim', dict='anim@mp_player_intincarpeacebodhi@ds@', clip='idle_a_fp',
        tags={'peace7','relax','peace 7','intincarpeacebodhi','sit','anim'},
    },
    {
        id='radio', label='Radio', loop=true,
        type='anim', dict='random@arrests', clip='generic_radio_chatter',
        tags={'relax','random','radio','arrests','sit','sitzen'},
    },
    {
        id='handsup2', label='Hands Up 2', loop=true,
        type='anim', dict='anim@mp_player_intuppersurrender', clip='idle_a_fp',
        tags={'relax','intuppersurrender','hands up 2','sit','anim','sitzen'},
    },
    {
        id='fspose', label='F Sex Pose', loop=true,
        type='anim', dict='missfam5_yoga', clip='c2_pose',
        tags={'relax','f sex pose','sit','missfam5','sitzen','yoga'},
    },
    {
        id='fspose2', label='F Sex Pose 2', loop=true,
        type='anim', dict='missfam5_yoga', clip='c6_pose',
        tags={'relax','f sex pose 2','sit','fspose2','sitzen','yoga'},
    },
    {
        id='wank', label='Wank', loop=true,
        type='anim', dict='anim@mp_player_intselfiewank', clip='idle_a',
        tags={'relax','sit','anim','sitzen','wank','player'},
    },
    {
        id='wank2', label='Wank 2', loop=true,
        type='anim', dict='anim@mp_player_intupperwank', clip='idle_a',
        tags={'relax','wank 2','intupperwank','sit','anim','sitzen'},
    },
    {
        id='wank3', label='Wank 3', loop=true,
        type='anim', dict='mp_player_int_upperwank', clip='mp_player_int_wank_02',
        tags={'relax','wank3','sit','sitzen','wank 3','upperwank'},
    },
    {
        id='wank4', label='Wank 4', loop=true,
        type='anim', dict='mp_player_int_upperwank', clip='mp_player_int_wank_02_fp',
        tags={'relax','wank4','sit','sitzen','wank 4','upperwank'},
    },
    {
        id='wank5', label='Wank 5', loop=false,
        type='anim', dict='mp_player_intwank', clip='mp_player_int_wank',
        tags={'relax','intwank','player','wank 5','sit','sitzen'},
    },
    {
        id='calldog', label='Call Dog', loop=true,
        type='anim', dict='switch@franklin@plays_w_dog', clip='001916_01_fras_v2_9_plays_w_dog_idle',
        tags={'relax','franklin','switch','sit','sitzen','calldog'},
    },
    {
        id='layncry', label='Lay & Cry', loop=true,
        type='anim', dict='anim@amb@nightclub@lazlow@lo_sofa@', clip='lowsofa_dlg_fuckedup_laz',
        tags={'relax','lazlow','layncry','lay & cry','sit','anim'},
    },
    {
        id='layncry2', label='Lay & Cry 2', loop=true,
        type='anim', dict='anim@amb@nightclub@lazlow@lo_sofa@', clip='lowsofa_base_laz',
        tags={'relax','lay & cry 2','lazlow','layncry2','sit','anim'},
    },
    {
        id='layncry3', label='Lay & Cry 3', loop=true,
        type='anim', dict='anim@amb@nightclub@lazlow@lo_sofa@', clip='lowsofa_dlg_notagain_laz',
        tags={'relax','lazlow','layncry3','sit','lay & cry 3','sitzen'},
    },
    {
        id='layncry4', label='Lay & Cry 4', loop=true,
        type='anim', dict='anim@amb@nightclub@lazlow@lo_sofa@', clip='lowsofa_dlg_notagain_laz',
        tags={'relax','lay & cry 4','lazlow','layncry4','sit','anim'},
    },
    {
        id='layncry5', label='Lay & Cry 5', loop=true,
        type='anim', dict='anim@amb@nightclub@lazlow@lo_sofa@', clip='lowsofa_dlg_shit2strong_laz',
        tags={'relax','lazlow','sit','anim','sitzen','nightclub'},
    },
    {
        id='layncry6', label='Lay & Cry 6', loop=true,
        type='anim', dict='misschinese2_crystalmaze', clip='2int_loop_a_taocheng',
        tags={'relax','crystalmaze','lay & cry 6','misschinese2','sit','sitzen'},
    },
    {
        id='layncry7', label='Lay & Cry 7', loop=true,
        type='anim', dict='anim@scripted@data_leak@fixf_fin_ig2_johnnyguns_wounded@', clip='base',
        tags={'relax','lay & cry 7','data','sit','anim','sitzen'},
    },
    {
        id='layncry8', label='Lay & Cry 8', loop=true,
        type='anim', dict='anim@scripted@data_leak@fix_golf_ig2_golfclub_intimidation@', clip='stage_3_base_golfer',
        tags={'relax','layncry8','data','lay & cry 8','sit','anim'},
    },
}

-- ────────────────────────────────────────────────────────────
-- 😴  IDLE
-- ────────────────────────────────────────────────────────────
Emotes['idle'] = {
    {
        id='guard', label='Guard',
        type='scenario', scenario='WORLD_HUMAN_GUARD_STAND',
        loop=true, tags={'stehen','stand','idle','guard'},
    },
    {
        id='hangout', label='Hangout',
        type='scenario', scenario='WORLD_HUMAN_HANG_OUT_STREET',
        loop=true, tags={'stehen','stand','hangout','idle'},
    },
    {
        id='impatient', label='Impatient',
        type='scenario', scenario='WORLD_HUMAN_STAND_IMPATIENT',
        loop=true, tags={'impatient','stehen','stand','idle'},
    },
    {
        id='lean', label='Lean',
        type='scenario', scenario='WORLD_HUMAN_LEANING',
        loop=true, tags={'stehen','stand','lean','idle'},
    },
    {
        id='leanbar', label='Lean Bar',
        type='scenario', scenario='PROP_HUMAN_BUM_SHOPPING_CART',
        loop=true, tags={'idle','lean bar','stand','leanbar','stehen'},
    },
    {
        id='lookout', label='Lookout',
        type='scenario', scenario='CODE_HUMAN_CROSS_ROAD_WAIT',
        loop=true, tags={'stehen','lookout','stand','idle'},
    },
    {
        id='statue', label='Statue',
        type='scenario', scenario='WORLD_HUMAN_HUMAN_STATUE',
        loop=true, tags={'stehen','stand','idle','statue'},
    },
    {
        id='idle', label='Idle', loop=true,
        type='anim', dict='anim@heists@heist_corona@team_idles@male_a', clip='idle',
        tags={'heist','idle','stand','anim','stehen','heists'},
    },
    {
        id='idle8', label='Idle 8', loop=false,
        type='anim', dict='amb@world_human_hang_out_street@male_b@idle_a', clip='idle_b',
        tags={'idle 8','idle','world','idle8','hang','stand'},
    },
    {
        id='idle10', label='Idle 10', loop=true,
        type='anim', dict='mp_move@prostitute@m@french', clip='idle',
        tags={'idle 10','idle','stand','move','prostitute','stehen'},
    },
    {
        id='idle12', label='Idle 12', loop=true,
        type='anim', dict='mp_corona_idles@female_b@base', clip='base',
        tags={'idles','idle','idle 12','female','idle12','stand'},
    },
    {
        id='idle13', label='Idle 13', loop=true,
        type='anim', dict='mp_corona_idles@female_c@base', clip='base',
        tags={'idle13','idle','idles','female','stand','corona'},
    },
    {
        id='idle18', label='Idle 18', loop=true,
        type='anim', dict='mp_move@prostitute@m@hooker', clip='idle',
        tags={'idle','idle 18','stand','move','prostitute','idle18'},
    },
    {
        id='idle19', label='Idle 19', loop=true,
        type='anim', dict='missdocksshowoffcar@base', clip='base_4',
        tags={'idle','idle19','missdocksshowoffcar','base','idle 19','stehen'},
    },
    {
        id='idle2', label='Idle 2', loop=true,
        type='anim', dict='anim@heists@heist_corona@team_idles@female_a', clip='idle',
        tags={'heist','idle','idle 2','idle2','stand','anim'},
    },
    {
        id='idle3', label='Idle 3', loop=true,
        type='anim', dict='anim@heists@humane_labs@finale@strip_club', clip='ped_b_celebrate_loop',
        tags={'idle','idle 3','idle3','stand','anim','humane'},
    },
    {
        id='idle5', label='Idle 5', loop=true,
        type='anim', dict='anim@mp_corona_idles@female_b@idle_a', clip='idle_a',
        tags={'idles','idle','stand','idle 5','anim','corona'},
    },
    {
        id='idle6', label='Idle 6', loop=true,
        type='anim', dict='anim@mp_corona_idles@male_c@idle_a', clip='idle_a',
        tags={'idles','idle','stehen','stand','idle6','anim'},
    },
    {
        id='idle7', label='Idle 7', loop=true,
        type='anim', dict='anim@mp_corona_idles@male_d@idle_a', clip='idle_a',
        tags={'idles','idle','idle7','stand','anim','corona'},
    },
    {
        id='idledrunk', label='Idle Drunk', loop=true,
        type='anim', dict='random@drunk_driver_1', clip='drunk_driver_stand_loop_dd1',
        tags={'random','idle','drunk','idledrunk','stand','stehen'},
    },
    {
        id='idledrunk2', label='Idle Drunk 2', loop=true,
        type='anim', dict='random@drunk_driver_1', clip='drunk_driver_stand_loop_dd2',
        tags={'random','idle','idledrunk2','drunk','stand','driver'},
    },
    {
        id='idledrunk3', label='Idle Drunk 3', loop=true,
        type='anim', dict='missarmenian2', clip='standing_idle_loop_drunk',
        tags={'idledrunk3','missarmenian2','idle','idle drunk 3','stand','stehen'},
    },
    {
        id='bartender', label='Bartender', loop=true,
        type='anim', dict='anim@amb@clubhouse@bar@drink@idle_a', clip='idle_a_bartender',
        tags={'idle','bartender','drink','stand','anim','clubhouse'},
    },
    {
        id='cop3', label='Cop 3', loop=true,
        type='anim', dict='amb@code_human_police_investigate@idle_a', clip='idle_b',
        tags={'police','cop 3','idle','stand','code','stehen'},
    },
    {
        id='crossarms', label='Crossarms', loop=true,
        type='anim', dict='amb@world_human_hang_out_street@female_arms_crossed@idle_a', clip='idle_a',
        tags={'crossarms','world','idle','hang','stand','stehen'},
    },
    {
        id='crossarms2', label='Crossarms 2', loop=true,
        type='anim', dict='amb@world_human_hang_out_street@male_c@idle_a', clip='idle_b',
        tags={'world','idle','hang','stand','crossarms2','stehen'},
    },
    {
        id='crossarms4', label='Crossarms 4', loop=true,
        type='anim', dict='random@street_race', clip='_car_b_lookout',
        tags={'crossarms 4','random','idle','street','stand','race'},
    },
    {
        id='crossarmsside2', label='Crossarms Side 2', loop=true,
        type='anim', dict='amb@world_human_hang_out_street@female_hold_arm@base', clip='base',
        tags={'world','crossarmsside2','idle','hang','stand','stehen'},
    },
    {
        id='wait3', label='Wait 3', loop=true,
        type='anim', dict='amb@world_human_hang_out_street@female_hold_arm@idle_a', clip='idle_a',
        tags={'world','idle','wait3','hang','stand','wait 3'},
    },
    {
        id='wait4', label='Wait 4', loop=true,
        type='anim', dict='amb@world_human_hang_out_street@Female_arm_side@idle_a', clip='idle_a',
        tags={'world','idle','wait4','hang','stand','stehen'},
    },
    {
        id='jog2', label='Jog 2', loop=true,
        type='anim', dict='amb@world_human_jog_standing@male@idle_a', clip='idle_a',
        tags={'world','idle','stand','jog2','standing','stehen'},
    },
    {
        id='jog3', label='Jog 3', loop=true,
        type='anim', dict='amb@world_human_jog_standing@female@idle_a', clip='idle_a',
        tags={'world','idle','jog3','stand','standing','stehen'},
    },
    {
        id='jog4', label='Jog 4', loop=true,
        type='anim', dict='amb@world_human_power_walker@female@idle_a', clip='idle_a',
        tags={'jog4','world','idle','stand','stehen','power'},
    },
    {
        id='lean2', label='Lean 2', loop=true,
        type='anim', dict='amb@world_human_leaning@female@wall@back@hand_up@idle_a', clip='idle_a',
        tags={'world','idle','lean 2','leaning','stehen','lean2'},
    },
    {
        id='lean4', label='Lean 4', loop=true,
        type='anim', dict='amb@world_human_leaning@male@wall@back@foot_up@idle_a', clip='idle_a',
        tags={'world','idle','leaning','lean4','stand','lean 4'},
    },
    {
        id='lean5', label='Lean 5', loop=true,
        type='anim', dict='amb@world_human_leaning@male@wall@back@hands_together@idle_b', clip='idle_e',
        tags={'lean 5','world','idle','leaning','lean5','stehen'},
    },
    {
        id='lean6', label='Lean 6', loop=true,
        type='anim', dict='anim@scripted@freemode_npc@fix_agy_ig4_lamar@', clip='lean_wall_idle_03_lamar',
        tags={'idle','freemode','lean6','lean 6','stand','anim'},
    },
    {
        id='leanflirt', label='Lean Flirt', loop=true,
        type='anim', dict='random@street_race', clip='_car_a_flirt_girl',
        tags={'lean flirt','random','idle','street','stand','leanflirt'},
    },
    {
        id='leanbar2', label='Lean Bar 2', loop=true,
        type='anim', dict='amb@prop_human_bum_shopping_cart@male@idle_a', clip='idle_c',
        tags={'idle','lean bar 2','leanbar2','prop','stand','stehen'},
    },
    {
        id='leanbar3', label='Lean Bar 3', loop=true,
        type='anim', dict='anim@amb@nightclub@lazlow@ig1_vip@', clip='clubvip_base_laz',
        tags={'idle','lazlow','lean bar 3','stand','anim','leanbar3'},
    },
    {
        id='leanbar4', label='Lean Bar 4', loop=true,
        type='anim', dict='anim@heists@prison_heist', clip='ped_b_loop_a',
        tags={'idle','prison','stehen','stand','anim','lean bar 4'},
    },
    {
        id='leanhigh', label='Lean High', loop=true,
        type='anim', dict='anim@mp_ferris_wheel', clip='idle_a_player_one',
        tags={'idle','leanhigh','wheel','ferris','stehen','stand'},
    },
    {
        id='leanhigh2', label='Lean High 2', loop=true,
        type='anim', dict='anim@mp_ferris_wheel', clip='idle_a_player_two',
        tags={'leanhigh2','idle','wheel','ferris','stehen','anim'},
    },
    {
        id='leanside2', label='Leanside 2', loop=true,
        type='anim', dict='misscarstealfinale', clip='packer_idle_1_trevor',
        tags={'idle','leanside2','stand','leanside 2','misscarstealfinale','stehen'},
    },
    {
        id='leanside3', label='Leanside 3', loop=true,
        type='anim', dict='misscarstealfinalecar_5_ig_1', clip='waitloop_lamar',
        tags={'idle','leanside 3','leanside3','stehen','stand','misscarstealfinalecar'},
    },
    {
        id='leanside4', label='Leanside 4', loop=true,
        type='anim', dict='misscarstealfinalecar_5_ig_1', clip='waitloop_lamar',
        tags={'idle','leanside4','stehen','stand','leanside 4','misscarstealfinalecar'},
    },
    {
        id='leanside5', label='Leanside 5', loop=true,
        type='anim', dict='rcmjosh2', clip='josh_2_intp1_base',
        tags={'leanside5','idle','stehen','leanside 5','stand','rcmjosh2'},
    },
    {
        id='leanplan', label='Lean On Table', loop=true,
        type='anim', dict='anim@amb@board_room@diagram_blueprints@', clip='idle_01_amy_skater_01',
        tags={'idle','board','leanplan','lean on table','stand','room'},
    },
    {
        id='mechanic5', label='Mechanic 5', loop=true,
        type='anim', dict='amb@prop_human_movie_bulb@idle_a', clip='idle_b',
        tags={'mechanic 5','idle','prop','movie','mechanic5','stand'},
    },
    {
        id='countdown', label='Countdown', loop=true,
        type='anim', dict='random@street_race', clip='grid_girl_race_start',
        tags={'random','idle','street','stand','race','stehen'},
    },
    {
        id='shakeoff', label='Shake Off', loop=true,
        type='anim', dict='move_m@_idles@shake_off', clip='shakeoff_1',
        tags={'idles','idle','stand','move','shake off','stehen'},
    },
    {
        id='smell', label='Smell', loop=true,
        type='anim', dict='move_p_m_two_idles@generic', clip='fidget_sniff_fingers',
        tags={'idles','idle','stand','move','smell','stehen'},
    },
    {
        id='type2', label='Type 2', loop=true,
        type='anim', dict='anim@heists@prison_heistig1_p1_guard_checks_bus', clip='loop',
        tags={'idle','prison','type2','type 2','stehen','anim'},
    },
    {
        id='warmth', label='Warmth', loop=true,
        type='anim', dict='amb@world_human_stand_fire@male@idle_a', clip='idle_a',
        tags={'world','idle','warmth','stehen','stand','human'},
    },
    {
        id='stretch4', label='Stretch 4', loop=true,
        type='anim', dict='rcmfanatic1maryann_stretchidle_b', clip='idle_e',
        tags={'rcmfanatic1maryann','idle','stretchidle','stretch 4','stretch4','stand'},
    },
    {
        id='tryclothes4', label='Try Clothes 4', loop=false,
        type='anim', dict='anim@scripted@ulp_missions@change_clothes@female@', clip='change_highroller',
        tags={'idle','tryclothes4','try clothes 4','stand','anim','stehen'},
    },
    {
        id='tryclothes5', label='Try Clothes 5', loop=false,
        type='anim', dict='anim@scripted@ulp_missions@change_clothes@', clip='change_highroller_male',
        tags={'idle','try clothes 5','stehen','anim','tryclothes5','stand'},
    },
    {
        id='nervous', label='Nervous', loop=true,
        type='anim', dict='amb@world_human_bum_standing@twitchy@idle_a', clip='idle_c',
        tags={'world','idle','stehen','stand','standing','nervous'},
    },
    {
        id='valet', label='Valet', loop=true,
        type='anim', dict='anim@amb@casino@valet_scenario@pose_a@', clip='base_a_m_y_vinewood_01',
        tags={'casino','idle','valet','stehen','anim','stand'},
    },
    {
        id='valet2', label='Valet 2', loop=true,
        type='anim', dict='anim@amb@casino@valet_scenario@pose_b@', clip='base_a_m_y_vinewood_01',
        tags={'casino','valet2','valet 2','idle','stehen','valet'},
    },
    {
        id='valet3', label='Valet 3', loop=true,
        type='anim', dict='anim@amb@casino@valet_scenario@pose_d@', clip='base_a_m_y_vinewood_01',
        tags={'casino','valet3','idle','stehen','valet','anim'},
    },
    {
        id='fspose3', label='F Sex Pose 3', loop=true,
        type='anim', dict='anim@amb@carmeet@checkout_car@', clip='female_c_idle_d',
        tags={'carmeet','idle','f sex pose 3','stehen','stand','anim'},
    },
    {
        id='cleanhands', label='Clean Them Filthy Hands', loop=true,
        type='anim', dict='missheist_agency3aig_23', clip='urinal_sink_loop',
        tags={'idle','cleanhands','stand','agency3aig','stehen','clean them filthy hands'},
    },
    {
        id='cleanface', label='Clean Your Face', loop=true,
        type='anim', dict='switch@michael@wash_face', clip='loop_michael',
        tags={'idle','michael','clean your face','cleanface','switch','stand'},
    },
    {
        id='checkcar', label='Check Out · Female', loop=true,
        type='anim', dict='anim@amb@carmeet@checkout_car@male_a@idles', clip='idle_b',
        tags={'carmeet','idle','checkcar','stand','check out · female','anim'},
    },
    {
        id='checkcar2', label='Check Out 2 · Male', loop=true,
        type='anim', dict='anim@amb@carmeet@checkout_car@male_c@idles', clip='idle_a',
        tags={'carmeet','idle','stehen','stand','checkcar2','anim'},
    },
    {
        id='showboobs2', label='Show Boobs 2', loop=false,
        type='anim', dict='mini@strip_club@idles@stripper', clip='stripper_idle_05',
        tags={'club','idle','show boobs 2','mini','stand','stehen'},
    },
    {
        id='watchstripper', label='Watch Stripper', loop=false,
        type='anim', dict='amb@world_human_strip_watch_stand@male_c@idle_a', clip='idle_b',
        tags={'world','idle','watchstripper','stand','watch stripper','stehen'},
    },
    {
        id='policecrowd', label='Police Crowd', loop=true,
        type='anim', dict='amb@code_human_police_crowd_control@idle_a', clip='idle_a',
        tags={'police','idle','police crowd','stand','policecrowd','code'},
    },
    {
        id='policecrowd2', label='Police Crowd 2', loop=true,
        type='anim', dict='amb@code_human_police_crowd_control@idle_b', clip='idle_d',
        tags={'police','idle','policecrowd2','stand','code','stehen'},
    },
    {
        id='snot', label='Blow Snot', loop=true,
        type='anim', dict='move_p_m_two_idles@generic', clip='fidget_blow_snot',
        tags={'idles','idle','blow snot','snot','stehen','move'},
    },
    {
        id='scratch', label='Scratch Balls', loop=false,
        type='anim', dict='move_p_m_two_idles@generic', clip='fidget_scratch_balls',
        tags={'scratch balls','idles','idle','stand','scratch','move'},
    },
    {
        id='think4', label='Think 4', loop=true,
        type='anim', dict='anim@amb@casino@hangout@ped_male@stand@02b@idles', clip='idle_a',
        tags={'casino','hangout','idle','think 4','think4','stand'},
    },
    {
        id='kick', label='Kick', loop=true,
        type='anim', dict='missheistdockssetup1ig_13@kick_idle', clip='guard_beatup_kickidle_guard1',
        tags={'idle','missheistdockssetup1ig','stehen','stand','kick'},
    },
    {
        id='kick2', label='Kick 2', loop=true,
        type='anim', dict='missheistdockssetup1ig_13@kick_idle', clip='guard_beatup_kickidle_guard2',
        tags={'idle','kick 2','missheistdockssetup1ig','stehen','kick','kick2'},
    },
}

-- ────────────────────────────────────────────────────────────
-- 🤸  GESTURE
-- ────────────────────────────────────────────────────────────
Emotes['gesture'] = {
    {
        id='flex', label='Flex',
        type='scenario', scenario='WORLD_HUMAN_MUSCLE_FLEX',
        loop=true, tags={'geste','gesture','flex'},
    },
    {
        id='lean3', label='Lean 3', loop=true,
        type='anim', dict='amb@world_human_leaning@female@wall@back@holding_elbow@idle_a', clip='idle_a',
        tags={'geste','gesture','world','leaning','lean 3','lean3'},
    },
    {
        id='pointright', label='Point Right', loop=true,
        type='anim', dict='mp_gun_shop_tut', clip='indicate_right',
        tags={'geste','gesture','pointright','shop','point right'},
    },
    {
        id='wave4', label='Wave 4', loop=true,
        type='anim', dict='random@mugging5', clip='001445_01_gangintimidation_1_female_idle_b',
        tags={'geste','gesture','random','wave4','mugging5','wave 4'},
    },
    {
        id='bow', label='Bow', loop=true,
        type='anim', dict='anim@arena@celeb@podium@no_prop@', clip='regal_c_1st',
        tags={'bow','geste','gesture','anim','celeb','arena'},
    },
    {
        id='bow2', label='Bow 2', loop=true,
        type='anim', dict='anim@arena@celeb@podium@no_prop@', clip='regal_a_1st',
        tags={'geste','gesture','bow 2','bow2','anim','celeb'},
    },
    {
        id='cartaunt', label='Car Taunt', loop=false,
        type='anim', dict='missarmenian1driving_taunts@lamar_1', clip='cmonfrank',
        tags={'geste','gesture','car taunt','missarmenian1driving','taunts','lamar'},
    },
    {
        id='cartauntb', label='Car Taunt 2', loop=false,
        type='anim', dict='missarmenian1driving_taunts@lamar_1', clip='cmonmynigga',
        tags={'geste','gesture','missarmenian1driving','car taunt 2','taunts','lamar'},
    },
    {
        id='cartauntc', label='Car Taunt 3', loop=false,
        type='anim', dict='missarmenian1driving_taunts@lamar_1', clip='hahahakeepup',
        tags={'geste','car taunt 3','gesture','missarmenian1driving','taunts','lamar'},
    },
    {
        id='cartauntd', label='Car Taunt 4', loop=false,
        type='anim', dict='missarmenian1driving_taunts@lamar_1', clip='manthisismeanttobe',
        tags={'geste','gesture','missarmenian1driving','cartauntd','taunts','lamar'},
    },
    {
        id='cartaunte', label='Car Taunt 5', loop=false,
        type='anim', dict='missarmenian1driving_taunts@lamar_1', clip='rememberthis',
        tags={'geste','gesture','missarmenian1driving','car taunt 5','taunts','lamar'},
    },
    {
        id='cartauntf', label='Car Taunt 6', loop=false,
        type='anim', dict='missarmenian1driving_taunts@lamar_1', clip='skoolinyoass',
        tags={'cartauntf','geste','gesture','missarmenian1driving','taunts','lamar'},
    },
    {
        id='cartauntg', label='Car Taunt 7', loop=false,
        type='anim', dict='missarmenian1driving_taunts@lamar_1', clip='youaintfuckin',
        tags={'geste','car taunt 7','gesture','missarmenian1driving','cartauntg','taunts'},
    },
    {
        id='cartaunth', label='Car Taunt 8', loop=false,
        type='anim', dict='missarmenian1driving_taunts@franklin', clip='heyidontneedanybody',
        tags={'geste','gesture','missarmenian1driving','franklin','taunts','car taunt 8'},
    },
    {
        id='cartaunti', label='Car Taunt 9', loop=false,
        type='anim', dict='missarmenian1driving_taunts@franklin', clip='heymotherfuckayoudriveslowasfuck',
        tags={'geste','gesture','missarmenian1driving','franklin','cartaunti','taunts'},
    },
    {
        id='cartauntj', label='Car Taunt 10', loop=false,
        type='anim', dict='missarmenian1driving_taunts@franklin', clip='kids_on_bicycles',
        tags={'geste','gesture','missarmenian1driving','cartauntj','franklin','taunts'},
    },
    {
        id='cartauntk', label='Car Taunt 11', loop=false,
        type='anim', dict='missarmenian1driving_taunts@franklin', clip='learnhowtouseastick',
        tags={'geste','gesture','cartauntk','missarmenian1driving','franklin','taunts'},
    },
    {
        id='cartauntl', label='Car Taunt 12', loop=false,
        type='anim', dict='missarmenian1driving_taunts@franklin', clip='slowassshit',
        tags={'geste','gesture','cartauntl','missarmenian1driving','franklin','taunts'},
    },
    {
        id='cartauntm', label='Car Taunt 13', loop=false,
        type='anim', dict='mp_intro_seq@mcs_7_race_taunt', clip='mcs_7_taunt_female',
        tags={'geste','gesture','taunt','intro','race','car taunt 13'},
    },
    {
        id='cartauntn', label='Car Taunt 14', loop=false,
        type='anim', dict='mp_intro_seq@mcs_7_race_taunt', clip='mcs_7_taunt_male',
        tags={'geste','cartauntn','gesture','taunt','car taunt 14','intro'},
    },
}

-- ────────────────────────────────────────────────────────────
-- 🤣  REACTION
-- ────────────────────────────────────────────────────────────
Emotes['reaction'] = {
    {
        id='annoyed', label='Annoyed', loop=true,
        type='anim', dict='missdocksshowoffcar@idle_a', clip='idle_b_5',
        tags={'emotion','idle','missdocksshowoffcar','reaction','annoyed','reaktion'},
    },
    {
        id='cuffedfront', label='Handcuffed - Front', loop=true,
        type='anim', dict='anim@move_m@prisoner_cuffed', clip='idle',
        tags={'emotion','cuffedfront','handcuffed - front','prisoner','move','anim'},
    },
    {
        id='idle11', label='Idle 11', loop=true,
        type='anim', dict='random@countrysiderobbery', clip='idle_a',
        tags={'emotion','random','idle 11','idle11','countrysiderobbery','reaction'},
    },
    {
        id='idle14', label='Idle 14', loop=true,
        type='anim', dict='random@countrysiderobbery', clip='idle_a',
        tags={'emotion','random','idle 14','idle14','countrysiderobbery','reaction'},
    },
    {
        id='argue5', label='Argue Angry 1', loop=true,
        type='anim', dict='anim@amb@casino@brawl@fights@argue@', clip='arguement_loop_mp_m_brawler_01',
        tags={'casino','emotion','brawl','argue angry 1','argue5','anim'},
    },
    {
        id='argue6', label='Argue Angry 2', loop=true,
        type='anim', dict='anim@amb@casino@brawl@fights@argue@', clip='arguement_loop_mp_m_brawler_02',
        tags={'argue6','casino','emotion','brawl','argue angry 2','anim'},
    },
    {
        id='surrender2', label='Surrender 2', loop=true,
        type='anim', dict='mp_bank_heist_1', clip='f_cower_02',
        tags={'surrender 2','emotion','bank','heist','surrender2','reaction'},
    },
    {
        id='surrender3', label='Surrender 3', loop=true,
        type='anim', dict='mp_bank_heist_1', clip='m_cower_01',
        tags={'emotion','bank','heist','surrender 3','reaction','surrender3'},
    },
    {
        id='surrender4', label='Surrender 4', loop=true,
        type='anim', dict='mp_bank_heist_1', clip='m_cower_02',
        tags={'surrender 4','emotion','bank','heist','surrender4','reaction'},
    },
    {
        id='surrender6', label='Surrender 6', loop=true,
        type='anim', dict='rcmbarry', clip='m_cower_01',
        tags={'emotion','surrender6','rcmbarry','surrender 6','reaction','reaktion'},
    },
    {
        id='surrender8', label='Surrender 8', loop=true,
        type='anim', dict='anim@scripted@npc@bounty_ig_surrender@male@', clip='surrender_idle_bounty',
        tags={'surrender 8','emotion','bounty','anim','reaction','surrender8'},
    },
    {
        id='facepalm', label='Facepalm', loop=true,
        type='anim', dict='random@car_thief@agitated@idle_a', clip='agitated_idle_a',
        tags={'emotion','random','facepalm','thief','agitated','reaction'},
    },
    {
        id='facepalm3', label='Facepalm 3', loop=true,
        type='anim', dict='missminuteman_1ig_2', clip='tasered_2',
        tags={'emotion','missminuteman','facepalm 3','reaction','facepalm3','reaktion'},
    },
    {
        id='medic2', label='Medic 2', loop=true,
        type='anim', dict='amb@medic@standing@tendtodead@base', clip='base',
        tags={'medic 2','emotion','tendtodead','medic','medic2','standing'},
    },
    {
        id='scared', label='Scared', loop=true,
        type='anim', dict='random@domestic', clip='f_distressed_loop',
        tags={'emotion','random','domestic','scared','reaction','reaktion'},
    },
    {
        id='scared2', label='Scared 2', loop=true,
        type='anim', dict='random@homelandsecurity', clip='knees_loop_girl',
        tags={'emotion','random','homelandsecurity','scared2','scared 2','reaction'},
    },
    {
        id='clapangry', label='Clap Angry', loop=true,
        type='anim', dict='anim@arena@celeb@flat@solo@no_props@', clip='angry_clap_a_player_a',
        tags={'emotion','clap angry','clapangry','anim','reaction','celeb'},
    },
    {
        id='lostconfused', label='Lost & Confused', loop=false,
        type='anim', dict='anim@scripted@island@special_peds@dave@hs4_dave_stage2_ig6', clip='i_lost_it',
        tags={'lostconfused','emotion','anim','island','reaction','scripted'},
    },
    {
        id='threaten', label='Threaten', loop=true,
        type='anim', dict='random@atmrobberygen', clip='b_atm_mugging',
        tags={'atmrobberygen','emotion','random','threaten','reaction','reaktion'},
    },
    {
        id='handsup', label='Hands Up', loop=true,
        type='anim', dict='missminuteman_1ig_2', clip='handsup_base',
        tags={'emotion','hands up','handsup','missminuteman','reaction','reaktion'},
    },
    {
        id='grieve', label='Grieve The Dead', loop=true,
        type='anim', dict='anim@miss@low@fin@vagos@', clip='idle_ped05',
        tags={'emotion','vagos','miss','grieve the dead','anim','grieve'},
    },
}

-- ────────────────────────────────────────────────────────────
-- 🏆  CELEBRATE
-- ────────────────────────────────────────────────────────────
Emotes['celebrate'] = {
    {
        id='cheer', label='Cheer',
        type='scenario', scenario='WORLD_HUMAN_CHEERING',
        loop=true, tags={'feiern','party','celebrate','cheer'},
    },
    {
        id='party', label='Party',
        type='scenario', scenario='WORLD_HUMAN_PARTYING',
        loop=true, tags={'party','celebrate','feiern'},
    },
    {
        id='windowshop', label='Window Shop',
        type='scenario', scenario='WORLD_HUMAN_WINDOW_SHOP_BROWSE',
        loop=true, tags={'feiern','celebrate','windowshop','party','window shop'},
    },
    {
        id='idle4', label='Idle 4', loop=true,
        type='anim', dict='anim@mp_celebration@idles@female', clip='celebration_idle_f_a',
        tags={'feiern','idle4','celebrate','idles','celebration','idle 4'},
    },
    {
        id='elbow', label='Window Elbow', loop=true,
        type='anim', dict='anim@veh@lowrider@std@ds@arm@base', clip='sit_low_lowdoor',
        tags={'feiern','celebrate','lowrider','window elbow','base','anim'},
    },
    {
        id='clap', label='Clap', loop=true,
        type='anim', dict='amb@world_human_cheering@male_a', clip='base',
        tags={'feiern','world','celebrate','party','cheering','clap'},
    },
    {
        id='celebrate', label='Celebrate', loop=true,
        type='anim', dict='rcmfanatic1celebrate', clip='celebrate',
        tags={'feiern','party','rcmfanatic1celebrate','celebrate'},
    },
}

-- ────────────────────────────────────────────────────────────
-- 🤝  SOCIAL
-- ────────────────────────────────────────────────────────────
Emotes['social'] = {
    {
        id='filmshocking', label='Film Shocking',
        type='scenario', scenario='WORLD_HUMAN_MOBILE_FILM_SHOCKING',
        loop=true, tags={'social','kommunikation','filmshocking','phone','film shocking'},
    },
    {
        id='texting', label='Texting',
        type='scenario', scenario='WORLD_HUMAN_STAND_MOBILE',
        loop=true, tags={'social','kommunikation','texting','phone'},
    },
    {
        id='record', label='Record',
        type='scenario', scenario='WORLD_HUMAN_MOBILE_FILM_SHOCKING',
        loop=true, tags={'social','kommunikation','record','phone'},
    },
    {
        id='argue7', label='Argue 7', loop=true,
        type='anim', dict='mini@prostitutestalk', clip='street_argue_f_a',
        tags={'argue7','social','kommunikation','mini','prostitutestalk','phone'},
    },
    {
        id='no', label='No', loop=true,
        type='anim', dict='anim@heists@ornate_bank@chat_manager', clip='fail',
        tags={'ornate','social','kommunikation','anim','phone','no'},
    },
}

-- ────────────────────────────────────────────────────────────
-- 🎵  MUSIC
-- ────────────────────────────────────────────────────────────
Emotes['music'] = {
    {
        id='musician', label='Musician',
        type='scenario', scenario='WORLD_HUMAN_MUSICIAN',
        loop=true, tags={'musik','music','instrument','musician'},
        maleOnly=true,
    },
    {
        id='crossarms3', label='Crossarms 3', loop=true,
        type='anim', dict='anim@heists@heist_corona@single_team', clip='single_team_loop_boss',
        tags={'heist','crossarms3','crossarms 3','instrument','anim','heists'},
    },
    {
        id='adjust', label='Adjust', loop=true,
        type='anim', dict='missmic4', clip='michael_tux_fidget',
        tags={'missmic4','instrument','musik','music','adjust'},
    },
}

-- ────────────────────────────────────────────────────────────
-- 🔧  WORK
-- ────────────────────────────────────────────────────────────
Emotes['work'] = {
    {
        id='atm', label='ATM',
        type='scenario', scenario='PROP_HUMAN_ATM',
        loop=true, tags={'arbeit','work','job','atm'},
    },
    {
        id='bbq', label='BBQ',
        type='scenario', scenario='PROP_HUMAN_BBQ',
        loop=true, tags={'work','job','bbq','arbeit'},
        maleOnly=true,
    },
    {
        id='clipboard2', label='Clipboard 2',
        type='scenario', scenario='WORLD_HUMAN_CLIPBOARD',
        loop=true, tags={'job','clipboard 2','clipboard2','work','arbeit'},
        maleOnly=true,
    },
    {
        id='drill', label='Construction Drilling',
        type='scenario', scenario='WORLD_HUMAN_CONST_DRILL',
        loop=true, tags={'job','drill','construction drilling','work','arbeit'},
    },
    {
        id='garden', label='Gardening',
        type='scenario', scenario='WORLD_HUMAN_GARDENER_PLANT',
        loop=true, tags={'job','garden','gardening','work','arbeit'},
    },
    {
        id='hammer', label='Hammer',
        type='scenario', scenario='WORLD_HUMAN_HAMMERING',
        loop=true, tags={'work','job','hammer','arbeit'},
    },
    {
        id='janitor', label='Janitor',
        type='scenario', scenario='WORLD_HUMAN_JANITOR',
        loop=true, tags={'janitor','work','job','arbeit'},
    },
    {
        id='maid', label='Maid',
        type='scenario', scenario='WORLD_HUMAN_MAID_CLEAN',
        loop=true, tags={'maid','work','job','arbeit'},
    },
    {
        id='medic', label='Medic',
        type='scenario', scenario='CODE_HUMAN_MEDIC_TEND_TO_DEAD',
        loop=true, tags={'arbeit','work','job','medic'},
    },
    {
        id='notepad2', label='Notepad 2',
        type='scenario', scenario='CODE_HUMAN_MEDIC_TIME_OF_DEATH',
        loop=true, tags={'job','notepad 2','notepad2','work','arbeit'},
    },
    {
        id='weld', label='Weld',
        type='scenario', scenario='WORLD_HUMAN_WELDING',
        loop=true, tags={'work','weld','job','arbeit'},
    },
    {
        id='comeatmebro', label='Come at me bro', loop=true,
        type='anim', dict='mini@triathlon', clip='want_some_of_this',
        tags={'job','come at me bro','mini','comeatmebro','work','triathlon'},
    },
}

-- ────────────────────────────────────────────────────────────
-- 🎭  MISC
-- ────────────────────────────────────────────────────────────
Emotes['misc'] = {
    {
        id='bumbin', label='Bum Bin',
        type='scenario', scenario='PROP_HUMAN_BUM_BIN',
        loop=true, tags={'bum bin','bumbin','sonstiges'},
    },
    {
        id='chinup', label='Chinup',
        type='scenario', scenario='PROP_HUMAN_MUSCLE_CHIN_UPS',
        loop=true, tags={'sonstiges','chinup'},
    },
    {
        id='cop', label='Cop',
        type='scenario', scenario='WORLD_HUMAN_COP_IDLES',
        loop=true, tags={'sonstiges','cop'},
    },
    {
        id='jog', label='Jog',
        type='scenario', scenario='WORLD_HUMAN_JOG_STANDING',
        loop=true, tags={'jog','sonstiges'},
    },
    {
        id='parkingmeter', label='Parking Meter',
        type='scenario', scenario='PROP_HUMAN_PARKING_METER',
        loop=true, tags={'parking meter','sonstiges','parkingmeter'},
    },
    {
        id='prosthigh', label='Prostitue High',
        type='scenario', scenario='WORLD_HUMAN_PROSTITUTE_HIGH_CLASS',
        loop=true, tags={'prosthigh','sonstiges','prostitue high'},
    },
    {
        id='prostlow', label='Prostitue Low',
        type='scenario', scenario='WORLD_HUMAN_PROSTITUTE_LOW_CLASS',
        loop=true, tags={'prostlow','prostitue low','sonstiges'},
    },
    {
        id='puddle', label='Puddle',
        type='scenario', scenario='WORLD_HUMAN_BUM_WASH',
        loop=true, tags={'puddle','sonstiges'},
    },
    {
        id='smoke', label='Smoke',
        type='scenario', scenario='WORLD_HUMAN_SMOKING',
        loop=true, tags={'sonstiges','smoke'},
    },
    {
        id='smokeweed', label='Smoke Weed (Male)',
        type='scenario', scenario='WORLD_HUMAN_DRUG_DEALER',
        loop=true, tags={'smokeweed','smoke weed (male)','sonstiges'},
        maleOnly=true,
    },
    {
        id='smokeweed2', label='Smoke Weed (Female)',
        type='scenario', scenario='WORLD_HUMAN_SMOKING_POT',
        loop=true, tags={'sonstiges','smoke weed (female)','smokeweed2'},
    },
    {
        id='dispenser', label='Dispenser', loop=false,
        type='anim', dict='mini@sprunk', clip='plyr_buy_drink_pt1',
        tags={'dispenser','mini','sonstiges','sprunk'},
    },
    {
        id='beast', label='Beast', loop=true,
        type='anim', dict='anim@mp_fm_event@intro', clip='beast_transform',
        tags={'event','sonstiges','beast','intro','anim'},
    },
    {
        id='chill', label='Chill', loop=true,
        type='anim', dict='switch@trevor@scares_tramp', clip='trev_scares_tramp_idle_tramp',
        tags={'scares','sonstiges','switch','chill','trevor'},
    },
    {
        id='prone', label='Prone', loop=true,
        type='anim', dict='missfbi3_sniping', clip='prone_dave',
        tags={'prone','sniping','missfbi3','sonstiges'},
    },
    {
        id='pullover', label='Pullover', loop=true,
        type='anim', dict='misscarsteal3pullover', clip='pull_over_right',
        tags={'pullover','misscarsteal3pullover','sonstiges'},
    },
    {
        id='argue', label='Argue', loop=true,
        type='anim', dict='misscarsteal4@actor', clip='actor_berating_loop',
        tags={'misscarsteal4','actor','sonstiges','argue'},
    },
    {
        id='argue3', label='Argue 3', loop=true,
        type='anim', dict='missheistdockssetup1leadinoutig_1', clip='lsdh_ig_1_argue_wade',
        tags={'argue3','argue 3','missheistdockssetup1leadinoutig','sonstiges'},
    },
    {
        id='argue8', label='Argue 8', loop=true,
        type='anim', dict='rcmnigel1cnmt_1c', clip='price_tag',
        tags={'argue8','rcmnigel1cnmt','sonstiges','argue 8'},
    },
    {
        id='argue9', label='Argue 9', loop=true,
        type='anim', dict='mini@hookers_sp', clip='idle_reject',
        tags={'argue 9','sonstiges','mini','argue9','hookers'},
    },
    {
        id='bringiton', label='Bring It On', loop=true,
        type='anim', dict='misscommon@response', clip='bring_it_on',
        tags={'bringiton','bring it on','sonstiges','response','misscommon'},
    },
    {
        id='cop2', label='Cop 2', loop=true,
        type='anim', dict='anim@amb@nightclub@peds@', clip='rcmme_amanda1_stand_loop_cop',
        tags={'peds','sonstiges','anim','cop 2','nightclub','cop2'},
    },
    {
        id='crossarms5', label='Crossarms 5', loop=true,
        type='anim', dict='anim@amb@nightclub@peds@', clip='rcmme_amanda1_stand_loop_cop',
        tags={'crossarms 5','peds','sonstiges','anim','crossarms5','nightclub'},
    },
    {
        id='crossarms6', label='Crossarms 6', loop=true,
        type='anim', dict='random@shop_gunstore', clip='_idle',
        tags={'gunstore','random','crossarms 6','sonstiges','shop','crossarms6'},
    },
    {
        id='foldarms', label='Fold Arms', loop=true,
        type='anim', dict='anim@amb@business@bgen@bgen_no_work@', clip='stand_phone_phoneputdown_idle_nowork',
        tags={'bgen','business','sonstiges','anim','foldarms','fold arms'},
    },
    {
        id='foldarms2', label='Fold Arms 2', loop=true,
        type='anim', dict='anim@amb@nightclub@peds@', clip='rcmme_amanda1_stand_loop_cop',
        tags={'fold arms 2','peds','sonstiges','anim','foldarms2','nightclub'},
    },
    {
        id='crossarmsside', label='Crossarms Side', loop=true,
        type='anim', dict='rcmnigel1a_band_groupies', clip='base_m2',
        tags={'rcmnigel1a','sonstiges','band','crossarmsside','crossarms side','groupies'},
    },
    {
        id='damn2', label='Damn 2', loop=true,
        type='anim', dict='anim@am_hold_up@male', clip='shoplift_mid',
        tags={'damn 2','damn2','sonstiges','anim','male','hold'},
    },
    {
        id='devestated', label='Devestated', loop=false,
        type='anim', dict='misscarsteal2car_stolen', clip='chad_car_stolen_reaction',
        tags={'devestated','misscarsteal2car','stolen','sonstiges'},
    },
    {
        id='fallover', label='Fall Over', loop=false,
        type='anim', dict='random@drunk_driver_1', clip='drunk_fall_over',
        tags={'random','drunk','sonstiges','fall over','fallover','driver'},
    },
    {
        id='fallover2', label='Fall Over 2', loop=false,
        type='anim', dict='mp_suicide', clip='pistol',
        tags={'fall over 2','fallover2','suicide','sonstiges'},
    },
    {
        id='fallover3', label='Fall Over 3', loop=false,
        type='anim', dict='mp_suicide', clip='pill',
        tags={'fallover3','fall over 3','suicide','sonstiges'},
    },
    {
        id='fallover5', label='Fall Over 5', loop=false,
        type='anim', dict='anim@gangops@hostage@', clip='victim_fail',
        tags={'hostage','sonstiges','fall over 5','anim','fallover5','gangops'},
    },
    {
        id='fightme', label='Fight Me', loop=false,
        type='anim', dict='anim@deathmatch_intros@unarmed', clip='intro_male_unarmed_c',
        tags={'intros','sonstiges','fight me','anim','deathmatch','fightme'},
    },
    {
        id='fightme2', label='Fight Me 2', loop=false,
        type='anim', dict='anim@deathmatch_intros@unarmed', clip='intro_male_unarmed_e',
        tags={'fightme2','sonstiges','anim','intros','deathmatch','fight me 2'},
    },
    {
        id='handshake', label='Handshake', loop=true,
        type='anim', dict='mp_ped_interaction', clip='handshake_guy_a',
        tags={'handshake','sonstiges','interaction'},
    },
    {
        id='handshake2', label='Handshake 2', loop=true,
        type='anim', dict='mp_ped_interaction', clip='handshake_guy_b',
        tags={'interaction','sonstiges','handshake 2','handshake2'},
    },
    {
        id='wait', label='Wait', loop=true,
        type='anim', dict='random@shop_tattoo', clip='_idle_a',
        tags={'random','sonstiges','tattoo','shop','wait'},
    },
    {
        id='wait2', label='Wait 2', loop=true,
        type='anim', dict='missbigscore2aig_3', clip='wait_for_van_c',
        tags={'wait2','missbigscore2aig','wait 2','sonstiges'},
    },
    {
        id='wait5', label='Wait 5', loop=true,
        type='anim', dict='missclothing', clip='idle_storeclerk',
        tags={'wait 5','missclothing','wait5','sonstiges'},
    },
    {
        id='wait7', label='Wait 7', loop=true,
        type='anim', dict='rcmnigel1cnmt_1c', clip='base',
        tags={'wait7','rcmnigel1cnmt','sonstiges','wait 7'},
    },
    {
        id='wait8', label='Wait 8', loop=true,
        type='anim', dict='rcmjosh1', clip='idle',
        tags={'rcmjosh1','sonstiges','wait 8','wait8'},
    },
    {
        id='wait9', label='Wait 9', loop=true,
        type='anim', dict='rcmjosh2', clip='josh_2_intp1_base',
        tags={'wait 9','wait9','rcmjosh2','sonstiges'},
    },
    {
        id='wait11', label='Wait 11', loop=true,
        type='anim', dict='misshair_shop@hair_dressers', clip='keeper_base',
        tags={'misshair','sonstiges','hair','wait 11','shop','wait11'},
    },
    {
        id='wait12', label='Wait 12', loop=true,
        type='anim', dict='rcmjosh1', clip='keeper_base',
        tags={'wait12','rcmjosh1','sonstiges','wait 12'},
    },
    {
        id='wait13', label='Wait 13', loop=true,
        type='anim', dict='rcmnigel1a', clip='base',
        tags={'rcmnigel1a','wait13','wait 13','sonstiges'},
    },
    {
        id='hiking', label='Hiking', loop=true,
        type='anim', dict='move_m@hiking', clip='idle',
        tags={'hiking','move','sonstiges'},
    },
    {
        id='hugme', label='Hug Me', loop=false,
        type='anim', dict='mp_ped_interaction', clip='kisses_guy_a',
        tags={'hugme','sonstiges','hug me','interaction'},
    },
    {
        id='hugme2', label='Hug Me 2', loop=false,
        type='anim', dict='mp_ped_interaction', clip='kisses_guy_b',
        tags={'hugme2','sonstiges','hug me 2','interaction'},
    },
    {
        id='inspect', label='Inspect', loop=false,
        type='anim', dict='random@train_tracks', clip='idle_e',
        tags={'random','tracks','train','inspect','sonstiges'},
    },
    {
        id='inspect2', label='Inspect 2', loop=false,
        type='anim', dict='anim@amb@carmeet@checkout_engine@', clip='female_c_idle_d',
        tags={'carmeet','sonstiges','inspect 2','anim','checkout','inspect2'},
    },
    {
        id='inspect3', label='Inspect 3', loop=false,
        type='anim', dict='anim@amb@carmeet@checkout_car@', clip='female_b_idle_d',
        tags={'carmeet','sonstiges','inspect3','anim','checkout','inspect 3'},
    },
    {
        id='jog5', label='Jog 5', loop=true,
        type='anim', dict='move_m@joy@a', clip='walk',
        tags={'jog 5','move','sonstiges','jog5'},
    },
    {
        id='knock2', label='Knock 2', loop=true,
        type='anim', dict='missheistfbi3b_ig7', clip='lift_fibagent_loop',
        tags={'knock 2','missheistfbi3b','knock2','sonstiges'},
    },
    {
        id='mechanic', label='Mechanic', loop=true,
        type='anim', dict='mini@repair', clip='fixing_a_ped',
        tags={'mini','repair','mechanic','sonstiges'},
    },
    {
        id='mechanic2', label='Mechanic 2', loop=true,
        type='anim', dict='mini@repair', clip='fixing_a_player',
        tags={'repair','mechanic2','sonstiges','mini','mechanic 2'},
    },
    {
        id='mechanic3', label='Mechanic 3', loop=true,
        type='anim', dict='amb@world_human_vehicle_mechanic@male@base', clip='base',
        tags={'vehicle','world','sonstiges','mechanic 3','mechanic3','human'},
    },
    {
        id='mechanic4', label='Mechanic 4', loop=true,
        type='anim', dict='anim@amb@clubhouse@tutorial@bkr_tut_ig3@', clip='machinic_loop_mechandplayer',
        tags={'tutorial','sonstiges','clubhouse','anim','mechanic4','mechanic 4'},
    },
    {
        id='pickup', label='Pickup', loop=false,
        type='anim', dict='random@domestic', clip='pickup_low',
        tags={'pickup','domestic','random','sonstiges'},
    },
    {
        id='push', label='Push', loop=true,
        type='anim', dict='missfinale_c2ig_11', clip='pushcar_offcliff_f',
        tags={'push','missfinale','c2ig','sonstiges'},
    },
    {
        id='push2', label='Push 2', loop=true,
        type='anim', dict='missfinale_c2ig_11', clip='pushcar_offcliff_m',
        tags={'missfinale','sonstiges','push2','push 2','c2ig'},
    },
    {
        id='screwyou', label='Screw You', loop=true,
        type='anim', dict='misscommon@response', clip='screw_you',
        tags={'sonstiges','screwyou','response','screw you','misscommon'},
    },
    {
        id='shot', label='Shot', loop=true,
        type='anim', dict='random@dealgonewrong', clip='idle_a',
        tags={'dealgonewrong','shot','random','sonstiges'},
    },
    {
        id='welcomeback', label='Welcome Back', loop=false,
        type='anim', dict='anim@scripted@island@special_peds@dave@hs4_dave_stage2_ig6', clip='you\'re_back',
        tags={'welcome back','sonstiges','anim','welcomeback','island','scripted'},
    },
    {
        id='stickup', label='Stick Up', loop=true,
        type='anim', dict='random@countryside_gang_fight', clip='biker_02_stickup_loop',
        tags={'random','stickup','stick up','sonstiges','gang','countryside'},
    },
    {
        id='stumble', label='Stumble', loop=true,
        type='anim', dict='misscarsteal4@actor', clip='stumble',
        tags={'stumble','misscarsteal4','actor','sonstiges'},
    },
    {
        id='think5', label='Think 5', loop=true,
        type='anim', dict='mp_cp_welcome_tutthink', clip='b_think',
        tags={'welcome','sonstiges','think 5','tutthink','think5'},
    },
    {
        id='think', label='Think', loop=true,
        type='anim', dict='misscarsteal4@aliens', clip='rehearsal_base_idle_director',
        tags={'think','aliens','misscarsteal4','sonstiges'},
    },
    {
        id='think2', label='Think 2', loop=true,
        type='anim', dict='missheist_jewelleadinout', clip='jh_int_outro_loop_a',
        tags={'think2','sonstiges','jewelleadinout','think 2','missheist'},
    },
    {
        id='type', label='Type', loop=true,
        type='anim', dict='anim@heists@prison_heiststation@cop_reactions', clip='cop_b_idle',
        tags={'prison','sonstiges','anim','heists','type'},
    },
    {
        id='type3', label='Type 3', loop=true,
        type='anim', dict='mp_prison_break', clip='hack_loop',
        tags={'type3','prison','sonstiges','type 3','break'},
    },
    {
        id='type4', label='Type 4', loop=true,
        type='anim', dict='mp_fbi_heist', clip='loop',
        tags={'type 4','heist','type4','sonstiges'},
    },
    {
        id='type5', label='Type 5 - Stare', loop=true,
        type='anim', dict='anim@scripted@freemode@ig12_use_computer@male@', clip='loop',
        tags={'type5','freemode','type 5 - stare','sonstiges','anim','scripted'},
    },
    {
        id='whistle2', label='Whistle 2', loop=true,
        type='anim', dict='rcmnigel1c', clip='hailing_whistle_waive_a',
        tags={'rcmnigel1c','whistle 2','sonstiges','whistle2'},
    },
    {
        id='lift', label='Lift', loop=true,
        type='anim', dict='random@hitch_lift', clip='idle_f',
        tags={'lift','hitch','random','sonstiges'},
    },
    {
        id='lol', label='LOL', loop=true,
        type='anim', dict='anim@arena@celeb@flat@paired@no_props@', clip='laugh_a_player_b',
        tags={'sonstiges','lol','anim','celeb','arena'},
    },
    {
        id='lol2', label='LOL 2', loop=true,
        type='anim', dict='anim@arena@celeb@flat@solo@no_props@', clip='giggle_a_player_b',
        tags={'lol2','lol 2','sonstiges','anim','celeb','arena'},
    },
    {
        id='gangsign3', label='Gang Sign 3', loop=true,
        type='anim', dict='amb@code_human_in_car_mp_actions@gang_sign_b@low@ps@base', clip='idle_a',
        tags={'actions','sonstiges','code','gang sign 3','gangsign3','human'},
    },
    {
        id='gangsign4', label='Gang Sign 4', loop=true,
        type='anim', dict='amb@code_human_in_car_mp_actions@v_sign@std@rds@base', clip='idle_a',
        tags={'gangsign4','actions','sonstiges','code','gang sign 4','human'},
    },
    {
        id='passout', label='Passout', loop=true,
        type='anim', dict='missarmenian2', clip='drunk_loop',
        tags={'missarmenian2','sonstiges','passout'},
    },
    {
        id='passout2', label='Passout 2', loop=true,
        type='anim', dict='missarmenian2', clip='corpse_search_exit_ped',
        tags={'passout2','passout 2','missarmenian2','sonstiges'},
    },
    {
        id='passout3', label='Passout 3', loop=true,
        type='anim', dict='anim@gangops@morgue@table@', clip='body_search',
        tags={'passout 3','sonstiges','morgue','anim','gangops','passout3'},
    },
    {
        id='passout4', label='Passout 4', loop=true,
        type='anim', dict='mini@cpr@char_b@cpr_def', clip='cpr_pumpchest_idle',
        tags={'passout4','passout 4','sonstiges','mini','char'},
    },
    {
        id='passout5', label='Passout 5', loop=true,
        type='anim', dict='random@mugging4', clip='flee_backward_loop_shopkeeper',
        tags={'random','passout5','mugging4','sonstiges','passout 5'},
    },
    {
        id='passout6', label='Passout 6', loop=true,
        type='anim', dict='anim@scripted@data_leak@fix_bil_ig2_chopper_crawl@', clip='fix_bil_ig2_chopper_crawl_loop_ped',
        tags={'passout6','sonstiges','data','anim','passout 6','scripted'},
    },
    {
        id='passout7', label='Passout 7', loop=true,
        type='anim', dict='anim@scripted@data_leak@fix_bil_ig2_chopper_crawl@', clip='fix_bil_ig2_chopper_crawl_dead_loop_ped',
        tags={'sonstiges','data','passout 7','anim','passout7','scripted'},
    },
    {
        id='passout8', label='Passout 8', loop=true,
        type='anim', dict='anim@scripted@data_leak@fix_bil_ig2_chopper_crawl@', clip='fix_bil_ig2_chopper_crawl_dead_loop_ped',
        tags={'sonstiges','passout8','passout 8','data','anim','scripted'},
    },
    {
        id='petting', label='Petting', loop=true,
        type='anim', dict='creatures@rottweiler@tricks@', clip='petting_franklin',
        tags={'tricks','sonstiges','petting','creatures','rottweiler'},
    },
    {
        id='flip2', label='Flip 2', loop=false,
        type='anim', dict='anim@arena@celeb@flat@solo@no_props@', clip='cap_a_player_a',
        tags={'flip 2','sonstiges','anim','celeb','arena','flip2'},
    },
    {
        id='flip', label='Flip', loop=false,
        type='anim', dict='anim@arena@celeb@flat@solo@no_props@', clip='flip_a_player_a',
        tags={'flip','sonstiges','anim','celeb','arena'},
    },
    {
        id='slide', label='Slide', loop=false,
        type='anim', dict='anim@arena@celeb@flat@solo@no_props@', clip='slide_a_player_a',
        tags={'sonstiges','slide','anim','celeb','arena'},
    },
    {
        id='slide2', label='Slide 2', loop=false,
        type='anim', dict='anim@arena@celeb@flat@solo@no_props@', clip='slide_b_player_a',
        tags={'slide 2','slide2','sonstiges','anim','celeb','arena'},
    },
    {
        id='slide3', label='Slide 3', loop=false,
        type='anim', dict='anim@arena@celeb@flat@solo@no_props@', clip='slide_c_player_a',
        tags={'slide3','slide 3','sonstiges','anim','celeb','arena'},
    },
    {
        id='slugger', label='Slugger', loop=false,
        type='anim', dict='anim@arena@celeb@flat@solo@no_props@', clip='slugger_a_player_a',
        tags={'slugger','sonstiges','anim','celeb','arena'},
    },
    {
        id='flipoff', label='Flip Off', loop=true,
        type='anim', dict='anim@arena@celeb@podium@no_prop@', clip='flip_off_a_1st',
        tags={'sonstiges','flipoff','flip off','anim','celeb','arena'},
    },
    {
        id='flipoff2', label='Flip Off 2', loop=true,
        type='anim', dict='anim@arena@celeb@podium@no_prop@', clip='flip_off_c_1st',
        tags={'flipoff2','flip off 2','sonstiges','anim','celeb','arena'},
    },
    {
        id='holster', label='Holster', loop=true,
        type='anim', dict='move_m@intimidation@cop@unarmed', clip='idle',
        tags={'sonstiges','unarmed','move','intimidation','holster'},
    },
    {
        id='slap', label='Slap', loop=true,
        type='anim', dict='melee@unarmed@streamed_variations', clip='plyr_takedown_front_slap',
        tags={'sonstiges','streamed','unarmed','slap','melee'},
    },
    {
        id='headbutt', label='Headbutt', loop=false,
        type='anim', dict='melee@unarmed@streamed_variations', clip='plyr_takedown_front_headbutt',
        tags={'sonstiges','streamed','unarmed','headbutt','melee'},
    },
    {
        id='cpr', label='CPR', loop=true,
        type='anim', dict='mini@cpr@char_a@cpr_str', clip='cpr_pumpchest',
        tags={'mini','cpr','char','sonstiges'},
    },
    {
        id='cpr2', label='CPR 2', loop=true,
        type='anim', dict='mini@cpr@char_a@cpr_str', clip='cpr_pumpchest',
        tags={'cpr 2','cpr2','sonstiges','mini','char'},
    },
    {
        id='ledge', label='Ledge', loop=true,
        type='anim', dict='missfbi1', clip='ledge_loop',
        tags={'missfbi1','ledge','sonstiges'},
    },
    {
        id='airplane', label='Air Plane', loop=true,
        type='anim', dict='missfbi1', clip='ledge_loop',
        tags={'airplane','air plane','missfbi1','sonstiges'},
    },
    {
        id='peek', label='Peek', loop=true,
        type='anim', dict='random@paparazzi@peek', clip='left_peek_a',
        tags={'paparazzi','random','peek','sonstiges'},
    },
    {
        id='stretch', label='Stretch', loop=true,
        type='anim', dict='mini@triathlon', clip='idle_e',
        tags={'stretch','mini','triathlon','sonstiges'},
    },
    {
        id='stretch2', label='Stretch 2', loop=true,
        type='anim', dict='mini@triathlon', clip='idle_f',
        tags={'stretch 2','stretch2','sonstiges','mini','triathlon'},
    },
    {
        id='stretch3', label='Stretch 3', loop=true,
        type='anim', dict='mini@triathlon', clip='idle_d',
        tags={'stretch 3','sonstiges','mini','stretch3','triathlon'},
    },
    {
        id='punching', label='Punching', loop=true,
        type='anim', dict='rcmextreme2', clip='loop_punching',
        tags={'rcmextreme2','sonstiges','punching'},
    },
    {
        id='punching2', label='Punching 2', loop=false,
        type='anim', dict='anim@scripted@bty2@ig2_beat_target@male@', clip='standing_punch_v1_golfer',
        tags={'punching 2','punching2','sonstiges','anim','bty2','scripted'},
    },
    {
        id='superhero', label='Superhero', loop=true,
        type='anim', dict='rcmbarry', clip='base',
        tags={'superhero','rcmbarry','sonstiges'},
    },
    {
        id='superhero2', label='Superhero 2', loop=true,
        type='anim', dict='rcmbarry', clip='base',
        tags={'sonstiges','rcmbarry','superhero 2','superhero2'},
    },
    {
        id='mindcontrol', label='Mind Control', loop=true,
        type='anim', dict='rcmbarry', clip='mind_control_b_loop',
        tags={'mindcontrol','mind control','sonstiges','rcmbarry'},
    },
    {
        id='mindcontrol2', label='Mind Control 2', loop=true,
        type='anim', dict='rcmbarry', clip='bar_1_attack_idle_aln',
        tags={'sonstiges','rcmbarry','mind control 2','mindcontrol2'},
    },
    {
        id='clown', label='Clown', loop=true,
        type='anim', dict='rcm_barry2', clip='clown_idle_0',
        tags={'barry2','clown','sonstiges'},
    },
    {
        id='clown2', label='Clown 2', loop=true,
        type='anim', dict='rcm_barry2', clip='clown_idle_1',
        tags={'barry2','clown 2','clown2','sonstiges'},
    },
    {
        id='clown3', label='Clown 3', loop=true,
        type='anim', dict='rcm_barry2', clip='clown_idle_2',
        tags={'barry2','clown 3','sonstiges','clown3'},
    },
    {
        id='clown4', label='Clown 4', loop=true,
        type='anim', dict='rcm_barry2', clip='clown_idle_3',
        tags={'barry2','clown 4','sonstiges','clown4'},
    },
    {
        id='clown5', label='Clown 5', loop=true,
        type='anim', dict='rcm_barry2', clip='clown_idle_6',
        tags={'barry2','clown5','clown 5','sonstiges'},
    },
    {
        id='tryclothes', label='Try Clothes', loop=true,
        type='anim', dict='mp_clothing@female@trousers', clip='try_trousers_neutral_a',
        tags={'try clothes','tryclothes','clothing','female','sonstiges','trousers'},
    },
    {
        id='tryclothes2', label='Try Clothes 2', loop=true,
        type='anim', dict='mp_clothing@female@shirt', clip='try_shirt_positive_a',
        tags={'tryclothes2','clothing','female','sonstiges','shirt','try clothes 2'},
    },
    {
        id='tryclothes3', label='Try Clothes 3', loop=true,
        type='anim', dict='mp_clothing@female@shoes', clip='try_shoes_positive_a',
        tags={'shoes','clothing','female','sonstiges','tryclothes3','try clothes 3'},
    },
    {
        id='nervous2', label='Nervous 2', loop=true,
        type='anim', dict='mp_missheist_countrybank@nervous', clip='nervous_idle',
        tags={'nervous2','nervous 2','sonstiges','countrybank','nervous','missheist'},
    },
    {
        id='nervous3', label='Nervous 3', loop=true,
        type='anim', dict='rcmme_tracey1', clip='nervous_loop',
        tags={'rcmme','nervous 3','sonstiges','nervous3','tracey1'},
    },
    {
        id='pull', label='Pull', loop=true,
        type='anim', dict='random@mugging4', clip='struggle_loop_b_thief',
        tags={'pull','mugging4','random','sonstiges'},
    },
    {
        id='bird', label='Bird', loop=false,
        type='anim', dict='random@peyote@bird', clip='wakeup',
        tags={'random','peyote','bird','sonstiges'},
    },
    {
        id='chicken', label='Chicken', loop=true,
        type='anim', dict='random@peyote@chicken', clip='wakeup',
        tags={'peyote','random','sonstiges','chicken'},
    },
    {
        id='bark', label='Bark', loop=false,
        type='anim', dict='random@peyote@dog', clip='wakeup',
        tags={'bark','peyote','random','sonstiges'},
    },
    {
        id='rabbit', label='Rabbit', loop=false,
        type='anim', dict='random@peyote@rabbit', clip='wakeup',
        tags={'peyote','random','sonstiges','rabbit'},
    },
    {
        id='hunched', label='Hunched', loop=true,
        type='anim', dict='missexile3', clip='ex03_train_roof_idle',
        tags={'hunched','missexile3','sonstiges'},
    },
    {
        id='addict', label='Addict', loop=true,
        type='anim', dict='anim@scripted@island@special_peds@dave@hs4_dave_stage3_ig7', clip='base',
        tags={'sonstiges','anim','island','scripted','addict'},
    },
    {
        id='showerf', label='Shower Enter Female', loop=true,
        type='anim', dict='mp_safehouseshower@female@', clip='shower_enter_into_idle',
        tags={'showerf','safehouseshower','shower enter female','female','sonstiges'},
    },
    {
        id='showerf2', label='Shower Female', loop=true,
        type='anim', dict='mp_safehouseshower@female@', clip='shower_idle_a',
        tags={'shower female','safehouseshower','showerf2','female','sonstiges'},
    },
    {
        id='showerf3', label='Shower Female 2', loop=true,
        type='anim', dict='mp_safehouseshower@female@', clip='shower_idle_b',
        tags={'showerf3','safehouseshower','female','sonstiges','shower female 2'},
    },
    {
        id='showerm', label='Shower Enter Male', loop=true,
        type='anim', dict='mp_safehouseshower@male@', clip='male_shower_idle_a',
        tags={'safehouseshower','sonstiges','shower enter male','male','showerm'},
    },
    {
        id='showerm2', label='Shower Male 2', loop=true,
        type='anim', dict='mp_safehouseshower@male@', clip='male_shower_idle_b',
        tags={'safehouseshower','sonstiges','shower male 2','male','showerm2'},
    },
    {
        id='showerm3', label='Shower Male 3', loop=true,
        type='anim', dict='mp_safehouseshower@male@', clip='male_shower_idle_c',
        tags={'safehouseshower','sonstiges','shower male 3','showerm3','male'},
    },
    {
        id='showerm4', label='Shower Male 4', loop=true,
        type='anim', dict='mp_safehouseshower@male@', clip='male_shower_idle_d',
        tags={'shower male 4','safehouseshower','showerm4','sonstiges','male'},
    },
    {
        id='picklock', label='Picklock', loop=true,
        type='anim', dict='missheistfbisetup1', clip='hassle_intro_loop_f',
        tags={'picklock','missheistfbisetup1','sonstiges'},
    },
    {
        id='buzz', label='Buzz Door', loop=false,
        type='anim', dict='anim@apt_trans@buzzer', clip='buzz_reg',
        tags={'buzzer','sonstiges','anim','buzz door','trans','buzz'},
    },
    {
        id='showboobs', label='Show Boobs', loop=false,
        type='anim', dict='mini@strip_club@backroom@', clip='stripper_b_backroom_idle_b',
        tags={'show boobs','club','sonstiges','mini','showboobs','strip'},
    },
    {
        id='calldogr', label='Call Dog - Right', loop=false,
        type='anim', dict='missfra0_chop_find', clip='call_chop_r',
        tags={'find','chop','sonstiges','calldogr','call dog - right','missfra0'},
    },
    {
        id='calldogl', label='Call Dog - Left', loop=false,
        type='anim', dict='missfra0_chop_find', clip='call_chop_l',
        tags={'find','chop','call dog - left','sonstiges','calldogl','missfra0'},
    },
    {
        id='block', label='Block Face', loop=true,
        type='anim', dict='missheist_agency3ashield_face', clip='idle',
        tags={'face','sonstiges','agency3ashield','block face','block','missheist'},
    },
    {
        id='boxing3', label='Boxing 3', loop=true,
        type='anim', dict='melee@unarmed@streamed_core_fps', clip='idle',
        tags={'sonstiges','unarmed','boxing3','streamed','boxing 3','melee'},
    },
    {
        id='capoeira', label='Capoeira', loop=true,
        type='anim', dict='anim@amb@nightclub@mini@dance@dance_solo@techno_karate@', clip='med_right',
        tags={'capoeira','sonstiges','mini','anim','nightclub'},
    },
    {
        id='capoeira2', label='Capoeira 2', loop=true,
        type='anim', dict='anim@amb@nightclub@mini@dance@dance_solo@techno_karate@', clip='high_right_down',
        tags={'capoeira2','capoeira 2','sonstiges','mini','anim','nightclub'},
    },
    {
        id='taichi', label='Tai chi', loop=true,
        type='anim', dict='anim@veh@van@mule5@rps', clip='lean_forward_idle',
        tags={'mule5','tai chi','sonstiges','anim','taichi'},
    },
    {
        id='taichi2', label='Tai chi - Awkward', loop=false,
        type='anim', dict='switch@trevor@rand_temple', clip='tai_chi_trevor',
        tags={'sonstiges','switch','taichi2','tai chi - awkward','rand','trevor'},
    },
    {
        id='zombiewalk3', label='Zombie Walk 3', loop=true,
        type='anim', dict='anim@ingame@move_m@zombie@core', clip='walk_up',
        tags={'zombie walk 3','ingame','sonstiges','zombiewalk3','move','anim'},
    },
    {
        id='zombiewalk4', label='Zombie Run - Circle', loop=true,
        type='anim', dict='anim@ingame@move_m@zombie@core', clip='run_turn_r3',
        tags={'zombiewalk4','ingame','zombie run - circle','sonstiges','move','anim'},
    },
    {
        id='zombieswipe', label='Zombie Swipe', loop=false,
        type='anim', dict='anim@ingame@melee@unarmed@streamed_core_zombie', clip='short_-180_punch',
        tags={'zombieswipe','ingame','sonstiges','anim','zombie swipe','melee'},
    },
    {
        id='zombieswipe2', label='Zombie Swipe 2', loop=false,
        type='anim', dict='anim@ingame@melee@unarmed@streamed_variations_zombie', clip='heavy_punch_b_var_2',
        tags={'ingame','zombieswipe2','sonstiges','anim','zombie swipe 2','melee'},
    },
    {
        id='zombieswipe3', label='Zombie Swipe 3', loop=false,
        type='anim', dict='anim@ingame@melee@unarmed@streamed_core_zombie', clip='short_90_punch',
        tags={'ingame','zombie swipe 3','zombieswipe3','sonstiges','anim','melee'},
    },
    {
        id='kick3', label='Kick 3', loop=false,
        type='anim', dict='melee@unarmed@streamed_core', clip='kick_close_a',
        tags={'kick3','sonstiges','unarmed','streamed','kick 3','melee'},
    },
    {
        id='crosshands', label='Cross hands', loop=true,
        type='anim', dict='anim@amb@carmeet@checkout_car@', clip='male_e_base',
        tags={'carmeet','cross hands','sonstiges','anim','checkout','crosshands'},
    },
}

-- ─── Fast Lookup Maps ───────────────────────────────────────
EmotesFlat = {}
EmotesAll  = {}

for cat, list in pairs(Emotes) do
    for _, emote in ipairs(list) do
        emote.category = cat
        EmotesFlat[emote.id] = emote
        EmotesAll[#EmotesAll + 1] = emote
    end
end

-- ─────────────────────────────────────────────────────────────
-- 🔌  CUSTOM EMOTE PACK SYSTEM
-- ─────────────────────────────────────────────────────────────
-- Drop .lua files into data/custom/ — they are auto-loaded via fxmanifest wildcard.
-- Drop .ycd stream files into stream/[Your Pack Name]/ — FiveM handles the rest.
-- Call AddCustomEmotes({...}) in your pack file — done.
-- ─────────────────────────────────────────────────────────────

-- Auto-categorize by keywords when no category is specified
local function AutoCategorize(emote)
    local text = ((emote.id or '') .. ' ' .. (emote.label or '')):lower()

    local rules = {
        { cat = 'dance',     kw = { 'dance','twerk','shuffle','rave','grind','groove','club','disco','boogie','breakdanc' } },
        { cat = 'sit',       kw = { 'sit','chair','bench','kneel','crouch','squat','lay','lying','sleep','meditat','yoga','pushup','situp','sunbath','floor','ground' } },
        { cat = 'social',    kw = { 'phone','text','selfie','photo','film','record','chat','call','mobile','tablet','laptop' } },
        { cat = 'music',     kw = { 'music','guitar','drum','dj','mix','sing','piano','sax','bass','bongo','instrument','violin','trumpet','beatbox' } },
        { cat = 'celebrate', kw = { 'celebr','victory','win','cheer','party','triumph','champion','goal','pose_win' } },
        { cat = 'reaction',  kw = { 'laugh','cry','angry','scared','shock','confused','vomit','facepalm','annoyed','dead','arrest','surrender','handsup' } },
        { cat = 'gesture',   kw = { 'wave','point','bow','salute','clap','flex','taunt','beckon','nod','shrug','peace','fist','thumb','dab','robot','griddy','floss' } },
        { cat = 'idle',      kw = { 'stand','lean','idle','guard','hang','impatient','pose','statue','lounge','relax','lookout','patrol' } },
        { cat = 'work',      kw = { 'atm','bbq','drill','hammer','weld','garden','maid','janitor','medic','clipboard','fish','sweep','broom','repair','mechanic' } },
    }

    for _, rule in ipairs(rules) do
        for _, kw in ipairs(rule.kw) do
            if text:find(kw, 1, true) then
                return rule.cat
            end
        end
    end
    return 'misc'
end

-- Validate a custom emote entry
local function ValidateEmote(emote)
    if type(emote) ~= 'table' then return false, 'not a table' end
    if not emote.id     or type(emote.id)    ~= 'string' then return false, 'missing id' end
    if not emote.label  or type(emote.label) ~= 'string' then return false, 'missing label' end
    local t = emote.type or 'anim'
    if t == 'anim' then
        if not emote.dict then return false, 'missing dict' end
        if not emote.clip then return false, 'missing clip' end
    elseif t == 'scenario' then
        if not emote.scenario then return false, 'missing scenario' end
    else
        return false, 'invalid type: ' .. tostring(t)
    end
    return true
end

-- Public API — call this from your custom pack files
function AddCustomEmotes(list)
    if type(list) ~= 'table' then
        print('^1[RDE EMOTES] AddCustomEmotes: expected table, got ' .. type(list) .. '^7')
        return
    end

    local added, skipped = 0, 0

    for _, emote in ipairs(list) do
        local ok, err = ValidateEmote(emote)
        if not ok then
            print(('^3[RDE EMOTES] Skipping custom emote: %s^7'):format(err))
            skipped = skipped + 1
        else
            -- Defaults
            emote.type  = emote.type  or 'anim'
            emote.loop  = emote.loop  ~= false -- default true
            emote.tags  = emote.tags  or {}
            emote.custom = true  -- mark as custom for potential future UI distinction

            -- Auto-categorize if needed
            local cat = emote.category and emote.category or AutoCategorize(emote)
            emote.category = cat

            -- Register into category table
            if not Emotes[cat] then Emotes[cat] = {} end
            table.insert(Emotes[cat], emote)

            -- Register into lookup maps
            if EmotesFlat[emote.id] then
                print(('^3[RDE EMOTES] Custom emote ID conflict, overwriting: %s^7'):format(emote.id))
            end
            EmotesFlat[emote.id] = emote
            EmotesAll[#EmotesAll + 1] = emote

            added = added + 1
        end
    end

    print(('^2[RDE EMOTES] Custom pack loaded: %d added, %d skipped^7'):format(added, skipped))
end
