<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<h1>Please Log In to Your Account</h1>
<p>
  Please use the form below to log in to your account.
</p>
<form action="j_spring_security_check" method="post">
  <label for="j_username">Login</label>:
  <input id="j_username" name="j_username" size="20" maxlength="50" type="text"/>
  <br />

  <label for="j_password">Password</label>:
  <input id="j_password" name="j_password" size="20" maxlength="50" type="password"/>
  <br />

  <input type="submit" value="Login"/>
</form>

