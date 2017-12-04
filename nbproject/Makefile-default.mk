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
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/TeamRedSoloIntegration.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/TeamRedSoloIntegration.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=newmain.c Cfiles/busyxlcd.c Cfiles/openxlcd.c Cfiles/putrxlcd.c Cfiles/putsxlcd.c Cfiles/readaddr.c Cfiles/readdata.c Cfiles/setcgram.c Cfiles/setddram.c Cfiles/t0close.c Cfiles/t0open.c Cfiles/t0read.c Cfiles/t0write.c Cfiles/wcmdxlcd.c Cfiles/writdata.c Cfiles/adcbusy.c Cfiles/adcclose.c Cfiles/adcconv.c Cfiles/adcopen.c Cfiles/adcread.c Cfiles/adcselchconv.c Cfiles/adcsetch.c Cfiles/pw1close.c Cfiles/pw1open.c Cfiles/pw1setdc.c Cfiles/pw1setoc.c Cfiles/t2close.c Cfiles/t2open.c Cfiles/t2read.c Cfiles/t2write.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/newmain.o ${OBJECTDIR}/Cfiles/busyxlcd.o ${OBJECTDIR}/Cfiles/openxlcd.o ${OBJECTDIR}/Cfiles/putrxlcd.o ${OBJECTDIR}/Cfiles/putsxlcd.o ${OBJECTDIR}/Cfiles/readaddr.o ${OBJECTDIR}/Cfiles/readdata.o ${OBJECTDIR}/Cfiles/setcgram.o ${OBJECTDIR}/Cfiles/setddram.o ${OBJECTDIR}/Cfiles/t0close.o ${OBJECTDIR}/Cfiles/t0open.o ${OBJECTDIR}/Cfiles/t0read.o ${OBJECTDIR}/Cfiles/t0write.o ${OBJECTDIR}/Cfiles/wcmdxlcd.o ${OBJECTDIR}/Cfiles/writdata.o ${OBJECTDIR}/Cfiles/adcbusy.o ${OBJECTDIR}/Cfiles/adcclose.o ${OBJECTDIR}/Cfiles/adcconv.o ${OBJECTDIR}/Cfiles/adcopen.o ${OBJECTDIR}/Cfiles/adcread.o ${OBJECTDIR}/Cfiles/adcselchconv.o ${OBJECTDIR}/Cfiles/adcsetch.o ${OBJECTDIR}/Cfiles/pw1close.o ${OBJECTDIR}/Cfiles/pw1open.o ${OBJECTDIR}/Cfiles/pw1setdc.o ${OBJECTDIR}/Cfiles/pw1setoc.o ${OBJECTDIR}/Cfiles/t2close.o ${OBJECTDIR}/Cfiles/t2open.o ${OBJECTDIR}/Cfiles/t2read.o ${OBJECTDIR}/Cfiles/t2write.o
POSSIBLE_DEPFILES=${OBJECTDIR}/newmain.o.d ${OBJECTDIR}/Cfiles/busyxlcd.o.d ${OBJECTDIR}/Cfiles/openxlcd.o.d ${OBJECTDIR}/Cfiles/putrxlcd.o.d ${OBJECTDIR}/Cfiles/putsxlcd.o.d ${OBJECTDIR}/Cfiles/readaddr.o.d ${OBJECTDIR}/Cfiles/readdata.o.d ${OBJECTDIR}/Cfiles/setcgram.o.d ${OBJECTDIR}/Cfiles/setddram.o.d ${OBJECTDIR}/Cfiles/t0close.o.d ${OBJECTDIR}/Cfiles/t0open.o.d ${OBJECTDIR}/Cfiles/t0read.o.d ${OBJECTDIR}/Cfiles/t0write.o.d ${OBJECTDIR}/Cfiles/wcmdxlcd.o.d ${OBJECTDIR}/Cfiles/writdata.o.d ${OBJECTDIR}/Cfiles/adcbusy.o.d ${OBJECTDIR}/Cfiles/adcclose.o.d ${OBJECTDIR}/Cfiles/adcconv.o.d ${OBJECTDIR}/Cfiles/adcopen.o.d ${OBJECTDIR}/Cfiles/adcread.o.d ${OBJECTDIR}/Cfiles/adcselchconv.o.d ${OBJECTDIR}/Cfiles/adcsetch.o.d ${OBJECTDIR}/Cfiles/pw1close.o.d ${OBJECTDIR}/Cfiles/pw1open.o.d ${OBJECTDIR}/Cfiles/pw1setdc.o.d ${OBJECTDIR}/Cfiles/pw1setoc.o.d ${OBJECTDIR}/Cfiles/t2close.o.d ${OBJECTDIR}/Cfiles/t2open.o.d ${OBJECTDIR}/Cfiles/t2read.o.d ${OBJECTDIR}/Cfiles/t2write.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/newmain.o ${OBJECTDIR}/Cfiles/busyxlcd.o ${OBJECTDIR}/Cfiles/openxlcd.o ${OBJECTDIR}/Cfiles/putrxlcd.o ${OBJECTDIR}/Cfiles/putsxlcd.o ${OBJECTDIR}/Cfiles/readaddr.o ${OBJECTDIR}/Cfiles/readdata.o ${OBJECTDIR}/Cfiles/setcgram.o ${OBJECTDIR}/Cfiles/setddram.o ${OBJECTDIR}/Cfiles/t0close.o ${OBJECTDIR}/Cfiles/t0open.o ${OBJECTDIR}/Cfiles/t0read.o ${OBJECTDIR}/Cfiles/t0write.o ${OBJECTDIR}/Cfiles/wcmdxlcd.o ${OBJECTDIR}/Cfiles/writdata.o ${OBJECTDIR}/Cfiles/adcbusy.o ${OBJECTDIR}/Cfiles/adcclose.o ${OBJECTDIR}/Cfiles/adcconv.o ${OBJECTDIR}/Cfiles/adcopen.o ${OBJECTDIR}/Cfiles/adcread.o ${OBJECTDIR}/Cfiles/adcselchconv.o ${OBJECTDIR}/Cfiles/adcsetch.o ${OBJECTDIR}/Cfiles/pw1close.o ${OBJECTDIR}/Cfiles/pw1open.o ${OBJECTDIR}/Cfiles/pw1setdc.o ${OBJECTDIR}/Cfiles/pw1setoc.o ${OBJECTDIR}/Cfiles/t2close.o ${OBJECTDIR}/Cfiles/t2open.o ${OBJECTDIR}/Cfiles/t2read.o ${OBJECTDIR}/Cfiles/t2write.o

