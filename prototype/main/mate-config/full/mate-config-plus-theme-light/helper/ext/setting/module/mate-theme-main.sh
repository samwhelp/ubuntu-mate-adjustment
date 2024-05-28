

################################################################################
### Head: Setting / Module / Mate / Variable
##

mate_theme_main_var_init () {

	THE_MATE_THEME_MAIN_GSCHEMA_OVERRIDE_FILE_NAME="50_mate-theme-main.gschema.override"

	THE_MATE_THEME_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH="${THE_SOURCE_GSCHEMA_DIR_PATH}/${THE_MATE_THEME_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"
	THE_MATE_THEME_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH="${THE_TARGET_GSCHEMA_DIR_PATH}/${THE_MATE_THEME_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"

	return 0

}

mate_theme_main_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: mate_theme_main_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Mate / Gschema"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_MATE_THEME_MAIN_GSCHEMA_OVERRIDE_FILE_NAME=${THE_MATE_THEME_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"
	util_debug_echo

	util_debug_echo "THE_MATE_THEME_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH=${THE_MATE_THEME_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo "THE_MATE_THEME_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH=${THE_MATE_THEME_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo

	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: mate_theme_main_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

mate_theme_main_var_init
mate_theme_main_var_dump

##
### Tail: Setting / Module / Mate / Variable
################################################################################


################################################################################
### Head: Setting / Module / Mate / Portal
##

mate_theme_main_config_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## mate_theme_main_config_install"
	util_error_echo "##"
	util_error_echo




	mate_theme_main_settings_set_all

	return 0

}


mate_theme_main_asset_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## mate_theme_main_asset_install"
	util_error_echo "##"
	util_error_echo "## > Do Nothing"
	util_error_echo "##"
	util_error_echo




	return 0

}


mate_theme_main_prototype_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## mate_theme_main_prototype_install"
	util_error_echo "##"
	util_error_echo




	mate_theme_main_gschema_put_all


	#sys_gsettings_schemas_update


	return 0

}


##
### Tail: Setting / Module / Mate / Portal
################################################################################


################################################################################
### Head: Setting / Module / Mate / Settings
##

mate_theme_main_settings_set_all () {


	util_error_echo
	util_error_echo "gsettings set org.mate.Marco.general theme 'Yaru'"
	gsettings set org.mate.Marco.general theme 'Yaru'








	util_error_echo
	util_error_echo "gsettings set org.mate.peripherals-mouse cursor-theme 'Yaru'"
	gsettings set org.mate.peripherals-mouse cursor-theme 'Yaru'


	util_error_echo
	util_error_echo "gsettings set org.mate.peripherals-mouse cursor-size 24"
	gsettings set org.mate.peripherals-mouse cursor-size 24




	util_error_echo
	util_error_echo "gsettings set org.mate.interface gtk-theme 'Yaru-MATE-light'"
	gsettings set org.mate.interface gtk-theme 'Yaru-MATE-light'


	util_error_echo
	util_error_echo "gsettings set org.mate.interface icon-theme 'Yaru-MATE-light'"
	gsettings set org.mate.interface icon-theme 'Yaru-MATE-light'




	util_error_echo
	util_error_echo "gsettings set org.mate.sound theme-name 'Yaru'"
	gsettings set org.mate.sound theme-name 'Yaru'




	return 0

}

##
### Tail: Setting / Module / Mate / Settings
################################################################################


################################################################################
### Head: Setting / Module / Mate / Gschema
##

mate_theme_main_gschema_put_all () {

	local source_gschema_override_file_path="${THE_MATE_THEME_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"

	local target_gschema_override_file_path="${THE_MATE_THEME_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"

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
