local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
-----------------------------------------------------------
-- НАВИГАЦИЯ
-----------------------------------------------------------
-- Отключаем стрелочки в Нормальном Режиме.
map("", "<up>", ':echoe "Use hjkl, bro"<CR>', { noremap = true, silent = false })
map("", "<down>", ':echoe "Use hjkl, bro"<CR>', { noremap = true, silent = false })
map("", "<left>", ':echoe "Use hjkl, bro"<CR>', { noremap = true, silent = false })
map("", "<right>", ':echoe "Use hjkl, bro"<CR>', { noremap = true, silent = false })
-- Переключение вкладок с помощью TAB или shift-tab (akinsho/bufferline.nvim)
map("n", "<Tab>", ":BufferLineCycleNext<CR>", default_opts)
map("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", default_opts)
-- Закрытие буффера/табы
map("n", "'<space>", ":bd<CR>", default_opts)
-- <F5> разные вариации нумераций строк, можно переключаться на ходу
map("n", "<F5>", ':exec &nu==&rnu? "se nu!" : "se rnu!"<CR>', default_opts)

-----------------------------------------------------------
-- РЕЖИМЫ
-----------------------------------------------------------
-- Выходим в нормальный режим через <jk>
map("i", "jk", "<Esc>", { noremap = true })
-----------------------------------------------------------
-- ПОИСК
-----------------------------------------------------------
-- Выключить подсветку поиска через комбинацию ,+<space>
map("n", ",<space>", ":nohlsearch<CR>", { noremap = true })
-- Fuzzy Search. CTRL+a для поиска по файлам, CTRL+p для поиска по буфферам
map("n", "<C-a>", [[ <cmd>lua require('telescope.builtin').find_files()<cr> ]], default_opts)
map("n", "<C-p>", [[ <cmd>lua require('telescope.builtin').buffers()<cr> ]], default_opts)
-- <S-F5> Греповский поиск слова под курсором
map("n", "<S-F5>", [[<cmd>lua require('telescope.builtin').grep_string()<cr>]], default_opts)
-- <S-F4> Греповский поиск слова в модальном окошке
map("n", "<S-F4>", [[<cmd>lua require('telescope.builtin').live_grep()<cr>]], default_opts)
-----------------------------------------------------------
-- ФАЙЛЫ
-----------------------------------------------------------
-- <F8>  Показ дерева классов и функций, плагин majutsushi/tagbar
map("n", "<F8>", ":TagbarToggle<CR>", default_opts)
-- <F4> Дерево файлов. Для иконок следует установить Nerd Font
map("n", "<F4>", ":NvimTreeRefresh<CR>:NvimTreeToggle<CR>", default_opts)
