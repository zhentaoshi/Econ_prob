# import os
# os.chdir('D:\Dropbox\Teaching\Econ_prob_stat')

import pandas as pd
import numpy as np

######## import data 
#  remove zeros (data cleaning)


df = pd.read_csv('HKTop300YouTubers.csv', thousands=',')
df = df.iloc[:, 1:6]

df.rename( columns = {'subscribers': "subs", 
                      'video views': "view",
                      'video count': "count"}, 
          inplace = True)

## remove the zeros 
mask = np.all(df != 0, axis = 1)
df2 = df.loc[mask, :]


##
dflog = df2[:]
dflog.iloc[:,1:4] = np.log(dflog.iloc[:,1:4])


### draw historgram
import matplotlib.pyplot as plt

plt.hist(df2['count'], color='green', alpha=0.5)
plt.hist(dflog['count'], color='green', alpha=0.5)


### draw ecdf

import statsmodels.api as sm

data = np.random.normal(0, 20, 1000)

ecdf = sm.distributions.ECDF(dflog['subs'])

x = np.linspace(min(dflog['subs']), max(dflog['subs']))
y = ecdf(x)

plt.step(x, y)
plt.show()

### quantile
np.quantile( dflog['subs'], np.linspace(0.25, 0.75, num=3) )
            
#############

from scipy.stats import norm
norm.pdf(0)
norm.cdf(1.96)
norm.quantile(.975)
norm.ppf(0.975)
np.random.randn(5)

#############

np.mean(dflog['subs'])
np.var(dflog['subs'])

#############
Y = np.random.randn(200).reshape(100,2)
plt.scatter(Y[:,0], Y[:,2])

######save data file

mask = np.random.choice(np.arange(0, len(dflog)), size = 100, replace = False)
dflog_subsample = dflog.iloc[np.sort(mask), :]

dflog_subsample.to_csv('HK300_subsample.csv', index=False)