# Source Files
SOURCEFILES=newmain.c Cfiles/busyxlcd.c Cfiles/openxlcd.c Cfiles/putrxlcd.c Cfiles/putsxlcd.c Cfiles/readaddr.c Cfiles/readdata.c Cfiles/setcgram.c Cfiles/setddram.c Cfiles/t0close.c Cfiles/t0open.c Cfiles/t0read.c Cfiles/t0write.c Cfiles/wcmdxlcd.c Cfiles/writdata.c Cfiles/adcbusy.c Cfiles/adcclose.c Cfiles/adcconv.c Cfiles/adcopen.c Cfiles/adcread.c Cfiles/adcselchconv.c Cfiles/adcsetch.c Cfiles/pw1close.c Cfiles/pw1open.c Cfiles/pw1setdc.c Cfiles/pw1setoc.c Cfiles/t2close.c Cfiles/t2open.c Cfiles/t2read.c Cfiles/t2write.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/TeamRedSoloIntegration.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F452
MP_PROCESSOR_OPTION_LD=18f452
MP_LINKER_DEBUG_OPTION=-r=ROM@0x7DC0:0x7FFF -r=RAM@GPR:0x5F4:0x5FF -u_DEBUGSTACK
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/newmain.o: newmain.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/newmain.o.d 
	@${RM} ${OBJECTDIR}/newmain.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/newmain.o   newmain.c 
	@${DEP_GEN} -d ${OBJECTDIR}/newmain.o 
	@${FIXDEPS} "${OBJECTDIR}/newmain.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/busyxlcd.o: Cfiles/busyxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/busyxlcd.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/busyxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/busyxlcd.o   Cfiles/busyxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/busyxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/busyxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/openxlcd.o: Cfiles/openxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/openxlcd.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/openxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/openxlcd.o   Cfiles/openxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/openxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/openxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/putrxlcd.o: Cfiles/putrxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/putrxlcd.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/putrxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/putrxlcd.o   Cfiles/putrxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/putrxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/putrxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/putsxlcd.o: Cfiles/putsxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/putsxlcd.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/putsxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/putsxlcd.o   Cfiles/putsxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/putsxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/putsxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/readaddr.o: Cfiles/readaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/readaddr.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/readaddr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/readaddr.o   Cfiles/readaddr.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/readaddr.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/readaddr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/readdata.o: Cfiles/readdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/readdata.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/readdata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/readdata.o   Cfiles/readdata.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/readdata.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/readdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/setcgram.o: Cfiles/setcgram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/setcgram.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/setcgram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/setcgram.o   Cfiles/setcgram.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/setcgram.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/setcgram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/setddram.o: Cfiles/setddram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/setddram.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/setddram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/setddram.o   Cfiles/setddram.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/setddram.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/setddram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/t0close.o: Cfiles/t0close.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/t0close.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/t0close.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/t0close.o   Cfiles/t0close.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/t0close.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/t0close.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/t0open.o: Cfiles/t0open.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/t0open.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/t0open.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/t0open.o   Cfiles/t0open.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/t0open.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/t0open.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/t0read.o: Cfiles/t0read.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/t0read.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/t0read.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/t0read.o   Cfiles/t0read.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/t0read.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/t0read.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/t0write.o: Cfiles/t0write.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/t0write.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/t0write.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/t0write.o   Cfiles/t0write.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/t0write.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/t0write.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/wcmdxlcd.o: Cfiles/wcmdxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/wcmdxlcd.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/wcmdxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/wcmdxlcd.o   Cfiles/wcmdxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/wcmdxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/wcmdxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/writdata.o: Cfiles/writdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/writdata.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/writdata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/writdata.o   Cfiles/writdata.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/writdata.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/writdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/adcbusy.o: Cfiles/adcbusy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/adcbusy.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/adcbusy.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/adcbusy.o   Cfiles/adcbusy.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/adcbusy.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/adcbusy.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/adcclose.o: Cfiles/adcclose.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/adcclose.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/adcclose.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/adcclose.o   Cfiles/adcclose.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/adcclose.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/adcclose.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/adcconv.o: Cfiles/adcconv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/adcconv.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/adcconv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/adcconv.o   Cfiles/adcconv.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/adcconv.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/adcconv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/adcopen.o: Cfiles/adcopen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/adcopen.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/adcopen.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/adcopen.o   Cfiles/adcopen.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/adcopen.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/adcopen.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/adcread.o: Cfiles/adcread.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/adcread.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/adcread.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/adcread.o   Cfiles/adcread.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/adcread.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/adcread.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/adcselchconv.o: Cfiles/adcselchconv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/adcselchconv.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/adcselchconv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/adcselchconv.o   Cfiles/adcselchconv.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/adcselchconv.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/adcselchconv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/adcsetch.o: Cfiles/adcsetch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/adcsetch.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/adcsetch.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/adcsetch.o   Cfiles/adcsetch.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/adcsetch.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/adcsetch.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/pw1close.o: Cfiles/pw1close.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/pw1close.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/pw1close.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/pw1close.o   Cfiles/pw1close.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/pw1close.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/pw1close.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/pw1open.o: Cfiles/pw1open.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/pw1open.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/pw1open.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/pw1open.o   Cfiles/pw1open.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/pw1open.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/pw1open.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/pw1setdc.o: Cfiles/pw1setdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/pw1setdc.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/pw1setdc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/pw1setdc.o   Cfiles/pw1setdc.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/pw1setdc.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/pw1setdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/pw1setoc.o: Cfiles/pw1setoc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/pw1setoc.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/pw1setoc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/pw1setoc.o   Cfiles/pw1setoc.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/pw1setoc.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/pw1setoc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/t2close.o: Cfiles/t2close.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/t2close.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/t2close.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/t2close.o   Cfiles/t2close.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/t2close.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/t2close.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/t2open.o: Cfiles/t2open.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/t2open.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/t2open.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/t2open.o   Cfiles/t2open.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/t2open.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/t2open.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/t2read.o: Cfiles/t2read.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/t2read.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/t2read.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/t2read.o   Cfiles/t2read.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/t2read.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/t2read.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/t2write.o: Cfiles/t2write.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/t2write.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/t2write.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/t2write.o   Cfiles/t2write.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/t2write.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/t2write.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
