AUTOMOUNT=true
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=true

print_modname() {
  ui_print "*******************************"
  ui_print "  TTL Fix (TTL Target module)  "
  ui_print " for stock Xiaomi Mi8, MiMix3, "
  ui_print " MiMix2S, Pocophone F1 kernels "
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

#------------------------------//////-----------------------------#
#Checking for supported device. Thx @Didgeridoohan for this function.
device_fn() {
# Variables
DEVFND=0
DEVICES="
dipper
polaris
perseus
beryllium
equuleus
ursa
"
# Device check
for ITEM in $DEVICES; do
  if [ $(getprop ro.product.name) == $ITEM ] ; then
    DEVFND=1
    break
  fi
done
# Abort if no match
if [ $DEVFND == 0 ]; then
  abort "Unsupported device ($(getprop ro.product.name)) or modified buld.prop"
fi
}

#Checking API version. Thx @Didgeridoohan for this function.
sdkver_fn() {
if ! [ $API -ge 28 ] && [ $API -le 28 ]; then
  abort "Unsupported Android version (API $API) or modified build.prop"
fi
}
