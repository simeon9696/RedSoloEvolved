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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/L01_815006344.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/L01_815006344.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=lab1asm.c lab1.asm busyxlcd.c openxlcd.c putrxlcd.c putsxlcd.c readaddr.c readdata.c setcgram.c setddram.c wcmdxlcd.c writdata.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/lab1asm.o ${OBJECTDIR}/lab1.o ${OBJECTDIR}/busyxlcd.o ${OBJECTDIR}/openxlcd.o ${OBJECTDIR}/putrxlcd.o ${OBJECTDIR}/putsxlcd.o ${OBJECTDIR}/readaddr.o ${OBJECTDIR}/readdata.o ${OBJECTDIR}/setcgram.o ${OBJECTDIR}/setddram.o ${OBJECTDIR}/wcmdxlcd.o ${OBJECTDIR}/writdata.o
POSSIBLE_DEPFILES=${OBJECTDIR}/lab1asm.o.d ${OBJECTDIR}/lab1.o.d ${OBJECTDIR}/busyxlcd.o.d ${OBJECTDIR}/openxlcd.o.d ${OBJECTDIR}/putrxlcd.o.d ${OBJECTDIR}/putsxlcd.o.d ${OBJECTDIR}/readaddr.o.d ${OBJECTDIR}/readdata.o.d ${OBJECTDIR}/setcgram.o.d ${OBJECTDIR}/setddram.o.d ${OBJECTDIR}/wcmdxlcd.o.d ${OBJECTDIR}/writdata.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/lab1asm.o ${OBJECTDIR}/lab1.o ${OBJECTDIR}/busyxlcd.o ${OBJECTDIR}/openxlcd.o ${OBJECTDIR}/putrxlcd.o ${OBJECTDIR}/putsxlcd.o ${OBJECTDIR}/readaddr.o ${OBJECTDIR}/readdata.o ${OBJECTDIR}/setcgram.o ${OBJECTDIR}/setddram.o ${OBJECTDIR}/wcmdxlcd.o ${OBJECTDIR}/writdata.o

# Source Files
SOURCEFILES=lab1asm.c lab1.asm busyxlcd.c openxlcd.c putrxlcd.c putsxlcd.c readaddr.c readdata.c setcgram.c setddram.c wcmdxlcd.c writdata.c


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/L01_815006344.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F452
MP_PROCESSOR_OPTION_LD=18f452
MP_LINKER_DEBUG_OPTION=  -u_DEBUGSTACK
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/lab1.o: lab1.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lab1.o.d 
	@${RM} ${OBJECTDIR}/lab1.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/lab1.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/lab1.lst\" -e\"${OBJECTDIR}/lab1.err\" $(ASM_OPTIONS)  -o\"${OBJECTDIR}/lab1.o\" \"lab1.asm\"
	@${DEP_GEN} -d "${OBJECTDIR}/lab1.o"
	@${FIXDEPS} "${OBJECTDIR}/lab1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
else
${OBJECTDIR}/lab1.o: lab1.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lab1.o.d 
	@${RM} ${OBJECTDIR}/lab1.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/lab1.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/lab1.lst\" -e\"${OBJECTDIR}/lab1.err\" $(ASM_OPTIONS)  -o\"${OBJECTDIR}/lab1.o\" \"lab1.asm\"
	@${DEP_GEN} -d "${OBJECTDIR}/lab1.o"
	@${FIXDEPS} "${OBJECTDIR}/lab1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/lab1asm.o: lab1asm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lab1asm.o.d 
	@${RM} ${OBJECTDIR}/lab1asm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/lab1asm.o   lab1asm.c 
	@${DEP_GEN} -d ${OBJECTDIR}/lab1asm.o 
	@${FIXDEPS} "${OBJECTDIR}/lab1asm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/busyxlcd.o: busyxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/busyxlcd.o.d 
	@${RM} ${OBJECTDIR}/busyxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/busyxlcd.o   busyxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/busyxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/busyxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/openxlcd.o: openxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/openxlcd.o.d 
	@${RM} ${OBJECTDIR}/openxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/openxlcd.o   openxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/openxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/openxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/putrxlcd.o: putrxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/putrxlcd.o.d 
	@${RM} ${OBJECTDIR}/putrxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/putrxlcd.o   putrxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/putrxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/putrxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/putsxlcd.o: putsxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/putsxlcd.o.d 
	@${RM} ${OBJECTDIR}/putsxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/putsxlcd.o   putsxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/putsxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/putsxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/readaddr.o: readaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/readaddr.o.d 
	@${RM} ${OBJECTDIR}/readaddr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/readaddr.o   readaddr.c 
	@${DEP_GEN} -d ${OBJECTDIR}/readaddr.o 
	@${FIXDEPS} "${OBJECTDIR}/readaddr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/readdata.o: readdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/readdata.o.d 
	@${RM} ${OBJECTDIR}/readdata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/readdata.o   readdata.c 
	@${DEP_GEN} -d ${OBJECTDIR}/readdata.o 
	@${FIXDEPS} "${OBJECTDIR}/readdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/setcgram.o: setcgram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/setcgram.o.d 
	@${RM} ${OBJECTDIR}/setcgram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/setcgram.o   setcgram.c 
	@${DEP_GEN} -d ${OBJECTDIR}/setcgram.o 
	@${FIXDEPS} "${OBJECTDIR}/setcgram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/setddram.o: setddram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/setddram.o.d 
	@${RM} ${OBJECTDIR}/setddram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/setddram.o   setddram.c 
	@${DEP_GEN} -d ${OBJECTDIR}/setddram.o 
	@${FIXDEPS} "${OBJECTDIR}/setddram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/wcmdxlcd.o: wcmdxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/wcmdxlcd.o.d 
	@${RM} ${OBJECTDIR}/wcmdxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/wcmdxlcd.o   wcmdxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/wcmdxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/wcmdxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/writdata.o: writdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/writdata.o.d 
	@${RM} ${OBJECTDIR}/writdata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/writdata.o   writdata.c 
	@${DEP_GEN} -d ${OBJECTDIR}/writdata.o 
	@${FIXDEPS} "${OBJECTDIR}/writdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
