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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MotorDriverH27.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MotorDriverH27.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=module/uart.cpp module/pwm.cpp module/dma.cpp module/adc.cpp IModule.cpp tmath/Q16.cpp tmath/dsp.cpp tmath/between.cpp ErrorObject.cpp config/sys_config.c startup.cpp Motor.cpp

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/module/uart.o ${OBJECTDIR}/module/pwm.o ${OBJECTDIR}/module/dma.o ${OBJECTDIR}/module/adc.o ${OBJECTDIR}/IModule.o ${OBJECTDIR}/tmath/Q16.o ${OBJECTDIR}/tmath/dsp.o ${OBJECTDIR}/tmath/between.o ${OBJECTDIR}/ErrorObject.o ${OBJECTDIR}/config/sys_config.o ${OBJECTDIR}/startup.o ${OBJECTDIR}/Motor.o
POSSIBLE_DEPFILES=${OBJECTDIR}/module/uart.o.d ${OBJECTDIR}/module/pwm.o.d ${OBJECTDIR}/module/dma.o.d ${OBJECTDIR}/module/adc.o.d ${OBJECTDIR}/IModule.o.d ${OBJECTDIR}/tmath/Q16.o.d ${OBJECTDIR}/tmath/dsp.o.d ${OBJECTDIR}/tmath/between.o.d ${OBJECTDIR}/ErrorObject.o.d ${OBJECTDIR}/config/sys_config.o.d ${OBJECTDIR}/startup.o.d ${OBJECTDIR}/Motor.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/module/uart.o ${OBJECTDIR}/module/pwm.o ${OBJECTDIR}/module/dma.o ${OBJECTDIR}/module/adc.o ${OBJECTDIR}/IModule.o ${OBJECTDIR}/tmath/Q16.o ${OBJECTDIR}/tmath/dsp.o ${OBJECTDIR}/tmath/between.o ${OBJECTDIR}/ErrorObject.o ${OBJECTDIR}/config/sys_config.o ${OBJECTDIR}/startup.o ${OBJECTDIR}/Motor.o

# Source Files
SOURCEFILES=module/uart.cpp module/pwm.cpp module/dma.cpp module/adc.cpp IModule.cpp tmath/Q16.cpp tmath/dsp.cpp tmath/between.cpp ErrorObject.cpp config/sys_config.c startup.cpp Motor.cpp


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/MotorDriverH27.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX120F032B
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
${OBJECTDIR}/config/sys_config.o: config/sys_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/config" 
	@${RM} ${OBJECTDIR}/config/sys_config.o.d 
	@${RM} ${OBJECTDIR}/config/sys_config.o 
	@${FIXDEPS} "${OBJECTDIR}/config/sys_config.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"std" -MMD -MF "${OBJECTDIR}/config/sys_config.o.d" -o ${OBJECTDIR}/config/sys_config.o config/sys_config.c   
	
else
${OBJECTDIR}/config/sys_config.o: config/sys_config.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/config" 
	@${RM} ${OBJECTDIR}/config/sys_config.o.d 
	@${RM} ${OBJECTDIR}/config/sys_config.o 
	@${FIXDEPS} "${OBJECTDIR}/config/sys_config.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"std" -MMD -MF "${OBJECTDIR}/config/sys_config.o.d" -o ${OBJECTDIR}/config/sys_config.o config/sys_config.c   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/module/uart.o: module/uart.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/module" 
	@${RM} ${OBJECTDIR}/module/uart.o.d 
	@${RM} ${OBJECTDIR}/module/uart.o 
	@${FIXDEPS} "${OBJECTDIR}/module/uart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"std" -fno-rtti -fexceptions -fno-check-new -fno-enforce-eh-specs -O3 -fomit-frame-pointer -MMD -MF "${OBJECTDIR}/module/uart.o.d" -o ${OBJECTDIR}/module/uart.o module/uart.cpp  
	
