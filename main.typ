#import "/style.typ": *
#show: style
#title()

= ¿Qué es un GDD?
Un GDD (_Game Design Document_) es un documento hecho por un desarrollador o equipo de desarrolladores para describir una idea de videojuego. Su objetivo principal es comunicar la visión del proyecto a lo largo de todo el equipo, aterrizar ideas y presentar el proyecto a terceros de manera sencilla y fiable. No confundir GDD como documento con el nombre del grupo estudiantil, que también es GDD.

Hay dos métodos para hacer un GDD:

1. *Monolítico:* Un documento tradicional, hecho en un procesador de texto. Son enciclopédicos, extensos y diseñados para la publicación en internet y la lectura intensiva. Suelen escribirse durante o después del desarrollo, y no es extraño que sean escritos por terceros y no por los propios desarrolladores.
2. *Vivo o dinámico:* Un documento no lineal hecho en una herramienta de colaboración (HackMD, Notion, Collanote, etc.), que se actualiza junto con el desarrollo y lo asiste. Son mas adecuados a largo plazo y se acompañan de vínculos, documentos más cortos y contenidos multimedia. Se hacen al inicio o durante el desarrollo por parte de los desarrolladores y no suelen ser adecuados para publicación, pero si para consulta. *No confundir con la documentación*.

Nosotros usamos ambas formas, y ambas son útiles. Pero para el *checkpoint 1* pedimos un GDD monolítico. El GDD vivo se escribe durante el desarrollo y no sigue ninguna estructura específica, aunque esta guía es igual de adecuada para ese tipo de documentos.

== ¿Porque pedimos un GDD monolítico?
Un GDD monolítico es el que se escribe en un sólo documento exhaustivo, es extenso, poco atractivo de leer, se desactualiza y no se adapta al proceso creativo de un proyecto. Entonces ¿por qué lo usamos?

El propósito principal de seguir esta estructura es porque es perfecta para *argumentar tu proyecto*. Te obliga a responder preguntas mientras el GDD guarda las respuestas. Tu documento no quedará de 100 páginas, quizás unas 20 o 50 como máximo. Eso es perfectamente legible en la práctica, así que no es un archivo infinito e inútil; es un documento accesible y orientado a la planificación.

En todo caso es recomendable solo hacer un GDD monolítico dentro de un tiempo y extensión razonables, y antes de empezar el proyecto. Si inicias el desarrollo, pasa tu GDD a un formato dinámico que te permita iterarlo y adaptarlo a tus avances.

== Estructura para GDDs
#highlight[
  #columns(2)[
    #set text(fill: red.darken(20%))
    === Estructura vieja
    1. *Datos generales*
      - Resumen/Gancho
      - Género
      - Audiencia objetivo
      - Plataformas
      - Herramientas
    + *Diseño general*
      - Experiencia del jugador
      - Pilares de diseño
      - Puntos de venta únicos (USPs)
    + *Diseño detallado*
      - Mecánicas
      - Estilo artístico
      - Escenario/Mundo
      - Historia
      - Interfaz
      - Música/sonido
      - Game loop
      - Progresión
      - Sistemas
    + *Referencias* \
    + *Anexos*

    #colbreak()

    #set text(fill: black)
    === Estructura nueva
    1. *Resumen*
      - Sinopsis
      - Género
      - Público objetivo
    + *Desarrollo*
      - Herramientas a usar
      - Plataformas objetivo
      - Flujo de trabajo
    + *Diseño*
      - Pilares de diseño
      - Puntos de venta únicos (USPs)
      - Experiencia del jugador
      - Game loop
      - Progresión
      - Sistemas
    + *Contenido*
      - Mecánicas
      - Estilo artístico
      - Música y sonido
      - Mundo y escenarios
      - Historia
      - Interfaz
    + *Referencias*
      - Inspiraciones
      - Contenido preliminar
      - Anexos
  ]
]

