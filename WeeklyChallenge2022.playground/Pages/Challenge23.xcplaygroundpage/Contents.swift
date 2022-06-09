import Foundation

/*
 * Reto #23
 * MÁXIMO COMÚN DIVISOR Y MÍNIMO COMÚN MÚLTIPLO
 * Fecha publicación enunciado: 07/06/22
 * Fecha publicación resolución: 13/06/22
 * Dificultad: MEDIA
 *
 * Enunciado: Crea dos funciones, una que calcule el máximo común divisor (MCD) y otra que calcule el mínimo común múltiplo (mcm) de dos números enteros.
 * - No se pueden utilizar operaciones del lenguaje que lo resuelvan directamente.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

func maxComDiv(_ num1: Int, _ num2: Int){
    
    let i: Int = 1
   
    var array_num1: [Int] = []
    var array_num2: [Int] = []
    var array_resultado: [Int] = []
    var result: Int = 0
    
    for index in i...num1 {
        
        var cont = num1
        cont = cont % index
       
        if (cont == 0) {
            array_num1.append(index)
        }
    }
    
    for index in i...num2 {

        var cont_num2 = num2
        cont_num2 = cont_num2 % index

        if (cont_num2 == 0) {
            array_num2.append(index)
        }
    }
    
    //comparo los comunes entre los dos arrays y los añado a un array nuevo
    
    for j in array_num1 {
    
        for z in array_num2 {
            
            if (j == z) {
                array_resultado.append(j)
            }
        }
    }
    
//Comparo los valores y el más alto se imprime por consola siendo el MCD
    for valor_anterior in array_resultado {

        for valor_posterior in array_resultado{

            if (valor_anterior > valor_posterior) {
               result = valor_anterior
            }
        }
    }
    print("MCD -> \(result)")
}


func minComMult(_ n1:Int, _ n2:Int){
    
   let number1 = n1
   let number2 = n2
   let par = 2
   let impar = 3
   let i = 1
    
   var cont1 = number1
   var cont2 = number2
    
    var cocientes1: [Int] =  []
    var cocientes2: [Int] =  []
   
    
    for item in i...number1{
        
        if (cont1 % par == 0){
            
            cont1 = cont1 / par
            cocientes1.append(par)
        } else if (cont1 % impar == 0){
            cont1 = cont1 / impar
            cocientes1.append(impar)
        }
    }
    
    for item in i...number2{
        
        if (cont2 % par == 0){
            cont2 = cont2 / par
            cocientes2.append(par)
        } else if (cont2 % impar == 0){
            cont2 = cont2 / impar
            cocientes2.append(impar)
        }
    }
  //Conversion a un array clave-valor usando tuplas
   let items1 = cocientes1.map{($0, 1)}
   let counts1 = Dictionary(items1, uniquingKeysWith: +)
    
    let items2 = cocientes2.map{($0, 1)}
    let counts2 = Dictionary(items2, uniquingKeysWith: +)
    
    
   
   print("Counts \(counts1)")
   print("Counts \(counts2)")
   print(cocientes1)
   print(cocientes2)
}

print(maxComDiv(15,20))
print(minComMult(12,8))




