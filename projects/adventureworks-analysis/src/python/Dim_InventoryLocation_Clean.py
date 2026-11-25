import pandas as pd
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt

print("All libraries working")

PATH = r"E:\Data Analysis\DEPI 4\Python\Dim_InventoryLocation.csv"
df = pd.read_csv(PATH, names=["Inventory Location Key", "Location ID", "Shelf", "Bin"], header=0)

df.info()
df.isna().sum()
df.duplicated().sum()

df["Shelf"] = df["Shelf"].fillna("N/A")
df["Shelf"] = df["Shelf"].str.strip()
df["Inventory Location Key"] = df["Inventory Location Key"].str.strip()

print("Nulls after fillna:", df["Shelf"].isna().sum())
df.isna().sum()

df.to_csv(r"E:\Data Analysis\DEPI 4\Python\Dim_InventoryLocation_clean.csv", index=False)
print("File saved successfully!")