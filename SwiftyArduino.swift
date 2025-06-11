// A function to set the pin output or input
func pinMode(pin: UInt32, mode: Bool) {
    gpio_init(pin)
    gpio_set_dir(pin, mode)
}

// A function to turn on or off a digital pin
func digitalWrite(pin: UInt32, value: Bool) {
    gpio_put(pin, value)
}

// A function to read the voltage from a digital pin
func digitalRead(pin: UInt32) {
    gpio_get(pin)
}

// A function to add a delay to the code in milli seconds
func delay(time: UInt32) {
    sleep_ms(time)
}

// A function to add a delay to the code in micro seconds
func delayMicroseconds(time: UInt64) {
    sleep_us(time)
}
