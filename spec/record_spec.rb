require './record.rb'

describe Records do
    it "can create a voter and add it to a voter's array" do 
        records =Records.new
        records.create_voter("John Doe", "Liberal")
        expect(records.voters.count).to eq(1)
    end
    
    it "can create a politician and add it to a politician's array"
    it "can list all voters and politicians"    
    it "can search for a voter by name" 
    it "can search for a politician by name"
    it "can update a voter"
    it "can update a politician"
    it "can delete a voter"
    it "can delete a politician" 
end
=begin
do 
        records =Records.new
        records.create_voter("John Doe", "Liberal")
        expect(records.voters.count).to eq(1)
    end
do 
        records =Records.new
        records.create_politician("John Doe", "Democrate")
        expect(records.politician.count).to eq(1)
    end
do
        records =Records.new
        records.create_voter("John Doe", "Liberal")
        records.create_politician("John Doe", "Democrate")
        expected_resulted ="voter, John Doe, Liberal\nPolitician, Jane Doe, Democrate"
        expect(records.list).to eq(expected_resulted)
    end
 do
        records =Records.new
        records.create_voter("John Doe", "Liberal")
        records.create_voter("Jimmy Jazz", "Socialist")
        
        records.create_voter("James Watt", "Conservative")
        index_for_existing_voter = records.search_voter("Jimmy Jazz")
        index_for_nonexisting_voter = records.search_voter("Jay Bee")
        
        expect(index_for_existing_voter).to eq(1)
        expect(index_for_nonexisting_voter).to eq(nil)
        
    end
 do
         records =Records.new
        records.create_politician("John Doe", "Democrate")
        records.create_politician("Jimmy Jazz", "Republician")
        
        records.create_politician("James Watt", "Democrate")
        index_for_existing_politician = records.search_politician("Jimmy Jazz")
        index_for_nonexisting_politician = records.search_politician("Jay Bee")
        
        expect(index_for_existing_politician).to eq(1)
        expect(index_for_nonexisting_politician).to eq(nil)
    end
 do 
        records =Records.new
       
        records.create_voter("John Doe", "Liberal")
        records.create_voter("Jimmy Jazz", "Socialist") 
        records.update_voter("John Doe", "Ram Thapa", "Neutral")
        
        expect(records.voters[0].name).to eq("Ram Thapa")
        expect(records.voters[0].political_affiliation).to eq("Neutral")
     end
 do
         records =Records.new
       
        records.create_politician("John Doe", "Liberal")
        records.create_politician("Jimmy Jazz", "Socialist") 
        records.update_politician("John Doe", "Ram Thapa", "Neutral")
        
        expect(records.voters[0].name).to eq("Ram Thapa")
        expect(records.voters[0].political_affiliation).to eq("Neutral")
     end
 do 
        records =Records.new
       
        records.create_voter("John Doe", "Liberal")
        records.create_voter("Jimmy Jazz", "Socialist") 
        
        expect(records.voters.count).to eq(2)
        records.delete_voter("Jimmy Jazz")
        expect(records.voters.count).to eq(1)
        expect(records.search_voter("Jimmy Jazz")).to eq(nil)
    end
do 
        records =Records.new
       
        records.create_politician("John Doe", "Liberal")
        records.create_politician("Jimmy Jazz", "Socialist") 
       
        
        expect(records.politician.count).to eq(3)
        records.delete_politician("Jimmy Jazz")
        expect(records.politician.count).to eq(2)
        expect(records.search_politician("Jimmy Jazz")).to eq(nil)
    end
=end
