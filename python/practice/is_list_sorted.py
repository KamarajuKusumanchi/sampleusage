def is_list_sorted(l):
    return all( [l[i] < l[i+1] for i in range(len(l)-1)] )

a = [10,1,8,2,5,3,7,9,6,4]
print(is_list_sorted(a))

b = sorted(a)
print(is_list_sorted(b))
