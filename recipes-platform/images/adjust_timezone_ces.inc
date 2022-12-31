adjust_timezone_ces () {
    ln -sfr ${IMAGE_ROOTFS}/usr/share/zoneinfo/America/Los_Angeles ${IMAGE_ROOTFS}/etc/localtime
}

ROOTFS_POSTPROCESS_COMMAND:append = " adjust_timezone_ces;"
