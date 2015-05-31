# # Topics
#
# * modules
# * strings
#
# # Pig Latin
#
# Pig Latin is a made-up children's language that's intended to be confusing. It obeys a few simple rules (below) but when it's spoken quickly it's really difficult for non-children (and non-native speakers) to understand.
#
# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word.
#
# Rule 2: If a word begins with a consonant sound, move it to the end of the word, and then add an "ay" sound to the end of the word.
#
# (There are a few more rules for edge cases, and there are regional variants too, but that should be enough to understand the tests.)
#
# See <http://en.wikipedia.org/wiki/Pig_latin> for more details.
#
#

require "pig_latin"

describe "#translate" do

  it "translates a word beginning with a vowel" do
    s = translate("apple")
    expect(s).to be == "appleay"
  end

  it "translates a word beginning with a consonant" do
    s = translate("banana")
    expect(s).to be == "ananabay"
  end

  it "translates a word beginning with two consonants" do
    s = translate("cherry")
    expect(s).to be == "errychay"
 end

  it "translates two words" do
    s = translate("eat pie")
    expect(s).to be == "eatay iepay"
  end

  it "translates a word beginning with three consonants" do
    expect(translate("three")).to be == "eethray"
  end

  it "counts 'sch' as a single phoneme" do
    s = translate("school")
    expect(s).to be == "oolschay"
  end

  it "counts 'qu' as a single phoneme" do
    s = translate("quiet")
    expect(s).to be == "ietquay"
  end

  it "counts 'qu' as a consonant even when it's preceded by a consonant" do
    s = translate("square")
    expect(s).to be == "aresquay"
  end

  it "translates many words" do
    s = translate("the quick brown fox")
    expect(s).to be == "ethay ickquay ownbray oxfay"
  end

  # Test-driving bonus:
  # * write a test asserting that capitalized words are still capitalized (but with a different initial capital letter, of course)

  it "maintains proper capitalization if original word are capitalized" do
    s = translate("Lamb")
    expect(s).to be == "Amblay"
  end

  it "maintains proper capitalization if all original words are capitalized" do
    s = translate("The Quick Brown Fox")
    expect(s).to be == "Ethay Ickquay Ownbray Oxfay"
  end

  it "maintains proper capitalization if many original words are capitalized" do
    s = translate("The quick Brown fox")
    expect(s).to be == "Ethay ickquay Ownbray oxfay"
  end

  # * retain the punctuation from the original phrase

  it "maintains the punctuation." do
    pending("Probably need to start thinking about using regex")
    s = translate("The, quick brown. Fox")
    expect(s).to be == "Ethay, ickquay ownbray. Oxfay"
  end

end
