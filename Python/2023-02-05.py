# Списки
l1 = [1,2,3,4,5]
names = ['Anna', 'Алекс', 'Victor', 'Piktor', 'Hreniktor']

# print(names)
# print(type(names))
#
# # пустой список
# l2 = []
# l3 = list() #создание с помощь. встроенной функции
#
# item1 = 'Hrenb-brenb'
# l4 = list(item1)
# print(l4)
#
# l5 = ['Fly']
# l55 = l5 * 5
# print(l55)
#
# print(names[0],names[1],names[2])
# print(names[-1],names[-2],names[-3]) # вывод с другой стороны начинается с -1
#
# # раскладывание списков
# u1, u2, u3, u4, u5 = names
# print(u1,u2,u3)
#
# for n in names:
#     print(n)
#
# l5 = [1,2,3,4,5]
#
# if l1 == l5:
#     print ('равно')
# else:
#     print('не равно')

# Добавление в список
names.append(777) # В конец
names.insert(1, 'Molex') # в середину впозицию 1 например

# print(names)
names.extend([999, '000'])
# print(names)

# print(names.index('Victor')) # Номер в списке

# print(names.pop(8)) # Удалить № элемента
# print(names)

# Поиск в списке
# if 'Victor' in names:
#     print('Есть')
# else:
#     print('Пить')
#
# print(names)
# удаление
# del names[3]
# срезы
# del names[2:] # удалить с третьего
# del names[:3] # удалить по четвёртый
# del names[2:4] # удалитьть с 3го по 5й
# del names[1::2] # удалитьть с шагом
# print(names)

items = [1, 3, 55, 5555, 111, 777, 4444, -9, 3.14, 3.1415]
print(items)
items.sort()
print(items)
items.sort(reverse=True)
print(items)
items.reverse()
print(items)
print(min(items), max(items))
print(sum(items) / len(items))



