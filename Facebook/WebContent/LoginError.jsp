<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Error</title>

<meta http-equiv="Content-rel" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link href="/Facebook/asset/css/bootstrap-theme.css" rel="stylesheet" />
<link href="/Facebook/asset/css/bootstrap-theme.min.css"
	rel="stylesheet" />
<link href="/Facebook/asset/css/bootstrap-theme.css" rel="stylesheet" />
<link href="/Facebook/asset/css/bootstrap.css" rel="stylesheet" />
<link href="/Facebook/asset/css/bootstrap.min.css" rel="stylesheet" />
<link href="/Facebook/asset/css/bootstrap-theme.css.map"
	rel="stylesheet" />
<link href="/Facebook/asset/css/bootstrap.css.map" rel="stylesheet" />
<link href="/Facebook/asset/css/login_home.css" rel="stylesheet" />


</head>
<body>
<div class="clearfix">
            <h2>Your Form</h2>
            <hr>
            <div id="build">
              <form id="target" class="form-horizontal">
              <fieldset><div class="component" data-content="&lt;form class='form'&gt;
  &lt;div class='controls'&gt;
    
      
      
    &lt;label class='control-label'&gt; Form Name &lt;/label&gt;
&lt;input class='input-large field' data-type=&quot;input&quot; type='text' name='name' id='name' value ='Facebook Login' /&gt;

    &lt;hr/&gt;
    &lt;button id=&quot;save&quot; class='btn btn-info'&gt;Save&lt;/button&gt;&lt;button id=&quot;cancel&quot; class='btn btn-danger'&gt;Cancel&lt;/button&gt;
  &lt;/div&gt;
&lt;/form&gt;
" data-title="Form Name" data-trigger="manual" data-html="true"><!-- Form Name -->
<legend>Facebook Login</legend>
</div><div class="component" data-content="&lt;form class='form'&gt;
  &lt;div class='controls'&gt;
    
      
      
      
      
      
      
    &lt;label class='control-label'&gt; ID / Name &lt;/label&gt;
&lt;input class='input-large field' data-type=&quot;input&quot; type='text' name='id' id='id' value ='errormessage' /&gt;
&lt;label class='control-label'&gt; Label Text &lt;/label&gt;
&lt;input class='input-large field' data-type=&quot;input&quot; type='text' name='label' id='label' value ='' /&gt;
&lt;label class='control-label'&gt; Starting Text &lt;/label&gt;
&lt;textarea class=&quot;field&quot; data-type=&quot;textarea&quot; style='min-height: 200px' id='textarea'&gt;Incorrect Email
The email you entered does not belong to any account.

You can login using any email, username or mobile phone number associated with your account. Make sure that it is typed correctly.&lt;/textarea&gt;

    &lt;hr/&gt;
    &lt;button id=&quot;save&quot; class='btn btn-info'&gt;Save&lt;/button&gt;&lt;button id=&quot;cancel&quot; class='btn btn-danger'&gt;Cancel&lt;/button&gt;
  &lt;/div&gt;
&lt;/form&gt;
" data-title="Text Area" data-trigger="manual" data-html="true"><!-- Textarea -->
<div class="control-group">
  <label class="control-label" for="errormessage"></label>
  <div class="controls" style="width: 250px;;" align="center">                     
    <textarea id="errormessage" name="errormessage">Incorrect Email
The email you entered does not belong to any account.

You can login using any email, username or mobile phone number associated with your account. Make sure that it is typed correctly.</textarea>
  </div>
</div>
</div><div class="component" data-content="&lt;form class='form'&gt;
  &lt;div class='controls'&gt;
    
      
      
      
      
      
      
      
      
      
      
      
      
    &lt;label class='control-label'&gt; ID / Name &lt;/label&gt;
&lt;input class='input-large field' data-type=&quot;input&quot; type='text' name='id' id='id' value ='email' /&gt;
&lt;label class='control-label'&gt; Input Size &lt;/label&gt;
&lt;select class=&quot;field&quot; data-type=&quot;select&quot; id='inputsize'&gt;

  &lt;option value=&quot;input-mini&quot;  &gt;Mini&lt;/option&gt;

  &lt;option value=&quot;input-small&quot;  &gt;Small&lt;/option&gt;

  &lt;option value=&quot;input-medium&quot;  &gt;Medium&lt;/option&gt;

  &lt;option value=&quot;input-large&quot;  selected  &gt;Large&lt;/option&gt;

  &lt;option value=&quot;input-xlarge&quot;  &gt;Xlarge&lt;/option&gt;

  &lt;option value=&quot;input-xxlarge&quot;  &gt;Xxlarge&lt;/option&gt;

