<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body class="is-preload">
   <div id="wrapper">
       <section id="main" class="wrapper">
           <div class="inner" align="center">
              <form method="post" action="*">
                 <h2 align="center">입력하세요</h2>
               <fieldset style="width: 600px">
                  <legend align="left">입력사항</legend>
                     <table style="width: 600px">
                        <tr>
                           <td style="text-align: center;">생일</td>
                           <td><input type="text" size="35" name="birth_date" placeholder="ex)1998-01-12" style="width: 450px"></td>
                        </tr>
                        <tr>
                           <td style="text-align: center;">이름</td>
                           <td><input type="password" size="35" name="emp_date" placeholder="이름 입력" style="width: 450px"></td>
                        </tr>
                        <tr>
                           <td style="text-align: center;">성별</td>
                           <td><input type="text" size="35" name="gender" placeholder="ex) M or F로 입력" style="width: 450px"></td>
                        </tr>
                        <tr>
                           <td style="text-align: center;">입사일</td>
                           <td><input type="text" size="35" name="hire_date" placeholder="ex)2019-07-01" style="width: 450px"></td>
                        </tr>
                     </table>
                     <table>
                        <tr>
                           <td align="center">
                              <input class="button primary large" type="submit" value="저장하기">
                              
                           </td>
                           <td align="center">
                              <input class="button primary large" type="reset" value="다시쓰기">
                           </td>
                        </tr>
                     </table>
               </fieldset>
            </form>
           </div>
       </section>
   </div>
</body>
</html>