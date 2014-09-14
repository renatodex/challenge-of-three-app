class ChallengeScreen < PM::Screen
	title "Challenge!"
	
	def on_load
		rmq.stylesheet = ChallengeStylesheet
		rmq(self.view).apply_style :root_view
	end
end