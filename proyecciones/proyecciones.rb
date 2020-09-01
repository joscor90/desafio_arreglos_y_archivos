def ventas_semestrales(arr, mult)
    suma = 0

#Lectura del archivo.
data = open("ventas_base.db").read 

#Primer test output
print "#{data}\n"

#Añadir valores a un arreglo.
arr = data.split(',')

#Segundo test output
print "#{arr}\n"

#Convertir valores a enteros.
arr.map! do |ele|
    ele = ele.to_i
end

#Tercer test output
print "#{arr}\n"

