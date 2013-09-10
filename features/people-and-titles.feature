Feature: Parsing a name
  In order to store name parts in a database
  As a system
  I want to be able to split a name string into
    prefix, first, middle, last, and suffix

  Scenario Outline:
    Given my input is "<name string>"
    When I parse the string
    Then first name should be <first>
    And middle name should be <middle>
    And last name should be <last>
    And suffix should be <suffix>
    And prefix should be <prefix>

    Examples:
      |name string|first|middle|last|suffix|prefix|
			|Powell, Thomas W, M.D.|Thomas|W|Powell|M.D.||
			|Thomas W Powell, M.D.|Thomas|W|Powell|M.D.||
			|Thomas W Powell M.D.|Thomas|W|Powell|M.D.||
			|Thomas D W Wizard, MD|Thomas|D W|Wizard|MD||
			|Thomas William M Powell, DVM|Thomas|William M|Powell|DVM||
			|Thomas M William Powell, DVM|Thomas|M|William Powell|DVM||
			|Thomas D W Wizard, MD, Ph D|Thomas|D W|Wizard|MD, Ph D||
			|Wizard, Thomas D W, MD, Ph D|Thomas|D W|Wizard|MD, Ph D||
			|VAN ADELSBERG, JOOST HENRI MD|JOOST|HENRI|VAN ADELSBERG|MD||
			|AVERY, MARSDEN RONALD JR MD|MARSDEN|RONALD|AVERY|JR, MD||
			|ALBERTSON, KENNETH W MD|KENNETH|W|ALBERTSON|MD||
			|Thomas William Constant-Powell DVM MD|Thomas|William|Constant-Powell|DVM, MD||
			|Constant-Powell, Thomas William DVM MD|Thomas|William|Constant-Powell|DVM, MD||
