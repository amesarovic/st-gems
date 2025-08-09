Schedule = Schedule(cron = "* 0 2 * * * *", timezone = "GMT", emails = ["email@gmail.com"], enabled = False)
SensorSchedule = SensorSchedule(enabled = False)

with DAG(Schedule = Schedule, SensorSchedule = SensorSchedule):
    ST_GeomFromText__ST_GeomFromText_1 = Task(
        task_id = "ST_GeomFromText__ST_GeomFromText_1", 
        component = "Model", 
        modelName = "ST_GeomFromText__ST_GeomFromText_1"
    )
