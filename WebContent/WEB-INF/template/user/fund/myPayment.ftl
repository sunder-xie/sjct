<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>用户中心-首页-sjct888.com</title>

<meta name="description" content="">
<meta name="author" content="">
<meta name="viewport" content="width=1349">
<#include "/common/resource.ftl">
</head>
<body>
<div style="min-width:1349px;margin:0 auto;max-width:1400px;">
<#include "/common/header.ftl">
<div class="wapper">
	<div class="main">
        <div class="user_panel">
        	<#include "/common/left.ftl">
            <div class="right">
               <div class="tab_table_N creditor auto_css">
                <div class="nav">
                    <ul>
                        <li  class="current"><a href="javascript:void(0)">交易流水</a></li>
                    </ul>
                </div>
                <div class="clear"></div>
                <div class="repayment">
                	<div class="transaction">
                    	<p><label>交易类型:</label><select id="transType">
                    			<option value="">全部</option>
                    		<#--	<option value="0">充值</option> -->
                    			<option value="1">提现</option>
                    			<option value="2">投资</option>
                    			<option value="3">借款</option>
                    			<option value="4">正常还款</option>
                    			<option value="5">提前还款</option>
                    			<option value="6">展期还款</option>
                    			<option value="7">逾期还款</option>
                    			<option value="8">平台垫付</option>
                    			<option value="9">提现管理费</option>
                    			<option value="10">充值管理费</option>
                    			<option value="11">退回投资</option>
                    			<option value="12">归还风险准备金</option>
                    			<option value="13">提取风险准备金</option>
                    			<option value="14">债权转让管理费</option>
                    			<option value="15">接手奖金</option>
                    			<option value="16">债权转让</option>
                    			<option value="17">本金回收</option>
                    			<option value="18">利息收益</option>
                    			<option value="19">投资信息管理费</option>
                    			<option value="20">展期管理费</option>
                    			<option value="21">逾期管理费</option>
                    			<option value="22">借款管理费</option>
                    			<option value="23">提前还款违约金</option>
                    			<option value="24">借款申请</option>
                    			<option value="25">投资满标</option>
                    			<option value="26">充值</option>
                    			<option value="27">推广奖金</option>
                    			<option value="28">第三方代还</option>
                    			<option value="29">推荐人提成</option>
                    			<option value="30">推荐奖励</option>
                    			<option value="33">提现退回</option>
                    			<option value="34">提现管理费退回</option>
                    			<option value="35">vip投资收益</option>
                    		</select></p>
                        <p><label>时间:</label><input  id="startTime" type="text" name="" class="input-sm" onClick="WdatePicker()"/>&nbsp;<span>-&nbsp;</span><input type="text" id="endTime" name="" class="input-sm" onClick="WdatePicker()"/></p>
                        <div class="clear"></div>
                        <div class="button_div"><button class="ui-button ui-button-blue ui-button-mid"  id="search">查询</button><button class="ui-button ui-button-yellow ui-button-mid" id="reset">重置</button></div>
                    </div>
                    <div class="clear"></div>
                     <table class="table table-hover table-h">
                        <thead>
                          <tr>
                            <th style="width:30%;text-align: center;">时间</th>
                            <th style="width:30;text-align: center;">交易类型</th>
                            <th style="width:20%;text-align: center;">交易金额</th>
                            <th style="width:20%;text-align: center;">账户余额</th>
                           <!-- <th>备注</th> -->
                          </tr>
                        </thead>
                        <tbody id="datas" text-align="center">
                        </tbody>
                      </table>
                      <div id="loading" class="load" style="display:none">
				        	 	 			<p>正在加载数据....</p>
				        	  	</div>
		        	  			<div id="nodata" class="load" style="display:none">
		        	 	 					<p>暂无数据</p>
		        	  			</div>
	       		 					<div id="Pagination" class="pagination pagination-right">
                </div>
       		 </div>
            </div>	
        </div>
        <div class="clear"></div>        
    </div>
