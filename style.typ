/// Verde GDD
#let green_gdd = rgb(121, 161, 0)
#let green_gdd_dark = green_gdd.darken(50%)
#let green_gdd_light = green_gdd.lighten(50%)

#let style(body) = {
  // Página y documento
  set document(title: [Guía para escritura de GDDs])
  set page(
    background: image("assets/logo_green.png", width: 60%),
    footer: align(right, context counter(page).display("1 de 1", both: true)),
  )

  // Texto
  set text(font: "Ancizar Sans", lang: "es")
  show raw: set text(font: "Google Sans Code NF")

  // Encabezados
  show heading: set text(fill: green_gdd_dark)
  show title: set text(fill: green_gdd_dark)
  show title: set align(center)

  show title: set text(size: 1.2em)
  show heading.where(level: 1): set text(size: 1.2em)
  show heading.where(level: 2): set text(size: 1.15em)
  show heading.where(level: 3): set text(size: 1.1em)

  // Espaciado
  show heading: set block(below: 1em, above: 1.5em)

  // Elementos varios
  show link: set text(fill: green_gdd)
  show divider: set line(stroke: green_gdd_dark + 1pt)

  body
}

/// Recuadro sólido
#let highlight(body) = rect(
  inset: 1em,
  radius: 1em,
  fill: green_gdd.transparentize(90%),
  width: 100%,
  body,
)

/// Ejemplo
#let example(body, source: "") = highlight[
  #box(
    fill: green_gdd.transparentize(30%),
    radius: 50%,
    inset: 0.1em,
    outset: 0.5em,
  )[*Ejemplo*]
  #h(1em)
  #if source != "" {
    set text(fill: luma(25%))
    source
  }

  #body
]

/// Capsula
#let optional-for-newbies = box(
  fill: green_gdd_light,
  inset: 0.2em,
  radius: 50%,
  text(size: 0.7em, fill: green_gdd_dark, "Opcional para nuevos proyectos"),
)

/// Título opcional para nuevos proyectos
#let optional-heading(title) = {
  optional-for-newbies
  h(8pt)
  heading(level: 1, outlined: false, title)
}
