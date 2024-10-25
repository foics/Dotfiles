require("lualine").setup {
    options = {
        theme = "auto",

        globalstatus = true
    },
    sections = {
        lualine_a = {"mode"},
        lualine_b = {{"branch", icon = ''}, {"diagnostics", sections = { "error" }}},
        lualine_c = {"filename"},
        lualine_x = {"filetype"},
        lualine_y = {"progress"},
        lualine_z = {"location"}
    }
}
