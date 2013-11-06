# Fichero con las espectativas de la clase Matriz
# Cualquier cambio hace que se ejecute guard

require './lib/matriz.rb'

describe "Matriz" do
	
   @matriz1
   @matriz2
   @matriz3	
   describe "Metodos para la comprobación de la inicialización y asignación de valores" do
   
      before :each do
         @matriz1 = Matriz.new(2,3) 
         @matriz2 = Matriz.new(2,3)
         @matriz3 = Matriz.new(3,2)     
      end    
   
      it "Se inicializa correctamente la matriz " do # Comprobamos que todas las casillas estan a cero cuando se crea el objeto
	     for i in (0...2)
		    for j in (0...3)
		       @matriz1.matrix[i][j].should == 0
		    end
	     end
      end

      it "Asignamos valores a posiciones de la matriz" do
         @matriz1.set(0,0,3)
         @matriz1.set(0,1,4)
         @matriz1.matrix[0][0].should == 3;
         @matriz1.matrix[0][1].should == 4;
      end
   end
   
   
   describe "Metodos para el cambio de formato a string y a flotante" do

	  before :each do
         @matriz1 = Matriz.new(2,3) 
         @matriz1.set(0,0,3)
      end 
      
      it "La matriz se muestra en formato string" do
         @matriz1.to_s.should == "{{3,0,0}{0,0,0}}"
      end
   
      it "La matriz se muestra en formato flotante" do
         @matriz1.to_f.should == "{{3.0,0.0,0.0}{0.0,0.0,0.0}}"
      end
   
   end

   describe "Metodo para la negacion" do

      before :each do
         @matriz1 = Matriz.new(2,3) 
         @matriz2 = Matriz.new(2,3)
         @matriz1.set(0,0,3)  
      end 
      
      it "La matriz negada con el simbolo -" do
         @matriz2 = (-@matriz1)
         @matriz2.to_s.should == "{{-3,0,0}{0,0,0}}" 
      end

   end

   describe "Metodos para la comprobacion de operaciones entre matrices" do
  
      before :each do
         @matriz1 = Matriz.new(2,2) 
         @matriz2 = Matriz.new(2,2)  
         @matriz3 = Matriz.new(2,2)
         @matriz1.set(0,0,3)
         @matriz1.set(0,1,4)
         @matriz2.set(0,0,2)
         @matriz2.set(0,1,1)
      end 
      
      it "Se multiplica un numero por todos los elementos de la matriz" do
         @matriz2 = (@matriz1 * 2)
         @matriz2.to_s.should == "{{6,8}{0,0}}"
      end
  
      it "Se suman las matrices" do
         @matriz3 = (@matriz1 + @matriz2)
         @matriz3.to_s.should == "{{5,4}{0,0}}"
      end
 
      it "Se restan las matrices" do
         @matriz3 = (@matriz1 - @matriz2)
         @matriz3.to_s.should == "{{1,4}{0,0}}"
      end
      
      it "Se multiplican las mastrices" do
         @matriz3 = (@matriz1 * @matriz2)
         @matriz3.to_s.should == "{{5,4}{0,0}}"
      end
   end
end



