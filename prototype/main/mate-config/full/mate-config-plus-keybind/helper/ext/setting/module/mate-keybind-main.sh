

################################################################################
### Head: Setting / Module / Mate / Variable
##

mate_keybind_main_var_init () {

	THE_MATE_KEYBIND_MAIN_GSCHEMA_OVERRIDE_FILE_NAME="50_mate-keybind-main.gschema.override"

	THE_MATE_KEYBIND_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH="${THE_SOURCE_GSCHEMA_DIR_PATH}/${THE_MATE_KEYBIND_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"
	THE_MATE_KEYBIND_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH="${THE_TARGET_GSCHEMA_DIR_PATH}/${THE_MATE_KEYBIND_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"

	return 0

}

mate_keybind_main_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: mate_keybind_main_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Mate / Gschema"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_MATE_KEYBIND_MAIN_GSCHEMA_OVERRIDE_FILE_NAME=${THE_MATE_KEYBIND_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"
	util_debug_echo

	util_debug_echo "THE_MATE_KEYBIND_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH=${THE_MATE_KEYBIND_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo "THE_MATE_KEYBIND_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH=${THE_MATE_KEYBIND_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo

	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: mate_keybind_main_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

mate_keybind_main_var_init
mate_keybind_main_var_dump

##
### Tail: Setting / Module / Mate / Variable
################################################################################


################################################################################
### Head: Setting / Module / Mate / Portal
##

mate_keybind_main_config_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## mate_keybind_main_config_install"
	util_error_echo "##"
	util_error_echo




	mate_keybind_main_settings_set_all





	return 0

}


mate_keybind_main_asset_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## mate_keybind_main_asset_install"
	util_error_echo "##"
	util_error_echo "## > Do Nothing"
	util_error_echo "##"
	util_error_echo





	return 0

}


mate_keybind_main_prototype_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## mate_keybind_main_prototype_install"
	util_error_echo "##"
	util_error_echo




	mate_keybind_main_gschema_put_all




	#sys_gsettings_schemas_update


	return 0

}


##
### Tail: Setting / Module / Mate / Portal
################################################################################


################################################################################
### Head: Setting / Module / Mate / Settings
##

mate_keybind_main_settings_set_all () {


	mate_keybind_main_config_start




	return 0

}

##
### Tail: Setting / Module / Mate / Settings
################################################################################


################################################################################
### Head: Setting / Module / Mate / Gschema
##

mate_keybind_main_gschema_put_all () {

	local source_gschema_override_file_path="${THE_MATE_KEYBIND_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"

	local target_gschema_override_file_path="${THE_MATE_KEYBIND_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"

	#util_error_echo "${source_gschema_override_file_path}"

	#util_error_echo "${target_gschema_override_file_path}"


	util_error_echo
	util_error_echo sudo install -Dm644 "${source_gschema_override_file_path}" "${target_gschema_override_file_path}"
	sudo install -Dm644 "${source_gschema_override_file_path}" "${target_gschema_override_file_path}"


	return 0

}

##
### Tail: Setting / Module / Mate / Gschema
################################################################################








################################################################################
### Head: mate / config / mate_keybind_main
##

mate_keybind_main_config_start () {

	util_error_echo
	util_error_echo "## mate_keybind_main_config_start"
	util_error_echo


	mate_keybind_main_config_for_command

	mate_keybind_main_config_for_window

	mate_keybind_main_config_for_workspace

	mate_keybind_main_config_for_menu




	return 0

}

##
### Tail: mate / config / mate_keybind_main
################################################################################


################################################################################
### Head: mate / config / mate_keybind_main / command
##

