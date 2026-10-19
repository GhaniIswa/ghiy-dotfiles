local status_ok, ibl = pcall(require, "ibl")
if not status_ok then
    return
end

ibl.setup({
    indent = {
        char = "│", -- Karakter garis vertikal (bisa diganti "▏", "¦", atau spasi kosong)
    },
    scope = {
        enabled = true, -- Mengaktifkan garis khusus untuk blok scope/kurung aktif yang sedang disorot
        show_start = true,
        show_end = true,
    },
})
