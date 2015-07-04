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
ifeq "$(wildcard nbproject/Makefile-local-APP.mk)" "nbproject/Makefile-local-APP.mk"
include nbproject/Makefile-local-APP.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=APP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/TNCT_MCU.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/TNCT_MCU.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=driver/Motor.cpp driver/adc.cpp driver/dma.cpp driver/pwm.cpp driver/uart.cpp driver/IModule.cpp driver/gpio.cpp driver/lcd.cpp math/Q16.cpp math/between.cpp math/dsp.cpp system/startup.cpp system/sys_config.c ErrorObject.cpp main.cpp

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/driver/Motor.o ${OBJECTDIR}/driver/adc.o ${OBJECTDIR}/driver/dma.o ${OBJECTDIR}/driver/pwm.o ${OBJECTDIR}/driver/uart.o ${OBJECTDIR}/driver/IModule.o ${OBJECTDIR}/driver/gpio.o ${OBJECTDIR}/driver/lcd.o ${OBJECTDIR}/math/Q16.o ${OBJECTDIR}/math/between.o ${OBJECTDIR}/math/dsp.o ${OBJECTDIR}/system/startup.o ${OBJECTDIR}/system/sys_config.o ${OBJECTDIR}/ErrorObject.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/driver/Motor.o.d ${OBJECTDIR}/driver/adc.o.d ${OBJECTDIR}/driver/dma.o.d ${OBJECTDIR}/driver/pwm.o.d ${OBJECTDIR}/driver/uart.o.d ${OBJECTDIR}/driver/IModule.o.d ${OBJECTDIR}/driver/gpio.o.d ${OBJECTDIR}/driver/lcd.o.d ${OBJECTDIR}/math/Q16.o.d ${OBJECTDIR}/math/between.o.d ${OBJECTDIR}/math/dsp.o.d ${OBJECTDIR}/system/startup.o.d ${OBJECTDIR}/system/sys_config.o.d ${OBJECTDIR}/ErrorObject.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/driver/Motor.o ${OBJECTDIR}/driver/adc.o ${OBJECTDIR}/driver/dma.o ${OBJECTDIR}/driver/pwm.o ${OBJECTDIR}/driver/uart.o ${OBJECTDIR}/driver/IModule.o ${OBJECTDIR}/driver/gpio.o ${OBJECTDIR}/driver/lcd.o ${OBJECTDIR}/math/Q16.o ${OBJECTDIR}/math/between.o ${OBJECTDIR}/math/dsp.o ${OBJECTDIR}/system/startup.o ${OBJECTDIR}/system/sys_config.o ${OBJECTDIR}/ErrorObject.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=driver/Motor.cpp driver/adc.cpp driver/dma.cpp driver/pwm.cpp driver/uart.cpp driver/IModule.cpp driver/gpio.cpp driver/lcd.cpp math/Q16.cpp math/between.cpp math/dsp.cpp system/startup.cpp system/sys_config.c ErrorObject.cpp main.cpp


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
	${MAKE}  -f nbproject/Makefile-APP.mk dist/${CND_CONF}/${IMAGE_TYPE}/TNCT_MCU.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX470F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/system/sys_config.o: system/sys_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/system" 
	@${RM} ${OBJECTDIR}/system/sys_config.o.d 
	@${RM} ${OBJECTDIR}/system/sys_config.o 
	@${FIXDEPS} "${OBJECTDIR}/system/sys_config.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_APP_ -MMD -MF "${OBJECTDIR}/system/sys_config.o.d" -o ${OBJECTDIR}/system/sys_config.o system/sys_config.c   
	
else
${OBJECTDIR}/system/sys_config.o: system/sys_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/system" 
	@${RM} ${OBJECTDIR}/system/sys_config.o.d 
	@${RM} ${OBJECTDIR}/system/sys_config.o 
	@${FIXDEPS} "${OBJECTDIR}/system/sys_config.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -D_APP_ -MMD -MF "${OBJECTDIR}/system/sys_config.o.d" -o ${OBJECTDIR}/system/sys_config.o system/sys_config.c   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/driver/Motor.o: driver/Motor.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/driver" 
	@${RM} ${OBJECTDIR}/driver/Motor.o.d 
	@${RM} ${OBJECTDIR}/driver/Motor.o 
	@${FIXDEPS} "${OBJECTDIR}/driver/Motor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O1 -D_APP_ -MMD -MF "${OBJECTDIR}/driver/Motor.o.d" -o ${OBJECTDIR}/driver/Motor.o driver/Motor.cpp  
	
