################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
build-574659855:
	@$(MAKE) --no-print-directory -Onone -f subdir_rules.mk build-574659855-inproc

build-574659855-inproc: ../release.cfg
	@echo 'Building file: "$<"'
	@echo 'Invoking: XDCtools'
	"/home/craig/ti/ccs1100/xdctools_3_62_01_16_core/xs" --xdcpath="/home/craig/ti/sdk_5_20/ti/simplelink_cc13x2_26x2_sdk_5_20_00_52/source;/home/craig/ti/sdk_5_20/ti/simplelink_cc13x2_26x2_sdk_5_20_00_52/kernel/tirtos/packages;" xdc.tools.configuro -o configPkg -t ti.targets.arm.elf.M4F -p ti.platforms.simplelink:CC2652R1F -r release -c "/home/craig/ti/ccs1100/ccs/tools/compiler/ti-cgt-arm_20.2.5.LTS" --compileOptions "-mv7M4 --code_state=16 --float_support=FPv4SPD16 -me -Ooff --opt_for_speed=0 --include_path=\"/home/craig/workspace_v11/thread_sensor_CC26X2R1_LAUNCHXL_tirtos_ccs\" --include_path=\"/home/craig/workspace_v11/thread_sensor_CC26X2R1_LAUNCHXL_tirtos_ccs/Application\" --include_path=\"/home/craig/workspace_v11/thread_sensor_CC26X2R1_LAUNCHXL_tirtos_ccs/Application/sensor_controller\" --include_path=\"/home/craig/workspace_v11/thread_sensor_CC26X2R1_LAUNCHXL_tirtos_ccs/Application/ui\" --include_path=\"/home/craig/workspace_v11/thread_sensor_CC26X2R1_LAUNCHXL_tirtos_ccs/Application/utils\" --include_path=\"/home/craig/workspace_v11/thread_sensor_CC26X2R1_LAUNCHXL_tirtos_ccs/Debug\" --include_path=\"/home/craig/workspace_v11/libmbedcrypto_cc13x2_26x2_ccs/config\" --include_path=\"/home/craig/ti/sdk_5_20/ti/simplelink_cc13x2_26x2_sdk_5_20_00_52/source/third_party/openthread/examples/platforms\" --include_path=\"/home/craig/ti/sdk_5_20/ti/simplelink_cc13x2_26x2_sdk_5_20_00_52/source/third_party/openthread/include\" --include_path=\"/home/craig/ti/sdk_5_20/ti/simplelink_cc13x2_26x2_sdk_5_20_00_52/source/third_party/openthread/src/core\" --include_path=\"/home/craig/ti/sdk_5_20/ti/simplelink_cc13x2_26x2_sdk_5_20_00_52/source/third_party/openthread/third_party/mbedtls/repo/include\" --include_path=\"/home/craig/ti/sdk_5_20/ti/simplelink_cc13x2_26x2_sdk_5_20_00_52/source\" --include_path=\"/home/craig/workspace_v11/thread_sensor_CC26X2R1_LAUNCHXL_tirtos_ccs/platform/crypto\" --include_path=\"/home/craig/workspace_v11/libopenthread_mtd_cc13x2_26x2_ccs/config\" --include_path=\"/home/craig/ti/sdk_5_20/ti/simplelink_cc13x2_26x2_sdk_5_20_00_52/source/ti/devices/cc13x2_cc26x2\" --include_path=\"/home/craig/ti/sdk_5_20/ti/simplelink_cc13x2_26x2_sdk_5_20_00_52/source/ti/posix/ccs\" --include_path=\"/home/craig/ti/ccs1100/ccs/tools/compiler/ti-cgt-arm_20.2.5.LTS/include\" --define=xSENSOR_REED --define=xSENSOR_POWER --define=xSENSOR_MOVEMENT --define=SENSOR_AHT10 --define=HAVE_CONFIG_H --define=Board_EXCLUDE_NVS_EXTERNAL_FLASH --define=NVOCMP_POSIX_MUTEX --define=NVOCMP_NVPAGES=2 --define=NDEBUG --define=BOARD_DISPLAY_USE_UART=1 --define=MBEDTLS_CONFIG_FILE='\"mbedtls-config-cc13x2_26x2.h\"' --define=OPENTHREAD_CONFIG_FILE='\"openthread-config-cc13x2_26x2-mtd.h\"' --define=OPENTHREAD_PROJECT_CORE_CONFIG_FILE='\"openthread-core-cc13x2_26x2-config.h\"' --define=TIOP_CUI=1 --define=BOARD_DISPLAY_USE_LCD=0 --define=DeviceFamily_CC13X2_CC26X2 -g --c99 --gcc --printf_support=nofloat --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on --gen_data_subsections=on --abi=eabi  " "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

configPkg/linker.cmd: build-574659855 ../release.cfg
configPkg/compiler.opt: build-574659855
configPkg/: build-574659855

