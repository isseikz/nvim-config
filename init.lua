-- 行番号を表示して、コードの位置を把握しやすくする
vim.opt.number = true

-- 自動インデントを有効にして、コードの構造を整えやすくする
vim.opt.autoindent = true

-- タブ文字の幅をスペース2つ分に設定
vim.opt.tabstop = 2

-- 自動インデントや <Tab> を押したときの幅をスペース2つ分に設定
vim.opt.shiftwidth = 2

-- タブの代わりにスペースを使う
vim.opt.expandtab = true

-- 新しい垂直分割を右側に開く
vim.opt.splitright = true

-- システムのクリップボードを使用する（コピー・貼り付けをシームレスに行う）
vim.opt.clipboard = "unnamed"

-- 検索結果をハイライト表示する
vim.opt.hlsearch = true

-- シンタックスハイライトを有効にする
vim.cmd("syntax enable")

-- カラースキームを設定する
vim.cmd("colorscheme desert")

-- ファイルの変更を検知して、自動で読み込む
vim.opt.autoread = true

-- 括弧の対応を自動でハイライト表示する
vim.opt.showmatch = true

-- Typescript Launguage Server を起動する
vim.lsp.enable("ts_ls")

-- Lazy.nvim (パッケージマネージャー)の導入
require("config.lazy")

-- <leader>キーをスペースキーに指定
vim.g.mapleader = ' '

