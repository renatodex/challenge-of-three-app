class HomeScreen < PM::Screen
  title "Home"

  def on_appear		
		rmq.stylesheet = HomeStylesheet
		rmq(self.view).apply_style :root_view
		
		rmq.append(UIImageView, :logo)
		
		rmq.append(UIButton, :generate_challenge).on(:tap) do |sender|
			open ChallengeScreen
    end
		
    set_nav_bar_button :right, title: "Help", action: :show_help
  end

  def show_help
    open HelpScreen
  end

end
