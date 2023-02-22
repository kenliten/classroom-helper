module StudentsHelper
	def translate_initial_condition(cond)
		return 'Nuevo Ingreso' if cond == 'NEW'
		return 'Promovido' if cond == 'PROMOTED'
		return 'Repitente' if cond == 'REPEATING'
		return 'Reingreso'
	end
end
