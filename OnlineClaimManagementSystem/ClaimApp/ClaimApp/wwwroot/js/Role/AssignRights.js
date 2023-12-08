$(document).ready(function () {

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
    $("#errUserName").html("Existing Role : " + role)
    GetAllUserRigths($("#ddlUserName").val())
})

function SubmitData() {


    isValid = requiredSelectFiled("UserName", "user name")
    if (!isValid) { return false }

    var programs=[]
    $.each($("#tblUserRights .checkRights"), function (e, ee) {
        var id = $(ee).val()
        var ischecked = 0;
        if ($(ee).is(':checked')) {
            ischecked=1
        }
        var obj = {  id, ischecked }
        programs.push(obj)
    })
    console.log(JSON.stringify(programs))
    var data = new FormData()
    data.append("UserId", $("#ddlUserName").val())
    data.append("lstPrograms", JSON.stringify(programs))

    $.ajax({
        "url": base_url + "RoleManage/AssignRights",
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

function GetAllUserRigths(userid) {
    $.ajax({
        "url": base_url + "RoleManage/GetPrograRights",
        "method": "GET",
        contentType: JSON,
        headers: {
            "Authorization": "Bearer " + localStorage.getItem("token")
        },
        "data": { "UserId": userid },
        "success": function (response) {
            if (response.ok) {
                // console.log(response)
                $("#tblUserRights").DataTable().destroy()
                $("#tblUserRights").DataTable({
                    data: response.data,
                    columns: [
                        {
                            "data": "id", "width": "150px", render: function (id, data, row) {
                                var checkbox=""
                                if (row.ischecked == 1) {
                                    checkbox = "<input type='checkbox' class='checkRights' checked value='" + id +"' />"
                                    return checkbox
                                }
                                else {
                                    checkbox = "<input type='checkbox' class='checkRights' value='" + id +"' />"
                                    return checkbox
                                }

                            }
                        },
                        { "data": "title", "width": "150px" },
                        { "data": "descr", "width": "400px" }
                      
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
