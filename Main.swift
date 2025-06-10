@main
struct Main {
  static func main() {
    let ledPin: UInt32 = UInt32(PICO_DEFAULT_LED_PIN)
    pinMode(pin: ledPin, mode: true)
    while true {
      digitalWrite(pin: ledPin, value: true)
      delay(time: 1000)
      digitalWrite(pin: ledPin, value: false)
      delay(time: 1000)
    }
  }
}