else
${OBJECTDIR}/lab1asm.o: lab1asm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lab1asm.o.d 
	@${RM} ${OBJECTDIR}/lab1asm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/lab1asm.o   lab1asm.c 
	@${DEP_GEN} -d ${OBJECTDIR}/lab1asm.o 
	@${FIXDEPS} "${OBJECTDIR}/lab1asm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/busyxlcd.o: busyxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/busyxlcd.o.d 
	@${RM} ${OBJECTDIR}/busyxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/busyxlcd.o   busyxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/busyxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/busyxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/openxlcd.o: openxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/openxlcd.o.d 
	@${RM} ${OBJECTDIR}/openxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/openxlcd.o   openxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/openxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/openxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/putrxlcd.o: putrxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/putrxlcd.o.d 
	@${RM} ${OBJECTDIR}/putrxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/putrxlcd.o   putrxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/putrxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/putrxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/putsxlcd.o: putsxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/putsxlcd.o.d 
	@${RM} ${OBJECTDIR}/putsxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/putsxlcd.o   putsxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/putsxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/putsxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/readaddr.o: readaddr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/readaddr.o.d 
	@${RM} ${OBJECTDIR}/readaddr.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/readaddr.o   readaddr.c 
	@${DEP_GEN} -d ${OBJECTDIR}/readaddr.o 
	@${FIXDEPS} "${OBJECTDIR}/readaddr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/readdata.o: readdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/readdata.o.d 
	@${RM} ${OBJECTDIR}/readdata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/readdata.o   readdata.c 
	@${DEP_GEN} -d ${OBJECTDIR}/readdata.o 
	@${FIXDEPS} "${OBJECTDIR}/readdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/setcgram.o: setcgram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/setcgram.o.d 
	@${RM} ${OBJECTDIR}/setcgram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/setcgram.o   setcgram.c 
	@${DEP_GEN} -d ${OBJECTDIR}/setcgram.o 
	@${FIXDEPS} "${OBJECTDIR}/setcgram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/setddram.o: setddram.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/setddram.o.d 
	@${RM} ${OBJECTDIR}/setddram.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/setddram.o   setddram.c 
	@${DEP_GEN} -d ${OBJECTDIR}/setddram.o 
	@${FIXDEPS} "${OBJECTDIR}/setddram.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/wcmdxlcd.o: wcmdxlcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/wcmdxlcd.o.d 
	@${RM} ${OBJECTDIR}/wcmdxlcd.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/wcmdxlcd.o   wcmdxlcd.c 
	@${DEP_GEN} -d ${OBJECTDIR}/wcmdxlcd.o 
	@${FIXDEPS} "${OBJECTDIR}/wcmdxlcd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
${OBJECTDIR}/writdata.o: writdata.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/writdata.o.d 
	@${RM} ${OBJECTDIR}/writdata.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION) -ms -oa-  -I ${MP_CC_DIR}\\..\\h  -fo ${OBJECTDIR}/writdata.o   writdata.c 
	@${DEP_GEN} -d ${OBJECTDIR}/writdata.o 
	@${FIXDEPS} "${OBJECTDIR}/writdata.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c18 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/L01_815006344.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w -x -u_DEBUG -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"  -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_SIMULATOR=1 $(MP_LINKER_DEBUG_OPTION) -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/L01_815006344.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
else
dist/${CND_CONF}/${IMAGE_TYPE}/L01_815006344.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w  -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"  -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}\\..\\lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/L01_815006344.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
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
