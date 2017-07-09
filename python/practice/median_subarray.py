# Given a sorted array, find the median of the subarray with values greater
# than or equal to k
def median(lst):
    # Note:- original array is not modified
    lst = sorted(lst)
    n = len(lst)
    if n < 1:
            return None
    if n % 2 == 1:
            return lst[n//2]
    else:
            return sum(lst[n//2-1:n//2+1])/2.0

def median_subarray(a,k):
    a = sorted(a)
    print("sorted array = ", a)
    print("k = ", k)
    from bisect import bisect
    index = bisect(a,k)
    print("index = ", index)
    print("subarray = ", a[:index])
    msub = median(a[:index])
    print("median of subarray = ", msub)
    return msub

a=[10,1,8,2,6,5,3,7,9,6,4,5]
k = 6
median_subarray(a,k)
print("original array = ", a)
