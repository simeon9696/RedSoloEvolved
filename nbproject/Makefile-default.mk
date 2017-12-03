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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/LCDTest.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/LCDTest.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=newmain.c "New Folder/busyxlcd.c" "New Folder/openxlcd.c" "New Folder/putrxlcd.c" "New Folder/putsxlcd.c" "New Folder/readaddr.c" "New Folder/readdata.c" "New Folder/setcgram.c" "New Folder/setddram.c" "New Folder/wcmdxlcd.c" "New Folder/writdata.c"

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/newmain.o "${OBJECTDIR}/New Folder/busyxlcd.o" "${OBJECTDIR}/New Folder/openxlcd.o" "${OBJECTDIR}/New Folder/putrxlcd.o" "${OBJECTDIR}/New Folder/putsxlcd.o" "${OBJECTDIR}/New Folder/readaddr.o" "${OBJECTDIR}/New Folder/readdata.o" "${OBJECTDIR}/New Folder/setcgram.o" "${OBJECTDIR}/New Folder/setddram.o" "${OBJECTDIR}/New Folder/wcmdxlcd.o" "${OBJECTDIR}/New Folder/writdata.o"
POSSIBLE_DEPFILES=${OBJECTDIR}/newmain.o.d "${OBJECTDIR}/New Folder/busyxlcd.o.d" "${OBJECTDIR}/New Folder/openxlcd.o.d" "${OBJECTDIR}/New Folder/putrxlcd.o.d" "${OBJECTDIR}/New Folder/putsxlcd.o.d" "${OBJECTDIR}/New Folder/readaddr.o.d" "${OBJECTDIR}/New Folder/readdata.o.d" "${OBJECTDIR}/New Folder/setcgram.o.d" "${OBJECTDIR}/New Folder/setddram.o.d" "${OBJECTDIR}/New Folder/wcmdxlcd.o.d" "${OBJECTDIR}/New Folder/writdata.o.d"

# Object Files
OBJECTFILES=${OBJECTDIR}/newmain.o ${OBJECTDIR}/New\ Folder/busyxlcd.o ${OBJECTDIR}/New\ Folder/openxlcd.o ${OBJECTDIR}/New\ Folder/putrxlcd.o ${OBJECTDIR}/New\ Folder/putsxlcd.o ${OBJECTDIR}/New\ Folder/readaddr.o ${OBJECTDIR}/New\ Folder/readdata.o ${OBJECTDIR}/New\ Folder/setcgram.o ${OBJECTDIR}/New\ Folder/setddram.o ${OBJECTDIR}/New\ Folder/wcmdxlcd.o ${OBJECTDIR}/New\ Folder/writdata.o

# Source Files
SOURCEFILES=newmain.c New Folder/busyxlcd.c New Folder/openxlcd.c New Folder/putrxlcd.c New Folder/putsxlcd.c New Folder/readaddr.c New Folder/readdata.c New Folder/setcgram.c New Folder/setddram.c New Folder/wcmdxlcd.c New Folder/writdata.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/LCDTest.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
	
