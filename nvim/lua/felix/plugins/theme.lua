return {
  {
    "catppuccin/nvim",
    priority = 1000 ,
--    config = true,
    lazy = false,
    config = function()
        require("catppuccin").setup({
            background = { -- :h background
                light = "latte",
                dark = "mocha",
            },
            transparent_background = true, -- disables setting the background color.
            float = {
                transparent = true, -- enable transparent floating windows
                solid = true, -- use solid styling for floating windows, see |winborder|
            },
            lsp_styles = { -- Handles the style of specific lsp hl groups (see `:h lsp-highlight`).
                virtual_text = {
                    errors = { "italic" },
                    hints = { "italic" },
                    warnings = { "italic" },
                    information = { "italic" },
                    ok = { "italic" },
                },
                underlines = {
                    errors = { "underline" },
                    hints = { "underline" },
                    warnings = { "underline" },
                    information = { "underline" },
                    ok = { "underline" },
                },
                inlay_hints = {
                    background = true,
                },
            },
            custom_highlights = false,
            default_integrations = true,
            auto_integrations = false,
            integrations = {
                cmp = true,
                gitsigns = true,
                nvimtree = true,
                notify = false,
                mini = {
                    enabled = true,
                    indentscope_color = "",
                },
            },
        })

        -- setup must be called before loading
        vim.cmd.colorscheme "catppuccin"
end,
  },
}

