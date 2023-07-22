
import pandas as pd
import os
import numpy as np

os.chdir('D:\Dropbox\Teaching\Econ_prob_stat')
df = pd.read_csv('HKTop300YouTubers.csv')

df.replace(0, pd.NA, inplace = True)

print(df[['subscribers']].dtypes)

np.sum(df == 0)


df.loc[214].dtypes
