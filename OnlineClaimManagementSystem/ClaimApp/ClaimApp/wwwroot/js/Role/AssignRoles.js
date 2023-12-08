$(document).ready(function () {

    FillDropDownList("RoleManage/GetRoles", null, "ddlRoles")
    GetAllUsers()

    $("#btnSubmit").click(function () {
  
            SubmitData()

    })
})


function GetAllUsers() {
    $.ajax({
        "url": base_url + "UserManage/GetUsers",
        "method": "GET",
        contentType: JSON,
        headers: {
            "Authorization": "Bearer " + localStorage.getItem("token")
        },
        "success": function (response) {
            if (response.ok) {
                console.log(response)
                var options="<option value='-1'>Select</option>"
                response.data.forEach(function (item, i) {
                    options +="<option data='"+item.role+"' value="+item.id+">"+item.name+"</option>"
                })
                $("#ddlUserName").html(options)
            }
        }
    })
}
$("#ddlUserName").change(function () {
    var role = $("#ddlUserName option:selected").attr("data")
    $("#errUserName").html("Existing Role : "+role)
})

function SubmitData() {


    isValid = requiredSelectFiled("UserName", "user name")
    if (!isValid) { return false }

    isValid = requiredSelectFiled("Roles", "role")
    if (!isValid) { return false }

    var data = new FormData()
    data.append("RoleId", $("#ddlRoles").val())
    data.append("UserId", $("#ddlUserName").val())
    data.append("Status", 1)

    $.ajax({
        "url": base_url + "RoleManage/AssignRole",
        "method": "POST",
        cache: false,
        contentType: false,
        processData: false,
        headers: {
            "Authorization": "Bearer " + localStorage.getItem("token")
        },
        "data": data,
        "success": function (response) {
            if (response.ok) {
                $("#msg").html(response.message).css("color", "green")
                setTimeout(function () {
                    location.reload()
                }, 3000)
            }
            else {
                $("#msg").html(response.message).css("color", "red")
            }
        },
        "error": function (err) {
            console.log(err)
        }
    })

}

