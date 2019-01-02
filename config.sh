AUTOMOUNT=true
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=true

print_modname() {
  ui_print "*******************************"
  ui_print "  TTL Fix (TTL Target module)  "
  ui_print "  for stock Xiaomi Mi8 kernel  "
  ui_print "          by LazyMind          "
  ui_print "    (forum.smartsworld.ru)     "
  ui_print "*******************************"
}

REPLACE="
"

set_permissions() {
  # The following is default permissions, DO NOT remove
  set_perm_recursive  $MODPATH  0  0  0755  0644
}

