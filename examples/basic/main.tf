module "management_lock" {
  source = "../../"

  subscription_id     = "eedc3ed7-6991-46ba-ba6b-afde0f35513a"
  resource_group_name = "arla-test"
  lock_name           = "example-lock"
  lock_level          = "CanNotDelete"
  notes               = "This lock prevents deletion."
}