${OBJECTDIR}/driver/adc.o: driver/adc.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/driver" 
	@${RM} ${OBJECTDIR}/driver/adc.o.d 
	@${RM} ${OBJECTDIR}/driver/adc.o 
	@${FIXDEPS} "${OBJECTDIR}/driver/adc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O1 -D_APP_ -MMD -MF "${OBJECTDIR}/driver/adc.o.d" -o ${OBJECTDIR}/driver/adc.o driver/adc.cpp  
	
${OBJECTDIR}/driver/dma.o: driver/dma.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/driver" 
	@${RM} ${OBJECTDIR}/driver/dma.o.d 
	@${RM} ${OBJECTDIR}/driver/dma.o 
	@${FIXDEPS} "${OBJECTDIR}/driver/dma.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O1 -D_APP_ -MMD -MF "${OBJECTDIR}/driver/dma.o.d" -o ${OBJECTDIR}/driver/dma.o driver/dma.cpp  
	
${OBJECTDIR}/driver/pwm.o: driver/pwm.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/driver" 
	@${RM} ${OBJECTDIR}/driver/pwm.o.d 
	@${RM} ${OBJECTDIR}/driver/pwm.o 
	@${FIXDEPS} "${OBJECTDIR}/driver/pwm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O1 -D_APP_ -MMD -MF "${OBJECTDIR}/driver/pwm.o.d" -o ${OBJECTDIR}/driver/pwm.o driver/pwm.cpp  
	
${OBJECTDIR}/driver/uart.o: driver/uart.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/driver" 
	@${RM} ${OBJECTDIR}/driver/uart.o.d 
	@${RM} ${OBJECTDIR}/driver/uart.o 
	@${FIXDEPS} "${OBJECTDIR}/driver/uart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O1 -D_APP_ -MMD -MF "${OBJECTDIR}/driver/uart.o.d" -o ${OBJECTDIR}/driver/uart.o driver/uart.cpp  
	
${OBJECTDIR}/driver/IModule.o: driver/IModule.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/driver" 
	@${RM} ${OBJECTDIR}/driver/IModule.o.d 
	@${RM} ${OBJECTDIR}/driver/IModule.o 
	@${FIXDEPS} "${OBJECTDIR}/driver/IModule.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O1 -D_APP_ -MMD -MF "${OBJECTDIR}/driver/IModule.o.d" -o ${OBJECTDIR}/driver/IModule.o driver/IModule.cpp  
	
${OBJECTDIR}/driver/gpio.o: driver/gpio.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/driver" 
	@${RM} ${OBJECTDIR}/driver/gpio.o.d 
	@${RM} ${OBJECTDIR}/driver/gpio.o 
	@${FIXDEPS} "${OBJECTDIR}/driver/gpio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O1 -D_APP_ -MMD -MF "${OBJECTDIR}/driver/gpio.o.d" -o ${OBJECTDIR}/driver/gpio.o driver/gpio.cpp  
	
${OBJECTDIR}/driver/lcd.o: driver/lcd.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/driver" 
	@${RM} ${OBJECTDIR}/driver/lcd.o.d 
	@${RM} ${OBJECTDIR}/driver/lcd.o 
	@${FIXDEPS} "${OBJECTDIR}/driver/lcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O1 -D_APP_ -MMD -MF "${OBJECTDIR}/driver/lcd.o.d" -o ${OBJECTDIR}/driver/lcd.o driver/lcd.cpp  
	
${OBJECTDIR}/math/Q16.o: math/Q16.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/math" 
	@${RM} ${OBJECTDIR}/math/Q16.o.d 
	@${RM} ${OBJECTDIR}/math/Q16.o 
	@${FIXDEPS} "${OBJECTDIR}/math/Q16.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O1 -D_APP_ -MMD -MF "${OBJECTDIR}/math/Q16.o.d" -o ${OBJECTDIR}/math/Q16.o math/Q16.cpp  
	