mate_keybind_main_config_for_command () {


	##
	## Orginal
	##

	# gsettings set org.mate.Marco.keybinding-commands command-screenshot 'mate-screenshot'
	# gsettings set org.mate.Marco.keybinding-commands command-window-screenshot 'mate-screenshot --window'
	# gsettings set org.mate.Marco.keybinding-commands command-1 'mate-screensaver-command --lock'
	# gsettings set org.mate.Marco.keybinding-commands command-2 '/bin/sh -c "sleep 0.1; mate-screenshot --area"'
	# gsettings set org.mate.Marco.keybinding-commands command-3 'caja'
	# gsettings set org.mate.Marco.keybinding-commands command-4 'x-terminal-emulator'
	# gsettings set org.mate.Marco.keybinding-commands command-5 'mate-control-center'
	# gsettings set org.mate.Marco.keybinding-commands command-6 'mate-search-tool'
	# gsettings set org.mate.Marco.keybinding-commands command-7 'mate-system-monitor -p'
	# gsettings set org.mate.Marco.keybinding-commands command-8 'mate-system-monitor -s'
	# gsettings set org.mate.Marco.keybinding-commands command-9 ' '
	# gsettings set org.mate.Marco.keybinding-commands command-10 ' '
	# gsettings set org.mate.Marco.keybinding-commands command-11 ' '
	# gsettings set org.mate.Marco.keybinding-commands command-12 ' '


	# gsettings set org.mate.Marco.global-keybindings run-command-terminal '<Control><Alt>t'
	# gsettings set org.mate.Marco.global-keybindings run-command-screenshot 'Print'
	# gsettings set org.mate.Marco.global-keybindings run-command-window-screenshot '<Alt>Print'
	# gsettings set org.mate.Marco.global-keybindings run-command-1 '<Mod4>l'
	# gsettings set org.mate.Marco.global-keybindings run-command-2 '<Shift>Print'
	# gsettings set org.mate.Marco.global-keybindings run-command-3 '<Mod4>e'
	# gsettings set org.mate.Marco.global-keybindings run-command-4 '<Mod4>t'
	# gsettings set org.mate.Marco.global-keybindings run-command-5 '<Mod4>i'
	# gsettings set org.mate.Marco.global-keybindings run-command-6 '<Mod4>s'
	# gsettings set org.mate.Marco.global-keybindings run-command-7 '<Control><Shift>Escape'
	# gsettings set org.mate.Marco.global-keybindings run-command-8 '<Mod4>Pause'
	# gsettings set org.mate.Marco.global-keybindings run-command-9 'disabled'
	# gsettings set org.mate.Marco.global-keybindings run-command-10 'disabled'
	# gsettings set org.mate.Marco.global-keybindings run-command-11 'disabled'
	# gsettings set org.mate.Marco.global-keybindings run-command-12 'disabled'




	##
	## Adjusted
	##

	gsettings set org.mate.Marco.keybinding-commands command-screenshot 'mate-screenshot'
	gsettings set org.mate.Marco.keybinding-commands command-window-screenshot 'mate-screenshot --window'
	gsettings set org.mate.Marco.keybinding-commands command-1 'mate-screensaver-command --lock'
	gsettings set org.mate.Marco.keybinding-commands command-2 '/bin/sh -c "sleep 0.1; mate-screenshot --area"'
	gsettings set org.mate.Marco.keybinding-commands command-3 'caja'
	gsettings set org.mate.Marco.keybinding-commands command-4 'x-terminal-emulator'
	gsettings set org.mate.Marco.keybinding-commands command-5 'mate-control-center'
	gsettings set org.mate.Marco.keybinding-commands command-6 'mate-search-tool'
	gsettings set org.mate.Marco.keybinding-commands command-7 'mate-system-monitor -p'
	gsettings set org.mate.Marco.keybinding-commands command-8 'mate-system-monitor -s'
	gsettings set org.mate.Marco.keybinding-commands command-9 ' '
	gsettings set org.mate.Marco.keybinding-commands command-10 ' '
	gsettings set org.mate.Marco.keybinding-commands command-11 ' '
	gsettings set org.mate.Marco.keybinding-commands command-12 ' '


	gsettings set org.mate.Marco.global-keybindings run-command-terminal 'disabled'
	gsettings set org.mate.Marco.global-keybindings run-command-screenshot 'Print'
	gsettings set org.mate.Marco.global-keybindings run-command-window-screenshot '<Alt>Print'
	gsettings set org.mate.Marco.global-keybindings run-command-1 '<Super><Alt>l'
	gsettings set org.mate.Marco.global-keybindings run-command-2 '<Shift>Print'
	gsettings set org.mate.Marco.global-keybindings run-command-3 '<Super>F1'
	gsettings set org.mate.Marco.global-keybindings run-command-4 '<Super>F4'
	gsettings set org.mate.Marco.global-keybindings run-command-5 '<Super>F5'
	gsettings set org.mate.Marco.global-keybindings run-command-6 '<Super>F6'
	gsettings set org.mate.Marco.global-keybindings run-command-7 '<Control><Shift>Escape'
	gsettings set org.mate.Marco.global-keybindings run-command-8 '<Mod4>Pause'
	gsettings set org.mate.Marco.global-keybindings run-command-9 'disabled'
	gsettings set org.mate.Marco.global-keybindings run-command-10 'disabled'
	gsettings set org.mate.Marco.global-keybindings run-command-11 'disabled'
	gsettings set org.mate.Marco.global-keybindings run-command-12 'disabled'




	return 0

}

