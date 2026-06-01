#!/usr/bin/env python3
import time

while True:
    with open("/tmp/my_service.log", "a") as f:
        f.write("Service is running...\n")
    time.sleep(10)
