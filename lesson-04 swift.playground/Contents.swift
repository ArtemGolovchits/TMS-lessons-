import UIKit


// 1. Написать функции для сложения двух чисел вычитания умножения деленияи остатка от деления
// 2. Fibonacci numbers using recusrion
// 3. Написать функции для целой части числа и для дробной части числа
// 4. Написать функцию, которая проверит все числа от 1 до N на задаваемое условие через клоужер.
//    В качестве клоужера передавать а) делимость на 2, б) меньше 5, в*) является простым числом

// №1--------------

func numberSumma( sumNumbers1 number1: Int, sumNumbers2 number2: Int ) -> Int {
   number1 + number2
}
numberSumma(sumNumbers1: 5, sumNumbers2: 6)

func numberSubtract( reducedNumber number1: Int, deductibleNumber number2: Int ) -> Int {
    number1 - number2
 }
 numberSubtract(reducedNumber: 10, deductibleNumber: 9)

func numberDivide( divident number1: Int, divider number2: Int ) -> Int {
    number1 / number2
 }
 numberDivide(divident: 10, divider: 2)

func numberRemains( devider number1: Int, isPercent number2: Int ) -> Int {
    number1 % number2
 }
 numberRemains(devider: 10, isPercent: 4)

// №2--------------

// числа фибоначи: 0 = 0 1 = 1 а каждое последующие равно сумме двух предыдущих

func fibonacci(number: Int) -> Int {
    
    if number == 0 {
        return 0
    } else if number == 1{
        return 1
    }
    return fibonacci(number: number - 1) + fibonacci(number: number - 2)
}

for numberFibonacci in 0...8 {
    print(" \(fibonacci(number: numberFibonacci)) ")
}

// №3--------------

func floatRemains( number: Float)  {
    
    Int(number) // целое число от числа с плавающей точкой
    number.truncatingRemainder(dividingBy: 1) // остаток после точки
    }
floatRemains(number: 9.5)

// №4--------------

// number / 2

func numberShare2 (number: Int, closure: (Int) -> Bool )  {
    for number in 0...number {
        if closure(number) {
            print("число \(number) соответсвует данному условию")
        }
    }
}

let share2: (Int) -> Bool = { number in
    number % 2 == 0
}
numberShare2(number: 10, closure: share2)

// < 5

let closure2: (Int) -> Bool = { number in
    number < 5
}
numberShare2(number: 6, closure: closure2)
