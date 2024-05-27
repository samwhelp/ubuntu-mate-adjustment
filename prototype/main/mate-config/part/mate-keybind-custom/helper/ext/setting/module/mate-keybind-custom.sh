

################################################################################
### Head: Setting / Module / Mate / Variable
##

mate_keybind_custom_var_init () {

	THE_MATE_KEYBIND_CUSTOM_DCONF_DB_FILE_NAME="50_mate-keybind-custom.conf"

	THE_MATE_KEYBIND_CUSTOM_SOURCE_DCONF_DB_FILE_PATH="${THE_SOURCE_DCONFDB_DIR_PATH}/${THE_MATE_KEYBIND_CUSTOM_DCONF_DB_FILE_NAME}"
	THE_MATE_KEYBIND_CUSTOM_TARGET_DCONF_DB_FILE_PATH="${THE_TARGET_DCONFDB_DIR_PATH}/${THE_MATE_KEYBIND_CUSTOM_DCONF_DB_FILE_NAME}"


	return 0

}

mate_keybind_custom_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: mate_keybind_custom_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Mate / Gschema"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_MATE_KEYBIND_CUSTOM_DCONF_DB_FILE_NAME=${THE_MATE_KEYBIND_CUSTOM_DCONF_DB_FILE_NAME}"
	util_debug_echo

	util_debug_echo "THE_MATE_KEYBIND_CUSTOM_SOURCE_DCONF_DB_FILE_PATH=${THE_MATE_KEYBIND_CUSTOM_SOURCE_DCONF_DB_FILE_PATH}"
	util_debug_echo "THE_MATE_KEYBIND_CUSTOM_TARGET_DCONF_DB_FILE_PATH=${THE_MATE_KEYBIND_CUSTOM_TARGET_DCONF_DB_FILE_PATH}"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: mate_keybind_custom_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

mate_keybind_custom_var_init
mate_keybind_custom_var_dump

##
### Tail: Setting / Module / Mate / Variable
################################################################################


################################################################################
### Head: Setting / Module / Mate / Portal
##

mate_keybind_custom_config_install () {


	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## mate_keybind_custom_config_install"
	util_error_echo "##"
	util_error_echo




	mate_keybind_custom_settings_set_all

	return 0
}


mate_keybind_custom_asset_install () {


	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## mate_keybind_custom_asset_install"
	util_error_echo "##"
	util_error_echo "## > Do Nothing"
	util_error_echo "##"
	util_error_echo




	return 0

}


mate_keybind_custom_prototype_install () {


	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## mate_keybind_custom_prototype_install"
	util_error_echo "##"
	util_error_echo




	sys_dconf_init

	mate_keybind_custom_dconfdb_put_all

	sys_dconf_update

	return 0
}


##
### Tail: Setting / Module / Mate / Portal
################################################################################


################################################################################
### Head: Setting / Module / Mate / Settings
##

mate_keybind_custom_settings_set_all () {

	mate_keybind_custom_config_by_gsettings

	return 0

}

mate_keybind_custom_config_by_gsettings () {


	mate_config_keybind_custom




	util_error_echo

	return 0

}

##
### Tail: Setting / Module / Mate / Settings
################################################################################


################################################################################
### Head: Setting / Module / Mate / Dconf
##

mate_keybind_custom_dconfdb_put_all () {

	mate_keybind_custom_dconfdb_put_main

	return 0

}


mate_keybind_custom_dconfdb_put_main () {

	local source_dconfdb_file_path="${THE_MATE_KEYBIND_CUSTOM_SOURCE_DCONF_DB_FILE_PATH}"

	local target_dconfdb_file_path="${THE_MATE_KEYBIND_CUSTOM_TARGET_DCONF_DB_FILE_PATH}"

	#util_error_echo "${source_dconfdb_file_path}"

	#util_error_echo "${target_dconfdb_file_path}"


	util_error_echo
	util_error_echo sudo install -Dm644 "${source_dconfdb_file_path}" "${target_dconfdb_file_path}"
	sudo install -Dm644 "${source_dconfdb_file_path}" "${target_dconfdb_file_path}"
	util_error_echo


	return 0

}

