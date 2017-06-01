#
#   @author Michel Maes Bermejo
#
#   This script builds a document bibliography
#
#   You should write references as:
#
#       Google<<http://google.com>>
#       ...
#       Wikipedia<<https://wikipedia.org>>
#       ...
#       :bibliography:
#
#   And put :bibliography: where do you want to render de bibliography
#   in your asciidoc file and then execute the script
#
#       ruby buildBibliography.rb myDoc.adoc myNewDoc.adoc
#
#   In myNewDoc.adoc, will be rendered:
#
#       Google<<1>>
#       ...
#       Wikipedia<<2>>
#       ...
#       [[[1]]] http://google.es
#       [[[2]]] https://wikipedia.org
#

if ARGV.length < 2 then
  puts "Use: ruby buildBibliography.rb <inputFile> <outputFile>"
else
  data = File.read(ARGV[0])
  cont = 1
  bibliography = ""

  ( data.to_enum(:scan, /<<([^<>])+>>/).map { Regexp.last_match } )
  .each{ |ref|
    data.gsub!(ref[0], "<<#{cont}>>")
    bibliography += "[[[#{cont}]]] "+ ref[0][2..-3] + "\n\n"
    cont = cont + 1
  }

  data.gsub!(/:bibliography:/, bibliography)

  File.write(ARGV[1], data)

end
