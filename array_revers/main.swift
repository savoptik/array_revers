//
//  main.swift
//  array_revers
//
//  Created by Артём Семёнов on 27.07.2019.
//  Copyright © 2019 Артём Семёнов. All rights reserved.
//

import Foundation

// исходный массив
var array: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
// самый эффективный реверс без распараллеливания
print("исходный массив \(array)")
var index = 0
while index < array.count / 2 {
    let tmp = array[index]
    array[index] = array[array.count - 1 - index]
    array[array.count - 1 - index] = tmp
    index += 1
}
print("реверс \(array)")
// разворот без использования вспомогательного массива и дополнительных переменных
index = array.count - 1 // получение индекса последнего элемента
print("исходный массив \(array)")
while index >= 0 {
    array.append(array.remove(at: index))
    index -= 1
}
print("реверс \(array)")
// вариант реверса с сохранением исходного массива
var arrayReverss: [Int] = [] // массив для сохранения реверса
index = array.count - 1 // получение последнего элемента
// перебираем элементы исходного массива с конца
while index >= 0 {
    arrayReverss.append(array[index])
    index -= 1
}
print("Исходный массив \(array)")
print("Реверс \(arrayReverss)")
// реверс с уничтожением исходного массива
arrayReverss.removeAll() // отчищаем массив
while array.count > 0 {
    arrayReverss.append(array.removeLast())
}
print("Сново реверс \(arrayReverss)")
