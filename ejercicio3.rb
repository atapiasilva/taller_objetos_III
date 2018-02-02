class Vehicle

    attr_accessor :model, :year, :start

    def initialize(model, year)
        @model = model
        @year = year
        @start = false
    end

    def engine_start
        @start = true
    end
end


    class Car < Vehicle

        @@contador_de_instancias = 0                                    #variable de clase se empeiza con @@
        def initialize(model, year)
            super
            @@contador_de_instancias += 1
        end

        def self.mostrar_contador               #
            @@contador_de_instancias
        end

        def engine_start
            super # al declarar super en este metodo engine_start trae todo el comportamiento del metodo padre engine start de la clase Vehicle
            puts 'El motor se ha encendido!'
        end
    end

    marcas = ['Toyota','Chevrolet', 'Suzuki', 'FIAT', 'KIA', 'Ford', 'Ferrari', 'BMW']

    10.times do |i|
        car = Car.new(marcas.sample, rand(2000..2018))
        puts "Se ha creado un #{car.model} del año #{car.year}"
    end

    puts "Se ha instanciado #{Car.mostrar_contador} autos."