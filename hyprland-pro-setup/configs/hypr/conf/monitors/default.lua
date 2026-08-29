-- -------------------------------------------------------
-- 🖥️ Monitor Setup
-- name: "Optimized 144Hz"
-- -------------------------------------------------------

hl.config({
    monitor = {
        -- Asosiy noutbuk ekrani: 1080p, eng yuqori 144 Hz kadrlar tezligi, chap tomonda (0x0), masshtab (scale) 100%
        "eDP-1, 1920x1080@144, 0x0, 1",
        
        -- Kelajakda ulanadigan har qanday qo'shimcha monitorlar uchun universal qoida (avtomatik o'ngga tushadi)
        ", preferred, auto-right, 1"
    }
})
