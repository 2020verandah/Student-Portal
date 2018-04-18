//// JavaScript source code

//var students = [["1", "Akhil", "null", "K", "aka@aka.com", "1@1234", "1", ".Net"],
//["2", "Mitul", "null", "Ch", "mch@mch.com", "2@1234", "1", ".Net"],
//["3", "Lokesh", "null", "B", "lob@lob.com", "3@1234", "2", "Java"],
//["4", "Shashi", "null", "B", "shb@shb.com", "4@1234", "2", "Java"],
//["5", "Kishore", "null", "K", "kik@kik.com", "5@1234", "3", "DevOps"],
//["6", "Naveen", "null", "Sh", "nas@nas.com", "6@1234", "3", "DevOps"]
//],
//    table = document.getElementById("sntable");

//for (var i = 1; i < table.rows.length; i++) {

//    for (var j = 0; j < table.rows[i].cells.length; j++) {
//        table.rows[i].cells[j].innerHTML = students[i-1][j];
//    }

//}

//var trainers = [["101", "Vicky", "null", "Garg", "vig@vig.com", "v@1234", "1", ".Net"]],
//    table = document.getElementById("tntable");

//for (var i = 1; i < table.rows.length; i++) {

//    for (var j = 0; j < table.rows[i].cells.length; j++) {
//        table.rows[i].cells[j].innerHTML = trainers[i - 1][j];
//    }

//}


////var sbox1 = document.getElementById("sbox1");
////var sbox2 = document.getElementById("sbox2");
////var sbox3 = document.getElementById("sbox3");
////var sbox4 = document.getElementById("sbox4");
////var sbox5 = document.getElementById("sbox5");
////var sbox6 = document.getElementById("sbox6");
////var sbox7 = document.getElementById("sbox7");
////var sbox8 = document.getElementById("sbox8");

////sbox1.addEventListener('blur', ersbox1);
////sbox2.addEventListener('blur', ersbox2);
////sbox3.addEventListener('blur', ersbox3);
////sbox4.addEventListener('blur', ersbox4);
////sbox5.addEventListener('blur', ersbox5);
////sbox6.addEventListener('blur', ersbox6);
////sbox7.addEventListener('blur', ersbox7);
////sbox8.addEventListener('blur', ersbox8);


////function ersbox1() {
////    if (){

////    }
////}



//function showadmin() {
//    document.getElementById("admindiv").style.display = "block";
//    document.getElementById("studentsadd").style.display = "none";
//    document.getElementById("trainersadd").style.display = "none";
//    document.getElementById("studentstable").style.display = "none";
//    document.getElementById("trainerstable").style.display = "none";


//}

//function addstudent() {
//    if (document.getElementById("studentsadd").style.display === "none") {
//        document.getElementById("studentsadd").style.display = "block";
//        document.getElementById("trainersadd").style.display = "none";
//        document.getElementById("studentstable").style.display = "none";
//        document.getElementById("trainerstable").style.display = "none";
//        document.getElementById("admindiv").style.display = "none";

//    }
//    else {
//        document.getElementById("studentsadd").style.display = "block";
//        document.getElementById("admindiv").style.display = "none";

//    }

//}

//function addtrainer() {
//    if (document.getElementById("trainersadd").style.display === "none") {
//        document.getElementById("trainersadd").style.display = "block";
//        document.getElementById("studentsadd").style.display = "none";
//        document.getElementById("studentstable").style.display = "none";
//        document.getElementById("trainerstable").style.display = "none";
//        document.getElementById("admindiv").style.display = "none";

//    }
//    else {
//        document.getElementById("trainersadd").style.display = "block";

//        document.getElementById("admindiv").style.display = "none";

//    }
//}

//function studentshow() {
//    if (document.getElementById("studentstable").style.display === "none") {
//        document.getElementById("studentstable").style.display = "block";
//        document.getElementById("trainerstable").style.display = "none";
//        document.getElementById("studentsadd").style.display = "none";
//        document.getElementById("trainersadd").style.display = "none";
//        document.getElementById("admindiv").style.display = "none";

//    }
//    else {
//        document.getElementById("studentstable").style.display = "block";
//        document.getElementById("admindiv").style.display = "none";

//    }

//}

//function trainershow() {
//    if (document.getElementById("trainerstable").style.display === "none") {
//        document.getElementById("trainerstable").style.display = "block";
//        document.getElementById("studentstable").style.display = "none";
//        document.getElementById("studentsadd").style.display = "none";
//        document.getElementById("trainersadd").style.display = "none";
//        document.getElementById("admindiv").style.display = "none";

//    }
    
//    else {
//        document.getElementById("trainerstable").style.display = "block";
//        document.getElementById("admindiv").style.display = "none";

//    }
//}

//function canceldata1() {
//    if (confirm("Do You want to Cancel the data entered!")) {

//        document.getElementById("addbox1").reset();
//    }
  


//}
//function canceldata2() {
//    if (confirm("Do You want to Cancel the data entered!")) {
//        document.getElementById("addbox2").reset();
//    }
//}

//function savedata1() {
//    if (confirm("Do You want to Save the data entered!")) {

