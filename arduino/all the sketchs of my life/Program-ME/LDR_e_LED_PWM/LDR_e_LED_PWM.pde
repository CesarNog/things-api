

int luminosidade;

int potenciometro;
void setup() {
  Serial.begin(9600);
  pinMode(5, OUTPUT);
}

void loop() {
  // entrada de informa��o na vari�vel
  // analogRead(0) representa o sensor de luz do Program-ME
  luminosidade = analogRead(0);
  potenciometro = analogRead(1);
  analogWrite(5, potenciometro / 8); 
  if(luminosidade<500) {
    Serial.println("Esta claro!");
  }
  else {
    Serial.println("Esta escuro!");
  }
}