##
### Tail: mate / config / mate_keybind_main / command
################################################################################




################################################################################
### Head: mate / config / mate_keybind_main / window
##

mate_keybind_main_config_for_window () {

	mate_keybind_main_config_for_window_begin_move

	mate_keybind_main_config_for_window_begin_resize

	mate_keybind_main_config_for_window_to_close

	mate_keybind_main_config_for_window_toggle_fullscreen

	mate_keybind_main_config_for_window_toggle_maximized

	mate_keybind_main_config_for_window_to_minimize

	mate_keybind_main_config_for_window_toggle_shaded

	mate_keybind_main_config_for_window_toggle_show_desktop

	mate_keybind_main_config_for_window_toggle_above

	mate_keybind_main_config_for_window_toggle_on_all_workspaces

	mate_keybind_main_config_for_window_switch_windows

	mate_keybind_main_config_for_window_to_tiling

}

mate_keybind_main_config_for_window_begin_move () {

	## Window / Move
	util_error_echo "gsettings set org.mate.Marco.window-keybindings begin-move '<Super>e'"
	gsettings set org.mate.Marco.window-keybindings begin-move '<Super>e'

}

mate_keybind_main_config_for_window_begin_resize () {

	## Window / Resize
	util_error_echo "gsettings set org.mate.Marco.window-keybindings begin-resize '<Super>r'"
	gsettings set org.mate.Marco.window-keybindings begin-resize '<Super>r'

}

mate_keybind_main_config_for_window_to_close () {

	## Window / Close
	util_error_echo "gsettings set org.mate.Marco.window-keybindings close '<Super>q'"
	gsettings set org.mate.Marco.window-keybindings close '<Super>q'

}

mate_keybind_main_config_for_window_toggle_fullscreen () {

	## Window / Fullscreen
	util_error_echo "gsettings set org.mate.Marco.window-keybindings toggle-fullscreen '<Super>f'"
	gsettings set org.mate.Marco.window-keybindings toggle-fullscreen '<Super>f'

}

mate_keybind_main_config_for_window_toggle_maximized () {

	## Window / Maximize
	util_error_echo "gsettings set org.mate.Marco.window-keybindings toggle-maximized '<Super>w'"
	gsettings set org.mate.Marco.window-keybindings toggle-maximized '<Super>w'

}

mate_keybind_main_config_for_window_to_minimize () {

	## Window / Minimize
	util_error_echo "gsettings set org.mate.Marco.window-keybindings minimize '<Super>x'"
	gsettings set org.mate.Marco.window-keybindings minimize '<Super>x'

}

mate_keybind_main_config_for_window_toggle_shaded () {

	## Window / Shade
	util_error_echo "gsettings set org.mate.Marco.window-keybindings toggle-shaded '<Super>y"
	gsettings set org.mate.Marco.window-keybindings toggle-shaded '<Super>y'
}

mate_keybind_main_config_for_window_toggle_show_desktop () {

	## Window / Toggle Show Desktop
	util_error_echo "gsettings set org.mate.Marco.global-keybindings show-desktop '<Super>d'"
	gsettings set org.mate.Marco.global-keybindings show-desktop '<Super>d'

}

mate_keybind_main_config_for_window_toggle_above () {

	util_error_echo "gsettings set org.mate.Marco.window-keybindings toggle-above '<Super>t'"
	gsettings set org.mate.Marco.window-keybindings toggle-above '<Super>t'

}

mate_keybind_main_config_for_window_toggle_on_all_workspaces () {

	util_error_echo "gsettings set org.mate.Marco.window-keybindings toggle-on-all-workspaces '<Super>g'"
	gsettings set org.mate.Marco.window-keybindings toggle-on-all-workspaces '<Super>g'

}

