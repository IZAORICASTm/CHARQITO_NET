clear
cd /home/izaoricas/CHARQITO_NET/posts
#!/bin/bash
# Directorio donde se encuentran los documentos
POSTS_DIR="/home/izaoricas/CHARQITO_NET/posts"

# Contar la cantidad de documentos en el directorio
num_posts=$(ls "$POSTS_DIR" | wc -l)
echo
echo vamo a crear un post. va
echo
sleep 1
echo -n quien escribe el post?:
read usu
touch post$num_posts.txt
echo -$usu- >> post$num_posts.txt
echo
echo escribe el contenido:
read contenido
echo $contenido >> post$num_posts.txt
echo creando post
sleep 1.34
echo .
sleep 1.45
echo .
sleep 1.89
echo .
sleep 2.03
echo post creado, nano!
sleep 3
