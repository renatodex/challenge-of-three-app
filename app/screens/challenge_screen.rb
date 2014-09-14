class ChallengeScreen < PM::Screen
	title "Challenge!"
	
	def on_load
		rmq.stylesheet = ChallengeStylesheet
		rmq(self.view).apply_style :root_view
		
		(1..3).each do |k|
			instance_variable_set "@slot_#{k}", rmq.append(UILabel, "slot_#{k}")
		end
		
		#machine = ::Gamejam::Roulette::Machine.new
		#update_labels
		
	end
	
	def update_labels
		machine = Gamejam::Roulette::Machine.new
		
		(1..3).each do |k|
			machine.add_slot 'snes', Gamejam::Parser::Txt
			(instance_variable_get "@slot_#{k}").attr(text: machine.slots.last.name)
		end
	end
end