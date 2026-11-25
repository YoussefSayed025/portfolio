import pandas as pd
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt

print("All libraries working")

PATH = r"E:\Data Analysis\DEPI 4\Python\Dim_SalesOrderStatus.csv"
df = pd.read_csv(PATH, names=["Status ID", "Status Name"], header=None)

df.info()
df.isna().sum()
df.duplicated().sum()

df["Status Name"] = df["Status Name"].str.strip()
df["Status Name"].value_counts(dropna=False)

print("Nulls after cleaning:", df.isna().sum().sum())

df.to_csv(r"E:\Data Analysis\DEPI 4\Python\Dim_SalesOrderStatus_clean.csv", index=False)
print("File saved successfully!")