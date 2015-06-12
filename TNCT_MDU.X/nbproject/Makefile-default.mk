#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/TNCT_MDU.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/TNCT_MDU.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/app.c ../src/main.c ../../../../framework/crypto/src/crypto.c ../../../../framework/driver/nvm/src/dynamic/drv_nvm.c ../../../../framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c ../../../../framework/math/dsp/default-general-exception-handler.c ../../../../framework/math/dsp/general-exception.s ../../../../framework/osal/src/osal_freertos.c ../../../../framework/system/debug/src/sys_debug.c ../../../../framework/system/devcon/src/sys_devcon.c ../../../../framework/system/devcon/src/sys_devcon_pic32mx.c ../../../../framework/system/dma/src/sys_dma.c ../../../../framework/system/fs/src/dynamic/sys_fs.c ../../../../framework/system/fs/src/dynamic/sys_fs_media_manager.c ../../../../framework/system/fs/fat_fs/src/file_system/ff.c ../../../../framework/system/fs/fat_fs/src/hardware_access/diskio.c ../../../../framework/system/int/src/sys_int_pic32.c ../../../../framework/system/ports/src/sys_ports.c ../../../audio/universal_audio_decoders/firmware/src/audio_decoder/mp3/mp3.c ../../../audio/universal_audio_decoders/firmware/src/audio_decoder/aac/aac.c ../../../audio/universal_audio_decoders/firmware/src/audio_decoder/wma/wma.c ../../../audio/universal_audio_decoders/firmware/src/audio_decoder/wav/wav.c ../../../../third_party/rtos/FreeRTOS/Source/croutine.c ../../../../third_party/rtos/FreeRTOS/Source/list.c ../../../../third_party/rtos/FreeRTOS/Source/queue.c ../../../../third_party/rtos/FreeRTOS/Source/tasks.c ../../../../third_party/rtos/FreeRTOS/Source/timers.c ../../../../third_party/rtos/FreeRTOS/Source/event_groups.c ../../../../third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c ../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c ../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S ../src/system_config/default/framework/driver/adc/src/drv_adc_static.c ../src/system_config/default/framework/driver/oc/src/drv_oc_static.c ../src/system_config/default/framework/driver/usart/drv_usart_static.c ../src/system_config/default/framework/system/clk/src/sys_clk_static.c ../src/system_config/default/framework/system/console/src/sys_console_static.c ../src/system_config/default/framework/system/ports/src/sys_ports_static.c ../src/system_config/default/system_init.c ../src/system_config/default/system_interrupt.c ../src/system_config/default/system_exceptions.c ../src/system_config/default/system_tasks.c ../src/system_config/default/system_interrupt_a.S ../src/system_config/default/rtos_hooks.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1886890887/crypto.o ${OBJECTDIR}/_ext/571308596/drv_nvm.o ${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o ${OBJECTDIR}/_ext/1716234645/default-general-exception-handler.o ${OBJECTDIR}/_ext/1716234645/general-exception.o ${OBJECTDIR}/_ext/24337685/osal_freertos.o ${OBJECTDIR}/_ext/1408546951/sys_debug.o ${OBJECTDIR}/_ext/1271179505/sys_devcon.o ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/65930274/sys_dma.o ${OBJECTDIR}/_ext/2104899551/sys_fs.o ${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o ${OBJECTDIR}/_ext/66287330/ff.o ${OBJECTDIR}/_ext/2072869785/diskio.o ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o ${OBJECTDIR}/_ext/77319752/sys_ports.o ${OBJECTDIR}/_ext/905356200/mp3.o ${OBJECTDIR}/_ext/905368149/aac.o ${OBJECTDIR}/_ext/905346637/wma.o ${OBJECTDIR}/_ext/905346988/wav.o ${OBJECTDIR}/_ext/1128951024/croutine.o ${OBJECTDIR}/_ext/1128951024/list.o ${OBJECTDIR}/_ext/1128951024/queue.o ${OBJECTDIR}/_ext/1128951024/tasks.o ${OBJECTDIR}/_ext/1128951024/timers.o ${OBJECTDIR}/_ext/1128951024/event_groups.o ${OBJECTDIR}/_ext/1856876499/heap_1.o ${OBJECTDIR}/_ext/12131622/port.o ${OBJECTDIR}/_ext/12131622/port_asm.o ${OBJECTDIR}/_ext/1361460060/drv_adc_static.o ${OBJECTDIR}/_ext/1047219354/drv_oc_static.o ${OBJECTDIR}/_ext/1345626252/drv_usart_static.o ${OBJECTDIR}/_ext/639803181/sys_clk_static.o ${OBJECTDIR}/_ext/1544295906/sys_console_static.o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ${OBJECTDIR}/_ext/1688732426/system_init.o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o ${OBJECTDIR}/_ext/1688732426/rtos_hooks.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1886890887/crypto.o.d ${OBJECTDIR}/_ext/571308596/drv_nvm.o.d ${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o.d ${OBJECTDIR}/_ext/1716234645/default-general-exception-handler.o.d ${OBJECTDIR}/_ext/1716234645/general-exception.o.d ${OBJECTDIR}/_ext/24337685/osal_freertos.o.d ${OBJECTDIR}/_ext/1408546951/sys_debug.o.d ${OBJECTDIR}/_ext/1271179505/sys_devcon.o.d ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o.d ${OBJECTDIR}/_ext/65930274/sys_dma.o.d ${OBJECTDIR}/_ext/2104899551/sys_fs.o.d ${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o.d ${OBJECTDIR}/_ext/66287330/ff.o.d ${OBJECTDIR}/_ext/2072869785/diskio.o.d ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d ${OBJECTDIR}/_ext/77319752/sys_ports.o.d ${OBJECTDIR}/_ext/905356200/mp3.o.d ${OBJECTDIR}/_ext/905368149/aac.o.d ${OBJECTDIR}/_ext/905346637/wma.o.d ${OBJECTDIR}/_ext/905346988/wav.o.d ${OBJECTDIR}/_ext/1128951024/croutine.o.d ${OBJECTDIR}/_ext/1128951024/list.o.d ${OBJECTDIR}/_ext/1128951024/queue.o.d ${OBJECTDIR}/_ext/1128951024/tasks.o.d ${OBJECTDIR}/_ext/1128951024/timers.o.d ${OBJECTDIR}/_ext/1128951024/event_groups.o.d ${OBJECTDIR}/_ext/1856876499/heap_1.o.d ${OBJECTDIR}/_ext/12131622/port.o.d ${OBJECTDIR}/_ext/12131622/port_asm.o.d ${OBJECTDIR}/_ext/1361460060/drv_adc_static.o.d ${OBJECTDIR}/_ext/1047219354/drv_oc_static.o.d ${OBJECTDIR}/_ext/1345626252/drv_usart_static.o.d ${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d ${OBJECTDIR}/_ext/1544295906/sys_console_static.o.d ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d ${OBJECTDIR}/_ext/1688732426/system_init.o.d ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.d ${OBJECTDIR}/_ext/1688732426/rtos_hooks.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1886890887/crypto.o ${OBJECTDIR}/_ext/571308596/drv_nvm.o ${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o ${OBJECTDIR}/_ext/1716234645/default-general-exception-handler.o ${OBJECTDIR}/_ext/1716234645/general-exception.o ${OBJECTDIR}/_ext/24337685/osal_freertos.o ${OBJECTDIR}/_ext/1408546951/sys_debug.o ${OBJECTDIR}/_ext/1271179505/sys_devcon.o ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o ${OBJECTDIR}/_ext/65930274/sys_dma.o ${OBJECTDIR}/_ext/2104899551/sys_fs.o ${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o ${OBJECTDIR}/_ext/66287330/ff.o ${OBJECTDIR}/_ext/2072869785/diskio.o ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o ${OBJECTDIR}/_ext/77319752/sys_ports.o ${OBJECTDIR}/_ext/905356200/mp3.o ${OBJECTDIR}/_ext/905368149/aac.o ${OBJECTDIR}/_ext/905346637/wma.o ${OBJECTDIR}/_ext/905346988/wav.o ${OBJECTDIR}/_ext/1128951024/croutine.o ${OBJECTDIR}/_ext/1128951024/list.o ${OBJECTDIR}/_ext/1128951024/queue.o ${OBJECTDIR}/_ext/1128951024/tasks.o ${OBJECTDIR}/_ext/1128951024/timers.o ${OBJECTDIR}/_ext/1128951024/event_groups.o ${OBJECTDIR}/_ext/1856876499/heap_1.o ${OBJECTDIR}/_ext/12131622/port.o ${OBJECTDIR}/_ext/12131622/port_asm.o ${OBJECTDIR}/_ext/1361460060/drv_adc_static.o ${OBJECTDIR}/_ext/1047219354/drv_oc_static.o ${OBJECTDIR}/_ext/1345626252/drv_usart_static.o ${OBJECTDIR}/_ext/639803181/sys_clk_static.o ${OBJECTDIR}/_ext/1544295906/sys_console_static.o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ${OBJECTDIR}/_ext/1688732426/system_init.o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o ${OBJECTDIR}/_ext/1688732426/rtos_hooks.o