build-98902817: ../temp_sensor.syscfg
	@echo 'Building file: "$<"'
	@echo 'Invoking: SysConfig'
	"/home/craig/ti/sdk_5_20/ti/sysconfig_1.8.2/sysconfig_cli.sh" -s "/home/craig/ti/sdk_5_20/ti/simplelink_cc13x2_26x2_sdk_5_20_00_52/.metadata/product.json" --script "/home/craig/workspace_v11/thread_sensor_CC26X2R1_LAUNCHXL_tirtos_ccs/temp_sensor.syscfg" -o "syscfg" --compiler ccs
	@echo 'Finished building: "$<"'
	@echo ' '

syscfg/tiop_config.h: build-98902817 ../temp_sensor.syscfg
syscfg/tiop_config.c: build-98902817
syscfg/ti_devices_config.c: build-98902817
syscfg/ti_radio_config.c: build-98902817
syscfg/ti_radio_config.h: build-98902817
syscfg/ti_drivers_config.c: build-98902817
syscfg/ti_drivers_config.h: build-98902817
syscfg/ti_utils_build_linker.cmd.genlibs: build-98902817
syscfg/syscfg_c.rov.xs: build-98902817
syscfg/ti_utils_runtime_model.gv: build-98902817
syscfg/ti_utils_runtime_Makefile: build-98902817
syscfg/: build-98902817

syscfg/%.obj: ./syscfg/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"/home/craig/ti/ccs1100/ccs/tools/compiler/ti-cgt-arm_20.2.5.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me -Ooff --opt_for_speed=0 --include_path="/home/craig/workspace_v11/thread_sensor_CC26X2R1_LAUNCHXL_tirtos_ccs" --include_path="/home/craig/workspace_v11/thread_sensor_CC26X2R1_LAUNCHXL_tirtos_ccs/Application" --include_path="/home/craig/workspace_v11/thread_sensor_CC26X2R1_LAUNCHXL_tirtos_ccs/Application/sensor_controller" --include_path="/home/craig/workspace_v11/thread_sensor_CC26X2R1_LAUNCHXL_tirtos_ccs/Application/ui" --include_path="/home/craig/workspace_v11/thread_sensor_CC26X2R1_LAUNCHXL_tirtos_ccs/Application/utils" --include_path="/home/craig/workspace_v11/thread_sensor_CC26X2R1_LAUNCHXL_tirtos_ccs/Debug" --include_path="/home/craig/workspace_v11/libmbedcrypto_cc13x2_26x2_ccs/config" --include_path="/home/craig/ti/sdk_5_20/ti/simplelink_cc13x2_26x2_sdk_5_20_00_52/source/third_party/openthread/examples/platforms" --include_path="/home/craig/ti/sdk_5_20/ti/simplelink_cc13x2_26x2_sdk_5_20_00_52/source/third_party/openthread/include" --include_path="/home/craig/ti/sdk_5_20/ti/simplelink_cc13x2_26x2_sdk_5_20_00_52/source/third_party/openthread/src/core" --include_path="/home/craig/ti/sdk_5_20/ti/simplelink_cc13x2_26x2_sdk_5_20_00_52/source/third_party/openthread/third_party/mbedtls/repo/include" --include_path="/home/craig/ti/sdk_5_20/ti/simplelink_cc13x2_26x2_sdk_5_20_00_52/source" --include_path="/home/craig/workspace_v11/thread_sensor_CC26X2R1_LAUNCHXL_tirtos_ccs/platform/crypto" --include_path="/home/craig/workspace_v11/libopenthread_mtd_cc13x2_26x2_ccs/config" --include_path="/home/craig/ti/sdk_5_20/ti/simplelink_cc13x2_26x2_sdk_5_20_00_52/source/ti/devices/cc13x2_cc26x2" --include_path="/home/craig/ti/sdk_5_20/ti/simplelink_cc13x2_26x2_sdk_5_20_00_52/source/ti/posix/ccs" --include_path="/home/craig/ti/ccs1100/ccs/tools/compiler/ti-cgt-arm_20.2.5.LTS/include" --define=xSENSOR_REED --define=xSENSOR_POWER --define=xSENSOR_MOVEMENT --define=SENSOR_AHT10 --define=HAVE_CONFIG_H --define=Board_EXCLUDE_NVS_EXTERNAL_FLASH --define=NVOCMP_POSIX_MUTEX --define=NVOCMP_NVPAGES=2 --define=NDEBUG --define=BOARD_DISPLAY_USE_UART=1 --define=MBEDTLS_CONFIG_FILE='"mbedtls-config-cc13x2_26x2.h"' --define=OPENTHREAD_CONFIG_FILE='"openthread-config-cc13x2_26x2-mtd.h"' --define=OPENTHREAD_PROJECT_CORE_CONFIG_FILE='"openthread-core-cc13x2_26x2-config.h"' --define=TIOP_CUI=1 --define=BOARD_DISPLAY_USE_LCD=0 --define=DeviceFamily_CC13X2_CC26X2 -g --c99 --gcc --printf_support=nofloat --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on --gen_data_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="syscfg/$(basename $(<F)).d_raw" --include_path="/home/craig/workspace_v11/thread_sensor_CC26X2R1_LAUNCHXL_tirtos_ccs/Debug/syscfg" --obj_directory="syscfg" $(GEN_OPTS__FLAG) "$(shell echo $<)"
	@echo 'Finished building: "$<"'
	@echo ' '


