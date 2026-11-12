"""
Conner Everett engr-123 penguine data mid-term
"""


import pickle
import numpy as np

with open("penguins_species_data.pkl", "rb") as file:
    loaded_data = pickle.load(file)
Adelie = loaded_data["Adelie"]
Gentoo = loaded_data["Gentoo"]
Chinstrap = loaded_data["Chinstrap"]
col_names = loaded_data["col_names"]         #extract data given on rubcric

def getMetrics(col_data):
    minVal = col_data[0] 
    maxVal = col_data[0] 
    total = 0 

    for i in range(len(col_data)): #look through every coloium
        if col_data[i] < minVal: #new min if new min is found
            minVal = col_data[i]   

        if col_data[i] > maxVal: # new max if max is found
            maxVal = col_data[i]

        total = total + col_data[i] # avg

    avgVal = total / len(col_data)

    return minVal, avgVal, maxVal


def fillMetrics(data):
    metrics_for_species = np.zeros((3, 4))  # creates 3x4 matrix for min max and avg

    for col in range(4):
        col_data = data[:, col] 

        minVal, avgVal, maxVal = getMetrics(col_data)

        metrics_for_species[0, col] = minVal #all this input data into zeros function 
        metrics_for_species[1, col] = avgVal
        metrics_for_species[2, col] = maxVal

    return metrics_for_species


def print_metrics(metrics, col_names, species_name):
    print("For Species", species_name, ":")

    print(
        col_names[0] + ",",
        col_names[1] + ",",
        col_names[2] + ",",
        col_names[3]
    )

    for row in range(3):     #prints data like 1.000
        print(
            f"{metrics[row, 0]:.3f}, "
            f"{metrics[row, 1]:.3f}, "
            f"{metrics[row, 2]:.3f}, "
            f"{metrics[row, 3]:.3f}"
        )

    print()


#summary of metrics
adelie_metrics = fillMetrics(Adelie)
gentoo_metrics = fillMetrics(Gentoo)
chinstrap_metrics = fillMetrics(Chinstrap)
#print format
print_metrics(adelie_metrics, col_names, "Adelie")
print_metrics(gentoo_metrics, col_names, "Gentoo")
print_metrics(chinstrap_metrics, col_names, "Chinstrap")
