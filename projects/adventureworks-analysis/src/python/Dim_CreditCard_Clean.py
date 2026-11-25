import pandas as pd
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt

print("All libraries working")

PATH = r"E:\Data Analysis\DEPI 4\Python\Dim_CreditCard.csv"
df = pd.read_csv(PATH, names=["Credit Card ID", "Card Type"], header=0)

df.info()

df.isna().sum()

df.duplicated().sum()

df["Card Type"] = df["Card Type"].str.strip()

df["Card Type"].value_counts(dropna=False)

df.isna().sum()

df.to_csv("Dim_CreditCard_clean.csv", index=False)
print("File saved successfully!")