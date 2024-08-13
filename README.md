# Commands 

```bash 
alembic init alembic 
docker-compose run app alembic revision --autogenerate -m "new migration" 
docker-compose run app alembic upgrade head 
``` 

