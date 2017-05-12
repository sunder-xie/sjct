<!DOCTYPE html>
<html lang="en" style="background:#f0f0f0">
<head>
<meta charset="utf-8">
<title>世纪创投</title>
<meta property="qc:admins" content="174237764760521101166654" />
<meta name="description" content="">
<meta name="author" content="">
<#include "/common/resource.ftl">
</head>
<body>
<div style="min-width:1349px;background:#f0f0f0">
	<div style="margin-left:25%;margin-right:25%;background:#fff;padding-left: 10px;padding-right: 10px;">
	<p>&nbsp;</p>
  <h1  style="text-align:center;font-size:26px;">投资协议</h1> 
  <p style="float:right;margin-right:50px">合同编号:${myCreditorVO.contractNum}<br>签约日期:${contractDate}</p>
  <p> &nbsp;&nbsp; </p>
  <br/>
  <p>&nbsp;&nbsp;&nbsp;协议三方定义:</p>
  <p>&nbsp;&nbsp;&nbsp;贷出者:&nbsp;&nbsp;<font style="color:#ffb23f "> ${myCreditorVO.creditorCustName}  </font>(以此为代表的全部借款人) 以下称“贷出方”;</p>
  <p>&nbsp;&nbsp;&nbsp;借入者:&nbsp;&nbsp;<font style="color:#ffb23f "> ${myCreditorVO.loanCustName} </font> (以下称“借入方”);</p>
  <p>&nbsp;&nbsp;&nbsp;管理方: &nbsp;&nbsp;深圳市世纪创投互联网金融服务有限公司 ，以下称“管理方”。</p>
  <p>&nbsp;&nbsp;&nbsp;郑重承诺:</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（1）管理方是世纪创投，为借贷双方提供P2P个人借贷信息、信用咨询等交易信息管理服务。</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（2）借入方应当将真实有效的信息提供给管理方，并承诺杜绝发生各种恶意逃避还款义务的情况，包括但不限于借用他人身份信息、双重身份证件等。</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（3）贷出方承诺对本协议涉及的借款具有完全的支配能力，是其自有闲散资金，为其合法所得；并承诺其提供给管理方的信息是真实有效的，承担一切因虚假信息而导致债权不能实现的法律后果。</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（4）贷出方和借入方同意成立借贷关系，并由管理方提供平台化信息对接服务。各方经协商一致，特在管理方所在地签订如下协议，共同遵照履行:</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;贷出者:</p>
  <div style="margin-left:5%;width:500px">
  <table border="1">
  <thead>
  	<tr>
  		<td>出借人名称</td>
  		<td>借出金额(人民币)</td>
  		<td>借款期限</td>
  		<td>年利率</td>
  		<td>借款开始日期</td>
  		<td>借款到期日期</td>
  		<td>总还款本息(人民币)</td>  		
  	</tr>
  </thead>
  	<tbody id="datas3"></tbody>

  </table >
  </div>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;三方约定:</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  由管理方负责将贷出方的款项划转至借款方开立的账户，由管理方代为签署担保协议，办理担保相关手续（包括以管理方名义办理抵押登记、代为接受质押物等），行使担保权（借款人出现违约情况，管理方代贷出方处置借款人抵押物、质押物和要求保证人承担保证责任）。</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第一条 借款基本信息</p>
  <div style="margin-left:5%;">
  <table border="1" width="500px">
  	<tr>
  		<td>借款详细用途:</td>
  		<td align="center">${myCreditorVO.loanPurpose}</td>
  	</tr>
  	<tr>
  		<td>借款本金数额:</td>
  		<td align="center">${myCreditorVO.loanAmt}</td>
  	</tr>
  	<tr>
  		<td>应偿还本息数额:</td>
  		<td align="center">${myCreditorVO.ttlPrincipalInterestAmt}</td>
  	</tr>
  	<tr>
  		<td>还款分期月数:</td>
  		<td align="center">${myCreditorVO.loanTerm}</td>
  	</tr>
  	<tr>
  		<td>借款利率:</td>
  		<td align="center">${myCreditorVO.loanRate}%</td>
  	</tr>
  	<tr>
  		<td>还款方式:</td>
  		<td align="center">${myCreditorVO.repayTypeName}</td>
  	</tr>
  	<tr>
  		<td>借款描述:</td>
  		<td align="center"></td>
  	</tr>
  	<tr>
  		<td>还款日:</td>
  		<td align="center">每月${repayDay}日（24：00前，节假日不顺延）</td>
  	</tr>
  	<tr>
  		<td>还款起止日期:</td>
  		<td align="center">${myCreditorVO.loanDate} 至 ${myCreditorVO.loanDueDate} 止</td>
  	</tr>
  </table>
  </div>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;分期还款列表</p>
  <div style="margin-left:5%;">
  <table border="1" width="500px" >
  	<thead>
  	<tr align="center">
  		<td>期数</td>
  		<td>年利率</td>
  		<td>应还时间</td>
  		<td>应还本息</td>
  		<td>还款本金</td>
  		<td>还款利息</td>
  	</tr>
  	</thead>
		<tbody id="datas2"></tbody>
  </table>
  </div>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第二条 各方权利和义务</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;贷出方的权利和义务 :</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（1）贷出方同意管理方在本合同第一条项下借款审核完毕后将借款划拨给借入方。</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（2）贷出方享有其所出借款项所带来的利息收益。</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（3）如借入方违约，借入方同意管理方将已获得的借入方的信息告知贷出方。 </p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（4）贷出方可以根据自己的意愿进行本协议下其对借入方债权的转让。在贷出方的债权转让成功后，借入方需对债权受让人继续履行本协议下各项义务，债权转让通知以电子邮件或手机短信方式送达发布邮件或者短信的第二天视为送达，借入方不得拒绝履行还款义务。 （详细阅读“债权转让及受让协议”）</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（5）贷出方应主动缴纳由利息所得带来的可能的税费。</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（6）如借入方还款不足约定本金、利息、逾期罚息、违约金的，各方同意各自按照其借出款项比例收取还款。</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（7）贷出方可授权管理方代为追缴借入方逾期未还款项。</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;借入方权利和义务 。</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（1）借入方必须按期足额向贷出方支付本金和利息。 </p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（2）借入方必须足额向管理方支付平台成交服务费用。</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（3）借入方承诺所借款项不用于任何违法用途。 </p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（4）借入方应确保其提供的信息和联系方式的真实性，不得提供虚假信息或隐瞒重要事实。 </p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（5）借入方有权了解其在管理方的信用评审进度及结果。 </p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（6）借入方不得将本协议项下的任何权利义务转让给任何其他方。</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（7）由于转账有延时性，借入方向平台还款充值时次日才可到账，故借入方需在实际还款到期日前一天将钱转入世纪创投平台在第三方机构开立的账户中，方便贷出方及时提现。</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;管理方的权利和义务:</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（1）贷出方和借入方同意管理方有权代贷出方每期收取贷出方出借款项所对应的借入方每期偿还的本息，代收后按照贷出方的要求进行处置。</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（2）贷出方同意委托管理方在合同第一条项下借款审核完毕后将此笔借款直接划付至借入方账户。</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（3）贷出方和借入方同意管理方有权代贷出方在有必要时对借入方进行催收工作，包括但不限于电话通知、发律师函、登门催讨、对借入方提起诉讼等。	</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（4）管理方有权向借入方收取双方约定的平台成交服务费，并在有必要时对借入方进行催收工作，包括但不限于电话通知、发律师函、登门催讨、对借入方提起诉讼等。</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（5）管理方作为贷出方和借入方双方的居间人，促成双方交易，贷出方和借入方双方行为所产生的法律后果由相应各方承担。如因借入方或贷出方或其他方（包括但不限于技术问题）造成的延误或错误，管理方不承担任何责任。 </p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（6）管理方应对贷出方和借入方的信息及本协议内容保密；如任何一方违约，或因相关权力部门要求（包括但不限于法院、仲裁机构、金融监管机构等），管理方有权披露。 </p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第三条 平台成交服务费</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1、在本协议中“平台成交服务费”是指因管理方为借入方提供信用咨询、评估、还款提醒、账户管理、还款特殊情况沟通等系列信用相关服务而由借入方支付给管理方的报酬。</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、借入方和管理方协商一致可以调整平台成交服务费，无需经过贷出方同意。</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第四条 违约责任 </p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1、合同各方均应严格履行合同义务，非经各方协商一致或依照本协议约定，任何一方不得解除本协议。</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、任何一方违约，违约方应承担因违约使得其他各方产生的费用和损失，包括但不限于调查、诉讼费、律师费等，应由违约方承担。如违约方为借入方的，贷出方有权立即解除本协议，并要求借入方立即偿还未偿还的本金、利息、逾期罚息、违约金等。如本协议提前解除时，借入方在网站的账户里有任何余款，管理方有权按照本协议第四条第3项的清偿顺序将借入方的余款用于清偿，并要求借入方支付因此产生的相关费用。</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3、借入方的每期还款均应按照如下顺序清偿: </p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（1）逾期罚息以及违约金；</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（2）平台逾期催收费； </p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（3）拖欠的利息； </p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（4）拖欠的本金； </p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（5）正常的利息； </p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（6）正常的本金； </p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（7）根据本协议产生的其他全部费用； </p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4、借入方应严格履行还款义务，如借入方违约，则应按照下述条款向贷出方支付违约金。
