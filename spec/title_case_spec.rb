require('rspec')
require('title_case.rb')

describe('String#title_case') do
  it('capitalizes the first letter of each word in the string') do
    expect("harry potter".title_case()).to(eq("Harry Potter"))
  end
  it('does not capitalize conjunctions in the string') do
    expect("harry potter and the sorceror's stone".title_case()).to(eq("Harry Potter and the Sorceror's Stone"))
  end
  it('returns the string with the first letter of the first word capitalized, even if it is a conjunction') do
    expect("a room with a view".title_case()).to(eq("A Room with a View"))
  end
  it('returns the string with the first letter of the last word always capitalized') do
    expect("i love you but".title_case()).to(eq("I Love You But"))
  end
end
