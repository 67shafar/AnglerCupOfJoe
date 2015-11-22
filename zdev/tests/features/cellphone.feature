Feature: Cellphone Feature Highlights Module
	As a guest
	In order to highlight the features of the imaginary app this page sells
	Corresponding content should be hihglighted on mouse hover 

	Scenario Outline: Hovering over image key
		Given I am on the homepage
		When my mouse is hovering over image key <num>
		Then the image key should have a wider border
			And the image key should have a darker background
			And a black line should be drawn to corresponding content

		Examples:
			|   num   |
			|  "one"  |
			|  "two"  |
			| "three" |
			|  "four" |

	Scenario Outline: Hovering over feature content
		Given I am on the homepage
		When my mouse is hovering over feature content <num>
		Then the cooresponding image key should have a wider border
			And the image key should have a darker background
			And a black line should be drawn to the image key

		Examples:
			|   num   |
			|  "one"  |
			|  "two"  |
			| "three" |
			|  "four" |