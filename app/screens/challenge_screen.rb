class ChallengeScreen < PM::Screen
	title "Challenge!"

	def on_appear
		rmq.stylesheet = ChallengeStylesheet
		rmq(self.view).apply_style :root_view

		rmq.append(UILabel, :challenge_title)

		(1..3).each do |k|
			instance_variable_set "@slot_#{k}", rmq.append(UILabel, "slot_#{k}")
			instance_variable_set "@image_#{k}", rmq.append(UIImageView, "image_#{k}")
		end

		update_labels
	end

	def update_labels
		machine = Gamejam::Roulette::Machine.new

		(1..3).each do |k|
			machine.add_slot 'snes', Gamejam::Parser::Txt
			(instance_variable_get "@slot_#{k}").attr(text: machine.slots.last.name)
			(instance_variable_get "@image_#{k}").attr(url: machine.slots.last.images.last.gsub(' ', '%20'))
		end
	end
end
