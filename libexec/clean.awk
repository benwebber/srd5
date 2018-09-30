#!/usr/bin/env gawk -f

{
  # Remove ^I^M sequence
  gsub("\t\r", "")
  # Remove trailing space
  gsub(/\s+$/, "")
  # Remove strange hyphen sequence
  gsub(/\-\W+/, "-")
  # Convert bullets to asterisks
  gsub(/•/, "\t* ")
  # Collapse all whitespace
  gsub(/\s+/, " ")
  # Indent paragraphs
  gsub(/^\s+/, "\t")
  print
}
