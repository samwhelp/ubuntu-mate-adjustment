

################################################################################
### Head: Setting / Module / Mate / Variable
##

mate_config_main_var_init () {

	THE_MATE_CONFIG_MAIN_GSCHEMA_OVERRIDE_FILE_NAME="50_mate-config-main.gschema.override"

	THE_MATE_CONFIG_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH="${THE_SOURCE_GSCHEMA_DIR_PATH}/${THE_MATE_CONFIG_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"
	THE_MATE_CONFIG_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH="${THE_TARGET_GSCHEMA_DIR_PATH}/${THE_MATE_CONFIG_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"

	return 0

}

mate_config_main_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: mate_config_main_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Mate / Gschema"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_MATE_CONFIG_MAIN_GSCHEMA_OVERRIDE_FILE_NAME=${THE_MATE_CONFIG_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"
	util_debug_echo

	util_debug_echo "THE_MATE_CONFIG_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH=${THE_MATE_CONFIG_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo "THE_MATE_CONFIG_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH=${THE_MATE_CONFIG_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo

	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: mate_config_main_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

mate_config_main_var_init
mate_config_main_var_dump

##
### Tail: Setting / Module / Mate / Variable
################################################################################


################################################################################
### Head: Setting / Module / Mate / Portal
##

mate_config_main_config_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## mate_config_main_config_install"
	util_error_echo "##"
	util_error_echo




	mate_config_main_settings_set_all


	return 0

}


mate_config_main_asset_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## mate_config_main_asset_install"
	util_error_echo "##"
	util_error_echo "## > Do Nothing"
	util_error_echo "##"
	util_error_echo




	return 0

}


mate_config_main_prototype_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## mate_config_main_prototype_install"
	util_error_echo "##"
	util_error_echo




	mate_config_main_gschema_put_all




	#sys_gsettings_schemas_update


	return 0

}


##
### Tail: Setting / Module / Mate / Portal
################################################################################


################################################################################
### Head: Setting / Module / Mate / Settings
##

mate_config_main_settings_set_all () {


	mate_config_main




	return 0

}

##
### Tail: Setting / Module / Mate / Settings
################################################################################


################################################################################
### Head: Setting / Module / Mate / Gschema
##

mate_config_main_gschema_put_all () {

	local source_gschema_override_file_path="${THE_MATE_CONFIG_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"

	local target_gschema_override_file_path="${THE_MATE_CONFIG_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"

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
### Head: mate / config
##

mate_config_main () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Config: mate_config_main"
	util_error_echo "##"
	util_error_echo

	mate_config_main_for_wm

	mate_config_main_for_keyboard

	mate_config_main_for_sound




	return 0

}

mate_config_main_for_wm () {


	##
	## /usr/share/glib-2.0/schemas/org.mate.marco.gschema.xml
	##


	##
	## gsettings list-recursively | grep org.mate.Marco.general
	## gsettings list-recursively org.mate.Marco.general
	## dconf dump /org/mate/marco/general/
	## dconf dump / | grep 'org/mate/marco/general' -A 10
	##


	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## mate_config_main_for_wm"
	util_error_echo "##"


	util_error_echo
	util_error_echo "gsettings set org.mate.Marco.general action-double-click-titlebar 'toggle_maximize'"
	gsettings set org.mate.Marco.general action-double-click-titlebar "'toggle_maximize'"


	util_error_echo
	util_error_echo "gsettings set org.mate.Marco.general action-middle-click-titlebar 'toggle_shade'"
	gsettings set org.mate.Marco.general action-middle-click-titlebar "'toggle_shade'"


	util_error_echo
	util_error_echo "gsettings set org.mate.Marco.general action-right-click-titlebar 'menu'"
	gsettings set org.mate.Marco.general action-right-click-titlebar "'menu'"



	util_error_echo
	util_error_echo "gsettings set org.mate.Marco.general button-layout 'menu:minimize,maximize,close'"
	gsettings set org.mate.Marco.general button-layout "'menu:minimize,maximize,close'"


	util_error_echo
	util_error_echo "gsettings set org.mate.Marco.general mouse-button-modifier '<Super>'"
	gsettings set org.mate.Marco.general mouse-button-modifier "'<Super>'"


	util_error_echo
	util_error_echo "gsettings set org.mate.Marco.general resize-with-right-button true"
	gsettings set org.mate.Marco.general resize-with-right-button true

	util_error_echo
	util_error_echo "gsettings set org.mate.Marco.general raise-on-click true"
	gsettings set org.mate.Marco.general raise-on-click true


	util_error_echo
	util_error_echo "gsettings set org.mate.Marco.general focus-mode 'click'"
	gsettings set org.mate.Marco.general focus-mode "'click'"

	util_error_echo
	util_error_echo "gsettings set org.mate.Marco.general focus-new-windows 'smart'"
	gsettings set org.mate.Marco.general focus-new-windows "'smart'"



	util_error_echo




	return 0

}

mate_config_main_for_keyboard () {



	##
	## /usr/share/glib-2.0/schemas/org.mate.desktop.peripherals.gschema.xml
	##


	##
	## gsettings list-recursively | grep org.mate.peripherals
	## gsettings list-recursively org.mate.peripherals-keyboard
	## dconf dump /org/mate/desktop/peripherals-keyboard/
	## dconf dump / | grep 'org/mate/desktop/peripherals-keyboard' -A 10
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## mate_config_main_for_keyboard"
	util_error_echo "##"


	util_error_echo
	util_error_echo "gsettings set org.mate.peripherals-keyboard numlock-state 'off'"
	gsettings set org.mate.peripherals-keyboard numlock-state "'off'"

	util_error_echo
	util_error_echo "gsettings set org.mate.peripherals-keyboard remember-numlock-state true"
	gsettings set org.mate.peripherals-keyboard remember-numlock-state true




	util_error_echo


	return 0

}

mate_config_main_for_sound () {



	##
	## /usr/share/glib-2.0/schemas/org.mate.sound.gschema.xml
	##


	##
	## gsettings list-recursively | grep org.mate.sound
	## gsettings list-recursively org.mate.sound
	## dconf dump /org/mate/sound/
	## dconf dump / | grep 'org/mate/sound' -A 10
	##

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## mate_config_main_for_sound"
	util_error_echo "##"


	util_error_echo
	util_error_echo "gsettings set org.mate.sound event-sounds false"
	gsettings set org.mate.sound event-sounds false




	util_error_echo


	return 0

}

##
### Tail: mate / config
################################################################################
