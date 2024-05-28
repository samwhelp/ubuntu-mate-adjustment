

################################################################################
### Head: Setting / Module / Mate / Variable
##

mate_favorite_apps_var_init () {

	THE_MATE_FAVORITE_APPS_GSCHEMA_OVERRIDE_FILE_NAME="50_mate-favorite-apps.gschema.override"

	THE_MATE_FAVORITE_APPS_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH="${THE_SOURCE_GSCHEMA_DIR_PATH}/${THE_MATE_FAVORITE_APPS_GSCHEMA_OVERRIDE_FILE_NAME}"
	THE_MATE_FAVORITE_APPS_TARGET_GSCHEMA_OVERRIDE_FILE_PATH="${THE_TARGET_GSCHEMA_DIR_PATH}/${THE_MATE_FAVORITE_APPS_GSCHEMA_OVERRIDE_FILE_NAME}"

	return 0

}

mate_favorite_apps_var_dump () {


	is_not_debug && return 0




	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: mate_favorite_apps_var_dump"
	util_debug_echo "##"
	util_debug_echo


	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "## ## Mate / Gschema"
	util_debug_echo "##"
	util_debug_echo

	util_debug_echo "THE_MATE_FAVORITE_APPS_GSCHEMA_OVERRIDE_FILE_NAME=${THE_MATE_FAVORITE_APPS_GSCHEMA_OVERRIDE_FILE_NAME}"
	util_debug_echo

	util_debug_echo "THE_MATE_FAVORITE_APPS_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH=${THE_MATE_FAVORITE_APPS_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo "THE_MATE_FAVORITE_APPS_TARGET_GSCHEMA_OVERRIDE_FILE_PATH=${THE_MATE_FAVORITE_APPS_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"
	util_debug_echo

	util_debug_echo
	util_debug_echo "##"
	util_debug_echo "### Tail: mate_favorite_apps_var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo


	util_debug_echo
	util_debug_echo
	util_debug_echo


	return 0

}

mate_favorite_apps_var_init
mate_favorite_apps_var_dump

##
### Tail: Setting / Module / Mate / Variable
################################################################################


################################################################################
### Head: Setting / Module / Mate / Portal
##

mate_favorite_apps_config_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## mate_favorite_apps_config_install"
	util_error_echo "##"
	util_error_echo




	mate_favorite_apps_settings_set_all


	return 0

}


mate_favorite_apps_asset_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## mate_favorite_apps_asset_install"
	util_error_echo "##"
	util_error_echo "## > Do Nothing"
	util_error_echo "##"
	util_error_echo




	return 0

}


mate_favorite_apps_prototype_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## mate_favorite_apps_prototype_install"
	util_error_echo "##"
	util_error_echo




	mate_favorite_apps_gschema_put_all




	#sys_gsettings_schemas_update


	return 0

}


##
### Tail: Setting / Module / Mate / Portal
################################################################################


################################################################################
### Head: Setting / Module / Mate / Settings
##

mate_favorite_apps_settings_set_all () {


	mate_favorite_apps_config_start




	return 0

}

##
### Tail: Setting / Module / Mate / Settings
################################################################################


################################################################################
### Head: Setting / Module / Mate / Gschema
##

mate_favorite_apps_gschema_put_all () {

	local source_gschema_override_file_path="${THE_MATE_FAVORITE_APPS_SOURCE_GSCHEMA_OVERRIDE_FILE_PATH}"

	local target_gschema_override_file_path="${THE_MATE_FAVORITE_APPS_TARGET_GSCHEMA_OVERRIDE_FILE_PATH}"

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
### Head: mate / config / mate_favorite_apps
##

mate_favorite_apps_config_start () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## mate_favorite_apps_config_start"
	util_error_echo "##"
	util_error_echo

	mate_favorite_apps_config_for_brisk_menu




	return 0

}

mate_favorite_apps_config_for_brisk_menu () {


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
	util_error_echo "## ## mate_favorite_apps_config_for_wm"
	util_error_echo "##"


	util_error_echo
	util_error_echo "gsettings set com.solus-project.brisk-menu favourites \"['caja.desktop', 'pluma.desktop', 'firefox.desktop', 'mate-terminal.desktop', 'matecc.desktop', 'mate-keybinding.desktop', 'mate-appearance-properties.desktop', 'mate-tweak.desktop', 'sublime-text.desktop']\""
	gsettings set com.solus-project.brisk-menu favourites "['caja.desktop', 'pluma.desktop', 'firefox.desktop', 'mate-terminal.desktop', 'matecc.desktop', 'mate-keybinding.desktop', 'mate-appearance-properties.desktop', 'mate-tweak.desktop', 'sublime-text.desktop']"




	util_error_echo




	return 0

}

##
### Tail: mate / config / mate_favorite_apps
################################################################################
