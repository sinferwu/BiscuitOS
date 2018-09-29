#!/bin/bash

#
# This scripts is used to download and establish kernel of BiscuitOS
# Don't edit, if you want please mail to me :-)
#
# (C) 2018.09.12 BuddyZhang1 <buddy.zhang@aliyun.com>
# (C) 2018.09.12 BiscuitOS <buddy.biscuitos@gmail.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.
#

### 
# Don't edit !!
##

ROOT=$1
BIOS_NAME=$2
BIOS_VERSION=$3
BIOS_SITE=$4
DL=${ROOT}/dl/
TARGET=${ROOT}/output/BIOS
DL_DIR=${DL}/${BIOS_NAME}
BD_DIR=${TARGET}/${BIOS_NAME}_${BIOS_VERSION}
PATCH_DIR=$5/${BIOS_VERSION}
CONFIG_DIR=${ROOT}/boot/SeaBIOS/config/
KERNEL_DIR=${ROOT}/kernel/linux_$6
if [ ! -z $7 ]; then
  COREBOOT="y"
else
  COREBOOT="n"
fi

download_BIOS()
{
    cd ${DL}
    git clone ${BIOS_SITE} ${BIOS_NAME}
    if [ $? -ne 0 ]; then
        echo -e "\e[1;31m Unable download ${BIOS_NAME} from ${BIOS_SITE} \e[0m"
    fi
    cd -
}

precheck()
{
    mkdir -p ${DL} ${TARGET}
    mkdir -p ${PATCH_DIR}
    if [ ! -d ${DL}/${BIOS_NAME} ]; then
        echo -e "\e[1;31m Download ${BIOS_NAME} from ${BIOS_SITE} \e[0m"
        download_BIOS
    fi
}

establish_BIOS()
{
    ## First copy reperory
    if [ ! -d ${BD_DIR} ]; then
        cp -rf ${DL_DIR} ${BD_DIR}
    fi
    ## Ignore all modify, only support patch
    cd ${BD_DIR}
    
    ## Change correct tag/branch
    git reset --hard ${BIOS_VERSION}
    if [ $? -ne 0 ]; then
        echo -e "\e[1;31m Don't support ${BIOS_NAME}:${BIOS_VERSION} \e[0m"
        echo -e "\e[1;31m Support list \e[0m"
        git tag
        exit 1
    fi

    ## Patch current version
    if [ -d ${PATCH_DIR} ]; then
        git am ${PATCH_DIR}/*.patch 
    fi

    ## SeaBIOS and Coreboot
    if [ ${COREBOOT} == "y" ]; then
        if [ ! -f ${BD_DIR}/coredefconfig ]; then
            if [ -f ${CONFIG_DIR}/coreboot_${BIOS_VERSION}_defconfig ]; then
                cp -rf ${CONFIG_DIR}/coreboot_${BIOS_VERSION}_defconfig  \
                                        ${BD_DIR}/coredefconfig
                cp ${BD_DIR}/coredefconfig ${BD_DIR}/.config
            else
                echo "Unknow Coreboot SeaBIOS configure file!"
                exit 1
            fi
        fi
    fi

    ## Build SeaBIOS
    make
    if [ $? -ne 0 ]; then
        exit 1
    fi

    ## install BIOS
    if [ ${COREBOOT} == "y" ]; then
        cp -rf out/bios.bin.raw ${KERNEL_DIR}/${BIOS_NAME}.bin
    else
        cp -rf out/bios.bin ${KERNEL_DIR}/${BIOS_NAME}.bin
    fi
    
    cd -
}

## Start working
precheck

## Download/nothing
if [ ! -f ${KERNEL_DIR}/${BIOS_NAME}.bin ]; then
    establish_BIOS
fi
