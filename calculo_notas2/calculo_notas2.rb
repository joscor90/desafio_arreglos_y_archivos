#Método nota_mas_alta.
def nota_mas_alta(arr)
    notas_mas_altas = []
    arr.each do |subarr|
        int_notas = subarr.select {|ele| ele.class == Integer}
        notas_mas_altas.push(int_notas.max())
    end
    return notas_mas_altas
end

#Requiriendo csv.
require "csv"

#Abriendo y leyendo el archivo .
data = CSV.open("notas.data", converters: :numeric).readlines 

#Primer output de prueba.
print "#{data}\n"

#Segundo output de prueba.
puts "Arreglo con las notas más altas del curso"
print "#{nota_mas_alta(data)}\n"
