#
# Copyright (C) 2007-2009 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=atclient
PKG_VERSION:=2.0.0
PKG_RELEASE:=1
PKG_REV:=249c959

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-r$(PKG_REV).tar.bz2
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=$(PKG_REV)
PKG_SOURCE_URL:=https://github.com/lyq1996/atclient.git

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/nls.mk

define Package/atclient
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=A 3-party ANTENG BAS client
endef

define Package/atclient/install
	$(INSTALL_DIR) $(1)/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/src/atclient $(1)/bin/
endef

$(eval $(call BuildPackage,atclient))