mate_keybind_main_config_for_window_switch_windows () {

	##
	## $ gsettings list-recursively | grep Alt | grep Tab | grep mate
	##
	## ```
	## org.mate.desktop.keybindings.wm switch-group ['<Alt>Above_Tab']
	## org.mate.desktop.keybindings.wm switch-panels ['<Control><Alt>Tab']
	## org.mate.desktop.keybindings.wm switch-windows ['<Alt>Tab']
	## ```
	##

	util_error_echo "gsettings set org.mate.Marco.global-keybindings switch-group-backward '<Alt>grave'"
	gsettings set org.mate.Marco.global-keybindings switch-group-backward '<Alt>grave'

	util_error_echo "gsettings set org.mate.Marco.global-keybindings switch-group '<Alt>Tab"
	gsettings set org.mate.Marco.global-keybindings switch-group '<Alt>Tab'


	#util_error_echo "gsettings set org.mate.Marco.global-keybindings switch-group-backward '<Super>grave'"
	#gsettings set org.mate.Marco.global-keybindings switch-group-backward '<Super>grave'

	#util_error_echo "gsettings set org.mate.Marco.global-keybindings switch-group '<Super>Tab"
	#gsettings set org.mate.Marco.global-keybindings switch-group '<Super>Tab'




	util_error_echo "gsettings set org.mate.Marco.global-keybindings switch-windows-backward '<Super>a"
	gsettings set org.mate.Marco.global-keybindings switch-windows-backward '<Super>a'

	util_error_echo "gsettings set org.mate.Marco.global-keybindings switch-windows '<Super>s'"
	gsettings set org.mate.Marco.global-keybindings switch-windows '<Super>s'




	util_error_echo "gsettings set org.mate.Marco.global-keybindings switch-windows-all-backward '<Super>grave"
	gsettings set org.mate.Marco.global-keybindings switch-windows-all-backward '<Super>grave'

	util_error_echo "gsettings set org.mate.Marco.global-keybindings switch-windows-all '<Super>Tab'"
	gsettings set org.mate.Marco.global-keybindings switch-windows-all '<Super>Tab'



	util_error_echo "gsettings set org.mate.Marco.global-keybindings cycle-windows-backward '<Alt>Escape'"
	gsettings set org.mate.Marco.global-keybindings cycle-windows-backward '<Alt>Escape'


	util_error_echo "gsettings set org.mate.Marco.global-keybindings cycle-windows '<Super>Escape'"
	gsettings set org.mate.Marco.global-keybindings cycle-windows '<Super>Escape'





}

mate_keybind_main_config_for_window_to_tiling () {


	gsettings set org.mate.Marco.window-keybindings move-to-center '<Super>m'


	gsettings set org.mate.Marco.window-keybindings move-to-side-n 'disabled'
	gsettings set org.mate.Marco.window-keybindings move-to-side-s 'disabled'
	gsettings set org.mate.Marco.window-keybindings move-to-side-w 'disabled'
	gsettings set org.mate.Marco.window-keybindings move-to-side-e 'disabled'


	gsettings set org.mate.Marco.window-keybindings move-to-corner-nw 'disabled'
	gsettings set org.mate.Marco.window-keybindings move-to-corner-ne 'disabled'
	gsettings set org.mate.Marco.window-keybindings move-to-corner-sw 'disabled'
	gsettings set org.mate.Marco.window-keybindings move-to-corner-se 'disabled'



	gsettings set org.mate.Marco.window-keybindings tile-to-corner-nw '<Super><Shift>Up'
	gsettings set org.mate.Marco.window-keybindings tile-to-corner-ne '<Super><Shift>Down'
	gsettings set org.mate.Marco.window-keybindings tile-to-corner-sw '<Super><Shift>Left'
	gsettings set org.mate.Marco.window-keybindings tile-to-corner-se '<Super><Shift>Right'


	gsettings set org.mate.Marco.window-keybindings maximize '<Super>Up'
	gsettings set org.mate.Marco.window-keybindings unmaximize '<Super>Down'
	gsettings set org.mate.Marco.window-keybindings tile-to-side-w '<Super>Left'
	gsettings set org.mate.Marco.window-keybindings tile-to-side-e '<Super>Right'

}

##
### Tail: mate / config / mate_keybind_main / window
################################################################################




################################################################################
### Head: mate / config / mate_keybind_main / workspace
##

mate_keybind_main_config_for_workspace () {

	mate_keybind_main_config_for_workspace_base

	mate_keybind_main_config_for_workspace_rename

	mate_keybind_main_config_for_workspace_switch_to_workspace_cycle

	mate_keybind_main_config_for_workspace_switch_to_workspace_specific

	mate_keybind_main_config_for_workspace_move_to_workspace_specific


}

