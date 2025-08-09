Schedule = Schedule(cron = "* 0 2 * * * *", timezone = "GMT", emails = ["email@gmail.com"], enabled = False)
SensorSchedule = SensorSchedule(enabled = False)

with DAG(Schedule = Schedule, SensorSchedule = SensorSchedule):
    ST_Envelope__create_geospatial_envelope = Task(
        task_id = "ST_Envelope__create_geospatial_envelope", 
        component = "Model", 
        modelName = "ST_Envelope__create_geospatial_envelope"
    )
