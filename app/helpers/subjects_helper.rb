module SubjectsHelper
	def subject_names()
		return [
			['Lengua Española', 'SPANISH'],
			['Inglés', 'ENGLISH'],
			['Fancés', 'FRENCH'],
			['Matemática', 'MATH'],
			['Ciencias Sociales', 'HISTORY'],
			['Ciencias de la Naturaleza', 'SCIENCE'],
			['Educación Artística', 'ARTS'],
			['Educación Física', 'SPORTS'],
			['Formación Integral Humana y Religiosa', 'RELIGION'],
		]
	end

	def translate_subject(subject)
		return 'Lengua Española' if subject == 'SPANISH'
		return 'Inglés' if subject == 'ENGLISH'
		return 'Fancés' if subject == 'FRENCH'
		return 'Matemática' if subject == 'MATH'
		return 'Ciencias Sociales' if subject == 'HISTORY'
		return 'Ciencias de la Naturaleza' if subject == 'SCIENCE'
		return 'Educación Artística' if subject == 'ARTS'
		return 'Educación Física' if subject == 'SPORTS'
		return 'Formación Integral Humana y Religiosa'
	end
end
