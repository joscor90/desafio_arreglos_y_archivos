#Método nota_mas_alta.
def nota_mas_alta(arr)
end
#Requiriendo csv.
require "csv"

#Abriendo y leyendo el archivo .
data = CSV.open("notas.data", converters: :numeric).readlines 

#Primer output de prueba.
print "#{data}\n"
