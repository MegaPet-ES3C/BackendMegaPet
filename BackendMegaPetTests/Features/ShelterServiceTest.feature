Feature: SheltersServiceTests
As a Develper 
I Want to add new Shelter through API
In Order to make it available for application
	
    Background:
        Given the EndPoint https://https://localhost:7070/api/v1/shelter is available
		
    @Shelter-adding
    Scenario: Add Shelter with Unique Address
        When a Post Request is sent
          | address            | image       | Phone     | district | location           |
          | "NewShelter@gmail" | "image.com" | 978456223 | "Comas"  | "Jr.Matorrales123" |
        Then A Response with Status 200 is recived
        And a Shelter Resource is included in Response Body
          | Id |
          | 1  |
    
    @Shelter-adding
    Scenario: Add a Shelter with existing Address
        Given A Shelter is already stored
        | Id | address            | image       | Phone     | district | location           |
        | 1  | "NewShelter@gmail" | "image.com" | 978456223 | "Comas"  | "Jr.Matorrales123" |
        When a Post Request is sent
          | address            | image       | Phone     | district | location           |
          | "NewShelter@gmail" | "image.com" | 978456223 | "Comas"  | "Jr.Matorrales123" |
          Then A Response with Status 400  is recived
          And An Error Message with value "Shelter Address already exist." is returned