mate_keybind_main_config_for_workspace_base () {


	gsettings set org.mate.Marco.general num-workspaces 5
	gsettings set org.mate.Marco.workspace-names name-1 'File'
	gsettings set org.mate.Marco.workspace-names name-2 'Edit'
	gsettings set org.mate.Marco.workspace-names name-3 'Web'
	gsettings set org.mate.Marco.workspace-names name-4 'Term'
	gsettings set org.mate.Marco.workspace-names name-5 'Misc'


	return 0

}

mate_keybind_main_config_for_workspace_rename () {

	gsettings set org.mate.Marco.global-keybindings rename-workspace '<Alt>r'

}

mate_keybind_main_config_for_workspace_switch_to_workspace_cycle () {

	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-up 'disabled'
	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-down 'disabled'

	#gsettings set org.mate.Marco.global-keybindings switch-to-workspace-up '<Alt>grave'
	#gsettings set org.mate.Marco.global-keybindings switch-to-workspace-down '<Alt>Tab'

	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-left '<Alt>a'
	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-right '<Alt>s'

	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-prev '<Alt>z'

}

mate_keybind_main_config_for_workspace_switch_to_workspace_specific () {


	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-1 '<Control><Alt>1'
	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-2 '<Control><Alt>2'
	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-3 '<Control><Alt>3'
	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-4 '<Control><Alt>4'
	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-5 '<Control><Alt>5'
	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-6 '<Control><Alt>6'
	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-7 '<Control><Alt>7'
	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-8 '<Control><Alt>8'
	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-9 '<Control><Alt>9'
	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-10 '<Control><Alt>0'


	#gsettings set org.mate.Marco.global-keybindings switch-to-workspace-1 '<Alt>1'
	#gsettings set org.mate.Marco.global-keybindings switch-to-workspace-2 '<Alt>2'
	#gsettings set org.mate.Marco.global-keybindings switch-to-workspace-3 '<Alt>3'
	#gsettings set org.mate.Marco.global-keybindings switch-to-workspace-4 '<Alt>4'
	#gsettings set org.mate.Marco.global-keybindings switch-to-workspace-5 '<Alt>5'
	#gsettings set org.mate.Marco.global-keybindings switch-to-workspace-6 '<Alt>6'
	#gsettings set org.mate.Marco.global-keybindings switch-to-workspace-7 '<Alt>7'
	#gsettings set org.mate.Marco.global-keybindings switch-to-workspace-8 '<Alt>8'
	#gsettings set org.mate.Marco.global-keybindings switch-to-workspace-9 '<Alt>9'
	#gsettings set org.mate.Marco.global-keybindings switch-to-workspace-10 '<Alt>0'

}

mate_keybind_main_config_for_workspace_move_to_workspace_specific () {


	gsettings set org.mate.Marco.window-keybindings move-to-workspace-1 '<Shift><Alt>exclam'
	gsettings set org.mate.Marco.window-keybindings move-to-workspace-2 '<Shift><Alt>at'
	gsettings set org.mate.Marco.window-keybindings move-to-workspace-3 '<Shift><Alt>numbersign'
	gsettings set org.mate.Marco.window-keybindings move-to-workspace-4 '<Shift><Alt>dollar'
	gsettings set org.mate.Marco.window-keybindings move-to-workspace-5 '<Shift><Alt>percent'
	gsettings set org.mate.Marco.window-keybindings move-to-workspace-6 '<Shift><Alt>asciicircum'
	gsettings set org.mate.Marco.window-keybindings move-to-workspace-7 '<Shift><Alt>ampersand'
	gsettings set org.mate.Marco.window-keybindings move-to-workspace-8 '<Shift><Alt>asterisk'
	gsettings set org.mate.Marco.window-keybindings move-to-workspace-9 '<Shift><Alt>parenleft'
	gsettings set org.mate.Marco.window-keybindings move-to-workspace-10 '<Shift><Alt>parenright'



}

##
### Tail: mate / config / mate_keybind_main / workspace
################################################################################


################################################################################
### Head: mate / config / mate_keybind_main / menu
##

mate_keybind_main_config_for_menu () {

	mate_keybind_main_config_for_menu_brisk


	return 0

}

mate_keybind_main_config_for_menu_brisk () {


	gsettings set com.solus-project.brisk-menu hot-key ''


	return 0

}

##
### Tail: mate / config / mate_keybind_main / menu
################################################################################
