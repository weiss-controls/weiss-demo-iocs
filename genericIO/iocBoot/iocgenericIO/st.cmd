#!../../bin/linux-x86_64/genericIO

< envPaths

cd "${TOP}"

dbLoadDatabase "dbd/genericIO.dbd"
genericIO_registerRecordDeviceDriver pdbbase

epicsEnvSet("P", "demo:")
epicsEnvSet("R", "")
dbLoadRecords("./genericIOApp/Db/3PhaseSyst.db", "P=$(P), R=$(R)")
dbLoadRecords("./genericIOApp/Db/genericIO.db", "P=$(P), R=$(R), IDX=01")
dbLoadRecords("./genericIOApp/Db/genericIO.db", "P=$(P), R=$(R), IDX=02")
dbLoadRecords("./genericIOApp/Db/genericIO.db", "P=$(P), R=$(R), IDX=03")
dbLoadRecords("./genericIOApp/Db/genericIO.db", "P=$(P), R=$(R), IDX=04")
dbLoadRecords("./genericIOApp/Db/genericIO.db", "P=$(P), R=$(R), IDX=05")
dbLoadRecords("./genericIOApp/Db/genericIO.db", "P=$(P), R=$(R), IDX=06")
dbLoadRecords("./genericIOApp/Db/genericIO.db", "P=$(P), R=$(R), IDX=07")
dbLoadRecords("./genericIOApp/Db/genericIO.db", "P=$(P), R=$(R), IDX=08")
dbLoadRecords("./genericIOApp/Db/genericIO.db", "P=$(P), R=$(R), IDX=09")
dbLoadRecords("./genericIOApp/Db/genericIO.db", "P=$(P), R=$(R), IDX=10")

cd "${TOP}/iocBoot/${IOC}"
iocInit
