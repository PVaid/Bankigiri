

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">

<title>Login, singup and recovery forms</title>
<style>
      @import url('https://fonts.googleapis.com/css?family=Nunito+Sans');

body {
  display: flex;
  justify-content: center;
  

}

.vldform {
    box-sizing: border-box;
    width: 375px;
    display: flex;
    flex-direction: column;
    padding: 35px 55px;
    font-family: "Nunito Sans";
    animation: a .5s;
    animation-fill-mode: forwards;
    border: #d4d4d4 1px solid;
    border-radius: 10px;
    box-shadow: 0 2px 6px 0 hsla(0, 0%, 0%, 0.2);
}

.vldform a {
    text-decoration: none;
}

.vldform h1 {
    font-size: 40px;
    color: #0A7F99;
    margin: 0px 0px 26px 0px;
}

.vldform__textbox {
    border: 0;
    outline: 0;
    border-bottom: 2px #512DA8 solid;
    font-size: 18px;
    margin-top: 36px;
    padding-bottom: 9px;
    font-family: "Nunito Sans";
}

.vldform__textbox[type="password"]::after {
    content: " ";
    display: block;
    width: 10px;
    height: 10px;
    background-color: #0A7F99;
    
}

.vldform__recoverypassword{
    align-self: flex-end;
    margin: 10px 0px;
    font-size: 16px;
    color: #2E67A9;
}

