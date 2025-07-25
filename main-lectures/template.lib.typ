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
#let ot = math.times.circle

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

#let problem-weights = (
  (cost: 3, dur: 2),
  (cost: 5, dur: 3),
  (cost: 5, dur: 3),
  (cost: 5, dur: 4),
  (cost: 5, dur: 4),
  (cost: 3, dur: 5),
  (cost: 7, dur: 6),
  (cost: 7, dur: 7),
  (cost: 7, dur: 9),
  (cost: 11, dur: 12),
  (cost: 3, dur: 12),
  (cost: 5, dur: 13),
  (cost: 7, dur: 13),
  (cost: 7, dur: 14),
  (cost: 3, dur: 15),
  (cost: 5, dur: 15),
  (cost: 7, dur: 16),
  (cost: 11, dur: 17),
  (cost: 11, dur: 17),
  (cost: 9, dur: 17),
)

#let hint(content) = box(
  stroke: 0.5pt,
  width: 100%,
  inset: 0.25cm,
  radius: 0.2cm,
  content
)

#let info(n) = [
  #h(1fr)
  _(*#problem-weights.at(n - 1).at("cost")* кг., годно в теч. *#problem-weights.at(n - 1).at("dur")* дней)_
]

#let problemlist(title) = doc => {
  show: formatting
  set page(numbering: none, background: image(
    "pictures/troubles-faded.jpg",
    width: 100%,
    height: 100%,
    fit: "stretch"
  ))
  set enum(numbering: n => [
    #h(-6mm)
    _(#problem-weights.at(n - 1).at("cost"),
      #problem-weights.at(n - 1).at("dur"))_
    #h(1mm)
    *#n.*
  ])

  head([ #title ])
  doc
}
