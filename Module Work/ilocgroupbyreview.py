#%%
import pandas as pd
# %%
ted_talk_df = pd.read_csv('./ted_talks.csv')
# %%
ted_talk_df.iloc[0,5]
# %%
ted_talk_df.loc[0,'description']
# %%
ted_talk_df.set_index('title', inplace=True)
# %%
ted_talk_df.head()
# %%
ted_talk_df.loc['0']
# %%
ted_talk_df.iloc[2,7]
# %%
ted_talk_gb = ted_talk_df.groupby(by='event')
# %%
ted_talk_gb.count()
# %%
ted_talk_df.groupby('')