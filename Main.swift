/*
 * SwiftyArduino
 * Provides arduino-like syntax and library support for swift embedded
 * This example code blinks the built in LED on the RPI pico/pico 2
 *
 * By Jaswanth Venkata Sai Chennu
 * On 11 / 06 / 2025
*/

@main
struct Main {
  static func main() {
    // Define a variable for the LED GPIO pin
    let ledPin: UInt32 = 25
    // Set the pin output
    pinMode(pin: ledPin, mode: true)
    while true {
      // turn on the LED
      digitalWrite(pin: ledPin, value: true)
      // wait one second
      delay(time: 1000)
      // turn off the LED
      digitalWrite(pin: ledPin, value: false)
      // wait one second
      delay(time: 1000)
    }
  }
}
