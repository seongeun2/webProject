<!DOCTYPE html>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="org.apache.commons.lang.StringUtils"%>
<%@ page import="org.apache.commons.lang.time.DateFormatUtils"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="main.java.DateUtil"%>

<%@ page import="org.apache.commons.lang.time.*" %>   

<%@ page import="java.util.Date" %>





<html lang="ko">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible"  content="IE=Edge" />
<title>달력</title>
<style type="text/css">
.bodyframe_full{width:75%; float: right; background-color:white; margin-top: 20px; padding: 20px; height: 800px;}
@media (max-width: 800px) {
    .leftcolumn, .rightcolumn {   
        width: 100%;
        padding: 0;
    }
}
.calendar {width:100%; font-size:12px; table-layout:fixed; border-collapse:separate;border:1px dotted #cde1ff;}
.calendar caption{ visibility: hidden;font-size:5px}
.calendar th{text-align:center; line-height:25px; height:25px; background-color:#d7e4fd; border:0px dotted #cde1ff;background: url(/images/th_cal_bg.png); background-position:top left;}
.calendar th.division{text-align:center;width:90px;}
.calendar th.sun{color:#ff0000;background: url(/images/th_cal_sbg.png);}
.calendar th.sat{color:#1b6f9e;}
.calendar td{line-height:15px; color:#525252; white-space: nowrap; border:1px dotted #cde1ff; padding:8px; vertical-align:top; height:100px;}
.calendar td.position {width:90px; height :100px;text-align:center;vertical-align:middle;background-color:#d7e4fd;font-weight:bold;}
.calendar .csun{line-height:18px; color:red; background-color:#fff6ed; white-space: nowrap;}
.calendar .cday{line-height:18px; color:#333; white-space:nowrap;}
.calendar .csat{line-height:18px; color:#333; white-space:nowrap;}

.calendar table.sch {table-layout:fixed; border-collapse:collapse; font-size:10px; border:0; width:100%; }
.calendar table.sch td {border:0; width:100%; line-height:20px;height:20px;padding:0px;}
.calendar table.sch td.smore {text-align:right;padding:5px;height:23px;color:#939393;font-weight:bold;font-size:10px;}
.calendar table.sch td.smore a {color:#939393;font-size:10px;}
.calendar table.sch td.smore a:hover {color:#4170a4;font-size:10px;}
.calendar table.sch td.sch_time {width:45px;color:#4170a4;font-size:11px;font-weight:bold;}
.calendar table.sch td.sch_list {}
.calendar table.sch td.sch_list a {line-height:20px;overflow:hidden;white-space:nowrap; }

</style>



<STYLE>
UNKNOWN {
   WORD-BREAK: break-all; WORD-WRAP: break-word
}
</STYLE>

<%   
   
   String FULL = "yyyyMMdd";
   String nowDate = FastDateFormat.getInstance(FULL).format(new Date());
   int y = 0;
   int m = 0;
   int d = 0;
   
   String NOW = "";
   
   NOW = StringUtils.trimToEmpty(nowDate);
   //년
   y = Integer.parseInt(NOW.substring(0, 4));
   //월
    m = Integer.parseInt(NOW.substring(4, 6)) -1;
   //일
    d = Integer.parseInt(NOW.substring(6, 8));
   
   
%>

<script type="text/javascript">
   
   function getDate(yyyy, mm, dd){

      if(mm > 12){
         ++yyyy;
         mm=1;
      }else if(mm < 1){
         --yyyy;
         mm=12; 
      }
      if(mm<10) mm= "0" +mm;
      else mm = "" +mm;
      
      if(dd<10) dd = "0" + dd;
      else    dd = "" + dd;         
      
      yyyymmdd = yyyy+mm+dd;
      return yyyymmdd;
   }
        
   function refreshSelf(){
      var formx = document.MAIN_FORM;
      formx.submit();         
   }
   
   function showDiary(){
      var formx = document.MAIN_FORM;
      formx.NOW.value = getDate( formx.diary_y.value, formx.diary_m.value, 1);
      alert(formx.NOW.value);
   }
   
   function prevMonth(){
      var formx = document.MAIN_FORM;
      formx.NOW.value = getDate(formx.diary_y.value, parseInt(formx.diary_m.value)-1, 1);      
      alert(formx.NOW.value);
   }
   function nextMonth(){
      var formx = document.MAIN_FORM;
      formx.NOW.value =  getDate(formx.diary_y.value, parseInt(formx.diary_m.value)+1, 1);
      alert(formx.NOW.value);
   }   
            
   function afterPlanAdd(){
      refreshSelf();         
   }   

   function launchFunction(reqIndex) {
      saveMenuFunctionValue = new Array();
      
      var funcValue = saveMenuFunctionValue[reqIndex-1];
      eval(funcValue);
   }
   
   
</script>
</head>
<body>
<form name="MAIN_FORM" method="post" action="">
<div  border="0" cellspacing="0" cellpadding="0" class="bodyframe_full">


<!-- search START-->
    <div class="tbl_srch_wrap">    
    <button type="submit" class="btnCalPre" title="이전" onClick="javascript:prevMonth();return false;">이전</button>
    
     <select class="input" style="width:50px;" ID="diary_y" name="diary_y" title="년도">
      <%
      int endyear = Integer.parseInt(DateUtil.system(DateUtil.YYYY)) + 2;
      for(int year = 2000; year <= endyear ; year++) {
      %>
            <option value="<%=year%>" <%if(year == y) {%>selected<%}%>><%=year%></option>
      <%
         }
      %>
     </select>
        년
     <select class="input" style="width:50px;" id="diary_m" name="diary_m" onChange="javascript:showDiary()"  title="월">
         <%
       for(int month = 1; month <= 12 ; month++){
       %>
          <option value="<%=month%>" <%if(month == (m+1)) {%>selected<%}%>><%=month%></option>
       <% 
          }
       %>
     </select>
          월    
    <button type="submit" class="btnCalNext" title="다음" onClick="javascript:nextMonth();">다음</button>
    <a href="javascript:goChangPlan();" class="btnDefault"></a>
    </div>
<!-- search END--> 

<!-- calender start -->
<!-- calender end -->
      <h4 class="hide">월간일정달력</h4>
      <div class="calendar_wrap">
      <table  summary="월간일정" class="calendar" >
            <caption>달력</caption>            
               <colgroup>
               <col width="*" />
               <col width="*" />
               <col width="*" />
               <col width="*" />
               <col width="*" />
               <col width="*" />
               <col width="*" />
               </colgroup>
            <thead>
            <tr>
               <th class="sun csun" scope="col">일(SUN)</th>
               <th scope="col">월(MON)</th>
               <th scope="col">화(THU)</th>
               <th scope="col">수(WED)</th>
               <th scope="col">목(THU)</th>
               <th scope="col">금(FRI)</th>
               <th class="csat" scope="col">토(SAT)</th>
            </tr>
            </thead>
            
             
            
<%
   //현재달 1일
   Calendar calendar = Calendar.getInstance();
   calendar.set(y, m, 1);
   //다음달 1일
   Calendar nCalendar = Calendar.getInstance();
   nCalendar.set(calendar.get(Calendar.YEAR), m+1, 1);
%>
      <tr>
<%
   //공백 일 출력
   int day_of_week = calendar.get(Calendar.DAY_OF_WEEK);
   String dayClass = "cday";
   for(int i = 1; i < day_of_week; i++) {
      
      if(day_of_week%7==1){
         dayClass="csun";
      }
      %>
      <td class="<%=dayClass%>">&nbsp;</td>
      
      
<%   }
      
   int index = 0;
   //일자별 일정 출력
   while(calendar.before(nCalendar)) {
      String day = String.valueOf(calendar.get(Calendar.DATE));
      String date = DateFormatUtils.format(calendar.getTime(), "yyyyMMdd");
      String dateMMDD = date.substring(4,8); 
%>

               <td id="calNum_<%=date%>" style="cursor:hand" 
               class="<%=(calendar.get(Calendar.DAY_OF_WEEK)%7 == 1)? "csun":"cday"%>">
               <!-- <a href="javascript:goAddPlan('<%=day%>');"></a> -->
               <div id="divCalNum_<%=date%>"><%=day%></div>
               </td>
               

<%         //해당 일자당 일정수
         int PLAN_PER_DATE = 5;
         boolean MORE_PLAN=false; //더보기버튼
         boolean annivFlag = false;//기념일
         
         

      if((calendar.get(Calendar.DAY_OF_WEEK)%7)==0) {
%>
</tr>
      <tr>
<%         
      }
      calendar.add(Calendar.DATE, 1);
   }
   int day_of_week_nCal = nCalendar.get(Calendar.DAY_OF_WEEK);
   dayClass="cday";
   if(day_of_week_nCal > 1) {
      for(int i = 1; i <= (8 - day_of_week_nCal); i++) {
         if(day_of_week_nCal %7 ==1){
            dayClass="csun";
         }
      }
   }
%>   
      
                  
               
   
             </tr>
</table>
</div>
   </div>
</body>
</HTML>