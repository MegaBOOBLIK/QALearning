# a = int(input())
# b = int(input())
#
# s = 0
# j = 0
#
# for i in range(a, b+1):
#     if i % 3 == 0:
#         j += 1
#         s += i
# print(s/j)

# gen = input()
# print((gen.lower().count('g')+gen.lower().count('c')) / len(gen) * 100)


# Пример тернарного оператора в Python
# s = "qwerty11ytrewq"
# r = s[::-1]
# print('YES') if s == r else print('NO')

s = 'aaaabbсaa'
# s = 'abc'
# s = int(input())
cou = 1
i = 1

while i < len(s):
    if s[i-1] == s[i]:
        cou += 1
    else:
        print(s[i-1],cou,sep='',end='')
        cou=1
    i += 1
print(s[len(s)-1],cou,sep='')