# Source Files
SOURCEFILES=../src/app.c ../src/main.c ../../../../framework/crypto/src/crypto.c ../../../../framework/driver/nvm/src/dynamic/drv_nvm.c ../../../../framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c ../../../../framework/math/dsp/default-general-exception-handler.c ../../../../framework/math/dsp/general-exception.s ../../../../framework/osal/src/osal_freertos.c ../../../../framework/system/debug/src/sys_debug.c ../../../../framework/system/devcon/src/sys_devcon.c ../../../../framework/system/devcon/src/sys_devcon_pic32mx.c ../../../../framework/system/dma/src/sys_dma.c ../../../../framework/system/fs/src/dynamic/sys_fs.c ../../../../framework/system/fs/src/dynamic/sys_fs_media_manager.c ../../../../framework/system/fs/fat_fs/src/file_system/ff.c ../../../../framework/system/fs/fat_fs/src/hardware_access/diskio.c ../../../../framework/system/int/src/sys_int_pic32.c ../../../../framework/system/ports/src/sys_ports.c ../../../audio/universal_audio_decoders/firmware/src/audio_decoder/mp3/mp3.c ../../../audio/universal_audio_decoders/firmware/src/audio_decoder/aac/aac.c ../../../audio/universal_audio_decoders/firmware/src/audio_decoder/wma/wma.c ../../../audio/universal_audio_decoders/firmware/src/audio_decoder/wav/wav.c ../../../../third_party/rtos/FreeRTOS/Source/croutine.c ../../../../third_party/rtos/FreeRTOS/Source/list.c ../../../../third_party/rtos/FreeRTOS/Source/queue.c ../../../../third_party/rtos/FreeRTOS/Source/tasks.c ../../../../third_party/rtos/FreeRTOS/Source/timers.c ../../../../third_party/rtos/FreeRTOS/Source/event_groups.c ../../../../third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c ../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c ../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S ../src/system_config/default/framework/driver/adc/src/drv_adc_static.c ../src/system_config/default/framework/driver/oc/src/drv_oc_static.c ../src/system_config/default/framework/driver/usart/drv_usart_static.c ../src/system_config/default/framework/system/clk/src/sys_clk_static.c ../src/system_config/default/framework/system/console/src/sys_console_static.c ../src/system_config/default/framework/system/ports/src/sys_ports_static.c ../src/system_config/default/system_init.c ../src/system_config/default/system_interrupt.c ../src/system_config/default/system_exceptions.c ../src/system_config/default/system_tasks.c ../src/system_config/default/system_interrupt_a.S ../src/system_config/default/rtos_hooks.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/TNCT_MDU.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX120F032B
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1716234645/general-exception.o: ../../../../framework/math/dsp/general-exception.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1716234645" 
	@${RM} ${OBJECTDIR}/_ext/1716234645/general-exception.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1716234645/general-exception.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -I"../src/system_config/default" -o ${OBJECTDIR}/_ext/1716234645/general-exception.o ../../../../framework/math/dsp/general-exception.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--gdwarf-2,-MD="${OBJECTDIR}/_ext/1716234645/general-exception.o.d",-I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -I"../src/system_config/default"
