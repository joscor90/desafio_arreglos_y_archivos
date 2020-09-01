def ventas_semestrales(arr, factor)
    suma = 0
    arr.each do |ele|
        ele = ele*
        suma += ele
    end
    return suma
end


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

#Usando el método ventas_semestrales
