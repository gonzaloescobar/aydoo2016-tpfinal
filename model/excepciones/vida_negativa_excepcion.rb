class VidaNegativaExcepcion < Exception

  def initialize(msg='Los elementos espaciales no pueden inicializarse con vida menor a cero.')
    super
  end
end
