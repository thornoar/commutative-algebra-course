#import "@preview/quick-maths:0.2.1": shorthands
#import "@preview/equate:0.3.2": equate

#let empty = math.diameter
#let aa = math.frak([a])
#let bb = math.frak([b])
#let cc = math.frak([c])
#let pp = math.frak([p])
#let mm = math.frak([m])
#let hh = h(.5em)
#let gen(it) = $angle.l it angle.r$

#let formatting = doc => {
  set page("a4", margin: 0.5in, numbering: "- 1 -")
  set text(12pt, lang: "ru")
  set heading(numbering: "1.1.")
  set enum(numbering: "(1)")
  set math.equation(numbering: "(1)", supplement: none)

  show: equate.with(sub-numbering: false, number-mode: "label")

  doc
}

#let head(str) = align(center)[
  #text(18pt)[*#str*]\
  #text(14pt)[_Коммутативная алгебра, 2025_]
]
