from curses import meta
import pandas as pd
import numpy as np

metadata_export_columns = ['sample','status']

run_table = pd.read_csv('./Data/samples/SraRunTable.csv')

run_table['sample'] = np.arange(2, len(run_table['status']) + 2)
metadata = run_table[run_table.columns.intersection(metadata_export_columns)]

cols = metadata.columns.tolist()
cols = cols[-1:] + cols[:-1]
metadata = metadata[cols]

metadata.loc[metadata['status'] == 'A', ['status']] = 'Asymptomatic'
metadata.loc[metadata['status'] == 'S', ['status']] = 'Symptomatic'

metadata.to_csv('./Data/samples/metadata.csv', encoding='utf-8', index=False)