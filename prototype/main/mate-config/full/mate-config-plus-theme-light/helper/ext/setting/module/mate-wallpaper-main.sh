

################################################################################
### Head: Setting / Module / Mate / Variable
##

mate_wallpaper_main_var_init () {

	THE_MATE_WALLPAPER_MAIN_GSCHEMA_OVERRIDE_FILE_NAME="50_mate-wallpaper-main.gschema.override"

	THE_MATE_WALLPAPER_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH="${THE_SOURCE_GSCHEMA_DIR_PATH}/${THE_MATE_WALLPAPER_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"
	THE_MATE_WALLPAPER_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH="${THE_TARGET_GSCHEMA_DIR_PATH}/${THE_MATE_WALLPAPER_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"

	return 0

}

mate_wallpaper_main_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: mate_wallpaper_main_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Mate / Gschema"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_MATE_WALLPAPER_MAIN_GSCHEMA_OVERRIDE_FILE_NAME=${THE_MATE_WALLPAPER_MAIN_GSCHEMA_OVERRIDE_FILE_NAME}"
	util_debug_echo

	util_debug_echo "THE_MATE_WALLPAPER_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH=${THE_MATE_WALLPAPER_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo "THE_MATE_WALLPAPER_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH=${THE_MATE_WALLPAPER_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo

	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: mate_wallpaper_main_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

mate_wallpaper_main_var_init
mate_wallpaper_main_var_dump

##
### Tail: Setting / Module / Mate / Variable
################################################################################


################################################################################
### Head: Setting / Module / Mate / Portal
##

mate_wallpaper_main_config_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## mate_wallpaper_main_config_install"
	util_error_echo "##"
	util_error_echo




	mate_wallpaper_main_settings_set_all

	return 0

}


mate_wallpaper_main_asset_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## mate_wallpaper_main_asset_install"
	util_error_echo "##"
	util_error_echo "## > Do Nothing"
	util_error_echo "##"
	util_error_echo




	return 0

}


mate_wallpaper_main_prototype_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## mate_wallpaper_main_prototype_install"
	util_error_echo "##"
	util_error_echo




	mate_wallpaper_main_gschema_put_all


	#sys_gsettings_schemas_update


	return 0

}


##
### Tail: Setting / Module / Mate / Portal
################################################################################


################################################################################
### Head: Setting / Module / Mate / Settings
##

mate_wallpaper_main_settings_set_all () {


	util_error_echo
	util_error_echo "gsettings set org.mate.background picture-filename '/usr/share/backgrounds/ubuntu-mate-photos/gabriele-diwald-201135.jpg'"
	gsettings set org.mate.background picture-filename '/usr/share/backgrounds/ubuntu-mate-photos/gabriele-diwald-201135.jpg'


	util_error_echo
	util_error_echo "gsettings set org.mate.background picture-options 'zoom'"
	gsettings set org.mate.background picture-options 'zoom'




	return 0

}

##
### Tail: Setting / Module / Mate / Settings
################################################################################


################################################################################
### Head: Setting / Module / Mate / Gschema
##

mate_wallpaper_main_gschema_put_all () {

	local source_gschema_override_file_path="${THE_MATE_WALLPAPER_MAIN_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"

	local target_gschema_override_file_path="${THE_MATE_WALLPAPER_MAIN_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"

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
