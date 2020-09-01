def nota_mas_alta(arr)
   arr.reject! {|ele| ele.class != Integer}
   nota_mas_alta = arr.max()
   return nota_mas_alta
end


#Abriendo y leyendo el archivo.
require "csv"
data = CSV.open("notas.data", converters: :numeric).readlines

#Primer output de prueba.
print "#{data}\n"

#Segundo output de prueba llamando al método.
mas_alta = nota_mas_alta(data[1])
puts mas_alta