# students = ['Ivan', 'Masha', 'Sasha']
# students += ['Olga']
# students += 'Olga'
#
# print(students)
# ===
# a = [1, 2, 3]
# b = a
# print(a,"---", b)
#
# a[1] = 10
# print(a,"---", b)
#
# b[0] = 20
# print(a,"---", b)
#
# a = [5, 6]
# print(a,"---", b)
# ===
# print(sum(int(i) for i in input().split()))
# ===

# s = [1, 3, 5, 6, 10]
s = [1, 0, 0, 0, 0, 2, 0]
# s = [int(i) for i in input().split()]
for i in s:
       print(s.index(i),'!',len(s))
       if len(s)==1:
              print(i)
       elif s.index(i) == len(s)-1:
              print("!!!")
              print(s[s.index(i) - 1], s[0])
       else:
              print(s[s.index(i)-1], s[s.index(i)+1])



    # print(s.index(i))
    # if s[0]:
    #     print('!')
    #     print(sum(s[s.index(i):s.index(i) + 1])+s[-1])
    # elif s.index(i)+1 == None:
    #     print('!!!')
    #     print(sum(s[s.index(i)-1:s.index(i)])+s[0])
    # else:
    #     print('_')
    #     print(sum(s[s.index(i) - 1:s.index(i) + 1]))
