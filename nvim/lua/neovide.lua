if vim.g.neovide then
  -- vim.cmd("colorscheme default")
  vim.opt.guifont = { "Dank Mono", "h10" }
  vim.cmd("set linespace=4")
  vim.cmd("let g:neovide_floating_blur_amount_x = 2.0")
  vim.cmd("let g:neovide_floating_blur_amount_y = 2.0")
  vim.cmd("let g:neovide_scroll_animation_length = 0.3")
  vim.cmd("let g:neovide_remember_window_size = v:true")
  vim.cmd("let g:neovide_fullscreen = v:true")
  vim.cmd("let g:neovide_refresh_rate = 60")
  vim.cmd("let g:neovide_hide_mouse_when_typing = v:true")
  vim.cmd("let g:neovide_input_use_logo = v:false")
  vim.cmd("let g:neovide_cursor_animate_command_line = v:true")

  -- cursor settings
  vim.cmd("let g:neovide_cursor_animation_length = 0.13")
  vim.cmd("let g:neovide_cursor_trail_size = 0.8")
  vim.cmd("let g:neovide_cursor_animate_in_insert_mode = v:true")
  vim.cmd("let g:neovide_cursor_animate_command_line = v:true")
  vim.cmd("let g:neovide_cursor_vfx_mode = 'pixiedust'")
  vim.cmd("let g:neovide_cursor_vfx_opacity = 300.0")
  vim.cmd("let g:neovide_cursor_vfx_particle_lifetime = 1.2")
  vim.cmd("let g:neovide_cursor_vfx_particle_density = 60.0")
  vim.cmd("let g:neovide_cursor_vfx_particle_speed = 10.0")
  vim.cmd("let g:neovide_cursor_vfx_particle_phase = 1.5")
  vim.cmd("let g:neovide_cursor_vfx_particle_curl = 1.0")
end
