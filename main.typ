#import "/style.typ": *
#show: style
#title()

= ¿Porque pedimos un GDD monolítico?
Un GDD monolítico es el que se escribe en un sólo documento exhaustivo. Es extenso, poco atractivo de leer, se desactualiza y no se adapta al proceso creativo de un proyecto. Entonces ¿por qué lo usamos?

El propósito principal de seguir esta estructura es porque es perfecta para *argumentar tu proyecto*. Te obliga a responder preguntas mientras el GDD guarda las respuestas. Tu GDD no tendrá 100 páginas, quizás unas 20 o 50 como máximo. Eso es perfectamente legible en la práctica, así que no es un archivo infinito e inútil; es un documento accesible y orientado a la planificación.

En todo caso es recomendable solo hacer un GDD monolítico dentro de un tiempo y extensión razonables, y antes de empezar el proyecto. Si inicias el desarrollo, escribe tu GDD en un formato colaborativo que te permita iterar y adaptar el proyecto a sus avances.

= Estructura para GDDs
#highlight[
  #columns(2)[
    #set text(fill: red.darken(20%))
    == Estructura vieja
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
    == Estructura nueva
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
      - Mundo o escenario
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

#pagebreak()

= Bibliografía
- Estructura profesional por UDIT. https://www.udit.es/el-manifiesto-del-game-designer-por-que-tu-juego-necesita-un-game-design-document-gdd-y-como-crearlo-como-los-profesionales/
- Tutorial por Alva Mayo. https://youtu.be/ZKo4uRTxdCA