${OBJECTDIR}/New\ Folder/busyxlcd.o: New\ Folder/busyxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/New Folder" 
	@${RM} "${OBJECTDIR}/New Folder/busyxlcd.o".d 
	@${RM} "${OBJECTDIR}/New Folder/busyxlcd.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/New Folder/busyxlcd.o"   "New Folder/busyxlcd.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/New Folder/busyxlcd.o" 
	@${FIXDEPS} "${OBJECTDIR}/New Folder/busyxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/New\ Folder/openxlcd.o: New\ Folder/openxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/New Folder" 
	@${RM} "${OBJECTDIR}/New Folder/openxlcd.o".d 
	@${RM} "${OBJECTDIR}/New Folder/openxlcd.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/New Folder/openxlcd.o"   "New Folder/openxlcd.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/New Folder/openxlcd.o" 
	@${FIXDEPS} "${OBJECTDIR}/New Folder/openxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/New\ Folder/putrxlcd.o: New\ Folder/putrxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/New Folder" 
	@${RM} "${OBJECTDIR}/New Folder/putrxlcd.o".d 
	@${RM} "${OBJECTDIR}/New Folder/putrxlcd.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/New Folder/putrxlcd.o"   "New Folder/putrxlcd.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/New Folder/putrxlcd.o" 
	@${FIXDEPS} "${OBJECTDIR}/New Folder/putrxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/New\ Folder/putsxlcd.o: New\ Folder/putsxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/New Folder" 
	@${RM} "${OBJECTDIR}/New Folder/putsxlcd.o".d 
	@${RM} "${OBJECTDIR}/New Folder/putsxlcd.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/New Folder/putsxlcd.o"   "New Folder/putsxlcd.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/New Folder/putsxlcd.o" 
	@${FIXDEPS} "${OBJECTDIR}/New Folder/putsxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/New\ Folder/readaddr.o: New\ Folder/readaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/New Folder" 
	@${RM} "${OBJECTDIR}/New Folder/readaddr.o".d 
	@${RM} "${OBJECTDIR}/New Folder/readaddr.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/New Folder/readaddr.o"   "New Folder/readaddr.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/New Folder/readaddr.o" 
	@${FIXDEPS} "${OBJECTDIR}/New Folder/readaddr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/New\ Folder/readdata.o: New\ Folder/readdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/New Folder" 
	@${RM} "${OBJECTDIR}/New Folder/readdata.o".d 
	@${RM} "${OBJECTDIR}/New Folder/readdata.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/New Folder/readdata.o"   "New Folder/readdata.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/New Folder/readdata.o" 
	@${FIXDEPS} "${OBJECTDIR}/New Folder/readdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/New\ Folder/setcgram.o: New\ Folder/setcgram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/New Folder" 
	@${RM} "${OBJECTDIR}/New Folder/setcgram.o".d 
	@${RM} "${OBJECTDIR}/New Folder/setcgram.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/New Folder/setcgram.o"   "New Folder/setcgram.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/New Folder/setcgram.o" 
	@${FIXDEPS} "${OBJECTDIR}/New Folder/setcgram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/New\ Folder/setddram.o: New\ Folder/setddram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/New Folder" 
	@${RM} "${OBJECTDIR}/New Folder/setddram.o".d 
	@${RM} "${OBJECTDIR}/New Folder/setddram.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/New Folder/setddram.o"   "New Folder/setddram.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/New Folder/setddram.o" 
	@${FIXDEPS} "${OBJECTDIR}/New Folder/setddram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/New\ Folder/wcmdxlcd.o: New\ Folder/wcmdxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/New Folder" 
	@${RM} "${OBJECTDIR}/New Folder/wcmdxlcd.o".d 
	@${RM} "${OBJECTDIR}/New Folder/wcmdxlcd.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/New Folder/wcmdxlcd.o"   "New Folder/wcmdxlcd.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/New Folder/wcmdxlcd.o" 
	@${FIXDEPS} "${OBJECTDIR}/New Folder/wcmdxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/New\ Folder/writdata.o: New\ Folder/writdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/New Folder" 
	@${RM} "${OBJECTDIR}/New Folder/writdata.o".d 
	@${RM} "${OBJECTDIR}/New Folder/writdata.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/New Folder/writdata.o"   "New Folder/writdata.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/New Folder/writdata.o" 
	@${FIXDEPS} "${OBJECTDIR}/New Folder/writdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
