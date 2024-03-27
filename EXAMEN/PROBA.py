#Coded by Santiago Caballero
#CALCULO DE LA PROBABILIDAD DEL ATRACTOR 1 DESPUÉS DE 100 ITERACIONES

import numpy as np

# Definir la matriz de transición entre atractores
Pi = np.array([[0.91, 0.05, 0.04, 0.00],
               [0.08, 0.87, 0.00, 0.05],
               [0.05, 0.00, 0.94, 0.01],
               [0.00, 0.05, 0.10, 0.85]])

# Encontrar el autovector correspondiente al autovalor 1
eigenvalues, eigenvectors = np.linalg.eig(Pi.T)
stationary_index = np.argmin(np.abs(eigenvalues - 1.0))
stationary_vector = np.real(eigenvectors[:, stationary_index])
stationary_vector /= np.sum(stationary_vector)

print("Probabilidad de convergencia al atractor 1:")
print(stationary_vector[0])