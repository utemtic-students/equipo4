#!/usr/bin/env ruby
require 'pdf/reader'
# Recorremos los argumentos pasados al programa
ARGV.each do |archivo|
     PDF::Reader.open(archivo) do |lector| # abrimos el archivo como pdf
          puts "Convirtiendo: #{archivo}"
          numero_pagina = 0 # un contador de paginas
          txt = lector.pages.map do |pagina| # leemos las paginas del archivo
               numero_pagina += 1
               begin
                    print "Convirtiendo Pagina #{numero_pagina}/#{lector.page_count}\r"
                    pagina.text
               rescue
                    puts "Error: La pagina #{numero_pagina}/#{lector.page_count} no se pudo convertir"
                    ''
               end
          end
          puts "\nGuardando el archivo de texto"
          File.write archivo+'.txt', txt.join("\n") # se guarda el archivo de texto
     end
end.empty? and begin
     # si no se especifico ningun archivo, le mostramos al usuario como usar el programa
     puts 'Modo de uso: '
     puts 'ruby pdfatexto.rb archivo.pdf [otro_archivo.pdf]'
end