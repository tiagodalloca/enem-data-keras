import numpy as np
from sklearn import preprocessing
import numbers
import math
import pandas as pd
import json
import os


dataset_path = '~/Documents/clojure_stuff/enem-data/resources/MICRODADOS_ENEM_2016.csv'
dataset_labels_path = '~/Documents/clojure_stuff/enem-data/resources/MICRODADOS_ENEM_2016-labels.csv'
output_dir = 'ENEM_2016_NORMALIZED'
os.mkdir(output_dir)


chunksize = 10**4
labels = pd.read_csv(dataset_labels_path, encoding="ISO-8859-1")
chunks = pd.read_csv(dataset_path, chunksize=chunksize,
                     encoding="ISO-8859-1", names=list(labels))

rows_count = 0

with open('important_labels.json', 'r') as s:
    schema = json.load(s)

stats = {}

for i, c in enumerate(chunks):
    for k, v in schema.items():
        min_max_scaler = preprocessing.MinMaxScaler()
        if v:
            if type(v) is list:
                c[k] = c[k].apply((lambda x:
                                   ((lambda l, y: l.index(y)
                                     if y in l else -1)(v, x) + 1) / (len(v))))
            else:
                if k.startswith("NU_NOTA"):
                    c[k] = c[k].apply(lambda x: x
                                      if isinstance(x, numbers.Number)
                                      and not math.isnan(x) else float("NaN"))

                else:
                    ns = [n for n in c[k]
                          if isinstance(n, numbers.Number)
                          and not math.isnan(n)]
                    if len(ns) == 0:
                        c[k] = c[k].apply(lambda x: 0)
                        continue

                    mean = np.mean(ns)
                    mmax = np.max(ns)
                    mmin = np.min(ns)
                    if mmax != mmin:
                        c[k] = c[k].apply(lambda x: (x - mean) / (mmax - mmin)
                                          if isinstance(x, numbers.Number)
                                          and not math.isnan(x) else 0)
                    else:
                        c[k] = c[k].apply(lambda x: 0)
        else:
                c = c.drop(k, axis=1)
    c = c.dropna()
    part = "/part{:04d}".format(i)
    rows = len(c.index)
    rows_count += rows
    c.to_csv(output_dir + part + ".csv")
    print("{} written, {} entries added.".format(part, rows))

print("---")
print("Finished. Total rows count: {}".format(rows_count))
