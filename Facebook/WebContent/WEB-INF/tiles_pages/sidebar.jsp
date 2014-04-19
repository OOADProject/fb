<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
 <hr>
&nbsp;&nbsp;&nbsp;Advertisment

<script>
	$(document).ready(function(){
		$.ajax({
			
			
			url:'/Facebook/module02/peopleYouMayKnow',
			type: 'POST',
			success:function(data){
				$.each(data.mayKnownPeople,function(index,value){
					var temp='<div id="people"; style="height:60px;width:96%; border: 1px solid; border-color: rgb(211, 214, 219); margin-top: 2%; margin-left: 2%;">'+'<a href="#"><img src="'+value.friendprofilepic+'" style="height: 60px; width: 60px; float: left;" /></a>';
					temp+='<div style="margin-top: 5%;">&nbsp;<a href="#" style="color: rgb(59, 89, 152); font-size: 12px; font-weight: bold; float: left; margin-left:1%;">'+value.fname+'&nbsp;'+value.lname+'<a>';
					temp+='<input type="button" value="Add Friend" style="height:20px; width:25%; font-size: 11px; float: right; margin-right:1%;" />';
					temp+='</div></div>';
					$("#peoplesContainerId").append(temp);
				});
				
			
			}
		});
	})
</script>


<div id="peoplesContainerId" style="height: 460px;width: 100%; background-color:white;  margin-top: 51%;">
	<div align="center" >
	<h5>People You May Know</h5>
	</div>
<hr>

</div>