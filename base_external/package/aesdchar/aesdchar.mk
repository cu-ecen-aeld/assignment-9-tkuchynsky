
##############################################################
#
# AESDCHAR PACKAGE
#
##############################################################

AESDCHAR_VERSION = 'b65c09d31e7314629f59733eb9ab9adbb4ef9e92'

AESDCHAR_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-tkuchynsky.git'
AESDCHAR_SITE_METHOD = git
AESDCHAR_GIT_SUBMODULES = YES

AESDCHAR_MODULE_SUBDIRS = aesd-char-driver

define AESDCHAR_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar-start-stop $(TARGET_DIR)/etc/init.d/S95aesdchar
endef

$(eval $(kernel-module))
$(eval $(generic-package))