else
${OBJECTDIR}/newmain.o: newmain.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/newmain.o.d 
	@${RM} ${OBJECTDIR}/newmain.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/newmain.o   newmain.c 
	@${DEP_GEN} -d ${OBJECTDIR}/newmain.o 
	@${FIXDEPS} "${OBJECTDIR}/newmain.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/New\ Folder/busyxlcd.o: New\ Folder/busyxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/New Folder" 
	@${RM} "${OBJECTDIR}/New Folder/busyxlcd.o".d 
	@${RM} "${OBJECTDIR}/New Folder/busyxlcd.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/New Folder/busyxlcd.o"   "New Folder/busyxlcd.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/New Folder/busyxlcd.o" 
	@${FIXDEPS} "${OBJECTDIR}/New Folder/busyxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/New\ Folder/openxlcd.o: New\ Folder/openxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/New Folder" 
	@${RM} "${OBJECTDIR}/New Folder/openxlcd.o".d 
	@${RM} "${OBJECTDIR}/New Folder/openxlcd.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/New Folder/openxlcd.o"   "New Folder/openxlcd.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/New Folder/openxlcd.o" 
	@${FIXDEPS} "${OBJECTDIR}/New Folder/openxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/New\ Folder/putrxlcd.o: New\ Folder/putrxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/New Folder" 
	@${RM} "${OBJECTDIR}/New Folder/putrxlcd.o".d 
	@${RM} "${OBJECTDIR}/New Folder/putrxlcd.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/New Folder/putrxlcd.o"   "New Folder/putrxlcd.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/New Folder/putrxlcd.o" 
	@${FIXDEPS} "${OBJECTDIR}/New Folder/putrxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/New\ Folder/putsxlcd.o: New\ Folder/putsxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/New Folder" 
	@${RM} "${OBJECTDIR}/New Folder/putsxlcd.o".d 
	@${RM} "${OBJECTDIR}/New Folder/putsxlcd.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/New Folder/putsxlcd.o"   "New Folder/putsxlcd.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/New Folder/putsxlcd.o" 
	@${FIXDEPS} "${OBJECTDIR}/New Folder/putsxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/New\ Folder/readaddr.o: New\ Folder/readaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/New Folder" 
	@${RM} "${OBJECTDIR}/New Folder/readaddr.o".d 
	@${RM} "${OBJECTDIR}/New Folder/readaddr.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/New Folder/readaddr.o"   "New Folder/readaddr.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/New Folder/readaddr.o" 
	@${FIXDEPS} "${OBJECTDIR}/New Folder/readaddr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/New\ Folder/readdata.o: New\ Folder/readdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/New Folder" 
	@${RM} "${OBJECTDIR}/New Folder/readdata.o".d 
	@${RM} "${OBJECTDIR}/New Folder/readdata.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/New Folder/readdata.o"   "New Folder/readdata.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/New Folder/readdata.o" 
	@${FIXDEPS} "${OBJECTDIR}/New Folder/readdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/New\ Folder/setcgram.o: New\ Folder/setcgram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/New Folder" 
	@${RM} "${OBJECTDIR}/New Folder/setcgram.o".d 
	@${RM} "${OBJECTDIR}/New Folder/setcgram.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/New Folder/setcgram.o"   "New Folder/setcgram.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/New Folder/setcgram.o" 
	@${FIXDEPS} "${OBJECTDIR}/New Folder/setcgram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/New\ Folder/setddram.o: New\ Folder/setddram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/New Folder" 
	@${RM} "${OBJECTDIR}/New Folder/setddram.o".d 
	@${RM} "${OBJECTDIR}/New Folder/setddram.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/New Folder/setddram.o"   "New Folder/setddram.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/New Folder/setddram.o" 
	@${FIXDEPS} "${OBJECTDIR}/New Folder/setddram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/New\ Folder/wcmdxlcd.o: New\ Folder/wcmdxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/New Folder" 
	@${RM} "${OBJECTDIR}/New Folder/wcmdxlcd.o".d 
	@${RM} "${OBJECTDIR}/New Folder/wcmdxlcd.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/New Folder/wcmdxlcd.o"   "New Folder/wcmdxlcd.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/New Folder/wcmdxlcd.o" 
	@${FIXDEPS} "${OBJECTDIR}/New Folder/wcmdxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/New\ Folder/writdata.o: New\ Folder/writdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/New Folder" 
	@${RM} "${OBJECTDIR}/New Folder/writdata.o".d 
	@${RM} "${OBJECTDIR}/New Folder/writdata.o" 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo "${OBJECTDIR}/New Folder/writdata.o"   "New Folder/writdata.c" 
	@${DEP_GEN} -d "${OBJECTDIR}/New Folder/writdata.o" 
	@${FIXDEPS} "${OBJECTDIR}/New Folder/writdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/LCDTest.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    lab1_i.lkr
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) "lab1_i.lkr"  -p$(MP_PROCESSOR_OPTION_LD)  -w -x -u_DEBUG -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"  -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_PK3=1 $(MP_LINKER_DEBUG_OPTION) -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/LCDTest.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
else
dist/${CND_CONF}/${IMAGE_TYPE}/LCDTest.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   lab1_i.lkr
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) "lab1_i.lkr"  -p$(MP_PROCESSOR_OPTION_LD)  -w  -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"  -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/LCDTest.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
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
