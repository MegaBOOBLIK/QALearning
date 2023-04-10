#https://pythonworld.ru/tipy-dannyx-v-python/mnozhestva-set-i-frozenset.html

a = str('Hello')
print(a, type(a))

aa = 'world'

b = int(100)
print(b, type(b))

c = float(3.1415)
print(c, type(c))

d = bytes(2)
print(d, type(d))

e = list('список')
print(e, type(e))

f = list['список']
print(f, type(f))

h = {a: a ** 2 for a in range(7)}
print(h, type(h))

ab = a + aa
print(ab, type(ab))

list_items = [result for result in range(0,100) if result %2 == 0]

# for ii in list_items:
#     print(ii)

print (list_items)


