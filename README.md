# CHARQITO_NET
El charqito net
---------------------------------------------------------------------------------
GNU Bash o simplemente Bash (Bourne-again shell) es una interfaz de usuario de línea de comandos popular, específicamente un shell de Unix; así como un lenguaje de scripting. Bash fue originalmente escrito por Brian Fox para el sistema operativo GNU, y pretendía ser el reemplazo de software libre del shell Bourne.1​2​ Lanzado por primera vez en 1989,3​ se ha utilizado ampliamente como el intérprete de inicio de sesión (login) predeterminado para la mayoría de las distribuciones de GNU/Linux, y también de Mac OS X de Apple hasta la versión 10.15.4​ Una versión también está disponible para Windows 10 y Android.5​ También es el intérprete de órdenes de usuario predeterminado en Solaris 11.6​

Bash es un intérprete de órdenes que generalmente se ejecuta en una ventana de texto donde el usuario escribe órdenes en modo texto. Bash también puede leer y ejecutar órdenes desde un archivo, llamado guion o 'script', que son secuencias de comandos escritas en el lenguaje de scripting de Bash. Estos scripts permiten automatizar tareas y combinar comandos y estructuras de control en un solo archivo. Al igual que todos los intérpretes de Unix, es compatible con el agrupamiento de nombres de archivo (coincidencia de comodines), tuberías, here documents, sustitución de comandos, variables y estructuras de control para pruebas de condición e iteración. Las palabras reservadas, la sintaxis, las variables de ámbito dinámico y otras características básicas del lenguaje se copian de sh. Otras características, por ejemplo, el historial, se copian de csh y ksh. Bash es un intérprete de órdenes compatible con POSIX, pero con varias extensiones.

El nombre del intérprete es un acrónimo de 'Bourne-again shell' (intérprete de órdenes Bourne, de nuevo), un juego de palabras con el nombre del intérprete Bourne que reemplaza7​ y la noción de "nacer de nuevo" (born-again).8​9​

Un agujero de seguridad en Bash que data de la versión 1.03 (agosto de 1989),10​ denominado Shellshock, fue descubierto a principios de septiembre de 2014 y recibió amplia atención de los medios. Rápidamente provocó una serie de ciberataques en Internet.11​12​13​ Los parches para corregir los errores se pusieron a disposición poco después de que se identificaron los errores.
Historia

Brian Fox comenzó a codificar Bash el 10 de enero de 198814​ después de que Richard Stallman se sintiera insatisfecho con la falta de progreso de un desarrollador anterior.15​ Stallman y la Free Software Foundation (FSF) consideraron un intérprete libre que podría ejecutar scripts de shell existentes tan estratégicos para un sistema completamente libre construido a partir de código BSD y GNU que este fue uno de los pocos proyectos que financiaron ellos mismos, con Fox emprendiendo el trabajo como un empleado de FSF.15​16​ Fox lanzó Bash como beta, versión .99, el 8 de junio de 19893​ y se mantuvo como el colaborador principal hasta mediados de 199217​ y mediados de 1994,18​ cuando fue despedido de la FSF19​ y su responsabilidad fue transferida a otro colaborador temprano, Chet Ramey.20​21​22​

Desde entonces, Bash se ha convertido en el shell más popular entre los usuarios de las distribuciones GNU/Linux, convirtiéndose en el shell interactivo predeterminado en las diversas distribuciones GNU/Linux(con distribuciones se refiere a todo sistema operativo que como kernel tenga el kernel de linux)23​24​ (aunque el intérprete Almquist puede ser el intérprete de secuencias de órdenes predeterminado) y en las versiones de MacOS de Apple antes de Catalina en octubre de 2019.25​26​27​ Bash también ha sido importado a Microsoft Windows y distribuido con Cygwin y MinGW, a DOS por el proyecto DJGPP, a Novell NetWare y a Android a través de varias aplicaciones de emulación de terminal.

En septiembre de 2014, Stéphane Chazelas, especialista en Unix / Linux,28​ descubrió un error de seguridad en el programa. El error, revelado por primera vez el 24 de septiembre, se llamó Shellshock y se le asignaron los números CVE-2014-6271, CVE-2014-627729​ y CVE-2014-7169. El error se consideró grave, ya que los scripts CGI que usan Bash podrían ser vulnerables, lo que permite la ejecución de código arbitrario. El error estaba relacionado con la forma en que Bash pasa las definiciones de funciones a subcapas a través de variables de entorno.30​
Scripts Bash