&lt;/select&gt;
&lt;label class='control-label'&gt; Label Text &lt;/label&gt;
&lt;input class='input-large field' data-type=&quot;input&quot; type='text' name='label' id='label' value ='Email or Phone' /&gt;
&lt;label class='control-label'&gt; Help Text &lt;/label&gt;
&lt;input class='input-large field' data-type=&quot;input&quot; type='text' name='helptext' id='helptext' value ='' /&gt;
&lt;label class='control-label'&gt; Placeholder &lt;/label&gt;
&lt;input class='input-large field' data-type=&quot;input&quot; type='text' name='placeholder' id='placeholder' value ='' /&gt;
&lt;label class=&quot;checkbox control-group&quot;&gt;
  &lt;input type=&quot;checkbox&quot; data-type=&quot;checkbox&quot; class=&quot;input-inline field&quot; name=&quot;required&quot; id=&quot;required&quot; checked=&quot;checked&quot; &gt;
  Required
&lt;/label&gt;

    &lt;hr/&gt;
    &lt;button id=&quot;save&quot; class='btn btn-info'&gt;Save&lt;/button&gt;&lt;button id=&quot;cancel&quot; class='btn btn-danger'&gt;Cancel&lt;/button&gt;
  &lt;/div&gt;
&lt;/form&gt;
" data-title="Text Input" data-trigger="manual" data-html="true"><!-- Text input-->
<div class="control-group">
  <label class="control-label" for="email">Email or Phone</label>
  <div class="controls">
    <input id="email" name="email" type="text" placeholder="" class="input-large" required="">
    
  </div>
</div>
</div><div class="component" data-content="&lt;form class='form'&gt;
  &lt;div class='controls'&gt;
    
      
      
      
      
      
      
      
      
      
      
      
      
    &lt;label class='control-label'&gt; ID / Name &lt;/label&gt;
&lt;input class='input-large field' data-type=&quot;input&quot; type='text' name='id' id='id' value ='password' /&gt;
&lt;label class='control-label'&gt; Input Size &lt;/label&gt;
&lt;select class=&quot;field&quot; data-type=&quot;select&quot; id='inputsize'&gt;

  &lt;option value=&quot;input-mini&quot;  &gt;Mini&lt;/option&gt;

  &lt;option value=&quot;input-small&quot;  &gt;Small&lt;/option&gt;

  &lt;option value=&quot;input-medium&quot;  &gt;Medium&lt;/option&gt;

  &lt;option value=&quot;input-large&quot;  selected  &gt;Large&lt;/option&gt;

  &lt;option value=&quot;input-xlarge&quot;  &gt;Xlarge&lt;/option&gt;

  &lt;option value=&quot;input-xxlarge&quot;  &gt;Xxlarge&lt;/option&gt;

&lt;/select&gt;
&lt;label class='control-label'&gt; Label Text &lt;/label&gt;
&lt;input class='input-large field' data-type=&quot;input&quot; type='text' name='label' id='label' value ='Password' /&gt;
&lt;label class='control-label'&gt; Help Text &lt;/label&gt;
&lt;input class='input-large field' data-type=&quot;input&quot; type='text' name='helptext' id='helptext' value ='' /&gt;
&lt;label class='control-label'&gt; Placeholder &lt;/label&gt;
&lt;input class='input-large field' data-type=&quot;input&quot; type='text' name='placeholder' id='placeholder' value ='' /&gt;
&lt;label class=&quot;checkbox control-group&quot;&gt;
  &lt;input type=&quot;checkbox&quot; data-type=&quot;checkbox&quot; class=&quot;input-inline field&quot; name=&quot;required&quot; id=&quot;required&quot; checked=&quot;checked&quot; &gt;
  Required
&lt;/label&gt;

    &lt;hr/&gt;
    &lt;button id=&quot;save&quot; class='btn btn-info'&gt;Save&lt;/button&gt;&lt;button id=&quot;cancel&quot; class='btn btn-danger'&gt;Cancel&lt;/button&gt;
  &lt;/div&gt;
