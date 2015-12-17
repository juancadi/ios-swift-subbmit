//Mini Reto Semana 2 - Swift

import UIKit

let  range = 0...100

for num in range{

    if(num % 5 == 0){
    
        print("#\(num) Bingo!!!")
    
    }
    
    if(num % 2 == 0){
    
        print("#\(num) Par!!!")
    
    }
    
    if(num % 2 != 0){
        
        print("#\(num) Impar!!!")
    }
    
    if (num >= 30 && num <= 40){
    
        print("#\(num) VivaSwift!!!")
    
    }
    
}




