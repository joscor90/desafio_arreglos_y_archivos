#Método de ventas totales
def ventas_totales(arr)
    suma = 0
    arr.each do |ele|
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
    ele = ele.to_f
end

#Tercer test output.
print "#{arr}\n"

#Generando los dos arreglos considerando las condiciones de cada simulación.
primer_semestre = []
segundo_semestre = []

for i in 0..11 do
    if i < 6
        primer_semestre.push((arr[i]*1.10).truncate(2))
    else
        primer_semestre.push(arr[i].truncate(2))
    end
end

for i in 0..11 do
    if i > 5 
        segundo_semestre.push((arr[i]*1.20).truncate(2))
    else
        segundo_semestre.push(arr[i].truncate(2))
    end
end

#Cuarto test output.
puts "Probando arreglos simulados"
puts "Arreglo original"
print "#{arr}\n"
puts "Simulación primer semestre"
print "#{primer_semestre}\n"
puts "Simulación segundo semestre"
print "#{segundo_semestre}\n"

#Usando el método ventaes totales en cada simulacion.
primer_semestre_total = ventas_totales(primer_semestre)
segundo_semestre_total = ventas_totales(segundo_semestre)

#Quinto output de prueba.

puts "Ventas totales usando simulacion del primer semestre"
print "#{primer_semestre_total}\n"
puts "Ventas totales usando simulacion del segundo semestre"
print "#{segundo_semestre_total}\n"


#Creación del archivo para pasar los datos

open("resultados.data", "w") do |x|
    x << "#{primer_semestre_total}\n"
    x << "#{segundo_semestre_total}"
end


    