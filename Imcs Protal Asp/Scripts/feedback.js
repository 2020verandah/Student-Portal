$(document).ready(function () { });
        function Validate()
        {
            
            if (!$("input[id='RBL1']:checked").val()) {
                debugger;
                alert('Nothing is checked!');
            }
            else {
                alert('One of the radio buttons is checked!');
            }
        }




            //alert($('input[type="radio"]:checked'));

            

            //var checkedRadio = $("#RBL1 input[type=radio]:checked");
            //if (checkedRadio.length > 0) {
            //    var selectedValue = checkedRadio.val();
            //    var selectedText = checkedRadio.next().html();
            //    alert("Selected Text: " + selectedText + " Selected Value: " + selectedValue);
            //} else {
            //    alert("Item not selected.");
            //}


           // alert();
            //var isValid = true;
            //$('input[type="radio"]').each(function () {
               
            //    if ($('input[type="radio"]:checked').val() == undefined)
            //    {
            //        alert('Please answer all questions');
            //    }
            //});

            //var IsCheckedrbl1 = $("#RBL1").prop("checked", true);
                //$('#RBL1').is(':checked');
            
            //debugger;
            //if (!IsCheckedrbl1) {
            //    alert("Select any option for Question number 1 ");
            //}
            //else {
            //    return true;
            //}

            //if ($('#RBL1').is(':checked').val() == 'true')
            //{
            //    alert();
            //}

            //if (!$('#RBL1').is(':checked').val()) {
            //    alert('Nothing is checked!');
            //    return false;
            //}