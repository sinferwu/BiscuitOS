################################################
#
# X86-Paging-32bit-Detect
#
################################################
PK_PAGING_32BIT_DETECT_NAME        := X86-Paging-32bit-Detect
PK_PAGING_32BIT_DETECT_VERSION     := $(CONFIG_PK_PAGING_32BIT_DETECT_VERSION)
PK_PAGING_32BIT_DETECT_SITE        := $(CONFIG_PK_PAGING_32BIT_DETECT_URL)
PK_PAGING_32BIT_DETECT_GITHUB      := $(CONFIG_PK_PAGING_32BIT_DETECT_GITHUB)
PK_PAGING_32BIT_DETECT_SUBNAME     :=
PK_PAGING_32BIT_DETECT_BUILDARCH   := $(CONFIG_PK_PAGING_32BIT_DETECT_BUILDARCH)
PK_PAGING_32BIT_DETECT_DIR         := $(srctree)/package/paging/Paging-mode-32bit/Paging-32bit-Detect
PK_PAGING_32BIT_DETECT_PATCH       := $(PK_PAGING_32BIT_DETECT_DIR)/patch
PK_PAGING_32BIT_DETECT_BSBIT       := X86-Paging-32bit-Detect-$(PK_PAGING_32BIT_DETECT_VERSION).bsbit
PK_PAGING_32BIT_DETECT_OUT         :=
PK_PAGING_32BIT_DETECT_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_PAGING_32BIT_DETECT_TAR         := $(CONFIG_PK_PAGING_32BIT_DETECT_TAR)
PK_PAGING_32BIT_DETECT_PACKAGE     :=
PK_PAGING_32BIT_DETECT_CONFIG      := $(CONFIG_PK_PAGING_32BIT_DETECT_CONFIG)
SUB_TARGET                  += $(PK_PAGING_32BIT_DETECT_DIR)/build

PK_PAGING_32BIT_DETECT_sh = $(CONFIG_SHELL) $(PK_PAGING_32BIT_DETECT_SCRIPTS) \
                 $1X \
                 $(PK_PAGING_32BIT_DETECT_NAME)X \
                 $(PK_PAGING_32BIT_DETECT_VERSION)X \
                 $(PK_PAGING_32BIT_DETECT_SITE)X \
                 $(PK_PAGING_32BIT_DETECT_GITHUB)X \
                 $(PK_PAGING_32BIT_DETECT_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PAGING_32BIT_DETECT_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PAGING_32BIT_DETECT_SUBNAME)X \
                 $(CONFIG_PK_PAGING_32BIT_DETECT_CONFIG)X \
                 $(CONFIG_PK_PAGING_32BIT_DETECT_LIBPATH)X \
                 $(CONFIG_PK_PAGING_32BIT_DETECT_CPPFLAGS)X \
                 $(CONFIG_PK_PAGING_32BIT_DETECT_DPKCONFIG)X \
                 $(CONFIG_PK_PAGING_32BIT_DETECT_CFLAGS)X \
                 $(CONFIG_PK_PAGING_32BIT_DETECT_LDFLAGS)X \
                 $(CONFIG_PK_PAGING_32BIT_DETECT_CXXFLAGS)X \
                 $(CONFIG_PK_PAGING_32BIT_DETECT_ASFLAGS)X \
                 $(PK_PAGING_32BIT_DETECT_BSBIT)X \
                 $(PK_PAGING_32BIT_DETECT_BUILDARCH)X \
		 $(PK_PAGING_32BIT_DETECT_CSRCFILE)X \
                 $(CONFIG_PK_PAGING_32BIT_DETECT_SRCFILE)X \
                 $(CONFIG_PK_PAGING_32BIT_DETECT_CSRCFILE)

$(PK_PAGING_32BIT_DETECT_DIR)/build: FORCE
	$(Q)$(call PK_PAGING_32BIT_DETECT_sh,$(srctree))
