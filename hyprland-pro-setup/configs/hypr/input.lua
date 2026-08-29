-- -----------------------------------------------------
-- Input & Touchpad (Clean Code Refactored)
-- -----------------------------------------------------

hl.config({
    input = {
        -- TILLAR: Ingliz, Rus va O'zbek lotin
        kb_layout    = "us,ru,uz",
        kb_variant   = "",
        kb_model     = "",
        -- Alt + Shift orqali tillarni almashtirish
        kb_options   = "grp:alt_shift_toggle",
        kb_rules     = "",

        -- RAQAMLAR (NUMPAD): Har doim yoniq turishi
        numlock_by_default = true,

        -- SICHQONCHA: Kursor qayerda bo'lsa, o'sha oyna aktivlashadi (1)
        follow_mouse = 1,
        sensitivity  = 0, -- Sezgirlik (0 = standart)

        touchpad     = {
            natural_scroll = true,       -- Mac uslubida aylantirish
            tap_to_click = true,         -- Urib bosish
            tap_and_drag = true,         -- Ikki marta urib tortish
            clickfinger_behavior = true, -- 1=Chap, 2=O'ng, 3=O'rta klik
            scroll_factor = 0.8,         -- Silliqroq aylanish tezligi
        },
    },
})
