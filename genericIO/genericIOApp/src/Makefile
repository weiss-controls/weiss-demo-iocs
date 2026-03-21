TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = genericIO
# genericIO.dbd will be created and installed
DBD += genericIO.dbd

# genericIO.dbd will be made up from these files:
genericIO_DBD += base.dbd

# Include dbd files from all support applications:
#genericIO_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
genericIO_DBD += PVAServerRegister.dbd
genericIO_DBD += qsrv.dbd
genericIO_LIBS += qsrv
genericIO_LIBS += $(EPICS_BASE_PVA_CORE_LIBS)

# genericIO_registerRecordDeviceDriver.cpp derives from genericIO.dbd
genericIO_SRCS += genericIO_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
genericIO_SRCS_DEFAULT += genericIOMain.cpp
genericIO_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#genericIO_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
genericIO_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

