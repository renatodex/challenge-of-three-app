describe "Application 'challenge-of-three-app'" do
  before do
    @app = UIApplication.sharedApplication
  end

  it "is a ProMotion app" do
    @app.delegate.should.be.kind_of(PM::Delegate)
  end
end
