require motormotorsim

epicsEnvSet("P", "demo:")
epicsEnvSet("PORT", "weissMtrSim")
dbLoadTemplate("Db/motorSim.substitutions", "PREFIX=$(P), MPORT=$(PORT)")

motorSimCreateController("$(PORT)", 8)

# motorSimConfigAxis(port, axis, lowLimit, highLimit, home, start)
motorSimConfigAxis("$(PORT)", 0, 20000, -20000,  500, 0)
motorSimConfigAxis("$(PORT)", 1, 20000, -20000, 1500, 0)
motorSimConfigAxis("$(PORT)", 2, 20000, -20000, 2500, 0)
motorSimConfigAxis("$(PORT)", 3, 20000, -20000, 3000, 0)
motorSimConfigAxis("$(PORT)", 4, 20000, -20000,  500, 0)
motorSimConfigAxis("$(PORT)", 5, 20000, -20000, 1500, 0)
motorSimConfigAxis("$(PORT)", 6, 20000, -20000, 2500, 0)
motorSimConfigAxis("$(PORT)", 7, 20000, -20000, 3000, 0)

motorUtilInit("$(P)")
