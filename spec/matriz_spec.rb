# Fichero con las espectativas de la clase Matriz
# Cualquier cambio hace que se ejecute guard

require 'matriz'

describe "Metodos para la comprobación de la inicialización y asignación de valores" do
   
   before :each do
      @matriz1 = Matriz.new(2,3) 
      @matriz2 = Matriz.new(3,2)
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
      @matriz1.matrix[0][0].should == 3;
   end
end
  
describe "Metodos para el cambio de formato a string y a flotante" do

   it "La matriz se muestra en formato string" do
      @matriz1.to_s == "{{3,0,0}{0,0,0}}"
   end
   
   it "La matriz se muestra en formato flotante" do
      @matriz1.to_f == "{{3.0,0.0,0.0}{0.0,0.0,0.0}}"
   end
   
end

describe "Metodos para la comprobacion de operaciones entre matrices" do
  
   it "Se multiplica un numero por todos los elementos de la matriz" do
      
   end
  
   it "Se multiplican las matrices" do
      
   end
  
   it "Se suman las matrices" do
      
   end
   
   it "Se dividen las matrices" do
    
   end
 
   it "Se restan las matrices" do
      
   end
end



