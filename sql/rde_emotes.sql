-- rde_emotes | sql/rde_emotes.sql
-- Datenbankschema für Favoriten

SET NAMES 'utf8mb4';

CREATE TABLE IF NOT EXISTS `rde_emotes_favorites` (
    `id`         INT          NOT NULL AUTO_INCREMENT,
    `char_id`    VARCHAR(64)  NOT NULL,
    `emote_id`   VARCHAR(128) NOT NULL,
    `created_at` TIMESTAMP    DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    UNIQUE KEY `uq_char_emote` (`char_id`, `emote_id`),
    INDEX `idx_char_id` (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