//        var sbox1 = document.getElementById("sbox1").value;
//        var sbox2 = document.getElementById("sbox2").value;
//        var sbox3 = document.getElementById("sbox3").value;
//        var sbox4 = document.getElementById("sbox4").value;
//        var sbox5 = document.getElementById("sbox5").value;
//        var sbox6 = document.getElementById("sbox6").value;
//        var sbox7 = document.getElementById("sbox7").value;
//        var sbox8 = document.getElementById("sbox8").value;


//        var button1 = document.createElement('button');
//        button1.innerHTML = 'Edit';

//        var button2 = document.createElement('button');
//        button2.innerHTML = 'Delete';

//        button1.style.width = "95%";
//        button2.style.width = "95%";


//        button1.setAttribute('onclick', 'editdata1()');
//        button2.setAttribute('onclick', 'deletedata1(this)');


//        var stable = document.getElementById("sntable");
//        var row1 = stable.insertRow(-1);
//        var cell1 = row1.insertCell(0);
//        var cell2 = row1.insertCell(1);
//        var cell3 = row1.insertCell(2);
//        var cell4 = row1.insertCell(3);
//        var cell5 = row1.insertCell(4);
//        var cell6 = row1.insertCell(5);
//        var cell7 = row1.insertCell(6);
//        var cell8 = row1.insertCell(7);
//        var cell9 = row1.insertCell(8).appendChild(button1);
//        var cell10 = row1.insertCell(9).appendChild(button2);

        
      

//        cell1.innerHTML = sbox1;
//        cell2.innerHTML = sbox2;
//        cell3.innerHTML = sbox3;
//        cell4.innerHTML = sbox4;
//        cell5.innerHTML = sbox5;
//        cell6.innerHTML = sbox6;
//        cell7.innerHTML = sbox7;
//        cell8.innerHTML = sbox8;
       

//        document.getElementById("addbox1").reset();
//    }

//}

//function savedata2() {
//    if (confirm("Do You want to Save the data entered!")) {

//        var tbox1 = document.getElementById("tbox1").value;
//        var tbox2 = document.getElementById("tbox2").value;
//        var tbox3 = document.getElementById("tbox3").value;
//        var tbox4 = document.getElementById("tbox4").value;
//        var tbox5 = document.getElementById("tbox5").value;
//        var tbox6 = document.getElementById("tbox6").value;
//        var tbox7 = document.getElementById("tbox7").value;
//        var tbox8 = document.getElementById("tbox8").value;


//        var button1 = document.createElement('button');
//        button1.innerHTML = 'Edit';

//        var button2 = document.createElement('button');
//        button2.innerHTML = 'Delete';

//        button1.style.width = "95%";
//        button2.style.width = "95%";

//        button1.setAttribute('onclick', 'editdata2()');
//        button2.setAttribute('onclick', 'deletedata2(this)');


//        var ttable = document.getElementById("tntable");
//        var row1 = ttable.insertRow(-1);
//        //var id = 0;
//        //id++;
//        //var cd = 0;
//        //cd++;
//        //row1.id = "editablerow(id)";
//        var cell1 = row1.insertCell(0);
//        //cell1.id = "editablecell(cd)";
//        var cell2 = row1.insertCell(1);
//        var cell3 = row1.insertCell(2);
//        var cell4 = row1.insertCell(3);
//        var cell5 = row1.insertCell(4);
//        var cell6 = row1.insertCell(5);
//        var cell7 = row1.insertCell(6);
//        var cell8 = row1.insertCell(7);
//        var cell9 = row1.insertCell(8).appendChild(button1);
//        var cell10 = row1.insertCell(9).appendChild(button2);
//        //row1.cell1.contentEditable = "true";
//        //row1.cell1.setAttribute('contenteditable', 'true');

//        cell1.innerHTML = tbox1;
//        //cell1.contentEditable = true;

//        //var div1 = document.createElement('div');
//        //div1.innerHTML = tbox1;
//        //cell1.appendChild(div1);
//        //div1.contentEditable = true;

//        cell2.innerHTML = tbox2;
//        cell3.innerHTML = tbox3;
//        cell4.innerHTML = tbox4;
//        cell5.innerHTML = tbox5;
//        cell6.innerHTML = tbox6;
//        cell7.innerHTML = tbox7;
//        cell8.innerHTML = tbox8;



    
//        document.getElementById("addbox2").reset();
//    }


//}


//function deletedata1(r) {
//    if (confirm("Do You want to Delete the row?")) {
//        var i = r.parentNode.parentNode.rowIndex;
//        document.getElementById("sntable").deleteRow(i);
//    }
 
//}

//function deletedata2(r) {
//    if (confirm("Do You want to Delete the row?")) {

//        var i = r.parentNode.parentNode.rowIndex;
//        document.getElementById("tntable").deleteRow(i);
//    }
//}


//function editdata1() {

//    //document.getElementsById("editablecell(cd)").contentEditable = 'true';

//    //var i = r.parentNode.parentNode.rowIndex;
//    //document.getElementByClassName("sntable").contentEditable(i) = "true";

//    //var x = document.getElementById("sntable").rows;
//    //var y = x[-1].cells;
//    //y[0].innerHTML="";

//}

//function editdata2() {

//    //var i = r.parentNode.parentNode.rowIndex;
//    //document.getElementById("tntable").contentEditable(i) = "true";
//    ////var i = r.parentNode.parentNode.rowIndex;
//    // var ttable = document.getElementById("tntable");

//    //ttable.setAttribute('contenteditable', 'true');
    

//}