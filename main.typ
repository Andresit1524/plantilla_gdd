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
La estructura que recomendamos consiste en 5 secciones: resumen, desarrollo, diseño, contenido y referencias. Cada una busca resolver un frente diferente y generar una visión completa sobre tu proyecto. Es importante destacar que un GDD *no es documentación*, por lo tanto, los detalles finos y de implementación no van en el documento. Un GDD es para características esenciales del proyecto.

== 1. Resumen

=== Sinopsis
Un resumen en 1 o 2 frases que explique porque tu juego es divertido o interesante. Como si lo fueras a poner en la descripción para Steam o explicarlo a un amigo, por ejemplo.

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
¿Qué herramientas, apps, o software será utilizado para producir el juego? Estos abarcan:

- Motor de videojuegos y lenguajes de programación
- IDE/Editor de texto y código
- Gestión de código y recursos
- Modelado 3D
- Ilustración
- Herramientas de productividad
- Editores de audio
- Librerías o software propio, si es el caso

Existen algunas obviedades que puedes omitir para esta sección:

- Git para control de versiones. Es menos obvio usar otra cosa, eso sí
- WhatsApp y Discord para comunicaciones. Es el canal que todos usamos

#example(source: [Slay the Spire 2])[
  Slay the Spire 2 fue hecho en Unity + C\# y luego migrado a Godot + C\#. También se usaron librerías propietarias de Mega Crit. No parece haber mejor información sobre el resto de herramientas usadas, y de hecho puedes elegir las que quieras.
]

=== Plataformas objetivo
¿En qué plataformas y dispositivos estará disponible el juego? Cada plataforma es un mercado, un público objetivo, unas necesidades a resolver y un estilo que seguir, todas completamente diferentes, por lo que influye mucho en lo que tu juego puede ser y tener. Por ejemplo un juego competitivo o de paga seguramente no es adecuado para teléfonos, mientras que uno hipercasual no es muy adecuado para consolas. Cada plataforma es un paradigma de juego diferente.

#example(source: [Undertale])[
  Undertale fue lanzado oficiales para:

  - Windows
  - macOS
  - Linux (SteamOS)
  - Nintendo Switch y Switch 2
  - Steam Deck
  - Xbox One y Series X y S
  - Playstation 4 y Vita
]

#pagebreak()

=== Flujo de trabajo
¿Cual es la forma en la que van a trabajar como equipo/individuo? ¿Cuales son sus prioridades? ¿Pruebas rápidas, feedback, repartición de roles? Definir esto les puede despejar dudas para evitar atorarse como grupo.

// TODO: usar 'Mecha Chamaleon' si es más pertinente
#example(source: [Deltarune])[
  Deltarune es desarrollado principalmente sobre el prototipado e ideas de Toby Fox, refinado por Temmie Chang e implementado/asistido por Toby más otros desarrolladores, algunos de #link("https://8-4.jp/")[8-4] para la versión japonesa y de consolas.

  Por lo que conocemos, parece involucrar un trabajo fino y directo hacia el contenido final. Sin iteración masiva, o feedback de su comunidad.
]

== 3. Diseño

=== Pilares de diseño
¿Qué rige el desarrollo de tu juego? Como si fuesen mandamientos para el grupo, los pilares de diseño son principios simples y claros que deben dirigir tu desarrollo. A diferencia de el contenido, los pilares de diseño suelen ser no cambiar durante todo el desarrollo, y plasman las ambiciones, filosofía y necesidades de tu equipo y el proyecto.

Los pilares de diseño son útiles para contrastar y dirigir decisiones, evitando perder el rumbo o arruinar el proyecto con ideas incompatibles. Definirlos al principio también aterriza los objetivos del grupo y la forma en la que trabajarán.

Los pilares de diseño pueden ser de dos tipos: prácticos, para decidir como debe ser la jugabilidad y el contenido; y filosóficos, para decidir como el equipo debe pensar sobre tu proyecto. Se recomiendan entre 3 y 5 principios bien explicados, de cualquier tipo o combinación de ellos.

// TODO: busca fuentes para este ejemplo
#example(source: [Hades])[
  Hades, de Supergiant Games, se guía por la fusión entre los roguelikes implacables con la narrativa progresiva y dinámica. Sus principios son principalmente prácticos:

  - Usar el fracaso como motor de la narrativa
  - Minimizar el contenido repetitivo
  - Combate rápido, frenético y súper dinámico
  - Aspecto eléctrico y dinámico
  - Música adaptativa e inmersiva
]

#pagebreak()

=== Puntos de venta únicos (USPs)
Un punto de venta único (_Unique Selling Points_, USP) es un elemento de tu juego que lo hace único. Plantear estos puntos para tu juego no es obligatorio, pero puede esencial para destacar y darle personalizad a tu proyecto.

Antes de plasmarlos, evita hacer plagio y consulta el mercado actual en busqueda de novedades. También es relevante que los USPs tengan algo de tu estilo o personalidad, así puedes interiorizar mejor tu idea y facilitar el ejercicio de la creatividad.

#example(source: [Índigo Park])[
  Índigo Park es que es un juego de _horror de mascotas_ (como FNAF) desarrollado por _UniqueGeese_. Uno de sus USPs es que tienes a una mascota de tu lado que guía tu experiencia, Rambley; además, tiene una historia relevante para el juego y te la cuenta él con una ternura constrastante. Esto subvierte su género, que suele tener a todos los personajes como enemigos, sin contexto y sin mayor atractivo que los _screamers_ o un lore cuestionable.
]

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
