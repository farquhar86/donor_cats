// jQuery Validate script
$(function () {
	$("#signup_form").validate({
		rules: {
			"user[first_name]": {
				required: true
			},
			"user[last_name]": {
				required: true
			},
			"user[city]": {
				required: true,
				minlength: 2,
				maxlength: 50
			},
			"user[email]": {
				required: true,
				minlength: 2,
				maxlength: 50,
				email: true
			},
			"user[password]": {
				required: true,
				minlength: 6
			}
		},
		messages: {
			"user[first_name]": {
				required: "Please enter your first name"
			},
			"user[last_name]": {
				required: "Please enter your last name"
			},
			"user[city]": {
				required: "Please enter your city",
				minlength: "Your city's name must be at least 2 characters",
				maxlength: "Your city's name must be less than 50 characters"
			},
			"user[email]": {
				required: "Please enter your email",
				required: "Your email must be at least 2 characters",
				maxlength: "Your email must be less than 50 characters",
				email: "Please enter a valid email"
			},
			"user[password]": {
				required: "Please enter a password",
				minlength: "Your password must be at least 6 characters"
			}
		}
	});
	$("#login_form").validate({
		rules: {
			"user[email]": {
				required: true,
				minlength: 2,
				maxlength: 50,
				email: true
			},
			"user[password]": {
				required: true,
				minlength: 6
			}
		},
		messages: {
			"user[email]": {
				required: "Please enter your email",
				required: "Your email must be at least 2 characters",
				maxlength: "Your email must be less than 50 characters",
				email: "Please enter a valid email"
			},
			"user[password]": {
				required: "Please enter a password",
				minlength: "Your password must be at least 6 characters"
			}
		}
	});
});