${OBJECTDIR}/math/between.o: math/between.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/math" 
	@${RM} ${OBJECTDIR}/math/between.o.d 
	@${RM} ${OBJECTDIR}/math/between.o 
	@${FIXDEPS} "${OBJECTDIR}/math/between.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O1 -D_APP_ -MMD -MF "${OBJECTDIR}/math/between.o.d" -o ${OBJECTDIR}/math/between.o math/between.cpp  
	
${OBJECTDIR}/math/dsp.o: math/dsp.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/math" 
	@${RM} ${OBJECTDIR}/math/dsp.o.d 
	@${RM} ${OBJECTDIR}/math/dsp.o 
	@${FIXDEPS} "${OBJECTDIR}/math/dsp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O1 -D_APP_ -MMD -MF "${OBJECTDIR}/math/dsp.o.d" -o ${OBJECTDIR}/math/dsp.o math/dsp.cpp  
	
${OBJECTDIR}/system/startup.o: system/startup.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/system" 
	@${RM} ${OBJECTDIR}/system/startup.o.d 
	@${RM} ${OBJECTDIR}/system/startup.o 
	@${FIXDEPS} "${OBJECTDIR}/system/startup.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O1 -D_APP_ -MMD -MF "${OBJECTDIR}/system/startup.o.d" -o ${OBJECTDIR}/system/startup.o system/startup.cpp  
	
${OBJECTDIR}/ErrorObject.o: ErrorObject.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ErrorObject.o.d 
	@${RM} ${OBJECTDIR}/ErrorObject.o 
	@${FIXDEPS} "${OBJECTDIR}/ErrorObject.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O1 -D_APP_ -MMD -MF "${OBJECTDIR}/ErrorObject.o.d" -o ${OBJECTDIR}/ErrorObject.o ErrorObject.cpp  
	
${OBJECTDIR}/main.o: main.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O1 -D_APP_ -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.cpp  
	
else
${OBJECTDIR}/driver/Motor.o: driver/Motor.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/driver" 
	@${RM} ${OBJECTDIR}/driver/Motor.o.d 
	@${RM} ${OBJECTDIR}/driver/Motor.o 
	@${FIXDEPS} "${OBJECTDIR}/driver/Motor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O1 -D_APP_ -MMD -MF "${OBJECTDIR}/driver/Motor.o.d" -o ${OBJECTDIR}/driver/Motor.o driver/Motor.cpp  
	
${OBJECTDIR}/driver/adc.o: driver/adc.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/driver" 
	@${RM} ${OBJECTDIR}/driver/adc.o.d 
	@${RM} ${OBJECTDIR}/driver/adc.o 
	@${FIXDEPS} "${OBJECTDIR}/driver/adc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O1 -D_APP_ -MMD -MF "${OBJECTDIR}/driver/adc.o.d" -o ${OBJECTDIR}/driver/adc.o driver/adc.cpp  
	
${OBJECTDIR}/driver/dma.o: driver/dma.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/driver" 
	@${RM} ${OBJECTDIR}/driver/dma.o.d 
	@${RM} ${OBJECTDIR}/driver/dma.o 
	@${FIXDEPS} "${OBJECTDIR}/driver/dma.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O1 -D_APP_ -MMD -MF "${OBJECTDIR}/driver/dma.o.d" -o ${OBJECTDIR}/driver/dma.o driver/dma.cpp  
	
${OBJECTDIR}/driver/pwm.o: driver/pwm.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/driver" 
	@${RM} ${OBJECTDIR}/driver/pwm.o.d 
	@${RM} ${OBJECTDIR}/driver/pwm.o 
	@${FIXDEPS} "${OBJECTDIR}/driver/pwm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O1 -D_APP_ -MMD -MF "${OBJECTDIR}/driver/pwm.o.d" -o ${OBJECTDIR}/driver/pwm.o driver/pwm.cpp  
	
${OBJECTDIR}/driver/uart.o: driver/uart.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/driver" 
	@${RM} ${OBJECTDIR}/driver/uart.o.d 
	@${RM} ${OBJECTDIR}/driver/uart.o 
	@${FIXDEPS} "${OBJECTDIR}/driver/uart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O1 -D_APP_ -MMD -MF "${OBJECTDIR}/driver/uart.o.d" -o ${OBJECTDIR}/driver/uart.o driver/uart.cpp  
	
