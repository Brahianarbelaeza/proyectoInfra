# Proyecto Infraestructura Computacional
## Realizado por: Yeison Alvarez - Brahian Andres Arbelaez
Se nos pide crear tres raids de nivel 1, estos raids estan compuestos cada uno por tres discos de dos de estos de 2GB y el otro de 1GB.

Para esto debiamos virtualizar una maquina de gnu Linux con la herramienta de virtual box, en la siguiente imagen podemos ver los 9 discos agregados a la maquina vitual para la creacion de los raids.

![Captura desde 2024-11-22 15-42-44](https://github.com/user-attachments/assets/8a6ac775-4a15-4caa-a5a5-5fb6dacf3363)

Ahora verificamos los discos en la maquina virtual.

![Captura desde 2024-11-22 16-43-15](https://github.com/user-attachments/assets/afb1c23c-817f-41c1-b1f1-87a01483e21c)
Con esto procedemos con la creación de los Raids de nivel 1 con el comando:
sudo mdadm --create --verbose /dev/md0 --level=1 --raid-devices=3 /dev/sdb /dev/sdc /dev/sdd
Ya teniendo estos comandos listos procedemos a crear los volumenes fisicos que estaran asociados a cada uno de estos.
![Captura desde 2024-11-22 16-47-00](https://github.com/user-attachments/assets/51b4045b-79aa-4c1e-b007-694f485d5754)



