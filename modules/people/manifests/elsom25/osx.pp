class people::elsom25::osx {
  # Not working with Yosemite ):
  # osx::recovery_message { 'If this Mac is found, please call (226) 868-0808': }

  include osx::global::expand_save_dialog

  include osx::finder::empty_trash_securely
  include osx::finder::show_hidden_files
  include osx::finder::enable_quicklook_text_selection

  include osx::safari::enable_developer_mode

  include osx::no_network_dsstores
  include osx::software_update
}
