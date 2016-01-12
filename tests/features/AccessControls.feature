Feature: Access Controls

  Scenario Outline: Creating Organizations
     Given I am using <account> account
       when I try to create an org
       then the org <status>

   Examples: Action-Results for creating orgs
     | account          |  status         |
     | a master         |  exists         |
     | an org manager   |  does not exist |
     | an org auditor   |  does not exist |
     | a space manager  |  does not exist |
     | a space developer|  does not exist |
     | a space auditor  |  does not exist |

  Scenario Outline: Updating Organizations
     Given I am using <account> account
       when I try to update an org name
       then the org name <status>

   Examples: Action-Results for updating orgs
     | account          |  status         |
     | a master         |  changes        |
     | an org manager   |  changes        |
     | an org auditor   |  stays the same |
     | a space manager  |  stays the same |
     | a space developer|  stays the same |
     | a space auditor  |  stays the same |

   Scenario Outline: Destroying Organizations
      Given I am using <account> account
        when I try to delete an org
        then the org <status>

    Examples: Action-Results for deleting orgs
      | account          |  status	   |
      | a master         |  does not exist |
      | an org manager   |  exists         |
      | an org auditor   |  exists         |
      | a space manager  |  exists         |
      | a space developer|  exists         |
      | a space auditor  |  exists         |


  Scenario Outline: Creating Spaces
     Given I am using <account> account
       when I try to create a space
       then the space <status>

   Examples: Action-Results for creating spaces
     | account          |  status	        |
     | a master         |  exists         |
     | an org manager   |  exists         |
     | an org auditor   |  does not exist |
     | a space manager  |  does not exist |
     | a space developer|  does not exist |
     | a space auditor  |  does not exist |

   Scenario Outline: Updating Spaces
      Given I am using <account> account
        when I try to update a space name
        then the space name <status>

    Examples: Action-Results for updating spaces
      | account          |  status         |
      | a master         |  changes        |
      | an org manager   |  changes        |
      | an org auditor   |  stays the same |
      | a space manager  |  changes        |
      | a space developer|  stays the same |
      | a space auditor  |  stays the same |

   Scenario Outline: Destroying Spaces
      Given I am using <account> account
        when I try to delete a space
        then the space <status>

    Examples: Action-Results for deleting spaces
      | account          |  status    	   |
      | a master         |  does not exist |
      | an org manager   |  does not exist |
      | an org auditor   |  exists         |
      | a space manager  |  exists         |
      | a space developer|  exists         |
      | a space auditor  |  exists         |


  Scenario Outline: Creating Apps
     Given I am using <account> account
       when I try to create an app
       then the app <status>

   Examples: Action-Results for creating apps
     | account          |  status         |
     | a master         |  exists         |
     | an org manager   |  does not exist |
     | an org auditor   |  does not exist |
     | a space manager  |  does not exist |
     | a space developer|  exists         |
     | a space auditor  |  does not exist |

   Scenario Outline: Destroying Apps
      Given I am using <account> account
        when I try to delete an app
        then the app <status>

    Examples: Action-Results for deleting apps
      | account          |  status 	       |
      | a master         |  does not exist |
      | an org manager   |  exists         |
      | an org auditor   |  exists         |
      | a space manager  |  exists         |
      | a space developer|  does not exist |
      | a space auditor  |  exists         |


  Scenario Outline: Creating Users
     Given I am using <account> account
       when I try to create a user
       then the user <status>

   Examples: Action-Results for creating users
     | account          |  status         |
     | a master         |  exists         |
     | an org manager   |  does not exist |
     | an org auditor   |  does not exist |
     | a space manager  |  does not exist |
     | a space developer|  does not exist |
     | a space auditor  |  does not exist |

   Scenario Outline: Deleting Users
      Given I am using <account> account
        when I try to delete a user
        then the user <status>

    Examples: Action-Results for deleting apps
      | account          |  status 	       |
      | a master         |  does not exist |
      | an org manager   |  exists         |
      | an org auditor   |  exists         |
      | a space manager  |  exists         |
      | a space developer|  exists         |
      | a space auditor  |  exists         |


  Scenario Outline: Viewing Audits
     Given I am using <account> account
       when I view my audit logs
       then I find "<number>" events

   Examples: Action-Results for deleting apps
     | account          |  number |
     | a master         |  42     |
     | an org manager   |  0      |
     | an org auditor   |  42     |
     | a space manager  |  0      |
     | a space developer|  26     |
     | a space auditor  |  26     |