.vldform__button {
    margin-top: 42px;
    height: 50px;
    border: 0;
    color: #fff;
    border-radius: 10px;
    background-image: linear-gradient(#0A7F99,#0A7F99);
    font-size: 22px;
    font-weight: 600;
    font-family: "Nunito Sans";
    cursor: pointer;
}

.vldform__signup {
    align-self: center;
    margin-top: 50px;
    margin-bottom: 0px;
}

.vldform__signup a {
    color: #6538B5;
    font-weight: 600;
    margin-left: 4px;
}

.vldreg {
    display: none;
}

.vldrecpass {
    display: none;
}

@keyframes a {
    0% {
        opacity: 0;
        transform: translateY(-5px)
    }

    to {
        opacity: 1;
        transform: translateY(5px)
    }
}

@media (max-width: 400px) {
    .vldform {
        width: 350px;
        padding: 20px 40px;
    }
    
}

@media (max-width: 360px) {
    .vldform {
        width: 305px;
        padding: 20px 35px;
    }

    .vldform__signup {
        text-align: center;
    }

    .vldform__signup a {
        margin-left: 14px;
    }
}
    </style>
<script>
  window.console = window.console || function(t) {};
</script>
<script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>
</head>
<body translate="no">
<body>
<form class="vldform vldauth"  method="post" action="admincheck.jsp" name="f" onSubmit='return call()'>
<h1>Log in</h1>
<input class="vldform__textbox" type="text"  placeholder="Admin Id" name="name" required>
<input class="vldform__textbox" type="password"  id="" placeholder="Password" name="pwd" required>
<a class="vldform__recoverypassword" href="#" onclick="showrecoveryform()">Forgot password?</a>
<input class="vldform__button" type="submit" value="Log in">
<input class="vldform__button" type="button" value="Home" onClick="window.location='index.jsp'">
</p>
</form>

<form class="vldform vldrecpass" action="recovery.php" method="POST">
<h1>Password recovery</h1>
<input class="vldform__textbox" type="email" name="email" id="" placeholder="Email" required>
<input class="vldform__button" type="submit" value="Recovery">
</form>
</body>
<script>
"use strict";"object"!=typeof window.CP&&(window.CP={}),window.CP.PenTimer={programNoLongerBeingMonitored:!1,timeOfFirstCallToShouldStopLoop:0,_loopExits:{},_loopTimers:{},START_MONITORING_AFTER:2e3,STOP_ALL_MONITORING_TIMEOUT:5e3,MAX_TIME_IN_LOOP_WO_EXIT:2200,exitedLoop:function(o){this._loopExits[o]=!0},shouldStopLoop:function(o){if(this.programKilledSoStopMonitoring)return!0;if(this.programNoLongerBeingMonitored)return!1;if(this._loopExits[o])return!1;var t=this._getTime();if(0===this.timeOfFirstCallToShouldStopLoop)return this.timeOfFirstCallToShouldStopLoop=t,!1;var i=t-this.timeOfFirstCallToShouldStopLoop;if(i<this.START_MONITORING_AFTER)return!1;if(i>this.STOP_ALL_MONITORING_TIMEOUT)return this.programNoLongerBeingMonitored=!0,!1;try{this._checkOnInfiniteLoop(o,t)}catch(e){return this._sendErrorMessageToEditor(),this.programKilledSoStopMonitoring=!0,!0}return!1},_sendErrorMessageToEditor:function(){try{if(this._shouldPostMessage()){var o={action:"infinite-loop",line:this._findAroundLineNumber()};parent.postMessage(o,"*")}else this._throwAnErrorToStopPen()}catch(t){this._throwAnErrorToStopPen()}},_shouldPostMessage:function(){return document.location.href.match(/boomerang/)},_throwAnErrorToStopPen:function(){throw"We found an infinite loop in your Pen. We've stopped the Pen from running. Please correct it or contact support@codepen.io."},_findAroundLineNumber:function(){var o=new Error,t=0;if(o.stack){var i=o.stack.match(/boomerang\S+:(\d+):\d+/);i&&(t=i[1])}return t},_checkOnInfiniteLoop:function(o,t){if(!this._loopTimers[o])return this._loopTimers[o]=t,!1;if(t-this._loopTimers[o]>this.MAX_TIME_IN_LOOP_WO_EXIT)throw"Infinite Loop found on loop: "+o},_getTime:function(){return+new Date}},window.CP.shouldStopExecution=function(o){var t=window.CP.PenTimer.shouldStopLoop(o);return!0===t&&console.warn("[CodePen]: An infinite loop (or a loop taking too long) was detected, so we stopped its execution. Sorry!"),t},window.CP.exitedLoop=function(o){window.CP.PenTimer.exitedLoop(o)};
</script>
<script id="rendered-js">
      function showregform() {
  document.title = "Sign up";
  document.querySelector(".vldauth").style.display = "none";
  document.querySelector(".vldreg").style.display = "flex";
}

function showauthform() {
  document.title = "Log in";
  document.querySelector(".vldauth").style.display = "flex";
  document.querySelector(".vldreg").style.display = "none";
  document.querySelector(".vldrecpass").style.display = "none";
}

function showrecoveryform() {
  document.title = "Password recovery";
  document.querySelector(".vldauth").style.display = "none";
  document.querySelector(".vldrecpass").style.display = "flex";
}
      //# sourceURL=pen.js
    </script>
<script>
!function(){function e(e){t(e),window.PrefixFree&&StyleFix.process()}function t(e){var t=n(),a=document.createElement("style");a.type="text/css",a.className="cp-pen-styles",a.styleSheet?a.styleSheet.cssText=e:a.appendChild(document.createTextNode(e)),c.appendChild(a),t&&t.parentNode.removeChild(t)}function n(){for(var e=document.getElementsByTagName("style"),t=e.length-1;t>=0;t--)if("cp-pen-styles"===e[t].className)return e[t];return!1}function a(e){window.addEventListener?window.addEventListener("message",e,!1):window.attachEvent("onmessage",e)}function s(e,t){try{if(!/codepen/.test(e.origin))return null;if("object"!=typeof e.data)return null;if(e.data.action===t)return e.data}catch(n){}return null}var c=document.head||document.getElementsByTagName("head")[0],r="ACTION_LIVE_VIEW_RELOAD_CSS";a(function(t){var n=s(t,r);n&&e(n.data.css)})}();
</script>
</body>
</html>
