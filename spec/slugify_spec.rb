RSpec.describe Slugify do
  it "version 0.1.0 is setted" do
    expect(Slugify::VERSION).to eq("0.1.0")
  end

  it "returns a String object" do
    str = "text"

    result = Slugify[str]

    expect(result).to be_a(String)
  end

  it "returns a String object with unicode format" do
    str = "([{ áàâãä!#\%&*-_=+\\|/?!;: }])"
    expected_response = "aaaaa"

    result = Slugify[str]

    expect(result.encoding.name).to eq("UTF-8")
  end

  it "downcases the input string" do
    str = "UPCASE"
    expected_response = "upcase"

    result = Slugify[str]

    expect(result).to eq(expected_response)
  end

  it "strips empty spaces" do
    str = " t e x t "

    result = Slugify[str]

    expect(result.index(/\s/)).to be_nil
  end

  context "with separator parameter filled" do
    it "replaces non-alphanumeric characters with given separator" do
      str = " t-e x@t "
      expected_response = "-t-e-x-t-"

      result = Slugify[str, "-"]

      expect(result).to eq(expected_response)
    end
  end
end