else
${OBJECTDIR}/newmain.o: newmain.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/newmain.o.d 
	@${RM} ${OBJECTDIR}/newmain.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/newmain.o   newmain.c 
	@${DEP_GEN} -d ${OBJECTDIR}/newmain.o 
	@${FIXDEPS} "${OBJECTDIR}/newmain.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/busyxlcd.o: Cfiles/busyxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/busyxlcd.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/busyxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/busyxlcd.o   Cfiles/busyxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/busyxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/busyxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/openxlcd.o: Cfiles/openxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/openxlcd.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/openxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/openxlcd.o   Cfiles/openxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/openxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/openxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/putrxlcd.o: Cfiles/putrxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/putrxlcd.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/putrxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/putrxlcd.o   Cfiles/putrxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/putrxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/putrxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/putsxlcd.o: Cfiles/putsxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/putsxlcd.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/putsxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/putsxlcd.o   Cfiles/putsxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/putsxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/putsxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/readaddr.o: Cfiles/readaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/readaddr.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/readaddr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/readaddr.o   Cfiles/readaddr.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/readaddr.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/readaddr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/readdata.o: Cfiles/readdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/readdata.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/readdata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/readdata.o   Cfiles/readdata.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/readdata.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/readdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/setcgram.o: Cfiles/setcgram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/setcgram.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/setcgram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/setcgram.o   Cfiles/setcgram.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/setcgram.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/setcgram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/setddram.o: Cfiles/setddram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/setddram.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/setddram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/setddram.o   Cfiles/setddram.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/setddram.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/setddram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/t0close.o: Cfiles/t0close.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/t0close.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/t0close.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/t0close.o   Cfiles/t0close.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/t0close.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/t0close.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/t0open.o: Cfiles/t0open.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/t0open.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/t0open.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/t0open.o   Cfiles/t0open.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/t0open.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/t0open.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/t0read.o: Cfiles/t0read.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/t0read.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/t0read.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/t0read.o   Cfiles/t0read.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/t0read.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/t0read.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/t0write.o: Cfiles/t0write.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/t0write.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/t0write.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/t0write.o   Cfiles/t0write.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/t0write.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/t0write.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/wcmdxlcd.o: Cfiles/wcmdxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/wcmdxlcd.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/wcmdxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/wcmdxlcd.o   Cfiles/wcmdxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/wcmdxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/wcmdxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/writdata.o: Cfiles/writdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/writdata.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/writdata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/writdata.o   Cfiles/writdata.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/writdata.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/writdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/adcbusy.o: Cfiles/adcbusy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/adcbusy.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/adcbusy.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/adcbusy.o   Cfiles/adcbusy.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/adcbusy.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/adcbusy.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/adcclose.o: Cfiles/adcclose.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/adcclose.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/adcclose.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/adcclose.o   Cfiles/adcclose.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/adcclose.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/adcclose.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/adcconv.o: Cfiles/adcconv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/adcconv.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/adcconv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/adcconv.o   Cfiles/adcconv.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/adcconv.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/adcconv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/adcopen.o: Cfiles/adcopen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/adcopen.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/adcopen.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/adcopen.o   Cfiles/adcopen.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/adcopen.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/adcopen.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/adcread.o: Cfiles/adcread.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/adcread.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/adcread.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/adcread.o   Cfiles/adcread.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/adcread.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/adcread.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/adcselchconv.o: Cfiles/adcselchconv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/adcselchconv.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/adcselchconv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/adcselchconv.o   Cfiles/adcselchconv.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/adcselchconv.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/adcselchconv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/adcsetch.o: Cfiles/adcsetch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/adcsetch.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/adcsetch.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/adcsetch.o   Cfiles/adcsetch.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/adcsetch.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/adcsetch.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/pw1close.o: Cfiles/pw1close.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/pw1close.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/pw1close.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/pw1close.o   Cfiles/pw1close.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/pw1close.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/pw1close.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/pw1open.o: Cfiles/pw1open.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/pw1open.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/pw1open.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/pw1open.o   Cfiles/pw1open.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/pw1open.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/pw1open.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/pw1setdc.o: Cfiles/pw1setdc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/pw1setdc.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/pw1setdc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/pw1setdc.o   Cfiles/pw1setdc.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/pw1setdc.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/pw1setdc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/pw1setoc.o: Cfiles/pw1setoc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/pw1setoc.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/pw1setoc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/pw1setoc.o   Cfiles/pw1setoc.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/pw1setoc.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/pw1setoc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/t2close.o: Cfiles/t2close.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/t2close.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/t2close.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/t2close.o   Cfiles/t2close.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/t2close.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/t2close.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/t2open.o: Cfiles/t2open.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/t2open.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/t2open.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/t2open.o   Cfiles/t2open.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/t2open.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/t2open.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/t2read.o: Cfiles/t2read.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/t2read.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/t2read.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/t2read.o   Cfiles/t2read.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/t2read.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/t2read.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/Cfiles/t2write.o: Cfiles/t2write.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/Cfiles" 
	@${RM} ${OBJECTDIR}/Cfiles/t2write.o.d 
	@${RM} ${OBJECTDIR}/Cfiles/t2write.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/Cfiles/t2write.o   Cfiles/t2write.c 
	@${DEP_GEN} -d ${OBJECTDIR}/Cfiles/t2write.o 
	@${FIXDEPS} "${OBJECTDIR}/Cfiles/t2write.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/TeamRedSoloIntegration.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w -x -u_DEBUG -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"  -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_PK3=1 $(MP_LINKER_DEBUG_OPTION) -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/TeamRedSoloIntegration.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
else
dist/${CND_CONF}/${IMAGE_TYPE}/TeamRedSoloIntegration.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w  -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"  -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/TeamRedSoloIntegration.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
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