${OBJECTDIR}/driver/IModule.o: driver/IModule.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/driver" 
	@${RM} ${OBJECTDIR}/driver/IModule.o.d 
	@${RM} ${OBJECTDIR}/driver/IModule.o 
	@${FIXDEPS} "${OBJECTDIR}/driver/IModule.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O1 -D_APP_ -MMD -MF "${OBJECTDIR}/driver/IModule.o.d" -o ${OBJECTDIR}/driver/IModule.o driver/IModule.cpp  
	
${OBJECTDIR}/driver/gpio.o: driver/gpio.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/driver" 
	@${RM} ${OBJECTDIR}/driver/gpio.o.d 
	@${RM} ${OBJECTDIR}/driver/gpio.o 
	@${FIXDEPS} "${OBJECTDIR}/driver/gpio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O1 -D_APP_ -MMD -MF "${OBJECTDIR}/driver/gpio.o.d" -o ${OBJECTDIR}/driver/gpio.o driver/gpio.cpp  
	
${OBJECTDIR}/driver/lcd.o: driver/lcd.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/driver" 
	@${RM} ${OBJECTDIR}/driver/lcd.o.d 
	@${RM} ${OBJECTDIR}/driver/lcd.o 
	@${FIXDEPS} "${OBJECTDIR}/driver/lcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O1 -D_APP_ -MMD -MF "${OBJECTDIR}/driver/lcd.o.d" -o ${OBJECTDIR}/driver/lcd.o driver/lcd.cpp  
	
${OBJECTDIR}/math/Q16.o: math/Q16.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/math" 
	@${RM} ${OBJECTDIR}/math/Q16.o.d 
	@${RM} ${OBJECTDIR}/math/Q16.o 
	@${FIXDEPS} "${OBJECTDIR}/math/Q16.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O1 -D_APP_ -MMD -MF "${OBJECTDIR}/math/Q16.o.d" -o ${OBJECTDIR}/math/Q16.o math/Q16.cpp  
	
${OBJECTDIR}/math/between.o: math/between.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/math" 
	@${RM} ${OBJECTDIR}/math/between.o.d 
	@${RM} ${OBJECTDIR}/math/between.o 
	@${FIXDEPS} "${OBJECTDIR}/math/between.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O1 -D_APP_ -MMD -MF "${OBJECTDIR}/math/between.o.d" -o ${OBJECTDIR}/math/between.o math/between.cpp  
	
${OBJECTDIR}/math/dsp.o: math/dsp.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/math" 
	@${RM} ${OBJECTDIR}/math/dsp.o.d 
	@${RM} ${OBJECTDIR}/math/dsp.o 
	@${FIXDEPS} "${OBJECTDIR}/math/dsp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O1 -D_APP_ -MMD -MF "${OBJECTDIR}/math/dsp.o.d" -o ${OBJECTDIR}/math/dsp.o math/dsp.cpp  
	
${OBJECTDIR}/system/startup.o: system/startup.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/system" 
	@${RM} ${OBJECTDIR}/system/startup.o.d 
	@${RM} ${OBJECTDIR}/system/startup.o 
	@${FIXDEPS} "${OBJECTDIR}/system/startup.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O1 -D_APP_ -MMD -MF "${OBJECTDIR}/system/startup.o.d" -o ${OBJECTDIR}/system/startup.o system/startup.cpp  
	
${OBJECTDIR}/ErrorObject.o: ErrorObject.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ErrorObject.o.d 
	@${RM} ${OBJECTDIR}/ErrorObject.o 
	@${FIXDEPS} "${OBJECTDIR}/ErrorObject.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O1 -D_APP_ -MMD -MF "${OBJECTDIR}/ErrorObject.o.d" -o ${OBJECTDIR}/ErrorObject.o ErrorObject.cpp  
	
${OBJECTDIR}/main.o: main.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -O1 -D_APP_ -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.cpp  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/TNCT_MCU.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CPPC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION) -O1 -o dist/${CND_CONF}/${IMAGE_TYPE}/TNCT_MCU.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}           -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC0275F  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=1024,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/TNCT_MCU.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CPPC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -O1 -o dist/${CND_CONF}/${IMAGE_TYPE}/TNCT_MCU.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=1024,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/TNCT_MCU.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/APP
	${RM} -r dist/APP

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
