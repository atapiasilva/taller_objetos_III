class Rectangulo
    def initialize(largo, ancho)
      @largo = largo
      @ancho = ancho
    end
    def lados
      puts "largo: #{@largo} ancho: #{@ancho}"
    end
    def perimetro
      puts "perimetro: #{@largo+@ancho}"
    end
    def area
      puts "area: #{@largo*@ancho}"
    end
  end
  
  class Cuadrado
    def initialize(lado)
      @lado = lado
    end
    def lados
      puts "lado: #{@lado}"
    end
    def perimetro
      puts "perimetro: #{@lado*2}"
    end
    def area
      puts "area: #{@lado**2}"
    end
  end
  puts 'rectangulo'
  rec = Rectangulo.new(3,5)
  rec.lados
  rec.perimetro
  rec.area
  puts 'cuadrado'
  cuad = Cuadrado.new(8)
  cuad.lados
  cuad.perimetro
  cuad.area