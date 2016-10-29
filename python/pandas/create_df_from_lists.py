import pandas as pd
letters = ['a', 'b', 'c']
words = ['apple', 'ball', 'cat']
df = pd.DataFrame(
    {'letter': letters,
     'word': words})

print("letters:\n", letters, "\n")
print("words:\n", words, "\n")
print("df:\n", df, "\n")

# Sample usage:
#  % python3 -u ./create_df_from_lists.py
# letters:
#  ['a', 'b', 'c']
#
# words:
#  ['apple', 'ball', 'cat']
#
# df:
#    letter   word
# 0      a  apple
# 1      b   ball
# 2      c    cat
