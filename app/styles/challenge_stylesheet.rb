class ChallengeStylesheet < ApplicationStylesheet
	def root_view(st)
		st.background_color = color.white
	end

	def thumb_size
		130
	end

	def margin
		60
	end

	def label_style(st)
		st.text = "Label de exemplo"
		st.font = font.system(15)
		st.view.lineBreakMode = NSLineBreakByWordWrapping
		st.view.numberOfLines = 0
		st.text_alignment = :center
	end

	def image_1(st)
		st.frame = { l: 20, t: 120 , w: thumb_size, h: thumb_size}
	end

	def slot_1(st)
		st.frame = { l:20 , t: 225 , w: thumb_size, h: 100}
		label_style(st)
	end



	def image_2(st)
		st.frame = { l: 0, t: 120 , w: thumb_size, h: thumb_size, centered: :horizontal}
	end

	def slot_2(st)
		st.frame = { l: 0 , t: 225 , w: thumb_size, h: 100, centered: :horizontal}
		label_style(st)
	end



	def image_3(st)
		st.frame = { fr: 20, t: 120 , w: thumb_size, h: thumb_size}
	end

	def slot_3(st)
		st.frame = { fr: 20 , t: 225 , w: thumb_size, h: 100}
		label_style(st)
	end


	def challenge_title(st)
		st.text_alignment = :center
		st.font = font.system(20)
		st.text = "you were challenged to build a game mixing.."
		st.frame = { t: 30, h: 100, w: app_width }
	end
end
