<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.util.List"%>
<%@page import="com.kasikorn.demo.Bean.FormregisterBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href='https://fonts.googleapis.com/css?family=RobotoDraft'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
.

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/autonumeric/4.1.0/autoNumeric.js"></script>
<link rel="stylesheet"
	href="https://www.w3schools.com/lib/w3-colors-flat.css">
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.4.1/jspdf.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
<title>Insert title here</title>
</head>
<body>

	<%
		List<FormregisterBean> list = null;
		Integer a = 0;
	%>
	<%
		list = (List<FormregisterBean>) request.getSession().getAttribute("listUser");
	%>

	<!-- Modal that pops up when you click on "New Message" -->

	<div class="w3-main" style="margin-left: 400px;">

		<i
			class="fa fa-bars w3-button w3-white w3-hide-large w3-xlarge w3-margin-left w3-margin-top"
			onclick="w3_open()"></i>

		<div class="w3-modal-content w3-animate-zoom w3-card"
			style="background-color: #0193d7">
			<h1 style="font-style: italic;" align="center">Bank กสิกร</h1>


		</div>

		<div class="w3-modal-content w3-card w3-animate-bottom">
			<div class="row">
				<div class="col-md-6">
					<input id="myInput" align="right" type="text"
						placeholder="ค้นหา...." class="w3-input w3-border w3-light-grey">
				</div>
				<div class="col-md-6">
					
				</div>
			</div>
			<div id="mostera"></div>

			<input type="hidden" id="regid" name="regid" id="regid">


			<table class="w3-table-all w3-card-4">
				<thead>
					<tr>
						<th class="text-center">ลำดับ</th>
						<th class="text-center">ชื่อ</th>
						<th class="text-center">นามสกุล</th>
						<th class="text-center">ยี่ห่อรถ</th>
						<th class="text-center">รถรุ่น</th>
						<th class="text-center">รายละเอียด</th>
					</tr>
				</thead>
				<tbody id="myTable">
					<%
						for (int i = 0; i < list.size(); i++) {
					%>
					<tr class="text-center">

						<td><%=a = a + 1%></td>
						<td><%=list.get(i).getFoFNameTH()%></td>
						<td><%=list.get(i).getFoLNameTH()%></td>
						<td><%=list.get(i).getFoCarMake()%></td>
						<td><%=list.get(i).getFoCarMake2()%></td>
						<td align="center"><a
							onclick="gotoUpdate('<%=list.get(i).getFoId()%>')"><span
								class="btn btn-primary btn-md">ดูรายละเอียด </span></a> <a
							onclick="gotoRegisSer('<%=list.get(i).getFoId()%>')"><span
								class="	btn btn-success btn-md w3-right"> เพิ่ม</span></a></td>


					</tr>
					<%
						}
					%>
				</tbody>
			</table>

		</div>

		<div class="w3-modal " id="Forms2" style="display: none;">
			<div class="w3-modal-content w3-animate-zoom">
				<div class="w3-container w3-padding w3-sand">
					<span
						onclick="document.getElementById('Forms2').style.display='none'"
						class="w3-button w3-red w3-right w3-xxlarge"><i
						class="fa fa-remove"></i></span>
				</div>

				<jsp:include page="FormPage.jsp"></jsp:include>
				 <input type="button"
					class="w3-btn w3-green w3-deep-orange w3-border w3-right"
					onclick="document.getElementById('Forms2').style.display='none'"
					value="ยกเลิก">
			</div>
		</div>

		<!-- end class -->
	</div>




	<script type="text/javascript">
		function gotoRegisSer(filter) {
			$('#mostera').empty();
			document.getElementById("regid").value = filter;
			var simpleTestBean = {
				"xxx" : $('#regid').val()
			};
			$
					.ajax({
						type : "POST",
						url : "/JJJ",
						data : JSON.stringify(simpleTestBean),
						contentType : "application/json; charset=utf-8",
						dataType : "json",
						success : function(msg) {
							console.log(msg)
							if (msg <= 1) {
								$('#mostera')
										.append(
												' <h3 class="w3-panel w3-green">Success!</h3>');
							} else if (msg <= 2) {
								$('#mostera')
										.append(
												' <h3 class="w3-panel w3-red">Danger!</h3>');
							}

							//$('#brand').append('<option value="' + msg[i].carName+ '">' + msg[i].carName + '</option>');
						}
					});

		}

		function gotoUpdate(filter) {
			document.getElementById("regid").value = filter;
			var simpleTestBean = {
				"xxx" : $('#regid').val()
			};

			$
					.ajax({
						type : "POST",
						url : "/FFF",
						data : JSON.stringify(simpleTestBean),
						contentType : "application/json; charset=utf-8",
						dataType : "json",
						success : function(msg) {
							console.log('Success')
							$('#prefix').text(msg.foPrefix);
							$('#fNameTH').text(msg.foFNameTH);
							$('#lNameTH').text('นามสกุล ' + msg.foLNameTH);
							$('#mobilePhone').text(
									'เบอร์ติดต่อ ' + msg.foMobilePhone);
							$('#birthDay').text('วันเกิดที่ ' + msg.foBirthDay);
							$('#birthMonth').text('เดือน  ' + msg.foBirthMonth);
							$('#birthYear').text('ปี  ' + msg.foBirthYear);
							$('#refID').text('เลขบัตรประชาชน ' + msg.foRefID);
							$('#email').text('Email  ' + msg.foEmail);
							$('#propertyProjectName').text(
									'ชื่อบ้าน  ' + msg.foPropertyProjectName);
							$('#district').text('ตำบล  ' + msg.foDistrict);
							$('#amphur').text('อำเภอ  ' + msg.foAmphur);
							$('#province').text('จังหวัด  ' + msg.foProvince);
							$('#job').text('อาชีพ  ' + msg.foJob);
							$('#salary').text(
									'เงินเดือน  ' + msg.foSalary + ' บาท');
							$('#yearOfService')
									.text(
											'ปีที่ทำงาน ' + msg.foYearOfService
													+ ' ปี');
							$('#monthOfService').text(
									'เดือนที่ทำงาน  ' + msg.foMonthOfService
											+ ' เดือน');
							$('#groupType').text('ปีรถ  ' + msg.foGroupType);
							$('#carMake').text('ยี่ห่อ  ' + msg.foCarMake);
							$('#carMake2').text('รุ่น  ' + msg.foCarMake2);
							$('#lessmoney').text(
									'วงเงินที่ท่านต้องการ  ' + msg.foLessmoney);
							$('#lessyear').text(
									'ระยะการขอกู้  ' + msg.foLessyear + ' ปี');
							$('#bureauPaidedStatusPaid').text(
									'เคยค้างชำระระหว่าง90วัน '
											+ msg.foBureauPaidedStatusPaid);
							$('#availableTime').text(
									'ตืดต่อวันวันทร์-ศุกร์ '
											+ msg.foAvailableTime);
							$('#checkbox1').text(msg.foCheckbox1);
							$('#checkbox2').text(msg.foCheckbox2);
							$('#checkbox3').text(msg.foCheckbox3);
							$('#checkbox4').text(msg.foCheckbox4);
							if (msg.foRadio == '1') {
								document.getElementById("regid").value = filter;
								var simpleTestBean = {
									"xxx" : $('#regid').val()
								};
								$
										.ajax({
											type : "POST",
											url : "/MFD",
											data : JSON
													.stringify(simpleTestBean),
											contentType : "application/json; charset=utf-8",
											dataType : "json",
											success : function(msg2) {
												$('#Redi').text('ผู้ร่วมกู้');
												$('#prefix2').text(
														msg2.mePrefix2);
												$('#fNameTH2').text(
														msg2.meFname2);
												$('#lNameTH2')
														.text(
																'นามสกุล '
																		+ msg2.meLname2);
												$('#mobilePhone2')
														.text(
																'เบอร์ติดต่อ '
																		+ msg2.meTalaphone2);
												$('#birthDay2')
														.text(
																'วันเกิดที่ '
																		+ msg2.meBirthDay2);
												$('#birthMonth2')
														.text(
																'เดือน  '
																		+ msg2.meBirthMonth2);
												$('#birthYear2')
														.text(
																'ปี  '
																		+ msg2.meBirthYear2);
												$('#email2')
														.text(
																'Email  '
																		+ msg2.meEmail2);
												$('#job2')
														.text(
																'อาชีพ  '
																		+ msg2.meJob2);
												$('#salary2')
														.text(
																'เงินเดือน  '
																		+ msg2.meSalary2
																		+ ' บาท');
												$('#yearOfService2')
														.text(
																'ปีที่ทำงาน '
																		+ msg2.meYearOfService2
																		+ ' ปี');
												$('#monthOfService2')
														.text(
																'เดือนที่ทำงาน  '
																		+ msg2.meMonthOfService2
																		+ ' เดือน');
												$("#Forms2").show('slow');
												$("#Forms3").show('slow');
											}
										});

							} else {
								$("#Forms2").show('slow');
								$("#Forms3").hide('slow');
							}

						}
					});
			/* document.getElementById("regid").value = filter;
			document.welcome.action = "gotoSelPrivice";
			document.welcome.submit(); */

		}
		$(document)
				.ready(
						function() {
							$("#myInput")
									.on(
											"keyup",
											function() {
												var value = $(this).val()
														.toLowerCase();
												$("#myTable tr")
														.filter(
																function() {
																	$(this)
																			.toggle(
																					$(
																							this)
																							.text()
																							.toLowerCase()
																							.indexOf(
																									value) > -1)
																});
											});
						});
	</script>
</body>
</html>