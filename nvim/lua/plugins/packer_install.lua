vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
  -- Автоустановка пакетного менеджера Packer
  use("wbthomason/packer.nvim")
  ---------------------------------------------------------
  -- ПЛАГИНЫ ВНЕШНЕГО ВИДА
  ---------------------------------------------------------
  -- Информационная строка внизу
  use("kyazdani42/nvim-web-devicons")
  use({
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true },
    config = function()
      require("lualine").setup()
    end,
  })
  -- Тема в стиле Rose Pine
  use { "rose-pine/neovim", as = "rose-pine" }
  use { "catppuccin/nvim", as = "catppuccin" }

  use {
    "startup-nvim/startup.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    config = function()
      require "startup".setup()
    end
  }
  ---------------------------------------------------------
  -- МОДУЛИ РЕДАКТОРА
  ---------------------------------------------------------
  -- Табы с вкладками сверху
  use({
    "akinsho/bufferline.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("bufferline").setup({})
    end,
  })
  -- Структура классов и функций в файле
  use("majutsushi/tagbar")
  -- Файловый менеджер
  use({
    "kyazdani42/nvim-tree.lua",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("nvim-tree").setup({})
    end,
  })
  -- popup окошки
  use("nvim-lua/popup.nvim")
  -- Работа клавиш на других раскладках
  use("Wansmer/langmapper.nvim")
  -- Интеграция имулятора терменала
  use({
    "jlesquembre/nterm.nvim",
    requires = "Olical/aniseed",
    config = function()
      require("plugins/nterm")
    end,
  })
  use({
    "akinsho/toggleterm.nvim",
    config = function()
      require("plugins/toggleterm")
    end,
  })
  -- MD превью
  use("davidgranstrom/nvim-markdown-preview")
  ---------------------------------------------------------
  -- ПОИСК
  ---------------------------------------------------------
  -- Наш FuzzySearch
  use({
    "nvim-telescope/telescope.nvim",
    requires = { { "nvim-lua/plenary.nvim" } },
    config = function()
      require("telescope").setup({})
    end,
  })

  ---------------------------------------------------------
  -- КОД
  ---------------------------------------------------------
  -- автоматические закрывающиеся скобки
  use({
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup()
    end,
  })
  -- treesitter
  use({
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require("plugins/treesitter")
    end,
  })
  -- Комментирует по <gc> все, вне зависимости от языка программирования
  use({
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
  })
  -- LSP
  -- use 'neovim/nvim-lspconfig'
  -- use { 'williamboman/nvim-lsp-installer',
  --     config = function()
  --     require('plugins/lsp-installer')
  -- end }
  use({
    "junnplus/lsp-setup.nvim",
    requires = {
      "neovim/nvim-lspconfig",
      "williamboman/mason.nvim",           -- optional
      "williamboman/mason-lspconfig.nvim", -- optional
    },
    config = function()
      require("plugins/lsp-setup")
    end,
  })
  use({
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup({})
    end,
  })
  -- Автокомплит
  use({
    "onsails/lspkind-nvim",
    config = function()
      require("plugins/lspkind")
    end,
  })
  use({
    "hrsh7th/nvim-cmp",
    requires = {
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-emoji",
      "hrsh7th/cmp-nvim-lsp-signature-help",
      "hrsh7th/cmp-nvim-lua",
    },
    config = function()
      require("plugins/cmp")
    end,
  })
  -- интеграция git
  use({
    "lewis6991/gitsigns.nvim",
    config = function()
      require("plugins/gitsigns")
    end,
  })
  -- Форматирование кода
  use({
    "mhartington/formatter.nvim",
    config = function()
      require("plugins/formatter")
    end,
  })
end)
