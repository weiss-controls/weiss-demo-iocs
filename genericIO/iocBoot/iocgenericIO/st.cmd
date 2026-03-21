#!../../bin/linux-x86_64/genericIO

< envPaths

cd "${TOP}"

dbLoadDatabase "dbd/genericIO.dbd"
genericIO_registerRecordDeviceDriver pdbbase

epicsEnvSet("P", "demo:")
epicsEnvSet("R", "")
dbLoadRecords("./genericIOApp/Db/genericIO.db", "P=$(P), R=$(R)")

cd "${TOP}/iocBoot/${IOC}"
iocInit
