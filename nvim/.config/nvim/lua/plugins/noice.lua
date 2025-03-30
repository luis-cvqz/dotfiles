return {
  "folke/noice.nvim",
  lazy = true,
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  opts = {
    lsp = {
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true,
      },
    },
    presets = {
      bottom_search = true,          -- Usa una barra de búsqueda clásica abajo
      command_palette = true,        -- Muestra comandos en un estilo flotante
      long_message_to_split = true,  -- Divide mensajes largos en una ventana flotante
      inc_rename = false,            -- Desactiva renombrado incremental (opcional)
      lsp_doc_border = true,         -- Añade bordes a la documentación LSP
    },
    cmdline = {
      enabled = true,                -- Habilita la línea de comandos flotante
      view = "cmdline_popup",        -- Estilo flotante
    },
    messages = {
      enabled = true,                -- Habilita mensajes personalizados
    },
    popupmenu = {
      enabled = true,                -- Habilita el menú emergente para comandos
      backend = "nui",               -- Usa NUI para el menú
    },
  },
}
