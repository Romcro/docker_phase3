# Utilisez une image de base Python
FROM python:3.9-slim

# Définissez le répertoire de travail
WORKDIR /app

# Copiez le fichier requirements.txt dans le conteneur
COPY requirements.txt .

# Installez les dépendances Python
RUN pip install --no-cache-dir -r requirements.txt

# Copiez le code de l'application Flask dans le conteneur
COPY app.py .

# Exposez le port 5000 pour que Flask puisse s'exécuter
EXPOSE 8000

# Commande pour lancer l'application
CMD ["python", "app.py"]
