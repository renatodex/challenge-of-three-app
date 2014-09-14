class HomeStylesheet < ApplicationStylesheet
	def setup
	end
	
	def root_view(st)
		st.background_color = color.white
	end
	
	def logo(st)
		st.frame = {l: 0, t: 100, w: 250, h: 77, centered: :horizontal}
		st.image = image.resource("logo.png")
	end
	
	def generate_challenge(st)
		st.frame = {l:0, t:190, w:200, h:60, centered: :horizontal}
		st.text = "pick my challenge"
		st.color = color.white
		st.background_color = color.red
	end
end