import pandas as pd
import matplotlib.pyplot as plt

# Lee el fichero de texto
with open('./db.txt', 'r') as file:
    data = file.read().splitlines()

# Crea un DataFrame con la columna 'Tipo'
df = pd.DataFrame({'Tipo': data})

# Cuenta las ocurrencias de cada canción
cuenta_canciones = df['Tipo'].value_counts()

# Calcula la probabilidad de cada canción
total_conciertos = cuenta_canciones.max()
probabilidades = cuenta_canciones / total_conciertos * 100  # Multiplica por 100 para obtener el porcentaje

# Crea un DataFrame con las probabilidades y asigna un nombre a la columna
df_probabilidades = pd.DataFrame({'Probabilidades': probabilidades})

# Ordena el DataFrame por las probabilidades para tener un gráfico ordenado
df_probabilidades = df_probabilidades.sort_values(by='Probabilidades', ascending=False)

# Genera el gráfico de barras
plt.figure(figsize=(10, 6))
bars = plt.bar(df_probabilidades.index, df_probabilidades['Probabilidades'], color='skyblue')
plt.xlabel('Canción')
plt.ylabel('Probabilidad (%)')
plt.title('Probabilidad de que toquen una canción en el show')
plt.xticks(rotation=45, ha='right')  # Rotar etiquetas del eje x para mayor legibilidad

# Anota cada barra con su respectivo porcentaje, adjusting font size and position
for bar in bars:
    yval = bar.get_height()
    plt.text(bar.get_x() + bar.get_width()/2, yval + 1, f'{yval:.2f}%', ha='center', va='bottom', fontsize=7)

plt.tight_layout()

# Muestra el gráfico
plt.show()

