#Abriendo y leyendo el archivo.
require "csv"
data = CSV.open("notas.data", converters: :numeric).readlines

#Primer output de prueba.
print "#{data}\n"



