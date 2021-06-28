$(document).ready(function() { 
    $("#frm-contact").validate({
        beforeSubmit: function(arr, $form, options) {
            disabledButton("btn-contact", true);
        },
        rules: {
            name: {
                required: true
            },
            location: {
                required: true
            },
            phone: {
                required: true
            },
            redSocial: {
                required: true
            },
            aboutMe: {
                required: true
            },
            salesExperience: {
                required: true
            }
        },
        messages: {
            name: {
                required: "Es requerido",
            },
            location: {
                required: "Es requerido",
            },
            phone: {
                required: "Es requerido",
            },
            redSocial: {
                required: "Es requerido",
            },
            aboutMe: {
                required: "Es requerido",
            },
            salesExperience: {
                required: "Es requerido",
            }
        },
        submitHandler: function(form) {
            var body = getFormData($(form));
            var success = post('contact', body);
            success.done(function(response) {
                localStorage.setItem('succesContact', "succesContact");
                disabledButton("btn-contact", true);
                location.href = './contact-thank-you';
            });
            success.fail(function(response){
                alert(response.responseJSON.message);
                $('#frm-contact')[0].reset();
                disabledButton("btn-contact", false);
                return true;
            });
        }
    });
});