违约金= 未付本息 * 1‰ * 逾期天数</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5、借入方应严格履行还款义务，如借入方逾期还款超过3天，管理方将收取平台逾期催收费作为网站电话提醒和催收服务的费用。平台逾期催收费最低50元，最高为借款本金的1%。 </p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6、如果借入方逾期支付任何一期还款超过60天，本协议项下的全部借款本息提前到期，借入方应立即清偿本协议下尚未偿付的全部本金、利息、逾期罚息、违约金及根据本协议产生的其他全部费用。  </p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7、如果借入方逾期支付任何一期还款超过60天，平台方有权将借入方的“逾期记录”记入平台方逾期黑名单系统，平台方不承担任何法律责任。</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;8、如果借入方逾期支付任何一期还款超过60天，平台方有权将借入方违约失信的相关信息在媒体披露，平台方不承担任何责任。 </p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;9、在借入方还清全部本金、利息、逾期罚息、违约金之前，逾期罚息、违约金的计算不停止。 </p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第五条 提前还款 </p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1、借入方可在借款期间任何时候提前偿还剩余借款。 </p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、提前清偿全部剩余借款 。乙方提前清偿全部剩余借款时，应向甲方支付剩余全部本金和利息。 </p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3、提前偿还部分借款 </p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（1）借入方提前偿还部分借款，对贷款的总期限及月偿还利息数额不产生影响。 </p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（2）借入方提前偿还部分借款，仍应向贷出方支付全部借款利息。  </p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4、任何形式的提前还款不影响平台方向借入方收取在本协议第三条中说明的借款平台成交服务费。</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第六条 法律及争议解决  </p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本协议的签订、履行、终止、解释均适用中华人民共和国法律，并由深圳人民法院管辖。</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第七条 附则  </p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1、本协议采用电子文本形式制成，各方均认可该形式的法律效力。  </p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、本协议本合同第一条项下借款提交审核之日生效。</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3、本协议签订之日起至借款全部清偿之日止，借入方或贷出方有义务在下列信息变更三日内提供更新后的信息给平台方:本人、本人的家庭联系人及紧急联系人、工作单位、居住地址、住所电话、手机号码、电子邮箱、银行账户的变更。若因任何一方不及时提供上述变更信息而带来的损失或额外费用应由该方承担。</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4、如果本协议中的任何一条或多条因违反法律法规而被认定无效，该无效条款并不影响本协议其他条款的效力。</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;特别提示：鉴于平台方是为借贷双方提供对接服务，促成双方建立借贷关系的一方，当平台方进行风控审核与财务审核时，发现风控审核与财务审核不符的，为了维护借贷双方的权益，保护借贷双方的资金安全，平台方有权取消该次交易，借贷双方扣缴的费用按照流标处理返还其各自账户，因借贷交易生成的列表予以删除。但借贷双方被第三方收取的费用（包含但不限于身份认证、学历认证等费用）不予返还。</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（以下无正文）</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;贷出者: &nbsp;&nbsp;<font style="color:#ffb23f ">${myCreditorVO.creditorCustName}</font>;</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;借入者: &nbsp;&nbsp;<font style="color:#ffb23f ">${myCreditorVO.loanCustName};</font></p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;通信地址： 深圳市前海深港合作区前湾一路1号</p>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;管理方： 深圳市世纪创投互联网金融服务有限公司</p>

  
  </div>


 </div>

