name "server_base"
description "the simple, bare necessities"
run_list(
  "recipe[ubuntu]",
  "recipe[apt]",
  "recipe[users::sysadmins]",
  "recipe[sudo]",
  "recipe[git]",
  "recipe[vim]",
  "recipe[server-essentials]"
)

default_attributes ({
  :authorization => {
    :sudo => {
      :groups => ["rvm"],
      :passwordless => true
    }
  }
})
