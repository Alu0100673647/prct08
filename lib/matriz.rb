# Practica 8 Lenguajes y Paradigmas de la programación usando #desarrollo dirigido por pruebas (Test Driven Development - TDD) con #la herramienta Rspec.
# Pedro Javier Núñez Rodríguez
# Constanza Leon Baritussio
# 

class Matriz
  
   include Comparable
   attr_accessor :matrix, :n, :m
   @matrix
   @n   # filas
   @m   # columnas
	
   def initialize(n,m)
      raise ArgumentError, 'Tamaño de matriz no valido' unless n.is_a? Integer and m.is_a? Integer and n > 0 and m > 0
	  @n = n 
	  @m = m
      @matrix=[]
      for i in (0...@n) 
         @matrix[i]=[]
         for j in (0...@m)
            @matrix[i][j] = 0
         end
      end
   end
 
   def set(i, j, valor)
      raise ArgumentError, 'Indice no valido' unless i.is_a? Integer and i >= 0 and i < @n
      raise ArgumentError, 'Indice no valido' unless j.is_a? Integer and j >= 0 and j < @m
      raise ArgumentError, 'Valor no numerico' unless valor.is_a? Integer 
      @matrix[i][j] = valor
   end
 
   def to_s
	  s = ""
	  s += "{"
      for i in (0...@n)
         s += "{"
         for j in (0...@m)
            if j == 0
               s += "#{@matrix[i][j]}"
            else
               s += ","
               s += "#{@matrix[i][j]}"
            end
         end
         s += "}"
      end
      s += "}"
      puts s
   end
  
   def to_f
      s = ""
	  s = "{"
      for i in (0...@n)
         s += "{"
         for j in (0...@m)
            if j == 0
               s += "#{@matrix[i][j].to_f}"
            else
               s += ","
               s += "#{@matrix[i][j].to_f}"
            end
         end
         s += "}"
      end
      s += "}"
      puts s
   end
   
end



