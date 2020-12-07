function validate(){

    /*var subName = document.getElementById("subscriptionName").value;
    var bCycle =  document.getElementById("cycle").value;
    var price =   document.getElementById("price").value;
    var sDate =   document.getElementById("startDate").value;
    var eDate =   document.getElementById("expiredDate").value;
    var status =  document.getElementById("status").value;*/
    
        var subName = document.forms["myForm"]["subscriptionName"].value;
        var bCycle =  document.forms["myForm"]["cycle"].value;
        var price =   document.forms["myForm"]["price"].value;
        var sDate =   document.forms["myForm"]["startDate"].value;
        var eDate =   document.forms["myForm"]["expiredDate"].value;
        var status =  document.forms["myForm"]["status"].value;

        if(subName == "" || bCycle == "" || price == "" || sDate == "" || eDate == "" || status == "" ){
            alert(" All fields must be filled out");
            return false; 
        }
        
       /* if(subName == "") {
            alert("subscription name must be filled out");
            return false; 
        }

        else if(bCycle == "") {
            alert("billing cycle must be filled out");
            return false; 
        }

        else if(price == "") {
            alert("price must be filled out");
            return false; 
        }

        else if(sDate == "") {
            alert("start date must be filled out");
            return false; 
        }

        else if(eDate == "") {
            alert("expired date must be filled out");
            return false; 
        }
        else if(status == "") {
            alert("status must be filled out");
            return false; 
        }
        else{
            return true;
        }
        
        /*else{
            setSuccessFor(subName);
        }*/   

        /*if (x == "") {
            alert("Name must be filled out");
            return false;
          }*/

}