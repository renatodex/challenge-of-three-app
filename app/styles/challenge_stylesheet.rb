class ChallengeStylesheet < ApplicationStylesheet
	def root_view(st)
		st.background_color = color.white
	end
	
	def slot_1(st)
		st.frame = { l:0 , t: 50 , w: 200, h: 100}
		st.text = "Label de exemplo"
	end
	
	def slot_2(st)
		st.frame = { l:0 , t: 100 , w: 200, h: 100}
		st.text = "Label de exemplo"
	end
	
	def slot_3(st)
		st.frame = { l:0 , t: 150 , w: 200, h: 100}
		st.text = "Label de exemplo"
	end
end