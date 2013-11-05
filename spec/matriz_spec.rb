# Fichero con las espectativas de la clase Matriz
# Cualquier cambio hace que se ejecute guard

require 'matriz'

describe "Metodos para la comprobación de la clase Matriz" do
   before :each do
      @matriz1 = matriz.new(2,3) 
      @matriz2 = matriz.new(3,2)
   end    
   
   it "Se inicializa correctamente la matriz " do # Comprobamos que todas las casillas estan a cero cuando se crea el objeto
	  while i < 2
		 while j < 3
			@matriz1[i][j].should == 0
			j ++
		 end
		 i++
      end
   end

    it "la matriz esta en formato to_s"do
   
   end
   
   it "la matriz esta en formato to_i"do
  end
   
  end
  
    it "Se multiplica un numero por todos los elementos de la matriz" do
      
    end
    it "Si se multiplica por -1 se obtiene el opuesto de la matriz" do
      
  end
  
   it "Se multiplican la matriz 1 por la matriz 2" do
      
  end
  
   it "Se suman las matrices 1 y 2" do
      
    end
   it "Se dividen las matrices 1 y 2" do
    
    end
 
    it "Se restan las matrices 1 y 2" do
      
    end
    it "la matriz 1 es menor o igual que la matriz2" do
     
    end
    it "la matriz 1 es mayor que la matriz2" do
     
    end
    it "la matriz 1 es mayor o igual que la matriz2 (1,1)" do
      
    end
    it "la matriz 1 es menor que la matriz2" do
      
    end
  end
end
