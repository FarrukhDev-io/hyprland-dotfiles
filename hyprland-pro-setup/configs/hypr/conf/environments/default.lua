-- -----------------------------------------------------
-- Environment Variables (Optimized for Wayland + NVIDIA)
-- -----------------------------------------------------

-- NVIDIA Maxsus O'zgaruvchilar (Qotishni yo'q qilish va renderlash uchun)
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("GBM_BACKEND", "nvidia-drm")
hl.env("__NV_PRIME_RENDER_OFFLOAD", "1")
hl.env("__VK_LAYER_NV_optimus", "NVIDIA_only")

-- Wayland majburiy o'zgaruvchilari (XWayland o'rniga toza Wayland ishlatish)
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("GDK_BACKEND", "wayland,x11")
hl.env("SDL_VIDEODRIVER", "wayland")
hl.env("CLUTTER_BACKEND", "wayland")

-- Electron dasturlari (VSCode, Discord, Chrome) xiralashib qolmasligi uchun
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")
hl.env("OZONE_PLATFORM", "wayland")

-- XDG variables
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")