##
### Tail: Setting / Module / Mate / Dconf
################################################################################








################################################################################
### Head: mate / keybind / custom
##

mate_config_keybind_custom () {


	##
	## $ gsettings list-recursively org.mate.control-center.keybinding:/
	##
	## ```
	## org.mate.control-center.keybinding action ''
	## org.mate.control-center.keybinding binding ''
	## org.mate.control-center.keybinding name ''
	## ```
	##
	## $ gsettings list-recursively org.mate.control-center.keybinding:/org/mate/desktop/keybindings/
	##
	##



	##
	## ## Clear Old
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Clear Old"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf reset -f /org/mate/desktop/keybindings/"
	dconf reset -f /org/mate/desktop/keybindings/


	##
	## ## Dump All
	##

	#dconf dump /org/mate/desktop/keybindings/




	##
	## ## Logout
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Logout"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/system-logout/name \"'System_Logout'\""
	dconf write /org/mate/desktop/keybindings/system-logout/name "'System_Logout'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/system-logout/action \"'mate-session-save --logout-dialog'\""
	dconf write /org/mate/desktop/keybindings/system-logout/action "'mate-session-save --logout-dialog'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/system-logout/binding \"'<Shift><Alt>x'\""
	dconf write /org/mate/desktop/keybindings/system-logout/binding "'<Shift><Alt>x'"


	##
	## ## Reboot
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Reboot"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/system-reboot/name \"'System_Rebot'\""
	dconf write /org/mate/desktop/keybindings/system-reboot/name "'System_Rebot'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/system-reboot/action \"'mate-session-quit --reboot'\""
	dconf write /org/mate/desktop/keybindings/system-reboot/action "'mate-session-quit --reboot'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/system-reboot/binding \"'<Control><Alt>x'\""
	dconf write /org/mate/desktop/keybindings/system-reboot/binding "'<Control><Alt>x'"


	##
	## ## Shutdown
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Shutdown"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/system-shutdown/name \"'System_Shutdown'\""
	dconf write /org/mate/desktop/keybindings/system-shutdown/name "'System_Shutdown'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/system-shutdown/action "'mate-session-save --shutdown-dialog'""
	dconf write /org/mate/desktop/keybindings/system-shutdown/action "'mate-session-save --shutdown-dialog'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/system-shutdown/binding \"'<Shift><Alt>z'\""
	dconf write /org/mate/desktop/keybindings/system-shutdown/binding "'<Shift><Alt>z'"




	##
	## ## Wallpaper Shuf
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Wallpaper Shuf"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/wallpaper-shuf/name \"'Wallpaper_Shuf'\""
	dconf write /org/mate/desktop/keybindings/wallpaper-shuf/name "'Wallpaper_Shuf'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/wallpaper-shuf/action \"'wallpaper-select-gnome shuf_favorite'\""
	dconf write /org/mate/desktop/keybindings/wallpaper-shuf/action "'wallpaper-select-gnome shuf_favorite'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/wallpaper-shuf/binding \"'<Alt>w'\""
	dconf write /org/mate/desktop/keybindings/wallpaper-shuf/binding "'<Alt>w'"


	##
	## ## Wallpaper Default
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Wallpaper Default"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/wallpaper-default/name \"'Wallpaper_Default'\""
	dconf write /org/mate/desktop/keybindings/wallpaper-default/name "'Wallpaper_Default'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/wallpaper-default/action \"'wallpaper-select-gnome default'\""
	dconf write /org/mate/desktop/keybindings/wallpaper-default/action "'wallpaper-select-gnome default'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/wallpaper-default/binding \"'<Control><Alt>w'\""
	dconf write /org/mate/desktop/keybindings/wallpaper-default/binding "'<Control><Alt>w'"




	##
	## ## Control Center
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Control Center"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/control-center/name \"'Control_Center'\""
	dconf write /org/mate/desktop/keybindings/control-center/name "'Control_Center'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/control-center/action \"'mate-control-center'\""
	dconf write /org/mate/desktop/keybindings/control-center/action "'mate-control-center'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/control-center/binding \"'<Shift><Alt>s'\""
	dconf write /org/mate/desktop/keybindings/control-center/binding "'<Shift><Alt>s'"


	##
	## ## Desktop Settings
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Desktop Settings"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/desktop-settings/name \"'Desktop_Settings'\""
	dconf write /org/mate/desktop/keybindings/desktop-settings/name "'Desktop_Settings'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/desktop-settings/action \"'mate-desktop-settings'\""
	dconf write /org/mate/desktop/keybindings/desktop-settings/action "'mate-desktop-settings'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/desktop-settings/binding \"'<Shift><Alt>s'\""
	dconf write /org/mate/desktop/keybindings/desktop-settings/binding "'<Control><Alt>s'"




	##
	## ## Rofi Show Run
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Rofi Show Run"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/rofi-show-run/name \"'Rofi_Show_Run'\""
	dconf write /org/mate/desktop/keybindings/rofi-show-run/name "'Rofi_Show_Run'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/rofi-show-run/action \"'rofi -show run'\""
	dconf write /org/mate/desktop/keybindings/rofi-show-run/action "'rofi -show run'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/rofi-show-run/binding \"'<Shift><Alt>r'\""
	dconf write /org/mate/desktop/keybindings/rofi-show-run/binding "'<Shift><Alt>r'"


	##
	## ## Rofi Show Window
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Rofi Show Window"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/rofi-show-window/name \"'Rofi_Show_Window'\""
	dconf write /org/mate/desktop/keybindings/rofi-show-window/name "'Rofi_Show_Window'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/rofi-show-window/action \"'rofi -show window -show-icons'\""
	dconf write /org/mate/desktop/keybindings/rofi-show-window/action "'rofi -show window -show-icons'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/rofi-show-window/binding \"'<Shift><Alt>w'\""
	dconf write /org/mate/desktop/keybindings/rofi-show-window/binding "'<Shift><Alt>w'"


	##
	## ## Rofi Show Drun
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Rofi Show Drun"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/rofi-show-drun/name \"'Rofi_Show_Drun'\""
	dconf write /org/mate/desktop/keybindings/rofi-show-drun/name "'Rofi_Show_Drun'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/rofi-show-drun/action \"'rofi -show drun -show-icons'\""
	dconf write /org/mate/desktop/keybindings/rofi-show-drun/action "'rofi -show drun -show-icons'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/rofi-show-drun/binding \"'<Shift><Alt>d'\""
	dconf write /org/mate/desktop/keybindings/rofi-show-drun/binding "'<Shift><Alt>d'"




	##
	## ## Terminal
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Terminal"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/terminal/name \"'Terminal'\""
	dconf write /org/mate/desktop/keybindings/terminal/name "'Terminal'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/terminal/action \"'mate-terminal'\""
	dconf write /org/mate/desktop/keybindings/terminal/action "'mate-terminal'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/terminal/binding \"'<Alt>Return'\""
	dconf write /org/mate/desktop/keybindings/terminal/binding "'<Alt>Return'"


	##
	## ## Terminal-1
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Terminal-1"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/terminal-1/name \"'Terminal-1'\""
	dconf write /org/mate/desktop/keybindings/terminal-1/name "'Terminal-1'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/terminal-1/action \"'mate-terminal'\""
	dconf write /org/mate/desktop/keybindings/terminal-1/action "'mate-terminal'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/terminal-1/binding \"'<Shift><Alt>a'\""
	dconf write /org/mate/desktop/keybindings/terminal-1/binding "'<Shift><Alt>a'"


	##
	## ## Terminal-2
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Terminal-2"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/terminal-2/name \"'Terminal-2'\""
	dconf write /org/mate/desktop/keybindings/terminal-2/name "'Terminal-2'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/terminal-2/action \"'xfce4-terminal --maximize'\""
	dconf write /org/mate/desktop/keybindings/terminal-2/action "'xfce4-terminal --maximize'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/terminal-2/binding \"'<Control><Alt>a'\""
	dconf write /org/mate/desktop/keybindings/terminal-2/binding "'<Control><Alt>a'"


	##
	## ## Terminal-3
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Terminal-3"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/terminal-3/name \"'Terminal-3'\""
	dconf write /org/mate/desktop/keybindings/terminal-3/name "'Terminal-3'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/terminal-3/action \"'xterm'\""
	dconf write /org/mate/desktop/keybindings/terminal-3/action "'xterm'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/terminal-3/binding \"'<Shift><Alt>t'\""
	dconf write /org/mate/desktop/keybindings/terminal-3/binding "'<Shift><Alt>t'"


	##
	## ## Terminal-4
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Terminal-4"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/terminal-4/name \"'Terminal-4'\""
	dconf write /org/mate/desktop/keybindings/terminal-4/name "'Terminal-4'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/terminal-4/action \"'qterminal'\""
	dconf write /org/mate/desktop/keybindings/terminal-4/action "'qterminal'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/terminal-4/binding \"'<Control><Alt>t'\""
	dconf write /org/mate/desktop/keybindings/terminal-4/binding "'<Control><Alt>t'"



	##
	## ## Text Editor
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Text Editor"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/text-editor/name \"'Text_Editor'\""
	dconf write /org/mate/desktop/keybindings/text-editor/name "'Text_Editor'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/text-editor/action \"'pluma'\""
	dconf write /org/mate/desktop/keybindings/text-editor/action "'pluma'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/text-editor/binding \"'<Shift><Alt>e'\""
	dconf write /org/mate/desktop/keybindings/text-editor/binding "'<Shift><Alt>e'"


	##
	## ## Web Browser
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Web Browser"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/web-browser/name \"'Web_Browser'\""
	dconf write /org/mate/desktop/keybindings/web-browser/name "'Web_Browser'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/web-browser/action \"'firefox --new-tab about:blank'\""
	dconf write /org/mate/desktop/keybindings/web-browser/action "'firefox --new-tab about:blank'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/web-browser/binding \"'<Shift><Alt>b'\""
	dconf write /org/mate/desktop/keybindings/web-browser/binding "'<Shift><Alt>b'"


	##
	## ## File Manager
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## File Manager"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/file-manager/name \"'File_Manager'\""
	dconf write /org/mate/desktop/keybindings/file-manager/name "'File_Manager'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/file-manager/action \"'caja'\""
	dconf write /org/mate/desktop/keybindings/file-manager/action "'caja'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/file-manager/binding \"'<Shift><Alt>f'\""
	dconf write /org/mate/desktop/keybindings/file-manager/binding "'<Shift><Alt>f'"


	##
	## ## File_Manager-1
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## File_Manager-1"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/file-manager-1/name \"'File_Manager-1'\""
	dconf write /org/mate/desktop/keybindings/file-manager-1/name "'File_Manager-1'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/file-manager-1/action \"'thunar'\""
	dconf write /org/mate/desktop/keybindings/file-manager-1/action "'thunar'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/file-manager-1/binding \"'<Shift><Alt>g'\""
	dconf write /org/mate/desktop/keybindings/file-manager-1/binding "'<Shift><Alt>g'"




	##
	## ## Volume Control
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Volume Control"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/volume-control/name \"'Volume_Control'\""
	dconf write /org/mate/desktop/keybindings/volume-control/name "'Volume_Control'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/volume-control/action \"'mate-volume-control'\""
	dconf write /org/mate/desktop/keybindings/volume-control/action "'mate-volume-control'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/volume-control/binding \"'<Shift><Alt>v'\""
	dconf write /org/mate/desktop/keybindings/volume-control/binding "'<Shift><Alt>v'"


	##
	## ## Volume Toggle Mute
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Volume Toggle Mute"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/volume-toggle-mute/name \"'Volume_Toggle_Mute'\""
	dconf write /org/mate/desktop/keybindings/volume-toggle-mute/name "'Volume_Toggle_Mute'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/volume-toggle-mute/action \"'amixer -q -D pulse sset Master toggle'\""
	dconf write /org/mate/desktop/keybindings/volume-toggle-mute/action "'amixer -q -D pulse sset Master toggle'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/volume-toggle-mute/binding \"'<Alt>m'\""
	dconf write /org/mate/desktop/keybindings/volume-toggle-mute/binding "'<Alt>m'"


	##
	## ## Volume Decrease
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Volume Decrease"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/volume-decrease/name \"'Volume_Decrease'\""
	dconf write /org/mate/desktop/keybindings/volume-decrease/name "'Volume_Decrease'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/volume-decrease/action \"'amixer -q -D pulse sset Master 5%- unmute'\""
	dconf write /org/mate/desktop/keybindings/volume-decrease/action "'amixer -q -D pulse sset Master 5%- unmute'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/volume-decrease/binding \"'<Shift><Alt>comma'\""
	dconf write /org/mate/desktop/keybindings/volume-decrease/binding "'<Shift><Alt>comma'"


	##
	## ## Volume Increase
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Volume Increase"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/volume-increase/name \"'Volume_Decrease'\""
	dconf write /org/mate/desktop/keybindings/volume-increase/name "'Volume_Decrease'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/volume-increase/action \"'amixer -q -D pulse sset Master 5%+ unmute'\""
	dconf write /org/mate/desktop/keybindings/volume-increase/action "'amixer -q -D pulse sset Master 5%+ unmute'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/volume-increase/binding \"'<Shift><Alt>period'\""
	dconf write /org/mate/desktop/keybindings/volume-increase/binding "'<Shift><Alt>period'"


	##
	## ## Volume Decrease Slowly
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Volume Decrease Slowly"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/volume-decrease-slowly/name \"'Volume_Decrease_Slowly'\""
	dconf write /org/mate/desktop/keybindings/volume-decrease-slowly/name "'Volume_Decrease_Slowly'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/volume-decrease-slowly/action \"'amixer -q -D pulse sset Master 1%- unmute'\""
	dconf write /org/mate/desktop/keybindings/volume-decrease-slowly/action "'amixer -q -D pulse sset Master 1%- unmute'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/volume-decrease-slowly/binding \"'<Control><Alt>comma'\""
	dconf write /org/mate/desktop/keybindings/volume-decrease-slowly/binding "'<Control><Alt>comma'"


	##
	## ## Volume Increase Slowly
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Volume Increase Slowly"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/volume-increase-slowly/name \"'Volume_Increase_Slowly'\""
	dconf write /org/mate/desktop/keybindings/volume-increase-slowly/name "'Volume_Increase_Slowly'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/volume-increase-slowly/action \"'amixer -q -D pulse sset Master 1%+ unmute'\""
	dconf write /org/mate/desktop/keybindings/volume-increase-slowly/action "'amixer -q -D pulse sset Master 1%+ unmute'"

	util_error_echo
	util_error_echo "dconf write /org/mate/desktop/keybindings/volume-increase-slowly/binding \"'<Control><Alt>period'\""
	dconf write /org/mate/desktop/keybindings/volume-increase-slowly/binding "'<Control><Alt>period'"








	return 0


	util_error_echo
	util_error_echo
	util_error_echo

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Dump: keybindings_custom"
	util_error_echo "##"

	util_error_echo
	util_error_echo "dconf dump /org/mate/desktop/keybindings/"
	util_error_echo
	dconf dump /org/mate/desktop/keybindings/
	util_error_echo




	return 0

}

##
### Tail: mate / keybind / custom
################################################################################