else
${OBJECTDIR}/_ext/1716234645/general-exception.o: ../../../../framework/math/dsp/general-exception.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1716234645" 
	@${RM} ${OBJECTDIR}/_ext/1716234645/general-exception.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1716234645/general-exception.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -I"../src/system_config/default" -o ${OBJECTDIR}/_ext/1716234645/general-exception.o ../../../../framework/math/dsp/general-exception.s  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),--gdwarf-2,-MD="${OBJECTDIR}/_ext/1716234645/general-exception.o.d",-I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -I"../src/system_config/default"
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/12131622/port_asm.o: ../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/12131622" 
	@${RM} ${OBJECTDIR}/_ext/12131622/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/12131622/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/12131622/port_asm.o.ok ${OBJECTDIR}/_ext/12131622/port_asm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/12131622/port_asm.o.d" "${OBJECTDIR}/_ext/12131622/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/12131622/port_asm.o.d"  -o ${OBJECTDIR}/_ext/12131622/port_asm.o ../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/12131622/port_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -I"../src/system_config/default"
	
${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o: ../src/system_config/default/system_interrupt_a.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.ok ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.d" "${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.d"  -o ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o ../src/system_config/default/system_interrupt_a.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -I"../src/system_config/default"
	
else
${OBJECTDIR}/_ext/12131622/port_asm.o: ../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/12131622" 
	@${RM} ${OBJECTDIR}/_ext/12131622/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/12131622/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/12131622/port_asm.o.ok ${OBJECTDIR}/_ext/12131622/port_asm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/12131622/port_asm.o.d" "${OBJECTDIR}/_ext/12131622/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/12131622/port_asm.o.d"  -o ${OBJECTDIR}/_ext/12131622/port_asm.o ../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port_asm.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/12131622/port_asm.o.asm.d",--gdwarf-2,-I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -I"../src/system_config/default"
	
${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o: ../src/system_config/default/system_interrupt_a.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.ok ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.d" "${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -I"../src/system_config/default" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.d"  -o ${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o ../src/system_config/default/system_interrupt_a.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1688732426/system_interrupt_a.o.asm.d",--gdwarf-2,-I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -I"../src/system_config/default"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c   
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c   
	
${OBJECTDIR}/_ext/1886890887/crypto.o: ../../../../framework/crypto/src/crypto.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/crypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/crypto.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/crypto.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1886890887/crypto.o.d" -o ${OBJECTDIR}/_ext/1886890887/crypto.o ../../../../framework/crypto/src/crypto.c   
	
${OBJECTDIR}/_ext/571308596/drv_nvm.o: ../../../../framework/driver/nvm/src/dynamic/drv_nvm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/571308596" 
	@${RM} ${OBJECTDIR}/_ext/571308596/drv_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/571308596/drv_nvm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/571308596/drv_nvm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/571308596/drv_nvm.o.d" -o ${OBJECTDIR}/_ext/571308596/drv_nvm.o ../../../../framework/driver/nvm/src/dynamic/drv_nvm.c   
	
${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o: ../../../../framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/571308596" 
	@${RM} ${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o.d 
	@${RM} ${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o.d" -o ${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o ../../../../framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c   
	
${OBJECTDIR}/_ext/1716234645/default-general-exception-handler.o: ../../../../framework/math/dsp/default-general-exception-handler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1716234645" 
	@${RM} ${OBJECTDIR}/_ext/1716234645/default-general-exception-handler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1716234645/default-general-exception-handler.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1716234645/default-general-exception-handler.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1716234645/default-general-exception-handler.o.d" -o ${OBJECTDIR}/_ext/1716234645/default-general-exception-handler.o ../../../../framework/math/dsp/default-general-exception-handler.c   
	
${OBJECTDIR}/_ext/24337685/osal_freertos.o: ../../../../framework/osal/src/osal_freertos.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/24337685" 
	@${RM} ${OBJECTDIR}/_ext/24337685/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/24337685/osal_freertos.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/24337685/osal_freertos.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/24337685/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/24337685/osal_freertos.o ../../../../framework/osal/src/osal_freertos.c   
	
${OBJECTDIR}/_ext/1408546951/sys_debug.o: ../../../../framework/system/debug/src/sys_debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408546951" 
	@${RM} ${OBJECTDIR}/_ext/1408546951/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408546951/sys_debug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408546951/sys_debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1408546951/sys_debug.o.d" -o ${OBJECTDIR}/_ext/1408546951/sys_debug.o ../../../../framework/system/debug/src/sys_debug.c   
	
${OBJECTDIR}/_ext/1271179505/sys_devcon.o: ../../../../framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1271179505" 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1271179505/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1271179505/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/1271179505/sys_devcon.o ../../../../framework/system/devcon/src/sys_devcon.c   
	
${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o: ../../../../framework/system/devcon/src/sys_devcon_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1271179505" 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o ../../../../framework/system/devcon/src/sys_devcon_pic32mx.c   
	
${OBJECTDIR}/_ext/65930274/sys_dma.o: ../../../../framework/system/dma/src/sys_dma.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/65930274" 
	@${RM} ${OBJECTDIR}/_ext/65930274/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/65930274/sys_dma.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/65930274/sys_dma.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/65930274/sys_dma.o.d" -o ${OBJECTDIR}/_ext/65930274/sys_dma.o ../../../../framework/system/dma/src/sys_dma.c   
	
${OBJECTDIR}/_ext/2104899551/sys_fs.o: ../../../../framework/system/fs/src/dynamic/sys_fs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2104899551" 
	@${RM} ${OBJECTDIR}/_ext/2104899551/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/2104899551/sys_fs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2104899551/sys_fs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/2104899551/sys_fs.o.d" -o ${OBJECTDIR}/_ext/2104899551/sys_fs.o ../../../../framework/system/fs/src/dynamic/sys_fs.c   
	
${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o: ../../../../framework/system/fs/src/dynamic/sys_fs_media_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2104899551" 
	@${RM} ${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o ../../../../framework/system/fs/src/dynamic/sys_fs_media_manager.c   
	
${OBJECTDIR}/_ext/66287330/ff.o: ../../../../framework/system/fs/fat_fs/src/file_system/ff.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/66287330" 
	@${RM} ${OBJECTDIR}/_ext/66287330/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/66287330/ff.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/66287330/ff.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/66287330/ff.o.d" -o ${OBJECTDIR}/_ext/66287330/ff.o ../../../../framework/system/fs/fat_fs/src/file_system/ff.c   
	
${OBJECTDIR}/_ext/2072869785/diskio.o: ../../../../framework/system/fs/fat_fs/src/hardware_access/diskio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2072869785" 
	@${RM} ${OBJECTDIR}/_ext/2072869785/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/2072869785/diskio.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2072869785/diskio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/2072869785/diskio.o.d" -o ${OBJECTDIR}/_ext/2072869785/diskio.o ../../../../framework/system/fs/fat_fs/src/hardware_access/diskio.c   
	
${OBJECTDIR}/_ext/122796885/sys_int_pic32.o: ../../../../framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/122796885" 
	@${RM} ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o ../../../../framework/system/int/src/sys_int_pic32.c   
	
${OBJECTDIR}/_ext/77319752/sys_ports.o: ../../../../framework/system/ports/src/sys_ports.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/77319752" 
	@${RM} ${OBJECTDIR}/_ext/77319752/sys_ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/77319752/sys_ports.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/77319752/sys_ports.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/77319752/sys_ports.o.d" -o ${OBJECTDIR}/_ext/77319752/sys_ports.o ../../../../framework/system/ports/src/sys_ports.c   
	
${OBJECTDIR}/_ext/905356200/mp3.o: ../../../audio/universal_audio_decoders/firmware/src/audio_decoder/mp3/mp3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/905356200" 
	@${RM} ${OBJECTDIR}/_ext/905356200/mp3.o.d 
	@${RM} ${OBJECTDIR}/_ext/905356200/mp3.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/905356200/mp3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/905356200/mp3.o.d" -o ${OBJECTDIR}/_ext/905356200/mp3.o ../../../audio/universal_audio_decoders/firmware/src/audio_decoder/mp3/mp3.c   
	
${OBJECTDIR}/_ext/905368149/aac.o: ../../../audio/universal_audio_decoders/firmware/src/audio_decoder/aac/aac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/905368149" 
	@${RM} ${OBJECTDIR}/_ext/905368149/aac.o.d 
	@${RM} ${OBJECTDIR}/_ext/905368149/aac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/905368149/aac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/905368149/aac.o.d" -o ${OBJECTDIR}/_ext/905368149/aac.o ../../../audio/universal_audio_decoders/firmware/src/audio_decoder/aac/aac.c   
	
${OBJECTDIR}/_ext/905346637/wma.o: ../../../audio/universal_audio_decoders/firmware/src/audio_decoder/wma/wma.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/905346637" 
	@${RM} ${OBJECTDIR}/_ext/905346637/wma.o.d 
	@${RM} ${OBJECTDIR}/_ext/905346637/wma.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/905346637/wma.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/905346637/wma.o.d" -o ${OBJECTDIR}/_ext/905346637/wma.o ../../../audio/universal_audio_decoders/firmware/src/audio_decoder/wma/wma.c   
	
${OBJECTDIR}/_ext/905346988/wav.o: ../../../audio/universal_audio_decoders/firmware/src/audio_decoder/wav/wav.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/905346988" 
	@${RM} ${OBJECTDIR}/_ext/905346988/wav.o.d 
	@${RM} ${OBJECTDIR}/_ext/905346988/wav.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/905346988/wav.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/905346988/wav.o.d" -o ${OBJECTDIR}/_ext/905346988/wav.o ../../../audio/universal_audio_decoders/firmware/src/audio_decoder/wav/wav.c   
	
${OBJECTDIR}/_ext/1128951024/croutine.o: ../../../../third_party/rtos/FreeRTOS/Source/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1128951024" 
	@${RM} ${OBJECTDIR}/_ext/1128951024/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/1128951024/croutine.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1128951024/croutine.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1128951024/croutine.o.d" -o ${OBJECTDIR}/_ext/1128951024/croutine.o ../../../../third_party/rtos/FreeRTOS/Source/croutine.c   
	
${OBJECTDIR}/_ext/1128951024/list.o: ../../../../third_party/rtos/FreeRTOS/Source/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1128951024" 
	@${RM} ${OBJECTDIR}/_ext/1128951024/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1128951024/list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1128951024/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1128951024/list.o.d" -o ${OBJECTDIR}/_ext/1128951024/list.o ../../../../third_party/rtos/FreeRTOS/Source/list.c   
	
${OBJECTDIR}/_ext/1128951024/queue.o: ../../../../third_party/rtos/FreeRTOS/Source/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1128951024" 
	@${RM} ${OBJECTDIR}/_ext/1128951024/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1128951024/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1128951024/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1128951024/queue.o.d" -o ${OBJECTDIR}/_ext/1128951024/queue.o ../../../../third_party/rtos/FreeRTOS/Source/queue.c   
	
${OBJECTDIR}/_ext/1128951024/tasks.o: ../../../../third_party/rtos/FreeRTOS/Source/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1128951024" 
	@${RM} ${OBJECTDIR}/_ext/1128951024/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1128951024/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1128951024/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1128951024/tasks.o.d" -o ${OBJECTDIR}/_ext/1128951024/tasks.o ../../../../third_party/rtos/FreeRTOS/Source/tasks.c   
	
${OBJECTDIR}/_ext/1128951024/timers.o: ../../../../third_party/rtos/FreeRTOS/Source/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1128951024" 
	@${RM} ${OBJECTDIR}/_ext/1128951024/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1128951024/timers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1128951024/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1128951024/timers.o.d" -o ${OBJECTDIR}/_ext/1128951024/timers.o ../../../../third_party/rtos/FreeRTOS/Source/timers.c   
	
${OBJECTDIR}/_ext/1128951024/event_groups.o: ../../../../third_party/rtos/FreeRTOS/Source/event_groups.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1128951024" 
	@${RM} ${OBJECTDIR}/_ext/1128951024/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/1128951024/event_groups.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1128951024/event_groups.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1128951024/event_groups.o.d" -o ${OBJECTDIR}/_ext/1128951024/event_groups.o ../../../../third_party/rtos/FreeRTOS/Source/event_groups.c   
	
${OBJECTDIR}/_ext/1856876499/heap_1.o: ../../../../third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1856876499" 
	@${RM} ${OBJECTDIR}/_ext/1856876499/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1856876499/heap_1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1856876499/heap_1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1856876499/heap_1.o.d" -o ${OBJECTDIR}/_ext/1856876499/heap_1.o ../../../../third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c   
	
${OBJECTDIR}/_ext/12131622/port.o: ../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/12131622" 
	@${RM} ${OBJECTDIR}/_ext/12131622/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/12131622/port.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/12131622/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/12131622/port.o.d" -o ${OBJECTDIR}/_ext/12131622/port.o ../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c   
	
${OBJECTDIR}/_ext/1361460060/drv_adc_static.o: ../src/system_config/default/framework/driver/adc/src/drv_adc_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1361460060" 
	@${RM} ${OBJECTDIR}/_ext/1361460060/drv_adc_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1361460060/drv_adc_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1361460060/drv_adc_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1361460060/drv_adc_static.o.d" -o ${OBJECTDIR}/_ext/1361460060/drv_adc_static.o ../src/system_config/default/framework/driver/adc/src/drv_adc_static.c   
	
${OBJECTDIR}/_ext/1047219354/drv_oc_static.o: ../src/system_config/default/framework/driver/oc/src/drv_oc_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1047219354" 
	@${RM} ${OBJECTDIR}/_ext/1047219354/drv_oc_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047219354/drv_oc_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1047219354/drv_oc_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1047219354/drv_oc_static.o.d" -o ${OBJECTDIR}/_ext/1047219354/drv_oc_static.o ../src/system_config/default/framework/driver/oc/src/drv_oc_static.c   
	
${OBJECTDIR}/_ext/1345626252/drv_usart_static.o: ../src/system_config/default/framework/driver/usart/drv_usart_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1345626252" 
	@${RM} ${OBJECTDIR}/_ext/1345626252/drv_usart_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1345626252/drv_usart_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1345626252/drv_usart_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1345626252/drv_usart_static.o.d" -o ${OBJECTDIR}/_ext/1345626252/drv_usart_static.o ../src/system_config/default/framework/driver/usart/drv_usart_static.c   
	
${OBJECTDIR}/_ext/639803181/sys_clk_static.o: ../src/system_config/default/framework/system/clk/src/sys_clk_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_static.o ../src/system_config/default/framework/system/clk/src/sys_clk_static.c   
	
${OBJECTDIR}/_ext/1544295906/sys_console_static.o: ../src/system_config/default/framework/system/console/src/sys_console_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1544295906" 
	@${RM} ${OBJECTDIR}/_ext/1544295906/sys_console_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544295906/sys_console_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1544295906/sys_console_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1544295906/sys_console_static.o.d" -o ${OBJECTDIR}/_ext/1544295906/sys_console_static.o ../src/system_config/default/framework/system/console/src/sys_console_static.c   
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c   
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c   
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c   
	
${OBJECTDIR}/_ext/1688732426/system_exceptions.o: ../src/system_config/default/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ../src/system_config/default/system_exceptions.c   
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c   
	
${OBJECTDIR}/_ext/1688732426/rtos_hooks.o: ../src/system_config/default/rtos_hooks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/rtos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/rtos_hooks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/rtos_hooks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1688732426/rtos_hooks.o.d" -o ${OBJECTDIR}/_ext/1688732426/rtos_hooks.o ../src/system_config/default/rtos_hooks.c   
	
else
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c   
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c   
	
${OBJECTDIR}/_ext/1886890887/crypto.o: ../../../../framework/crypto/src/crypto.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1886890887" 
	@${RM} ${OBJECTDIR}/_ext/1886890887/crypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/1886890887/crypto.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1886890887/crypto.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1886890887/crypto.o.d" -o ${OBJECTDIR}/_ext/1886890887/crypto.o ../../../../framework/crypto/src/crypto.c   
	
${OBJECTDIR}/_ext/571308596/drv_nvm.o: ../../../../framework/driver/nvm/src/dynamic/drv_nvm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/571308596" 
	@${RM} ${OBJECTDIR}/_ext/571308596/drv_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/571308596/drv_nvm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/571308596/drv_nvm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/571308596/drv_nvm.o.d" -o ${OBJECTDIR}/_ext/571308596/drv_nvm.o ../../../../framework/driver/nvm/src/dynamic/drv_nvm.c   
	
${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o: ../../../../framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/571308596" 
	@${RM} ${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o.d 
	@${RM} ${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o.d" -o ${OBJECTDIR}/_ext/571308596/drv_nvm_erasewrite.o ../../../../framework/driver/nvm/src/dynamic/drv_nvm_erasewrite.c   
	
${OBJECTDIR}/_ext/1716234645/default-general-exception-handler.o: ../../../../framework/math/dsp/default-general-exception-handler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1716234645" 
	@${RM} ${OBJECTDIR}/_ext/1716234645/default-general-exception-handler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1716234645/default-general-exception-handler.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1716234645/default-general-exception-handler.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1716234645/default-general-exception-handler.o.d" -o ${OBJECTDIR}/_ext/1716234645/default-general-exception-handler.o ../../../../framework/math/dsp/default-general-exception-handler.c   
	
${OBJECTDIR}/_ext/24337685/osal_freertos.o: ../../../../framework/osal/src/osal_freertos.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/24337685" 
	@${RM} ${OBJECTDIR}/_ext/24337685/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/24337685/osal_freertos.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/24337685/osal_freertos.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/24337685/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/24337685/osal_freertos.o ../../../../framework/osal/src/osal_freertos.c   
	
${OBJECTDIR}/_ext/1408546951/sys_debug.o: ../../../../framework/system/debug/src/sys_debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1408546951" 
	@${RM} ${OBJECTDIR}/_ext/1408546951/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1408546951/sys_debug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1408546951/sys_debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1408546951/sys_debug.o.d" -o ${OBJECTDIR}/_ext/1408546951/sys_debug.o ../../../../framework/system/debug/src/sys_debug.c   
	
${OBJECTDIR}/_ext/1271179505/sys_devcon.o: ../../../../framework/system/devcon/src/sys_devcon.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1271179505" 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1271179505/sys_devcon.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1271179505/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/1271179505/sys_devcon.o ../../../../framework/system/devcon/src/sys_devcon.c   
	
${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o: ../../../../framework/system/devcon/src/sys_devcon_pic32mx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1271179505" 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o.d 
	@${RM} ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o.d" -o ${OBJECTDIR}/_ext/1271179505/sys_devcon_pic32mx.o ../../../../framework/system/devcon/src/sys_devcon_pic32mx.c   
	
${OBJECTDIR}/_ext/65930274/sys_dma.o: ../../../../framework/system/dma/src/sys_dma.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/65930274" 
	@${RM} ${OBJECTDIR}/_ext/65930274/sys_dma.o.d 
	@${RM} ${OBJECTDIR}/_ext/65930274/sys_dma.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/65930274/sys_dma.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/65930274/sys_dma.o.d" -o ${OBJECTDIR}/_ext/65930274/sys_dma.o ../../../../framework/system/dma/src/sys_dma.c   
	
${OBJECTDIR}/_ext/2104899551/sys_fs.o: ../../../../framework/system/fs/src/dynamic/sys_fs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2104899551" 
	@${RM} ${OBJECTDIR}/_ext/2104899551/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/2104899551/sys_fs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2104899551/sys_fs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/2104899551/sys_fs.o.d" -o ${OBJECTDIR}/_ext/2104899551/sys_fs.o ../../../../framework/system/fs/src/dynamic/sys_fs.c   
	
${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o: ../../../../framework/system/fs/src/dynamic/sys_fs_media_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2104899551" 
	@${RM} ${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/2104899551/sys_fs_media_manager.o ../../../../framework/system/fs/src/dynamic/sys_fs_media_manager.c   
	
${OBJECTDIR}/_ext/66287330/ff.o: ../../../../framework/system/fs/fat_fs/src/file_system/ff.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/66287330" 
	@${RM} ${OBJECTDIR}/_ext/66287330/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/66287330/ff.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/66287330/ff.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/66287330/ff.o.d" -o ${OBJECTDIR}/_ext/66287330/ff.o ../../../../framework/system/fs/fat_fs/src/file_system/ff.c   
	
${OBJECTDIR}/_ext/2072869785/diskio.o: ../../../../framework/system/fs/fat_fs/src/hardware_access/diskio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2072869785" 
	@${RM} ${OBJECTDIR}/_ext/2072869785/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/2072869785/diskio.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2072869785/diskio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/2072869785/diskio.o.d" -o ${OBJECTDIR}/_ext/2072869785/diskio.o ../../../../framework/system/fs/fat_fs/src/hardware_access/diskio.c   
	
${OBJECTDIR}/_ext/122796885/sys_int_pic32.o: ../../../../framework/system/int/src/sys_int_pic32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/122796885" 
	@${RM} ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/122796885/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/122796885/sys_int_pic32.o ../../../../framework/system/int/src/sys_int_pic32.c   
	
${OBJECTDIR}/_ext/77319752/sys_ports.o: ../../../../framework/system/ports/src/sys_ports.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/77319752" 
	@${RM} ${OBJECTDIR}/_ext/77319752/sys_ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/77319752/sys_ports.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/77319752/sys_ports.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/77319752/sys_ports.o.d" -o ${OBJECTDIR}/_ext/77319752/sys_ports.o ../../../../framework/system/ports/src/sys_ports.c   
	
${OBJECTDIR}/_ext/905356200/mp3.o: ../../../audio/universal_audio_decoders/firmware/src/audio_decoder/mp3/mp3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/905356200" 
	@${RM} ${OBJECTDIR}/_ext/905356200/mp3.o.d 
	@${RM} ${OBJECTDIR}/_ext/905356200/mp3.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/905356200/mp3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/905356200/mp3.o.d" -o ${OBJECTDIR}/_ext/905356200/mp3.o ../../../audio/universal_audio_decoders/firmware/src/audio_decoder/mp3/mp3.c   
	
${OBJECTDIR}/_ext/905368149/aac.o: ../../../audio/universal_audio_decoders/firmware/src/audio_decoder/aac/aac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/905368149" 
	@${RM} ${OBJECTDIR}/_ext/905368149/aac.o.d 
	@${RM} ${OBJECTDIR}/_ext/905368149/aac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/905368149/aac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/905368149/aac.o.d" -o ${OBJECTDIR}/_ext/905368149/aac.o ../../../audio/universal_audio_decoders/firmware/src/audio_decoder/aac/aac.c   
	
${OBJECTDIR}/_ext/905346637/wma.o: ../../../audio/universal_audio_decoders/firmware/src/audio_decoder/wma/wma.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/905346637" 
	@${RM} ${OBJECTDIR}/_ext/905346637/wma.o.d 
	@${RM} ${OBJECTDIR}/_ext/905346637/wma.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/905346637/wma.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/905346637/wma.o.d" -o ${OBJECTDIR}/_ext/905346637/wma.o ../../../audio/universal_audio_decoders/firmware/src/audio_decoder/wma/wma.c   
	
${OBJECTDIR}/_ext/905346988/wav.o: ../../../audio/universal_audio_decoders/firmware/src/audio_decoder/wav/wav.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/905346988" 
	@${RM} ${OBJECTDIR}/_ext/905346988/wav.o.d 
	@${RM} ${OBJECTDIR}/_ext/905346988/wav.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/905346988/wav.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/905346988/wav.o.d" -o ${OBJECTDIR}/_ext/905346988/wav.o ../../../audio/universal_audio_decoders/firmware/src/audio_decoder/wav/wav.c   
	
${OBJECTDIR}/_ext/1128951024/croutine.o: ../../../../third_party/rtos/FreeRTOS/Source/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1128951024" 
	@${RM} ${OBJECTDIR}/_ext/1128951024/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/1128951024/croutine.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1128951024/croutine.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1128951024/croutine.o.d" -o ${OBJECTDIR}/_ext/1128951024/croutine.o ../../../../third_party/rtos/FreeRTOS/Source/croutine.c   
	
${OBJECTDIR}/_ext/1128951024/list.o: ../../../../third_party/rtos/FreeRTOS/Source/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1128951024" 
	@${RM} ${OBJECTDIR}/_ext/1128951024/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1128951024/list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1128951024/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1128951024/list.o.d" -o ${OBJECTDIR}/_ext/1128951024/list.o ../../../../third_party/rtos/FreeRTOS/Source/list.c   
	
${OBJECTDIR}/_ext/1128951024/queue.o: ../../../../third_party/rtos/FreeRTOS/Source/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1128951024" 
	@${RM} ${OBJECTDIR}/_ext/1128951024/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1128951024/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1128951024/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1128951024/queue.o.d" -o ${OBJECTDIR}/_ext/1128951024/queue.o ../../../../third_party/rtos/FreeRTOS/Source/queue.c   
	
${OBJECTDIR}/_ext/1128951024/tasks.o: ../../../../third_party/rtos/FreeRTOS/Source/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1128951024" 
	@${RM} ${OBJECTDIR}/_ext/1128951024/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1128951024/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1128951024/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1128951024/tasks.o.d" -o ${OBJECTDIR}/_ext/1128951024/tasks.o ../../../../third_party/rtos/FreeRTOS/Source/tasks.c   
	
${OBJECTDIR}/_ext/1128951024/timers.o: ../../../../third_party/rtos/FreeRTOS/Source/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1128951024" 
	@${RM} ${OBJECTDIR}/_ext/1128951024/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1128951024/timers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1128951024/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1128951024/timers.o.d" -o ${OBJECTDIR}/_ext/1128951024/timers.o ../../../../third_party/rtos/FreeRTOS/Source/timers.c   
	
${OBJECTDIR}/_ext/1128951024/event_groups.o: ../../../../third_party/rtos/FreeRTOS/Source/event_groups.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1128951024" 
	@${RM} ${OBJECTDIR}/_ext/1128951024/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/1128951024/event_groups.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1128951024/event_groups.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1128951024/event_groups.o.d" -o ${OBJECTDIR}/_ext/1128951024/event_groups.o ../../../../third_party/rtos/FreeRTOS/Source/event_groups.c   
	
${OBJECTDIR}/_ext/1856876499/heap_1.o: ../../../../third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1856876499" 
	@${RM} ${OBJECTDIR}/_ext/1856876499/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1856876499/heap_1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1856876499/heap_1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1856876499/heap_1.o.d" -o ${OBJECTDIR}/_ext/1856876499/heap_1.o ../../../../third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_1.c   
	
${OBJECTDIR}/_ext/12131622/port.o: ../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/12131622" 
	@${RM} ${OBJECTDIR}/_ext/12131622/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/12131622/port.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/12131622/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/12131622/port.o.d" -o ${OBJECTDIR}/_ext/12131622/port.o ../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX/port.c   
	
${OBJECTDIR}/_ext/1361460060/drv_adc_static.o: ../src/system_config/default/framework/driver/adc/src/drv_adc_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1361460060" 
	@${RM} ${OBJECTDIR}/_ext/1361460060/drv_adc_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1361460060/drv_adc_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1361460060/drv_adc_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1361460060/drv_adc_static.o.d" -o ${OBJECTDIR}/_ext/1361460060/drv_adc_static.o ../src/system_config/default/framework/driver/adc/src/drv_adc_static.c   
	
${OBJECTDIR}/_ext/1047219354/drv_oc_static.o: ../src/system_config/default/framework/driver/oc/src/drv_oc_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1047219354" 
	@${RM} ${OBJECTDIR}/_ext/1047219354/drv_oc_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1047219354/drv_oc_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1047219354/drv_oc_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1047219354/drv_oc_static.o.d" -o ${OBJECTDIR}/_ext/1047219354/drv_oc_static.o ../src/system_config/default/framework/driver/oc/src/drv_oc_static.c   
	
${OBJECTDIR}/_ext/1345626252/drv_usart_static.o: ../src/system_config/default/framework/driver/usart/drv_usart_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1345626252" 
	@${RM} ${OBJECTDIR}/_ext/1345626252/drv_usart_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1345626252/drv_usart_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1345626252/drv_usart_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1345626252/drv_usart_static.o.d" -o ${OBJECTDIR}/_ext/1345626252/drv_usart_static.o ../src/system_config/default/framework/driver/usart/drv_usart_static.c   
	
${OBJECTDIR}/_ext/639803181/sys_clk_static.o: ../src/system_config/default/framework/system/clk/src/sys_clk_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/639803181" 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/639803181/sys_clk_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/639803181/sys_clk_static.o.d" -o ${OBJECTDIR}/_ext/639803181/sys_clk_static.o ../src/system_config/default/framework/system/clk/src/sys_clk_static.c   
	
${OBJECTDIR}/_ext/1544295906/sys_console_static.o: ../src/system_config/default/framework/system/console/src/sys_console_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1544295906" 
	@${RM} ${OBJECTDIR}/_ext/1544295906/sys_console_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1544295906/sys_console_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1544295906/sys_console_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1544295906/sys_console_static.o.d" -o ${OBJECTDIR}/_ext/1544295906/sys_console_static.o ../src/system_config/default/framework/system/console/src/sys_console_static.c   
	
${OBJECTDIR}/_ext/822048611/sys_ports_static.o: ../src/system_config/default/framework/system/ports/src/sys_ports_static.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/822048611" 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/822048611/sys_ports_static.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/822048611/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/822048611/sys_ports_static.o ../src/system_config/default/framework/system/ports/src/sys_ports_static.c   
	
${OBJECTDIR}/_ext/1688732426/system_init.o: ../src/system_config/default/system_init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_init.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_init.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_init.o ../src/system_config/default/system_init.c   
	
${OBJECTDIR}/_ext/1688732426/system_interrupt.o: ../src/system_config/default/system_interrupt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_interrupt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_interrupt.o ../src/system_config/default/system_interrupt.c   
	
${OBJECTDIR}/_ext/1688732426/system_exceptions.o: ../src/system_config/default/system_exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_exceptions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_exceptions.o ../src/system_config/default/system_exceptions.c   
	
${OBJECTDIR}/_ext/1688732426/system_tasks.o: ../src/system_config/default/system_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/system_tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1688732426/system_tasks.o.d" -o ${OBJECTDIR}/_ext/1688732426/system_tasks.o ../src/system_config/default/system_tasks.c   
	
${OBJECTDIR}/_ext/1688732426/rtos_hooks.o: ../src/system_config/default/rtos_hooks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1688732426" 
	@${RM} ${OBJECTDIR}/_ext/1688732426/rtos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1688732426/rtos_hooks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1688732426/rtos_hooks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -D__XC -I"../src" -I"../src/system_config/default" -I"../../../../framework" -I"../src/system_config/default/framework" -I"../../../../third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../../../third_party/rtos/FreeRTOS/Source/include" -MMD -MF "${OBJECTDIR}/_ext/1688732426/rtos_hooks.o.d" -o ${OBJECTDIR}/_ext/1688732426/rtos_hooks.o ../src/system_config/default/rtos_hooks.c   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/TNCT_MDU.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../bin/framework/peripheral/PIC32MX120F032B_peripherals.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/TNCT_MDU.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\bin\framework\peripheral\PIC32MX120F032B_peripherals.a       -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC00490:0x1FC00BEF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=1024,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/TNCT_MDU.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../bin/framework/peripheral/PIC32MX120F032B_peripherals.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/TNCT_MDU.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\bin\framework\peripheral\PIC32MX120F032B_peripherals.a      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=1024,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/TNCT_MDU.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