${OBJECTDIR}/module/pwm.o: module/pwm.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/module" 
	@${RM} ${OBJECTDIR}/module/pwm.o.d 
	@${RM} ${OBJECTDIR}/module/pwm.o 
	@${FIXDEPS} "${OBJECTDIR}/module/pwm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"std" -fno-rtti -fexceptions -fno-check-new -fno-enforce-eh-specs -O3 -fomit-frame-pointer -MMD -MF "${OBJECTDIR}/module/pwm.o.d" -o ${OBJECTDIR}/module/pwm.o module/pwm.cpp  
	
${OBJECTDIR}/module/dma.o: module/dma.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/module" 
	@${RM} ${OBJECTDIR}/module/dma.o.d 
	@${RM} ${OBJECTDIR}/module/dma.o 
	@${FIXDEPS} "${OBJECTDIR}/module/dma.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"std" -fno-rtti -fexceptions -fno-check-new -fno-enforce-eh-specs -O3 -fomit-frame-pointer -MMD -MF "${OBJECTDIR}/module/dma.o.d" -o ${OBJECTDIR}/module/dma.o module/dma.cpp  
	
${OBJECTDIR}/module/adc.o: module/adc.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/module" 
	@${RM} ${OBJECTDIR}/module/adc.o.d 
	@${RM} ${OBJECTDIR}/module/adc.o 
	@${FIXDEPS} "${OBJECTDIR}/module/adc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"std" -fno-rtti -fexceptions -fno-check-new -fno-enforce-eh-specs -O3 -fomit-frame-pointer -MMD -MF "${OBJECTDIR}/module/adc.o.d" -o ${OBJECTDIR}/module/adc.o module/adc.cpp  
	
${OBJECTDIR}/IModule.o: IModule.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/IModule.o.d 
	@${RM} ${OBJECTDIR}/IModule.o 
	@${FIXDEPS} "${OBJECTDIR}/IModule.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"std" -fno-rtti -fexceptions -fno-check-new -fno-enforce-eh-specs -O3 -fomit-frame-pointer -MMD -MF "${OBJECTDIR}/IModule.o.d" -o ${OBJECTDIR}/IModule.o IModule.cpp  
	
${OBJECTDIR}/tmath/Q16.o: tmath/Q16.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tmath" 
	@${RM} ${OBJECTDIR}/tmath/Q16.o.d 
	@${RM} ${OBJECTDIR}/tmath/Q16.o 
	@${FIXDEPS} "${OBJECTDIR}/tmath/Q16.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"std" -fno-rtti -fexceptions -fno-check-new -fno-enforce-eh-specs -O3 -fomit-frame-pointer -MMD -MF "${OBJECTDIR}/tmath/Q16.o.d" -o ${OBJECTDIR}/tmath/Q16.o tmath/Q16.cpp  
	
${OBJECTDIR}/tmath/dsp.o: tmath/dsp.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tmath" 
	@${RM} ${OBJECTDIR}/tmath/dsp.o.d 
	@${RM} ${OBJECTDIR}/tmath/dsp.o 
	@${FIXDEPS} "${OBJECTDIR}/tmath/dsp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"std" -fno-rtti -fexceptions -fno-check-new -fno-enforce-eh-specs -O3 -fomit-frame-pointer -MMD -MF "${OBJECTDIR}/tmath/dsp.o.d" -o ${OBJECTDIR}/tmath/dsp.o tmath/dsp.cpp  
	
${OBJECTDIR}/tmath/between.o: tmath/between.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tmath" 
	@${RM} ${OBJECTDIR}/tmath/between.o.d 
	@${RM} ${OBJECTDIR}/tmath/between.o 
	@${FIXDEPS} "${OBJECTDIR}/tmath/between.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"std" -fno-rtti -fexceptions -fno-check-new -fno-enforce-eh-specs -O3 -fomit-frame-pointer -MMD -MF "${OBJECTDIR}/tmath/between.o.d" -o ${OBJECTDIR}/tmath/between.o tmath/between.cpp  
	
