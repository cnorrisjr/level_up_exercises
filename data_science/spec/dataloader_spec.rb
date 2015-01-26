require_relative '../data_loader'
require_relative '../traffic'

describe DataLoader do

  it "File should be valid and will be read in" do
    my_data = DataLoader.new("../smalldata.json")
    expect(my_data.parsed).to eql(
    [{ "date" => "2014-03-20", "cohort" => "B", "result" => 0 },
     { "date" => "2014-03-20", "cohort" => "B", "result" => 1 },
     { "date" => "2014-03-20", "cohort" => "A", "result" => 0 },
     { "date" => "2014-03-20", "cohort" => "A", "result" => 1 }])

  end

  it "File is not valid and a NotAJSONFileError comes up" do
   expect {DataLoader.new("../smalldata.jsn")}.to raise_error(NotAJSONFileError)
  end

  it "File is not valid and a FileDoesNotExistError Error comes up" do
    expect {DataLoader.new("../smalldat.json")}.to raise_error(FileDoesNotExistError)
  end

  it "Data Objects are built" do
    my_data = DataLoader.new("../smalldata.json")
    expect(my_data.build_data).to eql(
    [{ "date" => "2014-03-20", "cohort" => "B", "result" => 0 },
     { "date" => "2014-03-20", "cohort" => "B", "result" => 1 },
     { "date" => "2014-03-20", "cohort" => "A", "result" => 0 },
     { "date" => "2014-03-20", "cohort" => "A", "result" => 1 }])
  end

  it "Sample json data is seperated into groups"do
    my_data = DataLoader.new("../smalldata.json")
    group1, group2 = my_data.seperate_groups
    expect(group1).not_to be_empty
    expect(group1.size).to be(2)
    expect(group2).not_to be_empty
    expect(group2.size).to be(2)
  end

end
