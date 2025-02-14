local M = {
--return {
    "vim-airline/vim-airline",
    dependencies = {
        "vim-airline/vim-airline-themes",
    },
    config = function()
        vim.api.nvim_exec(
            [[
                let g:airline_theme="onedark"
                let g:airline_powerline_fonts = 1
                let g:airline#extensions#tabline#enabled = 1
                if !exists('g:airline_symbols')
                    let g:airline_symbols = {}
                endif
                let g:airline_left_sep = ''
                let g:airline_left_alt_sep = ''
                let g:airline_right_sep = ''
                let g:airline_right_alt_sep = ''
            ]], 
            false
        )
    end,
}
return M
