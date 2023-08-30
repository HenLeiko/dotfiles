local opt = vim.opt

-----------------------------------------------------------
-- ОБЩИЕ ОПЦИИ
-----------------------------------------------------------
opt.mouse = "a"        --Включит мышь
opt.encoding = "utf-8" --Кодировка
opt.showcmd = true     --Отображение команд
vim.cmd([[
filetype indent plugin on
syntax enable
]])
opt.swapfile = false --Не создаем свап файлы
opt.clipboard = "unnamedplus"

-----------------------------------------------------------
-- ВИЗУАЛЬНЫЕ ОПЦИИ
-----------------------------------------------------------
opt.number = true    --Номер строк сбоку
opt.wrap = true      --Длинные линии будет видно
opt.expandtab = true --???
opt.tabstop = 4      --1 tab = 4 пробела
opt.smartindent = true
opt.shiftwidth = 4   --Смещаем на 4 пробела

-- 2 таба для определённых файлов
vim.cmd([[
autocmd FileType xml,html,xhtml,css,scss,javascript,lua,yaml,htmljinja setlocal shiftwidth=2 tabstop=2
]])

opt.so = 5              --Отступ курсора от края экрана
opt.foldcolumn = "2"    --Ширина колонки для фолдов
opt.colorcolumn = "119" --Расположение цветной колонки

-- remove line lenght marker for selected filetypes
vim.cmd([[autocmd FileType text,markdown,html,xhtml,javascript setlocal cc=0]])

opt.cursorline = true -- Подсветка строки с курсором
opt.termguicolors = true

-- Компактный вид у тагбара и Отк. сортировка по имени у тагбара
vim.g.tagbar_compact = 1
vim.g.tagbar_sort = 0

-----------------------------------------------------------
-- НАСТРОЙКИ ПОИСКА
-----------------------------------------------------------
-- Будет игнорировать регистер букв при поиске
opt.ignorecase = true
opt.smartcase = true

-----------------------------------------------------------
-- ПОЛЕЗНЫЕ ФИШКИ
-----------------------------------------------------------
-- Подсвечивает на доли секунды скопированную часть текста
vim.api.nvim_exec(
  [[
augroup YankHighlight
autocmd!
autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=300}
augroup end
]],
  false
)
-- Цветовая схема catppuccin
vim.cmd.colorscheme "catppuccin-mocha"
