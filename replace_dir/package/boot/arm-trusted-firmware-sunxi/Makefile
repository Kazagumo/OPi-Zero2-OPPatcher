#
# Copyright (C) 2017 Hauke Mehrtens
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=arm-trusted-firmware-sunxi
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL=https://github.com/ARM-software/arm-trusted-firmware
PKG_SOURCE_DATE:=2022-06-01
PKG_SOURCE_VERSION:=ba12668a65f9b10bc18f3b49a71999ed5d32714a

PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=license.md

PKG_MAINTAINER:=Hauke Mehrtens <hauke@hauke-m.de>

include $(INCLUDE_DIR)/kernel.mk
include $(INCLUDE_DIR)/trusted-firmware-a.mk
include $(INCLUDE_DIR)/package.mk

define Trusted-Firmware-A/Default
	BUILD_TARGET:=sunxi
	BUILD_SUBTARGET:=cortexa53
endef

define Trusted-Firmware-A/sunxi-a64
	NAME:=Allwinner A64
	PLAT:=sun50i_a64
endef

define Trusted-Firmware-A/sunxi-h6
	NAME:=Allwinner H6
	PLAT:=sun50i_h6
endef

define Trusted-Firmware-A/sunxi-h616
	NAME:=Allwinner H616
	PLAT:=sun50i_h616
endef

TFA_TARGETS:= \
	sunxi-a64 \
	sunxi-h6 \
	sunxi-h616

define Package/trusted-firmware-a/install
	$(INSTALL_DIR) $(STAGING_DIR_IMAGE)
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/build/$(PLAT)/release/bl31.bin $(STAGING_DIR_IMAGE)/bl31_$(BUILD_VARIANT).bin
endef

$(eval $(call BuildPackage/Trusted-Firmware-A))
