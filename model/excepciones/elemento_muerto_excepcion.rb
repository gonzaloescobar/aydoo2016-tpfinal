class ElementoEspacialMuertoExcepcion < Exception

  def initialize(msg='Los objetos espaciales muertos no pueden participar en ninguna iteracion.')
    super
  end
end
