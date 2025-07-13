#import "@preview/quick-maths:0.2.1": shorthands
#import "@preview/equate:0.3.2": equate

#let empty = math.diameter
#let aa = math.frak([a])
#let bb = math.frak([b])
#let cc = math.frak([c])
#let pp = math.frak([p])
#let mm = math.frak([m])
#let hh = h(.5em)
#let gen(it) = $lr(angle.l it angle.r)$
#let div = $#h(1mm)op(dots.v)#h(1mm)$
#let coker = math.op([coker], limits: false)
#let supp = math.op([supp], limits: false)

#let formatting = doc => {
  set page("a4", margin: 0.5in, numbering: "1")
  set text(12pt, lang: "ru")
  set heading(numbering: "1.1.")
  show heading.where(level:1): it => {
    counter(math.equation).update(0)
    it
  }
  set enum(numbering: "(1)")
  set math.equation(numbering: "(1)", supplement: none)

  show: equate.with(sub-numbering: false, number-mode: "label")
  show: shorthands.with(
    ($>=$, math.gt.eq.slant),
    ($<=$, math.lt.eq.slant),
  )

  show outline.entry.where(level: 1): it => {
    v(1em, weak: true)
    strong(it)
  }
  set outline(indent: auto)

  // show math.equation: box

  doc
}

#let head(str) = align(center)[
  #text(18pt)[*#str*]\
  #text(14pt)[_Коммутативная алгебра, 2025_]
]

#let problemlist(title) = doc => {
  show: formatting
  set page(background: image(
    "pictures/troubles-faded.jpg",
    width: 100%,
    height: 100%,
    fit: "stretch"
  ))
  set enum(numbering: n => [ #n. ])

  head([ #title ])
  doc
}
