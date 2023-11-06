
##############################################################
#
# AESDCHAR_DRIVER
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 8 git contents
AESDCHAR_DRIVER_VERSION = '1fa721174e1bf879382cc9232afbd83c6bfd40ca'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESDCHAR_DRIVER_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-chchbuff.git'
AESDCHAR_DRIVER_SITE_METHOD = git
AESDCHAR_DRIVER_GIT_SUBMODULES = YES

AESDCHAR_DRIVER_MODULE_SUBDIRS = aesd-char-driver

define AESDCHAR_DRIVER_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin/

endef

$(eval $(kernel-module))
$(eval $(generic-package))
