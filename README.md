# Proyecto Infraestructura Computacional
## Realizado por: Yeison Alvarez - Brahian Andres Arbelaez
### Contextualización
El proyecto final de la materia de infraestructura computacional, nos pide consolidar la infraestructura para un servidor que implemente stres servicios, el primero de mysql, el segundo de apache y por ultimo de nginx, para esto se debian crear raids, volumenes logicos, contenedores, entre otras cosas.

Para esto se propuso la siguiente solución, esta se basa en que un frontend que se encuentra desplegado en nginx y en apache, se comunicara con backend hecho en spring el cual se encargara de llamar al servicio de mysql, todos estos separados en diferentes contenedores.

<img width="1246" alt="Screenshot 2024-11-22 at 6 23 00 PM" src="https://github.com/user-attachments/assets/ee21ed10-f077-4ac8-8744-84baf8314d3a">



Se nos pide crear tres raids de nivel 1, estos raids estan compuestos cada uno por tres discos de dos de estos de 2GB y el otro de 1GB.

Para esto debiamos virtualizar una maquina de gnu Linux con la herramienta de virtual box, en la siguiente imagen podemos ver los 9 discos agregados a la maquina vitual para la creacion de los raids.
![Captura desde 2024-11-22 15-42-44](https://github.com/user-attachments/assets/8a6ac775-4a15-4caa-a5a5-5fb6dacf3363)

Ahora verificamos los discos en la maquina virtual.

![Captura desde 2024-11-22 16-43-15](https://github.com/user-attachments/assets/afb1c23c-817f-41c1-b1f1-87a01483e21c)
Con esto procedemos con la creación de los Raids de nivel 1 con el comando:
sudo mdadm --create --verbose /dev/md0 --level=1 --raid-devices=3 /dev/sdb /dev/sdc /dev/sdd
Ya teniendo estos comandos listos procedemos a crear los volumenes fisicos, los grupos de volumenes y los volumenes logicos en los que se almacenara toda la información relacionada con la ejecucion de los contenedores. En las siguientes imagenes se evidencia la creacion de estos.

![Captura desde 2024-11-22 16-47-00](https://github.com/user-attachments/assets/51b4045b-79aa-4c1e-b007-694f485d5754)

![Captura desde 2024-11-22 18-11-35](https://github.com/user-attachments/assets/d3d1209e-d028-4ca0-a3df-85abab951849)

![Captura desde 2024-11-22 18-15-49](https://github.com/user-attachments/assets/a0ed82ac-72f5-40fa-87ff-f7dc09777ba1)

Despues debimos hacer la descarga de al aplicacion docker para poder crear los contenedores que expongan estos servicios haciendo uso de docker compose que nos permite levantar estos de una forma sencilla.
![Captura desde 2024-11-22 18-21-53](https://github.com/user-attachments/assets/2bb5c53b-5751-4994-9e9c-08720de1c21f)

