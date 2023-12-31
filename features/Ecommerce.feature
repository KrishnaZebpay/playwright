Feature: Ecommerce Validation
    @Regression
    Scenario: Placing the Order
        Given a login to Ecommerce application with "kjamadar26@gmail.com" and "Sachin@200"
        When Add "zara coat 3" to cart
        Then Verify "zara coat 3" is displayed in the cart
        Then Verify order is present in the OrderHistory

    @Param
    Scenario Outline: Scenario Outline name: Placing the Order
        Given a login to Ecommerce2 application with "<username>" and "<password>"
        Then Verify Error message is displayed

        Examples:
            | username          | password    |
            | rahulshetty       | learning    |
            | anshika@gmail.com | Iamking@000 |