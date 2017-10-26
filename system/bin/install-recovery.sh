#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/mmcblk0p10:8089600:309ab15ddad6ab6c0415a53ca706f306f9e476ce; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/mmcblk0p9:7301120:fdaaa03e40e3de28719d057e1f4d16f2472d6065 EMMC:/dev/block/mmcblk0p10 309ab15ddad6ab6c0415a53ca706f306f9e476ce 8089600 fdaaa03e40e3de28719d057e1f4d16f2472d6065:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
