module ClassroomsHelper
	def translate_level(level)
		return "Prescolar" if level == 'KINDER'
		return "Primaria" if level == 'PRIMARY'
		return "Secundaria"
	end

	def translate_journey(journey)
		return 'Matutina' if journey == 'MORNING'
		return 'Vespertina' if journey == 'AFTERNOON'
		return 'Nocturna' if journey == 'NIGHT'
		return 'Jornada Escolar Extendida'
	end
end
