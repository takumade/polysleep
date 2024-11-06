

import 'package:polysleep/models/sleep_time.dart';

List<SleepTime> everyman1 = [
          SleepTime(
            id: "e1",
            name: "Everyman 1",
            difficulty: "Moderate",
            sleepTypes: [
              SleepType(
                name: "Core",
                startTime: "21:00",
                endTime: "05:00",
                type: SleepTypeEnum.core
              ),
              SleepType(
                name: "Nap",
                startTime: "13:00",
                endTime: "13:20",
                type: SleepTypeEnum.nap
              ),
        
            ],
            sleepVariants: [
              SleepVariants(
                name: "Late nap",
                sleepTypes: [
                  SleepType(
                    name: "Core",
                    startTime: "21:00",
                    endTime: "05:00",
                    type: SleepTypeEnum.core
                  ),
                  SleepType(
                    name: "Nap",
                    startTime: "17:00",
                    endTime: "17:20",
                    type: SleepTypeEnum.nap
                  ),
                ]
              ),
              SleepVariants(
                name: "Late core",
                sleepTypes: [
                  SleepType(
                    name: "Core",
                    startTime: "02:00",
                    endTime: "08:00",
                    type: SleepTypeEnum.core
                  ),
                  SleepType(
                    name: "Nap",
                    startTime: "15:00",
                    endTime: "15:20",
                    type: SleepTypeEnum.nap
                  ),
                ]
              )
            ]

            

          )
];