Los scripts en informática son utilizados para manipular, personalizar y automatizar instalaciones de sistemas existentes. Se almacenan en archivos de texto y se interpretan línea por línea en tiempo real para su ejecución. Por lo general, tienen la extensión .sh y comienzan con un shebang, que indica qué shell debe interpretar ese script.

Los archivos de órdenes en Bash se conocen como procedimientos shell, archivos shell o guiones shell (scripts en inglés). Los scripts Bash permiten automatizar tareas repetitivas o complejas al combinar comandos y estructuras de control en un solo archivo. Estos scripts pueden ser ejecutados desde la línea de comandos o programados para ejecutarse automáticamente en momentos específicos.

Los archivos script en Bash se identifican a través del shebang #!/bin/bash, que especifica Bash como el intérprete de shell a utilizar.
Sintaxis de Bash

La sintaxis de órdenes de Bash es un superconjunto de instrucciones basadas en la sintaxis del intérprete Bourne. La especificación definitiva de la sintaxis de órdenes de Bash, puede encontrarse en el Bash Reference Manual distribuido por el proyecto GNU. Esta sección destaca algunas de sus únicas características.

La mayoría de los guiones de intérprete de órdenes Bourne ('shell scripts) pueden ejecutarse por Bash sin ningún cambio, con la excepción de aquellos guiones del intérprete de órdenes, o consola, Bourne que hacen referencia a variables especiales de Bourne o que utilizan una orden interna de Bourne. La sintaxis de órdenes de Bash incluye ideas tomadas desde los intérpretes Korn shell (ksh) y C shell (csh), como la edición de la línea de órdenes, el historial de órdenes, la pila de directorios, las variables $RANDOM y $PPID, y la sintaxis de substitución de órdenes POSIX: $(...). Cuando se utiliza como un intérprete de órdenes interactivo, Bash proporciona autocompletado de nombres de programas, nombres de archivos, nombres de variables, etc., cuando el usuario pulsa la tecla TAB.

La sintaxis de Bash tiene muchas extensiones que no proporciona el intérprete Bourne. Varias de las mencionadas extensiones se enumeran a continuación.
Acceso a los argumentos

Los guiones de Bash reciben los argumentos que le pasa al intérprete como $1, $2, …, $n. Se puede obtener el número total de argumentos con el símbolo $#.

Usando $# es posible comprobar el número de argumentos entregados al guion antes de realizar alguna acción con ellos:

 if [ $# -lt 2 ]; then
   echo "Necesitas pasar dos argumentos."
   exit 1
 fi

Otra forma de acceder a los argumentos es a través del array $@, por medio del cual se puede iterar sobre todos los argumentos dados:

  for arg in "$@"
  do
    echo "$arg"
  done

Operaciones matemáticas con enteros

Una gran limitación del intérprete Bourne es que no puede realizar cálculos con enteros sin lanzar un proceso externo. En cambio, un proceso Bash puede realizar cálculos con enteros utilizando la orden ((...)) y la sintaxis de variables $[...] de la siguiente manera:

 VAR=55             # Asigna el valor entero 55 a la variable VAR.
 ((VAR = VAR + 1))  # Suma uno a la variable VAR. Observe la ausencia del carácter '$'.
 ((++VAR))          # Otra forma de sumar uno a VAR. Preincremento estilo C.
 ((VAR++))          # Otra forma de sumar uno a VAR. Postincremento estilo C.
 echo $[VAR * 22]   # Multiplica la variable VAR por 22 y sustituye la orden por el resultado.
 echo $((VAR * 22)) # Otra forma de realizar lo mismo.

La orden ((...)) también se puede utilizar en sentencias condicionales, ya que su código de retorno es 0 o 1 dependiendo de si la condición es cierta o falsa:

 if ((VAR == Y * 3 + X * 2))
 then
         echo Si
 fi
 
 ((Z > 23)) && echo Si

La orden ((...)) soporta los siguientes operadores relacionales: '==', '!=', '>', '<', '>=', y '<='.

Un proceso Bash no puede realizar cálculos en coma flotante. Los únicos intérpretes Unix capaces de esto son Korn Shell (versión de 1993) y zsh (a partir de la versión 4.0).
Redirecciones de entrada/salida

La sintaxis de Bash permite diferentes formas de redirección de entrada/salida de las que el intérprete Bourne tradicional carece. Bash puede redirigir la salida estándar y los flujos de error estándar a la vez utilizando la sintaxis:

 orden >& archivo

que es más simple que teclear la orden Bourne equivalente, "orden > archivo 2>&1". Desde la versión 2.05b, Bash puede redirigir la entrada estándar desde una cadena utilizando la siguiente sintaxis (denominada "here strings"):

 orden <<< "cadena a leer como entrada estándar"

Si la cadena contiene espacios en blanco, deben utilizarse comillas.

Ejemplo: Redirige la salida estándar a un archivo, escribe datos, cierra el archivo y reinicia stdout

 # hace que el descriptor de archivo 6 sea una copia de stdout (descriptor archivo 1)
 exec 6>&1
 # abre el archivo "test.data" para escritura
 exec 1>test.data
 # genera algún contenido
 echo "data:data:data"
 # recupera stdout original, al hacer que sea una copia del descriptor de archivo 6
 exec 1>&6
 # cierra el descriptor de archivo 6
 exec 6>&-

Abre y cierra archivos

 # abre el archivo test.data para lectura
 exec 6<test.data
 # lee hasta el final del archivo
 while read -u 6 dta
 do
   echo "$dta" 
 done
 # cierra el archivo test.data
 exec 6<&-

Captura la salida de órdenes externas

  # ejecuta 'find' y guarda los resultados en VAR
  # busca nombres de archivos que terminan con la letra "h"
  VAR=$(find . -name "*h")

Expresiones regulares

Los procesos Bash 3.0 soportan emparejamiento de expresiones regulares utilizando la siguiente sintaxis, reminiscente de Perl:

[[ string =~ regex]]

La sintaxis de expresiones regulares es la misma que documenta la página de manual regex(3). El estado de salida de la orden anterior es 0 si la cadena concuerda con la expresión regular, y 1 si no coinciden. En las expresiones regulares puede accederse a las partes delimitadas por paréntesis, utilizando la variable shell BASH_REMATCH, de la siguiente manera:

 if [[ foobarbletch =~ 'foo(bar)bl(.*)']] 
 then
         echo The regex matches!
         echo $BASH_REMATCH      -- outputs: foobarbletch
         echo ${BASH_REMATCH[1]} -- outputs: bar
         echo ${BASH_REMATCH[2]} -- outputs: etch
 fi

Esta sintaxis proporciona un rendimiento superior a lanzar un proceso separado para ejecutar una orden grep, porque el emparejamiento de las expresiones regulares tiene lugar en el propio proceso Bash. Si la expresión regular o la cadena contiene un espacio en blanco o un metacarácter del intérprete (como '*' o '?'), debe ser entrecomillada.
Escape con contrabarra

Las palabras con la forma $'string' se tratan de un modo especial. Estas palabras se expanden a string, con los caracteres escapados por la contrabarra reemplazados según especifica el lenguaje de programación C. Las secuencias de escape con contrabarra, se decodifican del siguiente modo:
Escapes con contrabarra Backslash
Escape 	Se expande a...
\b 	Un carácter de retroceso
\e 	Un carácter de escape
\f 	Un carácter de alimentación de línea (form feed)
\n 	Un carácter de nueva línea
\r 	Un carácter de retorno de carro
\t 	Un tabulador horizontal
\v 	Un tabulador vertical
\\ 	Un carácter contrabarra
\' 	Un carácter de comilla simple
\nnn 	El carácter de 8 bits cuyo valor es el número octal nnn (de uno a tres dígitos)
\xHH 	El carácter de 8 bits cuyo valor es el número hexadecimal HH (uno o dos dígitos hexadecimales)
\cx 	Un carácter control-X

El resultado expandido se encuentra entrecomillado con comilla simple, como si el signo $ no estuviese presente.

Una cadena entrecomillada con comillas dobles precedida por un signo $ ($"...") será traducida de acuerdo a la localización actual. Si fuese C o POSIX, se ignora el símbolo $. Si la cadena es traducida y reemplazada, el reemplazo estará entrecomillado por comilla doble.
Guiones de inicio de Bash

Cuando Bash arranca, ejecuta las órdenes que se encuentran en diferentes guiones.

Cuando se invoca a Bash como un intérprete interactivo para el inicio de una sesión (login shell), o como un intérprete no interactivo con la opción --login, en primer lugar lee y ejecuta órdenes desde el archivo /etc/profile, si existe. Después, busca ~/.bash_profile, ~/.bash_login, y ~/.profile, en este orden, y lee y ejecuta las órdenes desde el primero que existe y es legible. La opción --noprofile puede utilizarse al comenzar un nuevo intérprete para inhibir este comportamiento.

Cuando una sesión del intérprete finaliza, Bash lee y ejecuta las órdenes de ~/.bash_logout, si existe.

Cuando un intérprete interactivo que no es un login shell arranca, Bash lee y ejecuta órdenes desde ~/.bashrc, si existiese. Esto puede evitarse utilizando la opción --norc. La opción --rcfile archivo forzará a Bash a leer y ejecutar órdenes desde archivo en lugar de ~/.bashrc.

Cuando Bash arranca de un modo no interactivo, por ejemplo para ejecutar un guion de consola diferente, busca la variable de entorno BASH_ENV, si existe expande su valor, y lo utiliza como el nombre del archivo para leer y ejecutar. Bash se comporta como si se ejecutase la siguiente orden:

 if [ -n "$BASH_ENV" ]; then . "$BASH_ENV"; fi

pero el valor de la variable PATH no se utiliza para buscar el archivo.

Si se invoca a Bash con el nombre sh, intenta replicar el comportamiento de las versiones antiguas de sh, a la vez que se mantiene la conformidad con el estándar POSIX. Cuando se invoca como un inicio de sesión interactivo, o un intérprete no interactivo con la opción --login, primero intenta leer y ejecutar órdenes desde /etc/profile y ~/.profile, en este orden. La opción --noprofile puede utilizarse para evitar este comportamiento.

Cuando se invoca como un inicio de sesión interactivo con el nombre sh, Bash busca la variable ENV, si está definida expande su valor, y utiliza el valor expandido como el nombre de un archivo para leer y ejecutar. Como un intérprete invocado como sh no intenta leer y ejecutar órdenes desde ningún otro archivo de arranque, y la opción --rcfile no tiene efecto. Un intérprete no interactivo invocado con el nombre sh no intenta leer ningún otro archivo de arranque. Cuando se invoca como sh, Bash entra en el modo posix después de leer los archivos de inicio.

Cuando se inicia Bash en el modo POSIX, por ejemplo con la opción --posix, sigue el estándar POSIX para los archivos de inicio. En este modo, los intérpretes interactivos expanden la variable ENV y se leen, y ejecutan, las órdenes desde el archivo cuyo nombre es el valor de la variable expandida. No se lee ningún otro archivo de arranque.

Bash intenta determinar cuando está siendo ejecutado por un demonio de intérprete remoto, normalmente rshd. Si Bash determina que está siendo ejecutado por rshd, lee y ejecuta órdenes desde ~/.bashrc, si este archivo existe y es legible. No hará esto si se invoca como sh. La opción --norc puede utilizarse para evitar este comportamiento, y la opción --rcfile puede utilizarse para forzar a leer otro archivo, pero rshd normalmente no invoca al shell con estas opciones o permite que sean especificadas.
Bashismo

Se llama bashismo al uso de características de Bash que no están contempladas en las especificaciones POSIX para los intérpretes de órdenes. En general, se recomienda evitarlas, para permitir la portabilidad de guiones a otros sistemas operativos.31​32​
Véase también

    Comandos Bash
    Bourne Shell
    Shell (informática)
    GNU/Linux
    Shell de Unix

Referencias

Richard Stallman (forwarded with comments by Chet Ramey) (10 de febrero de 1988). "GNU + BSD = ?". (Google Groups). URL accedida el 22 de marzo de 2011.
Hamilton, Naomi (30 de mayo de 2008), «The A-Z of Programming Languages: BASH/Bourne-Again Shell», Computerworld: 2, archivado desde el original el 6 de julio de 2011, consultado el 21 de marzo de 2011, «When Richard Stallman decided to create a full replacement for the then-encumbered Unix systems, he knew that he would eventually have to have replacements for all of the common utilities, especially the standard shell, and those replacements would have to have acceptable licensing.».
«Google Groups». groups.google.com. Consultado el 28 de diciembre de 2019.
«macOS Catalina utilizará zsh en lugar de bash como la shell por defecto.». Genbeta. 4 de junio de 2019. Consultado el 13 de julio de 2020.
«Do you want to run Linux on Windows 10? Use WSL, here's how.». Windows Central (en inglés). 9 de diciembre de 2019. Consultado el 28 de diciembre de 2019.
«User Environment Feature Changes - Transitioning From Oracle Solaris 10 to Oracle Solaris 11». docs.oracle.com. Consultado el 28 de diciembre de 2019.
«I Almost Get a Linux Editor and Compiler». Dr. Dobb's. Consultado el 28 de diciembre de 2019.
«"Bourne Again Shell" is a play on the name Bourne Shell, which was the usual shell on Unix."».
«Wayback Machine». web.archive.org. 9 de marzo de 2011. Archivado desde el original el 9 de marzo de 2011. Consultado el 28 de diciembre de 2019.
«oss-sec: Re: Shellshock timeline (was: CVE-2014-6271: remote code execution through bash)». seclists.org. Consultado el 28 de diciembre de 2019.
at 20:27, John Leyden 24 Sep 2014. «Patch Bash NOW: 'Shellshock' bug blasts OS X, Linux systems wide open». www.theregister.co.uk (en inglés). Consultado el 28 de diciembre de 2019.
Perlroth, Nicole (25 de septiembre de 2014). «Security Experts Expect ‘Shellshock’ Software Bug in Bash to Be Significant». The New York Times (en inglés estadounidense). ISSN 0362-4331. Consultado el 28 de diciembre de 2019.
«Hackers jump on the Shellshock Bash bandwagon | ZDNet». web.archive.org. 14 de mayo de 2016. Archivado desde el original el 14 de mayo de 2016. Consultado el 28 de diciembre de 2019.
«shell.c».
«Grupos de Google». groups.google.com. Consultado el 28 de diciembre de 2019.
«"About the GNU Proyect"».
«Grupos de Google». groups.google.com. Consultado el 28 de diciembre de 2019.
«What's GNU: Bash—The GNU Shell | Linux Journal». www.linuxjournal.com. Consultado el 28 de diciembre de 2019.
«2010-10-31 Chet Ramey Early Bash Dates | Intellectual Works | Computing». Scribd. Consultado el 28 de diciembre de 2019.
«Google Groups». groups.google.com. Consultado el 28 de diciembre de 2019.
«Google Groups». groups.google.com. Consultado el 28 de diciembre de 2019.
«Google Groups». groups.google.com. Consultado el 28 de diciembre de 2019.
Bresnahan, Christine; Blum, Richard (28 de abril de 2015). CompTIA Linux+ Powered by Linux Professional Institute Study Guide: Exam LX0-103 and Exam LX0-104 (en inglés). John Wiley & Sons. ISBN 978-1-119-02122-3. Consultado el 28 de diciembre de 2019.
Danesh, Arman; Jang, Michael (14 de julio de 2006). MasteringÂ Linux (en inglés). John Wiley & Sons. ISBN 978-0-7821-5277-7. Consultado el 28 de diciembre de 2019.
Foster-Johnson, Eric; Welch, John C.; Anderson, Micah (1 de abril de 2005). Beginning Shell Scripting (en inglés). John Wiley & Sons. ISBN 978-0-7645-9791-6. Consultado el 28 de diciembre de 2019.
«Bash (Unix shell)» |url= incorrecta con autorreferencia (ayuda). Wikipedia (en inglés). 27 de diciembre de 2019. Consultado el 28 de diciembre de 2019.
Warren, Tom (4 de junio de 2019). «Apple replaces bash with zsh as the default shell in macOS Catalina». The Verge (en inglés). Consultado el 28 de diciembre de 2019.
«Linux bash exit status and how to set exit status in bash - Techolac». Techolac - Computer Technology News (en inglés estadounidense). 10 de junio de 2019. Archivado desde el original el 21 de junio de 2019. Consultado el 28 de diciembre de 2019.
«CVE - CVE-2014-6277». cve.mitre.org. Consultado el 28 de diciembre de 2019.
«Bash specially-crafted environment variables code injection attack». Red Hat Customer Portal (en inglés). Consultado el 28 de diciembre de 2019.
«bashism». yourdictionary (en inglés). Consultado el 21 de mayo de 2020.

    «bashism». wordnik (en inglés). Consultado el 21 de mayo de 2020.

Enlaces externos

    Wikimedia Commons alberga una categoría multimedia sobre Bash.
    Wikilibros alberga un libro o manual sobre Bash.
    Página web oficial
    Lista de órdenes
    Bash home page
    bash(1): GNU Bourne-Again SHell – Comandos generales en el Manual de Ubuntu
    Bash FAQ
    Bash 3.0 Announcement
    The GNU Bash Reference Manual, (HTML versión) by Chet Ramey and Brian Fox, ISBN 0-9541617-7-7

Guías Bash de Linux Documentation Project:

    Programación Bash
    Bash Guide for Beginners
    BASH Programming - Introduction HOW-TO
    Advanced Bash-Scripting Guide

Otras guías y tutoriales:

    About Shells
    Beginners Bash Tutorial
    Advancing in the Bash Shell tutorial
    Linux Know-How including the Bash Guide for Beginners
    Introducción y ejemplos varios /básicos/medios/avanzados en Bash script
