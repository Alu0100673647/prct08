# Practica 8 Lenguajes y Paradigmas de la programación usando #desarrollo dirigido por pruebas (Test Driven Development - TDD) con #la herramienta Rspec.
# Pedro Javier Núñez Rodríguez
# Constanza Leon Baritussio
# 

class Matriz
  include Comparable

  attr_reader :n,:m,:fa, :fb, :fc, :fd, :A, :B, :C, :D

  def initialize(n,m,fa,fb,fc,fd,A,B,C,D)

   @n = n
   @m = m
   @fa = []
   @fb = []
   @fc = []
   @fd = []
   @A = []
   @B = []
   @C = []
   @D = []
  end

  def tam_matriz(n,m)
	print ' introduzca las filas de las matrices: '
	n = gets.chomp.to_i

	print ' introduzca las columnas de la matrices: '
	m = gets.chomp.to_i

	for i in 0...n
	for j in 0...m
		fb[j] = rand(100)
		fa[j] = rand(100)
		fc[j] = 0
		fd[j] = 0
	end
	A << fa;
	B << fb;
	C << fc;
	D << fd;

   end

  def to_s
  end

  def to_i
  end	

  def matriz_por_un_escalar
  end

  def opuesto_matriz
  end

  def multiplicar
  end

  def sumar
  end

  def dividir
  end

  def restar
  end

  def <=>
  end
  
end
