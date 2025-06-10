 func pinMode(pin: UInt32, mode: Bool) {
    gpio_init(pin)
    gpio_set_dir(pin, mode)
}

func digitalWrite(pin: UInt32, value: Bool) {
    gpio_put(pin, value)
}

func digitalRead(pin: UInt32) {
    gpio_get(pin)
}

func delay(time: UInt32) {
    sleep_ms(time)
}

func delayMicroseconds(time: UInt64) {
    sleep_us(time)
}