${OBJECTDIR}/ErrorObject.o: ErrorObject.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ErrorObject.o.d 
	@${RM} ${OBJECTDIR}/ErrorObject.o 
	@${FIXDEPS} "${OBJECTDIR}/ErrorObject.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"std" -fno-rtti -fexceptions -fno-check-new -fno-enforce-eh-specs -O3 -fomit-frame-pointer -MMD -MF "${OBJECTDIR}/ErrorObject.o.d" -o ${OBJECTDIR}/ErrorObject.o ErrorObject.cpp  
	
${OBJECTDIR}/startup.o: startup.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/startup.o.d 
	@${RM} ${OBJECTDIR}/startup.o 
	@${FIXDEPS} "${OBJECTDIR}/startup.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"std" -fno-rtti -fexceptions -fno-check-new -fno-enforce-eh-specs -O3 -fomit-frame-pointer -MMD -MF "${OBJECTDIR}/startup.o.d" -o ${OBJECTDIR}/startup.o startup.cpp  
	
${OBJECTDIR}/Motor.o: Motor.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Motor.o.d 
	@${RM} ${OBJECTDIR}/Motor.o 
	@${FIXDEPS} "${OBJECTDIR}/Motor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"std" -fno-rtti -fexceptions -fno-check-new -fno-enforce-eh-specs -O3 -fomit-frame-pointer -MMD -MF "${OBJECTDIR}/Motor.o.d" -o ${OBJECTDIR}/Motor.o Motor.cpp  
	
else
${OBJECTDIR}/module/uart.o: module/uart.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/module" 
	@${RM} ${OBJECTDIR}/module/uart.o.d 
	@${RM} ${OBJECTDIR}/module/uart.o 
	@${FIXDEPS} "${OBJECTDIR}/module/uart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"std" -fno-rtti -fexceptions -fno-check-new -fno-enforce-eh-specs -O3 -fomit-frame-pointer -MMD -MF "${OBJECTDIR}/module/uart.o.d" -o ${OBJECTDIR}/module/uart.o module/uart.cpp  
	
${OBJECTDIR}/module/pwm.o: module/pwm.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/module" 
	@${RM} ${OBJECTDIR}/module/pwm.o.d 
	@${RM} ${OBJECTDIR}/module/pwm.o 
	@${FIXDEPS} "${OBJECTDIR}/module/pwm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"std" -fno-rtti -fexceptions -fno-check-new -fno-enforce-eh-specs -O3 -fomit-frame-pointer -MMD -MF "${OBJECTDIR}/module/pwm.o.d" -o ${OBJECTDIR}/module/pwm.o module/pwm.cpp  
	
${OBJECTDIR}/module/dma.o: module/dma.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/module" 
	@${RM} ${OBJECTDIR}/module/dma.o.d 
	@${RM} ${OBJECTDIR}/module/dma.o 
	@${FIXDEPS} "${OBJECTDIR}/module/dma.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"std" -fno-rtti -fexceptions -fno-check-new -fno-enforce-eh-specs -O3 -fomit-frame-pointer -MMD -MF "${OBJECTDIR}/module/dma.o.d" -o ${OBJECTDIR}/module/dma.o module/dma.cpp  
	
${OBJECTDIR}/module/adc.o: module/adc.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/module" 
	@${RM} ${OBJECTDIR}/module/adc.o.d 
	@${RM} ${OBJECTDIR}/module/adc.o 
	@${FIXDEPS} "${OBJECTDIR}/module/adc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"std" -fno-rtti -fexceptions -fno-check-new -fno-enforce-eh-specs -O3 -fomit-frame-pointer -MMD -MF "${OBJECTDIR}/module/adc.o.d" -o ${OBJECTDIR}/module/adc.o module/adc.cpp  
	
${OBJECTDIR}/IModule.o: IModule.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/IModule.o.d 
	@${RM} ${OBJECTDIR}/IModule.o 
	@${FIXDEPS} "${OBJECTDIR}/IModule.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"std" -fno-rtti -fexceptions -fno-check-new -fno-enforce-eh-specs -O3 -fomit-frame-pointer -MMD -MF "${OBJECTDIR}/IModule.o.d" -o ${OBJECTDIR}/IModule.o IModule.cpp  
	
