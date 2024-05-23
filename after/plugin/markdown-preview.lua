-- Set to 1, Neovim will open the preview window after entering the Markdown buffer
-- Default: 0
vim.g.mkdp_auto_start = 1

-- Set to 1, Neovim will auto close the current preview window when changing
-- from Markdown buffer to another buffer
-- Default: 1
vim.g.mkdp_auto_close = 1

-- Set to 1, Neovim will refresh Markdown when saving the buffer or
-- when leaving insert mode. Default 0 is auto-refresh Markdown as you edit or
-- move the cursor
-- Default: 0
vim.g.mkdp_refresh_slow = 0

-- Set to 1, the MarkdownPreview command can be used for all files,
-- by default, it can be used in Markdown files only
-- Default: 0
vim.g.mkdp_command_for_global = 0

-- Set to 1, the preview server is available to others in your network.
-- By default, the server listens on localhost (127.0.0.1)
-- Default: 0
vim.g.mkdp_open_to_the_world = 0

-- Use a custom IP to open the preview page.
-- Useful when you work in remote Neovim and preview on a local browser.
-- For more details, see: https://github.com/iamcco/markdown-preview.nvim/pull/9
-- Default: empty
vim.g.mkdp_open_ip = ""

-- Specify a browser to open the preview page
-- For a path with space
-- Valid: `/path/with\ space/xxx`
-- Invalid: `/path/with\\ space/xxx`
-- Default: empty
vim.g.mkdp_browser = ""

-- Set to 1, echo the preview page URL in the command line when opening the preview page
-- Default: 0
vim.g.mkdp_echo_preview_url = 0

-- A custom Neovim function name to open the preview page
-- This function will receive the URL as a parameter
-- Default: empty
vim.g.mkdp_browserfunc = ""

-- Options for Markdown rendering
-- mkit: markdown-it options for rendering
-- katex: KaTeX options for math
-- uml: markdown-it-plantuml options
-- maid: mermaid options
-- disable_sync_scroll: whether to disable sync scroll, default 0
-- sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
--   middle: means the cursor position is always at the middle of the preview page
--   top: means the Vim top viewport always shows up at the top of the preview page
--   relative: means the cursor position is always at relative positon of the preview page
-- hide_yaml_meta: whether to hide YAML metadata, default is 1
-- sequence_diagrams: js-sequence-diagrams options
-- content_editable: if enable content editable for preview page, default: v:false
-- disable_filename: if disable filename header for preview page, default: 0
vim.g.mkdp_preview_options = {
    mkit = {},
    katex = {},
    uml = {},
    maid = {},
    disable_sync_scroll = 0,
    sync_scroll_type = "middle",
    hide_yaml_meta = 1,
    sequence_diagrams = {},
    flowchart_diagrams = {},
    content_editable = vim.fn.has("nvim-0.5.0") == 1,
    disable_filename = 0,
    toc = {}
}

-- Use a custom Markdown style. Must be an absolute path
-- Like "/Users/username/markdown.css" or vim.fn.expand("~/markdown.css")
vim.g.mkdp_markdown_css = ""

-- Use a custom highlight style. Must be an absolute path
-- Like "/Users/username/highlight.css" or vim.fn.expand("~/highlight.css")
vim.g.mkdp_highlight_css = ""

-- Use a custom port to start the server or empty for random
vim.g.mkdp_port = ""

-- Preview page title
-- ${name} will be replaced with the file name
vim.g.mkdp_page_title = "「${name}」"

-- Use a custom location for images
vim.g.mkdp_images_path = "~/.markdown_images"

-- Recognized filetypes
-- These filetypes will have MarkdownPreview... commands
vim.g.mkdp_filetypes = {"markdown"}

-- Set a default theme (dark or light)
-- By default, the theme is defined according to the preferences of the system
vim.g.mkdp_theme = "dark"

-- Combine preview window
-- Default: 0
-- If enabled, it will reuse the previously opened preview window when you preview a Markdown file.
-- Ensure to set vim.g.mkdp_auto_close = 0 if you have enabled this option
vim.g.mkdp_combine_preview = 0

-- Auto refetch combine preview contents when changing the Markdown buffer
-- Only when vim.g.mkdp_combine_preview is 1
vim.g.mkdp_combine_preview_auto_refresh = 1

-- Enable code highlighting for markdown files  
vim.g.markdown_fenced_languages = {
    "css",
    "html",
    "javascript",
    "lua",
    "python",
    "typescript",
    "vim",
}
