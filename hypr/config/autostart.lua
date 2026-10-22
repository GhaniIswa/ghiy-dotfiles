-- Auto-start config
-- if you dont use UWSM add your auto start programs here, otherwise use XDG autostart https://wiki.archlinux.org/title/XDG_Autostart

hl.on("hyprland.start", function ()
    hl.exec_cmd("systemctl --user start hyprpolkitagent")
    hl.exec_cmd("dbus-update-activation-environment --systemd --all")
    hl.exec_cmd("waybar")
    hl.exec_cmd("awww-daemon & sleep 0.3 && awww img /home/ghani/Pictures/Wallpapers/me.png")
end)
