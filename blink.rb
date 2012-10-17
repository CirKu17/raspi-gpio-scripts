require 'wiringpi'

pin_1 = 7
pin_2 = 0

io1 = WiringPi::GPIO.new
io2 = WiringPi::GPIO.new

io1.mode(pin_1,OUTPUT)
io2.mode(pin_2,OUTPUT)

trap('INT') {@interrupt = true }

until @interrupt do
	io1.write(pin_1,HIGH)
	sleep 1
	io1.write(pin_1,LOW)
	io2.write(pin_2,HIGH)
	sleep 1 
	io2.write(pin_2,LOW)
end

exit