${OBJECTDIR}/tmath/Q16.o: tmath/Q16.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tmath" 
	@${RM} ${OBJECTDIR}/tmath/Q16.o.d 
	@${RM} ${OBJECTDIR}/tmath/Q16.o 
	@${FIXDEPS} "${OBJECTDIR}/tmath/Q16.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"std" -fno-rtti -fexceptions -fno-check-new -fno-enforce-eh-specs -O3 -fomit-frame-pointer -MMD -MF "${OBJECTDIR}/tmath/Q16.o.d" -o ${OBJECTDIR}/tmath/Q16.o tmath/Q16.cpp  
	
${OBJECTDIR}/tmath/dsp.o: tmath/dsp.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tmath" 
	@${RM} ${OBJECTDIR}/tmath/dsp.o.d 
	@${RM} ${OBJECTDIR}/tmath/dsp.o 
	@${FIXDEPS} "${OBJECTDIR}/tmath/dsp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"std" -fno-rtti -fexceptions -fno-check-new -fno-enforce-eh-specs -O3 -fomit-frame-pointer -MMD -MF "${OBJECTDIR}/tmath/dsp.o.d" -o ${OBJECTDIR}/tmath/dsp.o tmath/dsp.cpp  
	
${OBJECTDIR}/tmath/between.o: tmath/between.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/tmath" 
	@${RM} ${OBJECTDIR}/tmath/between.o.d 
	@${RM} ${OBJECTDIR}/tmath/between.o 
	@${FIXDEPS} "${OBJECTDIR}/tmath/between.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"std" -fno-rtti -fexceptions -fno-check-new -fno-enforce-eh-specs -O3 -fomit-frame-pointer -MMD -MF "${OBJECTDIR}/tmath/between.o.d" -o ${OBJECTDIR}/tmath/between.o tmath/between.cpp  
	
${OBJECTDIR}/ErrorObject.o: ErrorObject.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ErrorObject.o.d 
	@${RM} ${OBJECTDIR}/ErrorObject.o 
	@${FIXDEPS} "${OBJECTDIR}/ErrorObject.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"std" -fno-rtti -fexceptions -fno-check-new -fno-enforce-eh-specs -O3 -fomit-frame-pointer -MMD -MF "${OBJECTDIR}/ErrorObject.o.d" -o ${OBJECTDIR}/ErrorObject.o ErrorObject.cpp  
	
${OBJECTDIR}/startup.o: startup.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/startup.o.d 
	@${RM} ${OBJECTDIR}/startup.o 
	@${FIXDEPS} "${OBJECTDIR}/startup.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"std" -fno-rtti -fexceptions -fno-check-new -fno-enforce-eh-specs -O3 -fomit-frame-pointer -MMD -MF "${OBJECTDIR}/startup.o.d" -o ${OBJECTDIR}/startup.o startup.cpp  
	