</body>
<script type="text/javascript">
$(document).ready(function(){					   
	// 查询列表
	var loanId = ${myCreditorVO.id};
		ajaxQuery(loanId);
		ajaxQuery1(loanId);
	});
	function ajaxQuery(loanId){
		$.ajax({
			type:"POST",
			url:"ajaxQueryProtocolInfo.do",
			dataType:"json",
			data:"loanId="+ loanId,
			complete:function(){
// 					alert('3333');
			},
			success:function(data) {
				 $('tr[id^=ready]').remove();
				 $.each(data, function(i, n){
	             var row = $("<tr></tr>");
	             row.attr("id","ready"+i);//改变绑定好数据的行的id
	             row.append($("<td style=\"text-align: center;\" >" + (i+1) +"/"+ data.length + "</td>"));//期数
	             row.append($("<td style=\"text-align: center;\" >" + n.LOAN_RATE +"%"+ "</td>"));//年利率
	             row.append($("<td style=\"text-align: center;\" >" + n.repayplan_date + "</td>"));//应还时间
	             row.append($("<td style=\"text-align: center;\" >" + n.principa_interest_amt + "</td>"));//应还本息
	             row.append($("<td style=\"text-align: center;\" >" + n.principal_amt + "</td>"));//还款本金
	             row.append($("<td style=\"text-align: center;\" >" + n.interest_amt + "</td>"));//还款利息
	             row.appendTo("#datas2");
	                });
				 $("#loading").hide();
	                $('tr[id^=ready]').show();
				},
			});
	}
	function ajaxQuery1(loanId){
		$.ajax({
				type:"POST",
				url:"ajaxQueryCreditor.do",
				dataType:"json",
				data:"loanId="+ loanId,
				complete:function(){
//	 					alert('3333');
				},
				success:function(data) {
					 $('tr[id^=ready1]').remove();
					 $.each(data, function(i, n){
		             var row = $("<tr></tr>");
		             row.attr("id","ready1"+i);//改变绑定好数据的行的id
		             row.append($("<td style=\"text-align: center;\" >" + HidChar(n.custName) + "</td>"));//
		             row.append($("<td style=\"text-align: center;\" >" + n.crAmt + "</td>"));//
		             row.append($("<td style=\"text-align: center;\" >" + n.loanTerm + "</td>"));//
		             row.append($("<td style=\"text-align: center;\" >" + n.loanRate +"%"+ "</td>"));//
		             row.append($("<td style=\"text-align: center;\" >" + n.loanDate + "</td>"));//
		             row.append($("<td style=\"text-align: center;\" >" + n.loanDueDAte + "</td>"));//
		             row.append($("<td style=\"text-align: center;\" >" + n.ttlPrincipalInterest+"</td>"));//
		             row.appendTo("#datas3");
		                });
					 $("#loading").hide();
		                $('tr[id^=ready1]').show();
					},
				});
			}
	
	function HidChar(str)
	 {
		 var s=str.substring(0,1); //取第一个字符
		 var strlen = "";
		 for(var i = 1;i < str.length;i++)
		  {
		  	strlen += "*";
		  }
		 s =s + strlen;	
	 	 return s;
	}
</script>
</html>