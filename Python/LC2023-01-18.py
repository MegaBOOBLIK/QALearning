# // Z1
# // Напишите программу, чтобы оно возвращало true, если первый переданный аргумент (строка) заканчивается вторым аргументом (тоже строкой).
# // "solution('abc', 'bc')
# // // returns true
# // solution('abc', 'd')
# //
# // returns false"
#
# // def solution(a, b):
# //     return a.endswith(b)
# //
# // solution("qwe","qwe")
#
# // Z2
# // На часах время показано в виде h hours, m minutes and s seconds после полуночи.
# // Ваша задача написать функцию, которая возвращает время после полуночи в миллисекундах
# // Example:
# // h = 0
# // m = 1
# // s = 1
# //
# // result = 61000
#

# def TimeZ(h,m,s):
    # if 0 <= h <= 23 and 0 <= m <= 59 and 0 <= s <= 59:
    #     rez = ((h * 60 + m) * 60 + s) * 1000
    #     print(rez)
    # else:
    #     print("Invalid")

    # ???
    # print(((h * 60 + m) * 60 + s) * 1000) if 0 <= h <= 23 and 0 <= m <= 59 and 0 <= s <= 59: "Invalid"


TimeZ (1,23,13)
TimeZ(0, 1, 1)
TimeZ(1, 1, 1)
TimeZ(0, 0, 0)
TimeZ(1, 0, 1)
TimeZ(1, 0, 0)

# Z3
# Написать программу которая на вход принимает массив из 3 цифр в диапазоне от 0 до 10 и выводит их словами, каждое на отдельной строке
# "input:
# [8, 0, 5]
# output:
# Eight
# Zero
# Five"
#
# def Maz (*argz):
#     if all (0 <= x <= 10 for x in (argz)):
#         # print('Ok')
#         for i in argz:
#             # print(i)
#             match i:
#                 case 0:
#                     print("ноль")
#                 case 1:
#                     print("один")
#                 case 2:
#                     print("два")
#                 case 3:
#                     print("три")
#                 case 4:
#                     print("чет")
#                 case 5:
#                     print("пять")
#                 case 6:
#                     print("шесть")
#                 case 7:
#                     print("сем")
#                 case 8:
#                     print("вос")
#                 case 9:
#                     print("дев")
#                 case 10:
#                     print("дес")
#     else:
#         print("Invalid")
#
# Maz(7,2,8,4,10)



# Z Last - DONE
# "Есть два списка, возможно разной длины.
# Первый состоит из ключей, второй состоит из значений.
# Напишите функцию createDict(keys, values), которая возвращает словарь, созданный из ключей и значений.
# Если значений недостаточно, остальные ключи должны иметь значение None (JS null).
# Если ключей недостаточно, просто игнорируйте остальные значения"

# def CreDic (keyz, valuez):
#     NewDict = {}
#     for i in keyz:
#         if (valuez[keyz.index(i)]): valuez.append(None)
#         NewDict[keyz.index(i)] = i, valuez[keyz.index(i)]
#     print(NewDict.values())
#
# CreDic(['a','b','c','d','e'],[10,20,30])
