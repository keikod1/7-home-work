//
//  main.swift
//  7 home work
//
//  Created by my macbook on 21/11/21.
//

import Foundation

//пузырьковая сортировка
func sorting (){
for i in 0..<numbers.count {

    let index = (numbers.count - 1) - i

    for j in 0..<index {
        let number = numbers[j]
        let nextNumber = numbers[j + 1]

        if number > nextNumber {
            numbers[j] = nextNumber
            numbers[j + 1] = number
        }
    }
}

numbers.reverse()
    for number in numbers {
        if let video = reklamaoplata[number] {
            print("Prosmotry: \(number): Nazvanie \(video)")
        } else {
            print("Unknown response \(number)")
        }
    }
    
}

var numbers: [Int] = [150,250,350,450,550,650,750]
//сортировка по дням
var reklamaoplata: [Int: String] = [
    150: "Econom",
    250: "Standart",
    350: "VIP",
    450: "Bronze",
    550: "Silver",
    650: "Gold",
    750: "VIP Gold"
]
print("Ввыберите сумму товара \(numbers)")
var summareklamy = readLine()!

for (key, value) in reklamaoplata{
    if  (Int(summareklamy) ?? 0 == key){
        print("это \(value), оплата за 1 - день: \(key)c")
        print("на сколько дней хотите поднять товар?")
        break
    }else {
}
}

var day = readLine()
    for (key, value) in reklamaoplata{
    if (Int(summareklamy) ?? 0 == key){
        print("cумма \(key * (Int(day!) ?? 0)): Nazvanie \(value) хотите поднять? да/нет")
}}
    

var answer = readLine()

switch answer{
case "да":
        for (key,value) in reklamaoplata{
            if (Int(summareklamy) ?? 0 == key){
        var b = summareklamy
        var summary = (key * (Int(day!) ?? 0))
        numbers.append(summary)
        reklamaoplata.updateValue("поднятый товар \(value)", forKey: (Int(summary) ?? 0))
        }
        }
    sorting()
case "нет":
    print("пока");
default:
    print("error")
}


 
