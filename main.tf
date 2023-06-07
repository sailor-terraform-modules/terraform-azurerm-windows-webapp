resource "azurerm_windows_web_app" "example" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = var.service_plan_id

  site_config {
    ftps_state = var.ftps_state
    app_command_line = var.app_command_line
    application_stack {
      current_stack = var.current_stack
      dotnet_version = var.dotnet_version

    }

  }
}