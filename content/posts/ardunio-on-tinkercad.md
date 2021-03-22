---
title: "Ardunio on Tinkercad"
date: 2020-12-10T17:34:51+03:00
author: Semih Celek
# tags: ["Ardunio", "TinkerCad", "CET", "Code", "C Programming"]
hero_image: "/content/images/jj-ying-7JX0-bfiuxQ-unsplash.jpg"
---

### Running Ardunio on Tinkercad

I had built an example arduino ciruit on Tinkercad. The circuit modifies the led's delay time depending on the potentiometers analog value. Here you can see the circuit and source code.

{{< tinkercad >}}

```c
int potPin = 1;
int ledPin = 13;
int butPin = 2;
int potVal = 0;
int butVal = 0;
int time = 1000;
int ledTime =600;

void setup()
{
  pinMode(ledPin, OUTPUT);
  pinMode(butPin, INPUT);
  Serial.begin(9600);
}

void loop()
{
  potVal = analogRead(potPin);
  butVal = digitalRead(butPin);

  if(butVal == HIGH)
  {
      if(potVal < 100)
        {
                delay(time);
                digitalWrite(ledPin, HIGH);
                Serial.println("First period");
                delay(ledTime);
                digitalWrite(ledPin, LOW);
        }
    	else if (potVal > 100 && potVal < 200)
        {
                delay(2 * time);
                digitalWrite(ledPin, HIGH);
                Serial.println("Second period");
                delay(ledTime);
                digitalWrite(ledPin, LOW);
        }
    	else if ( potVal > 200 && potVal < 300)
        {
                delay(3 * time);
                digitalWrite(ledPin, HIGH);
                Serial.println("Third period");
                delay(ledTime);
                digitalWrite(ledPin, LOW);
        }
    	else if (potVal > 300 && potVal < 400)
        {
                delay(4 * time);
                digitalWrite(ledPin, HIGH);
                Serial.println("Fourth period");
                delay(ledTime);
                digitalWrite(ledPin, LOW);
        }
    	else if (potVal > 400 && potVal < 500)
        {
                delay(5 * time);
                digitalWrite(ledPin, HIGH);
                Serial.println("Fifth period");
                delay(ledTime);
                digitalWrite(ledPin, LOW);
        }
    	else if (potVal > 500 && potVal < 600)
        {
                delay(6 * time);
                digitalWrite(ledPin, HIGH);
                Serial.println("Sixth period");
                delay(ledTime);
                digitalWrite(ledPin, LOW);
        }
    	else if (potVal > 600 && potVal < 700)
        {
                delay(7 * time);
                digitalWrite(ledPin, HIGH);
                Serial.println("Seventh period");
                delay(ledTime);
                digitalWrite(ledPin, LOW);
        }
    	else if (potVal > 700 && potVal < 800)
        {
                delay(8 * time);
                digitalWrite(ledPin, HIGH);
                Serial.println("Eighth period");
                delay(ledTime);
                digitalWrite(ledPin, LOW);
        }
    	else if (potVal > 800 && potVal < 900)
        {
                delay(9 * time);
                digitalWrite(ledPin, HIGH);
                Serial.println("Nineth period");
                delay(ledTime);
                digitalWrite(ledPin, LOW);
        }
    	else if (potVal > 900 && potVal < 1024)
        {
                delay(10 * time);
                digitalWrite(ledPin, HIGH);
                Serial.println("Tenth period");
                delay(ledTime);
                digitalWrite(ledPin, LOW);
        }
    else
    {
      digitalWrite(ledPin, LOW);
    }
  }
  else
  {
        digitalWrite(ledPin, LOW);
  }
}
```
