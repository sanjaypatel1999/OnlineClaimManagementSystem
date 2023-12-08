$(document).ready(function () {
    GetAllUsers()
    $("#btnAdd").click(function () {
        $("#modalAddUser").modal("show")
        if ($("#hdnUserId").val() == "0") {
            $("#ddlStatus").val("1").attr("disabled",true)
        }
        FillDropDownList("UserManage/GetUserByRole", {"RoleId":2},"ddlManager")
    })

    $("#btnSubmit").click(function () {
        if ($("#hdnUserId").val() == "0") {
            SubmitData()
        }
        else {
            SubmitDataUpdate()
           
        }
    })
})

function GetAllUsers() {
    $.ajax({
        "url": base_url + "UserManage/GetAllUsers",
        "method": "GET",
        contentType: JSON,
        headers: {
            "Authorization": "Bearer " + localStorage.getItem("token")
        },
        "data": { "Id": localStorage.getItem("UserRid")},
        "success": function (response) {
            if (response.ok) {
                 console.log(response)
                $("#tblUsers").DataTable({
                    data: response.data,
                    columns: [
                        { "data": "id" },
                        { "data": "userName" },
                        { "data": "email" },
                        { "data": "mobile" },
                        { "data": "managerName" },
                        { "data": "status" },
                        
                        {
                            "data": "id", class: "text-center", render: function (id) {
                                var btn = '<a class="btn btn-sm btn-info" onclick="Edit(' + id + ')">Edit</a>'
                                return btn
                            },
                        }

                    ]
                })
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

function Edit(id) {
    $("#modalAddUser .modal-title").html("Update User")
    $("#formGroupPassword").hide()
    $("#formGroupConfirmPassword").hide()
    $("#hdnUserId").val(id)
    $("#modalAddUser").modal("show")
    FillDropDownList("UserManage/GetUserByRole", { "RoleId": 2 }, "ddlManager", false)

    $.ajax({
        "url": base_url + "UserManage/GetUserById",
        "method": "GET",
        contentType: JSON,
        headers: {
            "Authorization": "Bearer " + localStorage.getItem("token")
        },
        "data": { "id": id },
        "success": function (response) {
            if (response.ok) {
                console.log(response)
                var data = response.data;
                $("#txtUserName").val(data.userName)
                $("#txtEmailAddress").val(data.email)
                $("#txtMobileNumber").val(data.mobile)
                if (data.managerId != "") {
                    $("#ddlManager").val(data.managerId)
                }
                else {
                    FillDropDownList("UserManage/GetUserByRole", { "RoleId": 2 }, "ddlManager")
                }
                $("#ddlStatus").val(data.status).removeAttr("disabled")

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
function SubmitData() {

    isValid = requiredTextFiled("UserName", "user name")
    if (!isValid) { return false }

    isValid = requiredTextFiled("EmailAddress", "user email")
    if (!isValid) { return false }

    isValid = requiredTextFiled("Password", "password")
    if (!isValid) { return false }

    isValid = requiredTextFiled("ConfirmPassword", "Confirm Password")
    if (!isValid) { return false }

    isValid = comparePassword("Password", "ConfirmPassword")
    if (!isValid) { return false }

    isValid = requiredSelectFiled("Status", "status")
    if (!isValid) { return false }

    var data = new FormData()
    data.append("UserName", $("#txtUserName").val())
    data.append("Email", $("#txtEmailAddress").val())
    data.append("Mobile", $("#txtMobileNumber").val())
    data.append("ManagerId", $("#ddlManager").val())
    data.append("Status", $("#ddlStatus").val())
    data.append("Password", $("#txtPassword").val())

    $.ajax({
        "url": base_url + "UserManage/CreateUser",
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

function SubmitDataUpdate() {

    isValid = requiredTextFiled("UserName", "user name")
    if (!isValid) { return false }

    isValid = requiredTextFiled("EmailAddress", "user email")
    if (!isValid) { return false }

    isValid = requiredSelectFiled("Status", "status")
    if (!isValid) { return false }


    var data = new FormData()
    data.append("UserName", $("#txtUserName").val())
    data.append("Id", $("#hdnUserId").val())
    data.append("Email", $("#txtEmailAddress").val())
    data.append("Mobile", $("#txtMobileNumber").val())
    data.append("ManagerId", $("#ddlManager").val())
    data.append("Status", $("#ddlStatus").val())

    $.ajax({
        "url": base_url + "UserManage/UpdateUser",
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
                $("#hdnUserId").val("0")
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