=== ¿Y lo que falta?
- Mecánicas principales vs secundarias: va en *Mecánicas*
- Game feel: va en *Experiencia del jugador*
- Curva de dificultad y ritmo del juego: va en *Progresión*
- Recompensas y economía: va en *Sistemas*
- Estilo narrativo: va en *Mecánicas* o como explicación a lo largo del documento
- Personajes: van en la *Historia*
- Tutoriales o aprendizaje del jugador: va en *Experiencia del jugador*
- Flujo del usuario: va en *Interfaz* o se intuye del resto del documento
- Roadmap de desarrollo para el semestre: *no va en un GDD*
- Requerimientos técnicos para el juego: *dificil de dimensionar y poco relevante*
- Investigación de mercado: va como justificación/análisis en *Puntos de venta únicos*

// Estos sí faltan

// - Contenido planeado para MVP
// - Alcance planeado

Veremos más adelante que cosas sí van en el GDD, además de esto.

#pagebreak()

= Contenido de un GDD
En base a la estructura descrita antes, el contenido esperado para cada sección se describe a continuación. Es importante destacar que un GDD *no es documentación*, por lo tanto, los detalles e implementaciones del juego no van en el documento. Un GDD es para características esenciales del proyecto.

== 1. Resumen

=== Sinopsis
Un resumen en 1 o 2 frases que explique porque tu juego es divertido o interesante. Como si lo fueras a poner en la descripción para Steam, por ejemplo.

#example(source: [Expedition 33 en Steam])[
  _"Guía a la expedición 33 en su misión de acabar con la Pintora para que no vuelva a pintar la muerte. Explora un mundo inspirado en la Francia de la Belle Époque y lucha contra rivales únicos en este juego de rol por turnos con mecánicas en tiempo real."_
]

=== Género
¿Cuál es el género de tu videojuego? esto suele decidir directamente una gran cantidad de características y lo enmarca en un tipo de juego específico. En #link("https://en.wikipedia.org/wiki/List_of_video_game_genres")[Wikipedia (inglés)] encuentras una lista para que te guíes. Un juego puede tener más de un género a la vez.

#example(source: [Grand Theft Auto])[
  GTA V (y toda la saga _Grand Theft Auto_) es un juego de acción, aventura y mundo abierto. Es común que la acción y aventura vayan juntos, de hecho.
]

=== Público objetivo
Tu juego *jamás* será para todos. Definir que tipo de persona quieres que juege tu juego te ayudará a comprender que necesitas hacer. Describe motivaciones, gustos, edades, géneros, e incluso inspiraciones y características que puedan guiar a las personas indicadas a jugar tu juego.

Tu público objetivo no es estricto: técnicamente cualquiera puede jugar tu juego, pero no a todos les va a gustar. Esto último está fuera de tu público objetivo. Además, el público objetivo define claramente quienes no deberían jugar. Un juego +18 no debe ser jugado por menores de edad, mientras que un juego para preescolares es completamente inadecuado o irrelevante para adultos.

#example(source: [Minecraft])[
  Minecraft es uno de los videojuegos más universales de los tiempos modernos. Pero no le impide limitar su público objetivo a:

  - Mayores de 8 años (especialmente entre 12 y 24 años)
  - Personas que destacan por ser creativas y resilientes
  - Educadores y estudiantes
]

== 2. Desarrollo

=== Herramientas a usar

=== Plataformas objetivo

=== Flujo de trabajo

== 3. Diseño

=== Pilares de diseño

=== Puntos de venta únicos

=== Experiencia del jugador

=== Game loop

=== Progresión

=== Sistemas

== 4. Contenido

=== Mecánicas

=== Estilo artístico

=== Música y sonido

=== Mundo y escenarios

=== Historia

=== Interfaz

== 5. Referencias

=== Inspiraciones

=== Contenido preliminar

=== Anexos

#pagebreak()

= Bibliografía
- Estructura profesional de un GDD por UDIT. https://www.udit.es/el-manifiesto-del-game-designer-por-que-tu-juego-necesita-un-game-design-document-gdd-y-como-crearlo-como-los-profesionales/
- Tutorial por Alva Mayo. https://youtu.be/ZKo4uRTxdCA
- Documento de diseño de videojuegos - Wikipedia. https://es.wikipedia.org/wiki/Documento_de_dise%C3%B1o_de_videojuegos
