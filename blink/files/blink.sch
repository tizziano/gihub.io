v 20130925 2
C 40000 40000 0 0 0 title-bordered-A4-it.sym
C 41100 41300 1 0 0 arduino-1.sym
{
T 43200 46895 5 10 1 1 0 0 1
refdes=U?
T 41100 41295 5 10 0 1 0 0 1
footprint=ARDUINO_UNO
T 41100 41295 5 10 0 1 0 0 1
device=ARDUINO_UNO
}
C 45900 43600 1 270 0 led-2.sym
{
T 46300 43200 5 10 1 1 0 0 1
refdes=D1
T 46500 43500 5 10 0 0 270 0 1
device=LED
}
C 46100 43600 1 90 0 resistor-1.sym
{
T 45700 43900 5 10 0 0 90 0 1
device=RESISTOR
T 46600 44200 5 10 1 1 180 0 1
refdes=470R
}
C 45800 42400 1 0 0 ground.sym
N 43600 44500 46000 44500 4
T 44700 41000 9 10 1 0 0 0 1
Blink: Lampeggio di un led con la Scheda Arduino UnoR3
