# Arrêter et supprimer l'ancien conteneur
try { docker stop flask_app } catch {}
try { docker rm flask_app } catch {}

# Tirer la dernière image
docker pull meeednj/flask-app:latest

# Lancer le conteneur
docker run -d --name flask_app -p 5000:5000 meeednj/flask-app:latest
