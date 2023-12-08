$(document).ready(function () {
    GetClaimtransaction()
})

function GetClaimtransaction() {
    $.ajax({
        "url": base_url + "Claim/EmployeeClaimTransactions",
        "method": "GET",
        contentType: JSON,
        headers: {
            "Authorization": "Bearer " + localStorage.getItem("token")
        },
        "data": { "UserId": localStorage.getItem("UserRid") },
        "success": function (response) {
            console.log(response)
            if (response.ok) {
               
                $("#tblClaimTransactionHisotry").DataTable({
                    data: response.data,
                    columns: [
                        { "data": "transactionNo" },
                        { "data": "claimTitle" },
                        { "data": "claimReason" },
                        { "data": "claimAmount" },
                        { "data": "claimDt" },
                        { "data": "transactionDate" },
                        { "data": "employeeName" }

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

function ActionRequest(claimId) {
    $("#modalAction").modal("show")
    $("#hdnClaimId").val(claimId)
}

$("#btnReject").click(function () {
    isValid = requiredTextFiled("Remerks", "remarks");
    if (!isValid) { return false }


    if (confirm("Are you sure to reject this request ?")) {
        ApproveRejectRequest(0)
    }
})
$("#btnApprove").click(function () {

    isValid = requiredTextFiled("Remerks", "remarks");
    if (!isValid) { return false }

    if (confirm("Are you sure to approve this request ?")) {
        ApproveRejectRequest(1)
    }
})

function ApproveRejectRequest(action) {

   
    var claim = {
        "ClaimId": $("#hdnClaimId").val(),
        "Role": $("#hdnRole").val(),
        "Action": action,
        "UserId": localStorage.getItem("UserRid"),
        "Remarks": $("#txtRemerks").val()
    }
    console.log(claim)
    $.ajax({
        "url": base_url + "Claim/ActionClaim",
        "method": "POST",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        headers: {
            "Authorization": "Bearer " + localStorage.getItem("token")
        },
        "data": JSON.stringify(claim),
        "success": function (response) {
            if (response.ok) {
                $("#modalAction").modal("hide")
                toastr.success(response.message)         
                setTimeout(function () {
                    window.location.reload()
                }, 5000)
               
            }
            else {
                toastr.error(response.message)  
            }
        },
        "error": function (err) {
            console.log(err)
        }
    })
}

function ShowActionHistory(id) {
    $("#modalActionHistory").modal("show")
    $.ajax({
        "url": base_url + "Claim/ClaimActionHisotry",
        "method": "GET",
        contentType: JSON,
        headers: {
            "Authorization": "Bearer " + localStorage.getItem("token")
        },
        "data": { "claimid": id },
        "success": function (response) {
            if (response.ok) {
                // console.log(response)
                $("#tblActionHistory").DataTable().destroy()
                $("#tblActionHistory").DataTable({
                    data: response.data,
                    columns: [
                        { "data": "actionDt","width":"150px" },
                        { "data": "actionby", "width": "150px" },
                        { "data": "action", "width": "400px" },
                        { "data": "remarks", "width": "250px" },
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

function DownloadFile(path) {
    window.open("/Claim/Download?path=" + path,"_blank")
}