################################################
#
# BiscuitOS Memory Design Base
#
################################################
PK_BISCUITOS_MEMORY_BASE_NAME        := BiscuitOS_Memory
PK_BISCUITOS_MEMORY_BASE_VERSION     := $(CONFIG_PK_BISCUITOS_MEMORY_BASE_VERSION)
PK_BISCUITOS_MEMORY_BASE_SITE        := $(CONFIG_PK_BISCUITOS_MEMORY_BASE_URL)
PK_BISCUITOS_MEMORY_BASE_GITHUB      := $(CONFIG_PK_BISCUITOS_MEMORY_BASE_GITHUB)
PK_BISCUITOS_MEMORY_BASE_SUBNAME     :=
PK_BISCUITOS_MEMORY_BASE_BUILDARCH   := $(CONFIG_PK_BISCUITOS_MEMORY_BASE_BUILDARCH)
PK_BISCUITOS_MEMORY_BASE_DIR         := $(srctree)/package/memory_history/BiscuitOS/BiscuitOS_Memory-Base
PK_BISCUITOS_MEMORY_BASE_PATCH       := $(PK_BISCUITOS_MEMORY_BASE_DIR)/patch
PK_BISCUITOS_MEMORY_BASE_BSBIT       := BiscuitOS_Memory-$(PK_BISCUITOS_MEMORY_BASE_VERSION).bsbit
PK_BISCUITOS_MEMORY_BASE_OUT         :=
PK_BISCUITOS_MEMORY_BASE_SCRIPTS     := $(srctree)/scripts/package/package-memory.sh
PK_BISCUITOS_MEMORY_BASE_TAR         := $(CONFIG_PK_BISCUITOS_MEMORY_BASE_TAR)
PK_BISCUITOS_MEMORY_BASE_PACKAGE     :=
PK_BISCUITOS_MEMORY_BASE_CONFIG      := $(CONFIG_PK_BISCUITOS_MEMORY_BASE_CONFIG)
SUB_TARGET                  += $(PK_BISCUITOS_MEMORY_BASE_DIR)/build

PK_BISCUITOS_MEMORY_BASE_sh = $(CONFIG_SHELL) $(PK_BISCUITOS_MEMORY_BASE_SCRIPTS) \
                 $1X \
                 $(PK_BISCUITOS_MEMORY_BASE_NAME)X \
                 $(PK_BISCUITOS_MEMORY_BASE_VERSION)X \
                 $(PK_BISCUITOS_MEMORY_BASE_SITE)X \
                 $(PK_BISCUITOS_MEMORY_BASE_GITHUB)X \
                 $(PK_BISCUITOS_MEMORY_BASE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_BISCUITOS_MEMORY_BASE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_BISCUITOS_MEMORY_BASE_SUBNAME)X \
                 $(CONFIG_PK_BISCUITOS_MEMORY_BASE_CONFIG)X \
                 $(CONFIG_PK_BISCUITOS_MEMORY_BASE_LIBPATH)X \
                 $(CONFIG_PK_BISCUITOS_MEMORY_BASE_CPPFLAGS)X \
                 $(CONFIG_PK_BISCUITOS_MEMORY_BASE_DPKCONFIG)X \
                 $(CONFIG_PK_BISCUITOS_MEMORY_BASE_CFLAGS)X \
                 $(CONFIG_PK_BISCUITOS_MEMORY_BASE_LDFLAGS)X \
                 $(CONFIG_PK_BISCUITOS_MEMORY_BASE_CXXFLAGS)X \
                 $(CONFIG_PK_BISCUITOS_MEMORY_BASE_ASFLAGS)X \
                 $(PK_BISCUITOS_MEMORY_BASE_BSBIT)X \
                 $(PK_BISCUITOS_MEMORY_BASE_BUILDARCH)X \
		 $(PK_BISCUITOS_MEMORY_BASE_CSRCFILE)X \
                 $(CONFIG_PK_BISCUITOS_MEMORY_BASE_SRCFILE)X \
                 $(CONFIG_PK_BISCUITOS_MEMORY_BASE_CSRCFILE)

$(PK_BISCUITOS_MEMORY_BASE_DIR)/build: FORCE
	$(Q)$(call PK_BISCUITOS_MEMORY_BASE_sh,$(srctree))
