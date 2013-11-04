# Fichero con las espectativas de la clase Punto
# Cualquier cambio hace que se ejecute guard

require 'point'

describe Point do
  before :each do
    @p1 = Point.new(1,1)
    @p2 = Point.new(2,2)
    @p3 = Point.new(1,1)
  end    
    
  describe "# almacenamiento de las coordenadas" do
    it "Se almacena correctamente la coordenada X" do
      @p1.x.should eq(1) 
    end
    it "Se almacena correctamente la coordenada Y" do
      @p1.y.should eq(1)  
    end
  end
  
  describe "# producto por un escalar" do
    it "la coordenada x y la coordenada y se multiplican por el valor" do
      p2 = @p1*5 
      p2.x.should eq(5)
      p2.y.should eq(5)
    end
    it "Si se multiplica por -1 se obtiene el opuesto" do
      p2 = @p1*-1 
      p2.x.should eq(-1)
      p2.y.should eq(-1)
    end
  end
  describe "# opuesto de un punto" do
    it "la coordenada x y la coordenada y se multiplican por menos uno" do
      p2 = - @p1 
      p2.x.should eq(-1)
      p2.y.should eq(-1)
    end
  end
  describe "# suma de dos puntos " do
    it "coordenada x = original.x + otro.x, coordenada y = original.y + otro.y " do
      p2 = @p1 + @p1
      p2.x.should eq(2)
      p2.y.should eq(2)
    end
  end
  describe "# comparaciones entre dos puntos basada en su distancia al origen" do
    it "El punto (1,1) es menor que el punto (2,2)" do
      test = @p1 < @p2
      test.should eq(true)
    end
    it "El punto (1,1) es menor o igual que el punto (2,2)" do
      test = @p1 <= @p2
      test.should eq(true)
    end
    it "El punto (2,2) es mayor que el punto (1,1)" do
      test = @p2 > @p1
      test.should eq(true)
    end
    it "El punto (2,2) es mayor o igual que el punto (1,1)" do
      test = @p2 >= @p1
      test.should eq(true)
    end
    it "El punto (1,1) es igual al punto (1,1)" do
      test = @p1 == @p3
      test.should eq(true)
    end
  end
end
