
##############################################################
#
# LDD PACKAGE
#
##############################################################

LDD_VERSION = '38e653cd928edbf42df358d9e3c322b865da3d2a'
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-tkuchynsky.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES
LDD_MODULE_SUBDIRS = misc-modules scull

$(eval $(kernel-module))
$(eval $(generic-package))
