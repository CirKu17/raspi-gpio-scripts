from time import sleep
import RPi.GPIO as GPIO
GPIO.setmode(GPIO.BCM)
GPIO.setup(4, GPIO.OUT)
GPIO.setup(17, GPIO.OUT)
try:
	while 1:
		GPIO.output(4, False)
		sleep(1)
		GPIO.output(4, True)
		sleep(1)
		
		GPIO.output(17, False)
		sleep(1)
		GPIO.output(17, True)
		sleep(1)
		
		
except:
	GPIO.cleanup()
