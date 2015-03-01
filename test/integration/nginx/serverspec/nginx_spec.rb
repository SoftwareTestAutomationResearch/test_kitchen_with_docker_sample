require 'serverspec'

set :backend, :exec

describe "Nginx" do
  it "is installed" do
    expect(package("nginx")).to be_installed
  end

  it "is running" do
    expect(port(80)).to be_listening
  end
end
