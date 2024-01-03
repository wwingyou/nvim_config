# init.vim

## Color Scheme

- catppuccin-mocha

## Plugins

- lazy.vim
- treesiter
- nvim-cmp
- mini.pairs
- lualine.nvim
- telescope.nvim

## LSP

- tsserver(typescript, javascript)
- rust_analyzer(rust)
- java-language-server(java)

### Issue

- java-language-server를 JDK 18.0.1 이상 버전이 필요하다. ARM64에서는 OpenJDK 자동 다운로드가 되지 않으므로 JDK 18 이상을 설치한 후 JAVA_HOME을 설정해준 뒤 lsp를 설치해야 제대로 작동한다.