&lt;/form&gt;
" data-title="Text Input" data-trigger="manual" data-html="true"><!-- Text input-->
<div class="control-group">
  <label class="control-label" for="password">Password</label>
  <div class="controls">
    <input id="password" name="password" type="text" placeholder="" class="input-large" required="">
    
  </div>
</div>
</div><div class="component" data-content="&lt;form class='form'&gt;
  &lt;div class='controls'&gt;
    
      
      
      
      
      
      
      
      
    &lt;label class='control-label'&gt; Label Text &lt;/label&gt;
&lt;input class='input-large field' data-type=&quot;input&quot; type='text' name='label' id='label' value ='' /&gt;
&lt;label class='control-label'&gt; Checkboxes &lt;/label&gt;
&lt;textarea class=&quot;field&quot; data-type=&quot;textarea-split&quot; style='min-height: 200px' id='checkboxes'&gt;Keep me logged in&lt;/textarea&gt;
&lt;label class=&quot;checkbox control-group&quot;&gt;
  &lt;input type=&quot;checkbox&quot; data-type=&quot;checkbox&quot; class=&quot;input-inline field&quot; name=&quot;required&quot; id=&quot;required&quot;&gt;
  Required
&lt;/label&gt;
&lt;label class='control-label'&gt; Group Name &lt;/label&gt;
&lt;input class='input-large field' data-type=&quot;input&quot; type='text' name='name' id='name' value ='' /&gt;

    &lt;hr/&gt;
    &lt;button id=&quot;save&quot; class='btn btn-info'&gt;Save&lt;/button&gt;&lt;button id=&quot;cancel&quot; class='btn btn-danger'&gt;Cancel&lt;/button&gt;
  &lt;/div&gt;
&lt;/form&gt;
" data-title="Multiple Checkboxes Inline" data-trigger="manual" data-html="true"><!-- Multiple Checkboxes (inline) -->
<div class="control-group">
  <label class="control-label" for=""></label>
  <div class="controls">
    <label class="checkbox inline" for="-0">
      <input type="checkbox" name="" id="-0" value="Keep me logged in">
      Keep me logged in
    </label>
  </div>
</div>
</div><div class="component" data-content="&lt;form class='form'&gt;
  &lt;div class='controls'&gt;
    
      
      
      
      
      
      
      
      
    &lt;label class='control-label'&gt; Button Type &lt;/label&gt;
&lt;select class=&quot;field&quot; data-type=&quot;select&quot; id='buttontype'&gt;

  &lt;option value=&quot;btn-default&quot;  &gt;Default&lt;/option&gt;

  &lt;option value=&quot;btn-primary&quot;  selected  &gt;Primary&lt;/option&gt;

  &lt;option value=&quot;btn-info&quot;  &gt;Info&lt;/option&gt;

  &lt;option value=&quot;btn-success&quot;  &gt;Success&lt;/option&gt;

  &lt;option value=&quot;btn-warning&quot;  &gt;Warning&lt;/option&gt;

  &lt;option value=&quot;btn-danger&quot;  &gt;Danger&lt;/option&gt;

  &lt;option value=&quot;btn-inverse&quot;  &gt;Inverse&lt;/option&gt;

&lt;/select&gt;
&lt;label class='control-label'&gt; ID / Name &lt;/label&gt;
&lt;input class='input-large field' data-type=&quot;input&quot; type='text' name='id' id='id' value ='login' /&gt;
&lt;label class='control-label'&gt; Label Text &lt;/label&gt;
&lt;input class='input-large field' data-type=&quot;input&quot; type='text' name='label' id='label' value ='' /&gt;
&lt;label class='control-label'&gt; Button Label &lt;/label&gt;
&lt;input class='input-large field' data-type=&quot;input&quot; type='text' name='buttonlabel' id='buttonlabel' value ='Login' /&gt;

    &lt;hr/&gt;
    &lt;button id=&quot;save&quot; class='btn btn-info'&gt;Save&lt;/button&gt;&lt;button id=&quot;cancel&quot; class='btn btn-danger'&gt;Cancel&lt;/button&gt;
  &lt;/div&gt;
&lt;/form&gt;
" data-title="Single Button" data-trigger="manual" data-html="true"><!-- Button -->
<div class="control-group">
  <label class="control-label" for="login"></label>
  <div class="controls">
    <button id="login" name="login" class="btn btn-primary">Login</button>
  </div>
</div>
</div></fieldset></form>
            </div>
          </div>
</body>
</html>