local status_ok, neotree = pcall(require, "neo-tree")
if not status_ok then
    return
end

neotree.setup({
    close_if_last_window = true,
    popup_border_style = "rounded",
    enable_git_status = true,
    enable_diagnostics = true,
    filesystem = {
        filtered_items = {
            visible = true,
            hide_dotfiles = false,
            hide_gitignored = false,
        },
        follow_current_file = {
            enabled = true,
            leave_dirs_open = false,
        },
        use_libuv_file_watcher = true,
    },

    default_component_configs = {
        git_status = {
            symbols = {
                added = "",
                modified = "",
                deleted = "✖DDx",
                renamed = "󰁕",
                untracked = "?",
                ignored = "x",
                unstaged = "",
                staged = "",
                conflict = "",
            },
        },

        indent = {
            with_expanders = true,
            expander_collapsed = "",
            expander_expanded = "",
            expander_highlight = "NeoTreeExpander",
        },
    },

    event_handlers = {
        {
            event = "file_opened",
            handler = function(file_path)
                require("neo-tree.command").execute({ action = "close" })
            end,
        },
    },
})
