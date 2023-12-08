
function requiredTextFiled(control, ErrorMessage,validationtype="all") {
    var id = "#txt" + control
    var err = "#err" + control
    var formGroup = "#formGroup" + control
    var txtVal = $(id).val()
    if (txtVal == "" || txtVal == null || txtVal == "undefined") {
        $(err).html("Please enter " + ErrorMessage).addClass("error-control")
        $(formGroup).addClass("error-control")
        return false
    }
    else {

      if (GetRegx(validationtype).test(txtVal)) { 
        $(err).html("").removeClass("error-control")
        $(formGroup).removeClass("error-control")
        return true
         }
        else {
            $(err).html("Please enter valid " + ErrorMessage).addClass("error-control")
            $(formGroup).addClass("error-control")
            return false
        }

    }
}




function requiredSelectFiled(control, ErrorMessage) {
    var id = "#ddl" + control
    var err = "#err" + control
    var formGroup = "#formGroup" + control
    var txtVal = $(id).val()
    if (txtVal == "" || txtVal == null || txtVal == "-1") {
        $(err).html("Please select " + ErrorMessage).addClass("error-control")
        $(formGroup).addClass("error-control")
        return false
    }
    else {
       
         $(err).html("").removeClass("error-control")
        $(formGroup).removeClass("error-control")
        return true
    }
}

function comparePassword(control1,control2) {
    var id = "#txt" + control1
    var id1 = "#txt" + control2
    var err = "#err" + control2
    var formGroup = "#formGroup" + control2
    var txtVal = $(id).val()
    var txtVal1 = $(id1).val()
    if (txtVal != txtVal1) {
        $(err).html("Confirm password not matched !").addClass("error-control")
        $(formGroup).addClass("error-control")
        return false
    }
    else {

        $(err).html("").removeClass("error-control")
        $(formGroup).removeClass("error-control")
        return true
    }
}

function GetRegx(type) {

    var regx = /.+/s;
    switch (type) {
        case "email":
            regx = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            break;

        case "mobile":
            regx = /^[1-9]{1}[0-9]{9}$/;
            break;
    }
    return regx;
}

function FillDropDownList(url, params, ddlId, async = true) {

    var ddl="<option value='-1'>Select</option>"
    $.ajax({
        "url": base_url + url,
        "method": "GET",
        contentType: JSON,
        headers: {
            "Authorization": "Bearer " + localStorage.getItem("token")
        },
        "data": params,
        async: async,
        "success": function (response) {
            if (response.ok) {
              
                response.data.forEach(function (item, i) {
                    ddl+="<option value='"+item.id+"'>"+item.name+"</option>"
                })
                $("#" + ddlId).html(ddl)
            }
            
        },
        "error": function (err) {
            console.log(err)
        }
    })
}

$(document).ready(function () {
    $("#btnReload").click(function () {
        window.location.reload()
    })
})