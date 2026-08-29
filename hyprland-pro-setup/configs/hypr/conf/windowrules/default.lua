-- -----------------------------------------------------
-- Window Rules (Window and Layer UI Modifications)
-- -----------------------------------------------------

hl.config({
    layerrule = {
        -- SwayNC (Kalendar va Yon panel) Blur effekti
        "blur, swaync-control-center",
        "blur, swaync-notification-window",
        "ignorezero, swaync-control-center",
        "ignorezero, swaync-notification-window",
        "ignorealpha 0.5, swaync-control-center",
        "ignorealpha 0.5, swaync-notification-window",

        -- Rofi (Visual qidiruv menyusi) Blur effekti
        "blur, rofi",
        "ignorezero, rofi",
        "ignorealpha 0.5, rofi",

        -- Waybar (Tepadagi panel) Blur effekti
        "blur, waybar",
        "ignorezero, waybar",
        "ignorealpha 0.5, waybar"
    }
})
