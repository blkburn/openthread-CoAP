#
_XDCBUILDCOUNT = 
ifneq (,$(findstring path,$(_USEXDCENV_)))
override XDCPATH = /home/craig/ti/sdk_5_20/ti/simplelink_cc13x2_26x2_sdk_5_20_00_52/source;/home/craig/ti/sdk_5_20/ti/simplelink_cc13x2_26x2_sdk_5_20_00_52/kernel/tirtos/packages
override XDCROOT = /home/craig/ti/ccs1100/xdctools_3_62_01_16_core
override XDCBUILDCFG = ./config.bld
endif
ifneq (,$(findstring args,$(_USEXDCENV_)))
override XDCARGS = 
override XDCTARGETS = 
endif
#
ifeq (0,1)
PKGPATH = /home/craig/ti/sdk_5_20/ti/simplelink_cc13x2_26x2_sdk_5_20_00_52/source;/home/craig/ti/sdk_5_20/ti/simplelink_cc13x2_26x2_sdk_5_20_00_52/kernel/tirtos/packages;/home/craig/ti/ccs1100/xdctools_3_62_01_16_core/packages;..
HOSTOS = Linux
endif
