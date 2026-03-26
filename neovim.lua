return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#000000",
                bg_dark = "#000000",
                bg_highlight = "#c3892a",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#fefafa",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#fefafc",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#c3892a",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#ff525b",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#ff5263",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#fff42b",
                -- green: Comments, strings, success states, git additions
                green = "#9dff16",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#f2ff67",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#3f9fff",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#f5006b",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#ff529d",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
