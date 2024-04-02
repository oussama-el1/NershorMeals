$(document).ready(function () {

    // Function to calculate the pricing
    function calculatePrice() {
        // Get the selected number of people
        const numPeople = parseInt(document.querySelector('input[name="numPeople"]:checked').value);

        // Get the selected number of meals per week
        const numMeals = parseInt(document.querySelector('input[name="mealsPerWeek"]:checked').value);

        // Calculate the box price
        const boxPrice = numPeople * numMeals * 9.99;

        // Calculate the total servings
        const totalServings = numPeople * numMeals;

        // Calculate the discount (30% of the box price)
        const discount = 0.3 * boxPrice;

        // Calculate the final price
        const finalPrice = boxPrice  + 4.78 - discount;

        // Update the HTML elements with the calculated values
        document.querySelector('.plan-details #st1').textContent = + numMeals + " meals" + " for " + numPeople + " people per week";
        document.querySelector('.plan-details #st2').textContent = totalServings + " total servings";
        document.querySelector('.plan-details .price').textContent = `$${boxPrice.toFixed(2)}`;
        document.querySelector('.plan-details .off').textContent = `$${discount.toFixed(2)}`;
        document.querySelector('.plan-details .final-price').textContent = `$${finalPrice.toFixed(2)}`;
    }

    // Add event listeners to the radio buttons for number of people and meals per week
    document.querySelectorAll('.op').forEach(function (radio) {
        radio.addEventListener('change', calculatePrice);
    });

    // Initial calculation when the page loads
    calculatePrice();
});
