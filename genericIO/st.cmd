
epicsEnvSet("P", "demo:")
epicsEnvSet("R", "")
dbLoadRecords("Db/3PhaseSyst.db", "P=$(P), R=$(R)")
dbLoadRecords("Db/genericIO.db", "P=$(P), R=$(R), IDX=01")
dbLoadRecords("Db/genericIO.db", "P=$(P), R=$(R), IDX=02")
dbLoadRecords("Db/genericIO.db", "P=$(P), R=$(R), IDX=03")
dbLoadRecords("Db/genericIO.db", "P=$(P), R=$(R), IDX=04")
dbLoadRecords("Db/genericIO.db", "P=$(P), R=$(R), IDX=05")
dbLoadRecords("Db/genericIO.db", "P=$(P), R=$(R), IDX=06")
dbLoadRecords("Db/genericIO.db", "P=$(P), R=$(R), IDX=07")
dbLoadRecords("Db/genericIO.db", "P=$(P), R=$(R), IDX=08")
dbLoadRecords("Db/genericIO.db", "P=$(P), R=$(R), IDX=09")
dbLoadRecords("Db/genericIO.db", "P=$(P), R=$(R), IDX=10")

iocInit
