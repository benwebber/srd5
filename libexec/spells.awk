#!/usr/bin/env gawk -f

# Fold Casting Time lines.
/Casting Time/ {
  cast = $0
  next
}

! /^Range/ {
  if (cast) {
    cast = cast " " $0
    next
  }
}

/Range/ {
  print cast
  cast = ""
}

# Fold Components lines. Match /Component/ because Contagion contains a typo.
/Component/ {
  materials = $0
  next
}

! /^Duration/ {
  if (materials) {
    materials = materials " " $0
    next
  }
}

/Duration/ {
  print materials
  materials = ""
}

{ print }