</div>
</div>
<#include "/common/footer.ftl">
</div>
<script type="text/javascript">
//<![CDATA[
	$(document).ready(function(){
		var $startTime = $("#startTime");
		var $endTime = $("#endTime");
		var $reset = $("#reset");
		var $search = $("#search");
		//查询
		$search.on("click",function(){
			ajaxQuery(1,true);
			return false;
		});
		//重置
		$reset.on("click",function(){
			$startTime.val("");
			$endTime.val("");
			return false;
		});
		ajaxQuery(1,true);
	});
	
	var tradeType={};
//  	tradeType["0"]="充值";
 	tradeType["1"]="提现";
	tradeType["2"]="投资";
	tradeType["3"]="借款";
	tradeType["4"]="正常还款";
	tradeType["5"]="提前还款";
	tradeType["6"]="展期还款";
	tradeType["7"]="逾期还款";
	tradeType["8"]="平台垫付";
	tradeType["9"]="提现管理费";
	tradeType["10"]="充值管理费";
	tradeType["11"]="退回投资";
	tradeType["12"]="归还风险准备金";
	tradeType["13"]="提取风险准备金";
	tradeType["14"]="债权转让管理费";
	tradeType["15"]="接手奖金";
	tradeType["16"]="债权转让";
	tradeType["17"]="本金回收";
	tradeType["18"]="利息收益";
	tradeType["19"]="投资信息管理费";
	tradeType["20"]="展期管理费";
	tradeType["21"]="逾期管理费";
	tradeType["22"]="借款管理费";
	tradeType["23"]="提前还款违约金";
	tradeType["24"]="借款申请";
	tradeType["25"]="投资满标";
// 	tradeType["26"]="银行卡充值";
	tradeType["26"]="充值";
	tradeType["27"]="推广奖金";
	tradeType["28"]="第三方代还";
	tradeType["29"]="推荐人提成";
	tradeType["30"]="推荐奖励";
	tradeType["33"]="提现退回";
	tradeType["34"]="提现管理费退回";
	tradeType["35"]="vip投资收益";
	var currentindex = 1;
	var itemPerPage = 10;//每页显示数据条数
	function ajaxQuery(requestPage,isInit){
		$.ajax({
				type:"POST",
				url:"ajaxQueryMyPayment.do",
				dataType:"json",
				data:"tradeType="+$("#transType").val()+"&startTime="+$("#startTime").val()+"&endTime="+$("#endTime").val()+"&requestPage="+requestPage+"&pageSize="+itemPerPage,
				complete:function(){
				},
				success:function(data) {
					$('tr[id^=ready]').remove();
					if(data!=null){
				        $.each(data.list, function(i, n){//
				        	var row = $("<tr></tr>");
				        	row.attr("id","ready"+i);//改变绑定好数据的行的id
				            row.append($("<td style=\"width:30%;text-align: center;\" >"+n.TRADA_TIME+"</td>"));
				        	row.append($("<td style=\"width:30%;text-align: center;\" >"+tradeType[n.TRADE_TYPE_CD]+"</td>"));
				        	row.append($("<td style=\"width:20%;text-align: center;\" >"+fmoney(n.TRADE_AMT,2)+"</td>"));
				        	row.append($("<td style=\"width:20%;text-align: center;\" >"+fmoney(n.ACCOUNT_BAL,2)+"</td>"));
				        	//row.append($("<td>"+n.COMMENT+"</td>"));
				        	row.appendTo("#datas");
		                });
		                // 分页
		                if(isInit){
		                	pageQuery(data.totalCount);
		                }
						
		                $("#loading").hide();
		                $('tr[id^=ready]').show();
					}
				},
				error:function(text) {
					// alert('请求后台出错.');
				} 
			});
		}
    // 分页查询
	function pageQuery(dataSize){
	    var optInit = $.extend({
		items_per_page:itemPerPage,
		num_display_entries:5,
		current_page:0,
		num_edge_entries:2,
		prev_text:"上一页",
		next_text:"下一页",
		callback:pageselectCallback
		});
	    $("#Pagination").pagination(dataSize, optInit);
	}
	
	// 分页组件回调函数
	function pageselectCallback(page_index, j){
        //ajaxQuery(page_index+1,false);
        if(!isFistLoad1){
			ajaxQuery(page_index+1,false);
		}
		isFistLoad1=false;
        return false;
    }
    
 //]]>
</script>
</body>
</html>