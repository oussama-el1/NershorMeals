$(document).ready(function () {
    $('.registration-btn').click(function (event) {
        event.preventDefault(); // Prevent default form submission behavior
        
        var email = $('input[name="email"]').val();
        var password = $('input[name="password"]').val();

        $.ajax({
            type: 'POST',
            url: '/store_session_data_registration',
            contentType: 'application/json',
            data: JSON.stringify({
                'email': email,
                'password': password
            }),
            success: function (response) {
                // Redirect user to registration page
                window.location.href = '/form';
            },
            error: function (xhr, status, error) {
                console.error('Error storing session data:', error);
            }
        });
    });
});
