<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>데이터베이스에 값 저장하기</title>
</head>
<body>
           <div align="center">
              <form method="post" action="#">
                 <h2 align="center">데이터베이스에 값 저장하기</h2>
               <fieldset style="width: 600px">
                  <legend align="left">입력사항</legend>
                     <table style="width: 600px">
                        <tr>
                           <td style="text-align: center;">이름</td>
                           <td><input type="text" size="35" name="userid" placeholder="이름 입력" style="width: 450px"></td>
                        </tr>
                        <tr>
                           <td style="text-align: center;">성별</td>
                           <td><input type="password" size="35" name="userpw" placeholder="ex)M(남자) or F(여자)으로 입력" style="width: 450px"></td>
                        </tr>
                        <tr>
                           <td style="text-align: center;">생일</td>
                           <td><input type="text" size="35" name="username" placeholder="ex)1998-01-12식으로 입력" style="width: 450px"></td>
                        </tr>
                        <tr>
                           <td style="text-align: center;">입사일</td>
                           <td><input type="text" size="35" name="address" placeholder="ex)2019-07-01식으로 입력" style="width: 450px"></td>
                        </tr>
                     </table>
                     <table>
                        <tr>
                           <td align="center">
                              <input type="submit" value="저장하기">
                              
                           </td>
                           <td align="center">
                              <input type="reset" value="다시쓰기">
                           </td>
                        </tr>
                     </table>
               </fieldset>
            </form>
           </div>
  </body>
</html>