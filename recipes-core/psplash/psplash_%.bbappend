PACKAGECONFIG:append = " drm"
PACKAGECONFIG:append = " drm-lease"

FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
SRC_URI += " file://psplash.env"

PSPLASH_DRM_LEASE_ARGS = "--drm-lease lease"

do_install:append () {
	sed -i -e '/^\[Service\]/a EnvironmentFile=/etc/default/psplash' ${D}${systemd_system_unitdir}/psplash-start.service
    install -Dm644 ${WORKDIR}/psplash.env ${D}${sysconfdir}/default/psplash
}
