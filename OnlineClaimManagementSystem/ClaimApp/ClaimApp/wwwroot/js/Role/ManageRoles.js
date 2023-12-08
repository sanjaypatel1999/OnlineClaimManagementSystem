$(document).ready(function () {
    GetAllRoles()
    $("#btnAdd").click(function () {
        $("#modalAddRole").modal("show")
        if ($("#hdnRoleId").val() == "0") {
            $("#ddlStatus").val("1").attr("disabled",true)
        }
    })

    $("#btnSubmit").click(function () {
        if ($("#hdnRoleId").val() == "0") {
            SubmitData()
        }
        else {
            SubmitDataUpdate()
           
        }
    })
})

function GetAllRoles() {
    $.ajax({
        "url": base_url + "RoleManage/GetAllRoles",
        "method": "GET",
        contentType: JSON,
        headers: {
            "Authorization": "Bearer " + localStorage.getItem("token")
        },
        "success": function (response) {
            if (response.ok) {
                 console.log(response)
                $("#tblRoles").DataTable({
                    data: response.data,
                    columns: [
                        { "data": "id" },
                        { "data": "roleName" },
                        {
                            "data": "status", render: function (status) {
                                return status==1?"Active":"Inactive"
                            }
                        },                       
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
    $("#modalAddRole .modal-title").html("Update Role")
    $("#hdnRoleId").val(id)
    $("#modalAddRole").modal("show")
    $.ajax({
        "url": base_url + "RoleManage/GetRoleById",
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
                $("#txtRoleName").val(data.roleName)
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

    isValid = requiredTextFiled("RoleName", "role name")
    if (!isValid) { return false }

    isValid = requiredSelectFiled("Status", "status")
    if (!isValid) { return false }

    var data = new FormData()
    data.append("RoleName", $("#txtRoleName").val())
    data.append("Status", $("#ddlStatus").val())

    $.ajax({
        "url": base_url + "RoleManage/CreateRole",
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

    isValid = requiredTextFiled("RoleName", "role name")
    if (!isValid) { return false }

    isValid = requiredSelectFiled("Status", "status")
    if (!isValid) { return false }


    var data = new FormData()
    data.append("RoleName", $("#txtRoleName").val())
    data.append("Id", $("#hdnRoleId").val())
    data.append("Status", $("#ddlStatus").val())

    $.ajax({
        "url": base_url + "RoleManage/UpdateRole",
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
                $("#hdnRoleId").val("0")
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