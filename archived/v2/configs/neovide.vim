if exists("g:neovide")
	set guifont=MonoLisa:h13
	" set guifont=Recursive:h11
    colorscheme nord
	set linespace=2
	let g:neovide_floating_blur_amount_x = 2.0
	let g:neovide_floating_blur_amount_y = 2.0
	let g:neovide_scroll_animation_length = 0.3
	let g:neovide_remember_window_size = v:true
	let g:neovide_fullscreen = v:true
	let g:neovide_refresh_rate = 60
	let g:neovide_hide_mouse_when_typing = v:true
	let g:neovide_input_use_logo = v:false
    let g:neovide_cursor_animate_command_line = v:true

	" cursor settings
	let g:neovide_cursor_animation_length = 0.13
	let g:neovide_cursor_trail_size = 0.8
	let g:neovide_cursor_animate_in_insert_mode = v:true
	let g:neovide_cursor_animate_command_line = v:true
	let g:neovide_cursor_vfx_mode = "pixiedust"
	let g:neovide_cursor_vfx_opacity = 300.0
	let g:neovide_cursor_vfx_particle_lifetime = 1.2
	let g:neovide_cursor_vfx_particle_density = 60.0
	let g:neovide_cursor_vfx_particle_speed = 10.0
	let g:neovide_cursor_vfx_particle_phase = 1.5
	let g:neovide_cursor_vfx_particle_curl = 1.0
endif

" default
" let g:neovide_cursor_animation_length = 0.13
" let g:neovide_cursor_trail_size = 0.8
" let g:neovide_cursor_animate_in_insert_mode = v:true
" let g:neovide_cursor_animate_command_line = v:true
" let g:neovide_cursor_vfx_opacity = 200.0
" let g:neovide_cursor_vfx_particle_lifetime = 1.2
" let g:neovide_cursor_vfx_particle_density = 7.0
" let g:neovide_cursor_vfx_particle_speed = 10.0
" let g:neovide_cursor_vfx_particle_phase = 1.5
" let g:neovide_cursor_vfx_particle_curl = 1.0