${OBJECTDIR}/Motor.o: Motor.cpp  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Motor.o.d 
	@${RM} ${OBJECTDIR}/Motor.o 
	@${FIXDEPS} "${OBJECTDIR}/Motor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"std" -fno-rtti -fexceptions -fno-check-new -fno-enforce-eh-specs -O3 -fomit-frame-pointer -MMD -MF "${OBJECTDIR}/Motor.o.d" -o ${OBJECTDIR}/Motor.o Motor.cpp  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: createResponseFiles
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
nbproject/$(CND_CONF).$(IMAGE_TYPE):   nbproject/Makefile-${CND_CONF}.mk    
		@cmd /C "gnuecho -n "$(MP_EXTRA_LD_PRE) " > nbproject/default.debug"
	@cmd /C "gnuecho -n "-mdebugger -D__MPLAB_DEBUGGER_SIMULATOR=1 " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-mprocessor=$(MP_PROCESSOR_OPTION) " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-O3 -mips16 " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "-o dist/${CND_CONF}/${IMAGE_TYPE}/MotorDriverH27.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "${OBJECTDIR}/module/uart.o ${OBJECTDIR}/module/pwm.o ${OBJECTDIR}/module/dma.o ${OBJECTDIR}/module/adc.o ${OBJECTDIR}/IModule.o ${OBJECTDIR}/tmath/Q16.o ${OBJECTDIR}/tmath/dsp.o ${OBJECTDIR}/tmath/between.o ${OBJECTDIR}/ErrorObject.o ${OBJECTDIR}/config/sys_config.o ${OBJECTDIR}/startup.o ${OBJECTDIR}/Motor.o " >> nbproject/default.debug"
	@cmd /C "gnuecho -n "" >> nbproject/default.debug"
	@cmd /C "gnuecho -n " -Wl,--defsym=__MPLAB_BUILD=1" >> nbproject/default.debug"
	@cmd /C "gnuecho -n "$(MP_EXTRA_LD_POST)" >> nbproject/default.debug"
	@cmd /C "gnuecho -n "$(MP_LINKER_FILE_OPTION)" >> nbproject/default.debug"
	@cmd /C "gnuecho -n "" >> nbproject/default.debug"
	@cmd /C "gnuecho -n ",--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1" >> nbproject/default.debug"
	@cmd /C "gnuecho -n ",--defsym=_min_heap_size=512,--no-check-sections,--gc-sections,-Map=\"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map\",--report-mem,--cref" >> nbproject/default.debug"
	@cmd /C "gnuecho -n "" >> nbproject/default.debug"
	@cmd /C "gnuecho -n "" >> nbproject/default.debug"

	
else
nbproject/$(CND_CONF).$(IMAGE_TYPE):   nbproject/Makefile-${CND_CONF}.mk   
		@cmd /C "gnuecho -n "$(MP_EXTRA_LD_PRE) " > nbproject/default.production"
	@cmd /C "gnuecho -n "-mprocessor=$(MP_PROCESSOR_OPTION) " >> nbproject/default.production"
	@cmd /C "gnuecho -n "-O3 -mips16 " >> nbproject/default.production"
	@cmd /C "gnuecho -n "-o dist/${CND_CONF}/${IMAGE_TYPE}/MotorDriverH27.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} " >> nbproject/default.production"
	@cmd /C "gnuecho -n "${OBJECTDIR}/module/uart.o ${OBJECTDIR}/module/pwm.o ${OBJECTDIR}/module/dma.o ${OBJECTDIR}/module/adc.o ${OBJECTDIR}/IModule.o ${OBJECTDIR}/tmath/Q16.o ${OBJECTDIR}/tmath/dsp.o ${OBJECTDIR}/tmath/between.o ${OBJECTDIR}/ErrorObject.o ${OBJECTDIR}/config/sys_config.o ${OBJECTDIR}/startup.o ${OBJECTDIR}/Motor.o " >> nbproject/default.production"
	@cmd /C "gnuecho -n "" >> nbproject/default.production"
	@cmd /C "gnuecho -n " -Wl,--defsym=__MPLAB_BUILD=1" >> nbproject/default.production"
	@cmd /C "gnuecho -n "$(MP_EXTRA_LD_POST)" >> nbproject/default.production"
	@cmd /C "gnuecho -n "$(MP_LINKER_FILE_OPTION)" >> nbproject/default.production"
	@cmd /C "gnuecho -n "" >> nbproject/default.production"
	@cmd /C "gnuecho -n "" >> nbproject/default.production"
	@cmd /C "gnuecho -n ",--defsym=_min_heap_size=512,--no-check-sections,--gc-sections,-Map=\"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map\",--report-mem,--cref" >> nbproject/default.production"
	@cmd /C "gnuecho -n "" >> nbproject/default.production"
	@cmd /C "gnuecho -n "" >> nbproject/default.production"

	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: linkWithResponseFile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MotorDriverH27.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES} nbproject/$(CND_CONF).$(IMAGE_TYPE)  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CPPC}  @nbproject/$(CND_CONF).$(IMAGE_TYPE) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/MotorDriverH27.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES} nbproject/$(CND_CONF).$(IMAGE_TYPE)  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CPPC}  @nbproject/$(CND_CONF).$(IMAGE_TYPE) 
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MotorDriverH27.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
