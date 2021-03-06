html, body {
	margin: 0;
	padding: 0
}
h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, cite, code, del, dfn, em, img, q, s, samp, small, strike, strong, sub, sup, tt, var, dd, dl, dt, li, ol, ul, fieldset, form, label, legend, button, table, caption, tbody, tfoot, thead, tr, th, td {
	margin: 0;
	padding: 0;
	border: 0;
	font-weight: normal;
	font-style: normal;
	font-size: 100%;
	font-family: inherit
}
strong, b {
	font-weight: bold
}
em, i {
	font-style: italic
}
body {
	line-height: 1
}
table {
	border-collapse: collapse;
	border-spacing: 0
}
q:before, q:after, blockquote:before, blockquote:after {
	content: ""
}
html {
	overflow-y: scroll;
	font-size: 100%;
	-webkit-text-size-adjust: 100%;
	-ms-text-size-adjust: 100%
}
a:focus {
	outline: thin dotted
}
article, aside, details, figcaption, figure, footer, header, hgroup, nav, section {
	display: block
}
audio, canvas, video {
	display: inline-block;
*display:inline;
*zoom:1
}
audio:not([controls]) {
	display: none
}
sub, sup {
	font-size: 75%;
	line-height: 0;
	position: relative;
	vertical-align: baseline
}
sup {
	top: -0.5em
}
sub {
	bottom: -0.25em
}
img {
	border: 0;
	-ms-interpolation-mode: bicubic
}
button, input, select, textarea {
	font-size: 100%;
	margin: 0;
	vertical-align: baseline;
*vertical-align:middle
}
button, input {
	line-height: normal;
*overflow:visible
}
button::-moz-focus-inner, input::-moz-focus-inner {
border:0;
padding:0
}
button, input[type="button"], input[type="reset"], input[type="submit"] {
	cursor: pointer;
	-webkit-appearance: button
}
input[type="search"] {
	-webkit-appearance: textfield;
	-webkit-box-sizing: content-box;
	-moz-box-sizing: content-box;
	box-sizing: content-box
}
input[type="search"]::-webkit-search-decoration {
-webkit-appearance:none
}
textarea {
	overflow: auto;
	vertical-align: top
}
body {
	font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
	font-size: 15px;
	color: #404040
}
::selection, ::-moz-selection {
background:#d75701;
color:#fff;
text-shadow:none
}
h1, .h1 {
	font-size: 30px;
	line-height: 35px;
	font-weight: 500
}
h2, .h2 {
	font-size: 24px;
	line-height: 30px;
	font-weight: 500
}
h3, .h3 {
	font-size: 18px;
	line-height: 25px;
	font-weight: 500
}
h4, .h4 {
	font-size: 16px;
	line-height: 20px;
	font-weight: 500
}
h5, .h5 {
	font-size: 16px;
	line-height: 20px;
	font-weight: 500
}
h6, .h6 {
	font-size: 14px;
	line-height: 20px;
	font-weight: 500
}
ul {
	margin: 0 0 15px 15px
}
ol {
	margin: 0 0 15px 20px
}
li {
	margin-bottom: 5px
}
li ul, li ol {
	margin-bottom: 0
}
dl {
	margin-bottom: 10px
}
dl dt {
	font-weight: bold
}
dl dd {
	margin: 0 0 5px 10px
}
p {
	line-height: 25px;
	margin-top: 20px;
	margin-bottom: 20px
}
a {
	color: #000;
	text-decoration: none;
	border-bottom: 1px solid #404040
}
a:hover {
	color: #d75701;
	border-bottom: 1px solid #d75701
}
a.no-border {
	border-bottom: 0
}
blockquote {
	margin-top: 20px 0;
	padding: 0 0 0 20px;
	border-left: 5px solid #d75701
}
blockquote p:first-child {
	margin-top: 5px
}
.descr {
	display: block;
	font-size: 12px;
	line-height: 20px;
	color: #7f7e7e
}
.btn {
	display: inline-block;
	padding: 4px 10px 4px;
	font-size: 13px;
	line-height: 18px;
	color: #333;
	text-align: center;
	text-shadow: 0 1px 1px rgba(255,255,255,0.75);
	vertical-align: middle;
	cursor: pointer;
	background-color: #e6e6e6;
	background-repeat: repeat-x;
	background-image: -khtml-gradient(linear, left top, left bottom, from(#fff), to(#e6e6e6));
	background-image: -moz-linear-gradient(top, #fff, #e6e6e6);
	background-image: -ms-linear-gradient(top, #fff, #e6e6e6);
	background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #fff), color-stop(100%, #e6e6e6));
	background-image: -webkit-linear-gradient(top, #fff, #e6e6e6);
	background-image: -o-linear-gradient(top, #fff, #e6e6e6);
	background-image: linear-gradient(top, #fff, #e6e6e6);
filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffff', endColorstr='#e6e6e6', GradientType=0);
	border: 1px solid #ccc;
	border-bottom-color: #b3b3b3;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05);
	-moz-box-shadow: inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05);
	box-shadow: inset 0 1px 0 rgba(255,255,255,.2), 0 1px 2px rgba(0,0,0,.05)
}
.btn:hover {
	color: #333;
	text-decoration: none;
	background-color: #e6e6e6;
	background-position: 0 -15px;
	border-bottom-color: #b3b3b3;
	-webkit-transition: background-position .1s linear;
	-moz-transition: background-position .1s linear;
	-o-transition: background-position .1s linear;
	transition: background-position .1s linear
}
.modal-backdrop {
	position: fixed;
	z-index: 1000;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	background: #000
}
.modal-backdrop.fade {
	-webkit-transition: opacity .2s linear;
	-moz-transition: opacity .2s linear;
	-o-transition: opacity .2s linear;
	transition: opacity .2s linear;
	filter: alpha(opacity=0);
	-khtml-opacity: 0;
	-moz-opacity: 0;
	opacity: 0
}
.modal-backdrop.in {
	z-index: 1000
}
.modal-backdrop, .modal-backdrop.fade.in {
	filter: alpha(opacity=50);
	-khtml-opacity: .5;
	-moz-opacity: .5;
	opacity: .5
}
.modal {
	position: fixed;
	top: 0;
	left: 240px;
	z-index: 1050;
	overflow: auto;
	width: 400px;
	height: 100%;
	background-color: #fff;
	border-right: 1px solid #404040;
	-webkit-box-shadow: 0 0 7px rgba(0,0,0,0.5);
	-moz-box-shadow: 0 0 7px rgba(0,0,0,0.5);
	box-shadow: 0 0 7px rgba(0,0,0,0.5)
}
.modal.large {
	width: 700px
}
.modal.fade {
	-webkit-transition: left .4s ease-out;
	-moz-transition: left .4s ease-out;
	-o-transition: left .4s ease-out;
	transition: left .4s ease-out;
	left: -700px
}
.modal.fade.large {
	left: -1100px
}
.modal.fade.in {
	left: 240px
}
.close {
	float: right;
	font-size: 26px;
	line-height: 30px;
	font-weight: bold;
	color: #000;
	background-color: #fff;
	text-shadow: 0 1px 0 #fff;
	filter: alpha(opacity=20);
	-khtml-opacity: .2;
	-moz-opacity: .2;
	opacity: .2
}
.close:hover {
	color: #000;
	text-decoration: none;
	cursor: pointer;
	filter: alpha(opacity=40);
	-khtml-opacity: .4;
	-moz-opacity: .4;
	opacity: .4
}
.profile {
	background: #e9e9e9 url('/static/imgs/b.png')
}
.profile-info {
	position: relative;
	padding: 15px;
	background: #fff
}
.profile-info .close {
	line-height: 20px
}
.profile-info .btn {
	position: absolute;
	right: 17px;
	bottom: 20px
}
.profile-avatar {
	display: inline-block;
	float: left;
	border-bottom: 0
}
.profile-avatar img {
	height: 52px;
	width: 52px;
}
.profile-avatar:hover {
	border-bottom: 0
}
.profile-name {
	display: block;
	float: left;
	margin: 0 0 10px 10px
}
.profile-name h2 {
	font-size: 22px;
	line-height: 30px
}
.profile-name h2 a {
	font-weight: 500;
	color: #404040;
	border-bottom: 0
}
.profile-name h3 {
	font-size: 16px;
	line-height: 20px
}
.profile-name h3 a {
	color: #777;
	border-bottom: 0
}
.profile-name h2 a:hover, .profile-name h3 a:hover {
	color: #d75701
}
#flickr-profile .profile-name {
	margin-left: 0
}
.profile-description {
	clear: left;
	font-size: 13px;
	line-height: 18px;
	font-style: italic;
	color: #777;
	margin: 0;
	padding: 5px 0
}
.profile-description a {
	border-bottom: 0
}
.profile-location-url {
	clear: left;
	margin: 0
}
.profile-location-url span {
	display: inline-block;
	font-size: 13px;
	line-height: 18px;
	color: #777
}
.profile-location-url .divider {
	padding: 0 4px;
	color: #ccc
}
.profile-location-url a {
	border-bottom: 0
}
.profile-stats {
	margin: 0;
	list-style: none;
	overflow: hidden;
	border-top: 1px solid #c2c2c2;
	border-bottom: 1px solid #c2c2c2;
	background: #fff
}
.profile-stats li {
	display: inline
}
.profile-stats li a, .profile-stats li span {
	float: left;
	padding: 7px 15px;
	color: #777;
	font-size: 10px;
	line-height: 16px;
	text-transform: uppercase;
	border-left: 1px solid #c2c2c2;
	border-bottom: 0
}
.profile-stats li strong {
	display: block;
	color: #404040;
	font-size: 14px
}
.profile-stats li a:hover, .profile-stats li a:hover strong {
	color: #d75701
}
.profile-stats li:first-child span {
	border-left: 0
}
.profile-info-footer {
	padding: 10px 15px;
	border-bottom: 1px solid #c2c2c2
}
.profile-watchers {
	display: inline-block;
	background: url('/static/imgs/ico-watchers.png') no-repeat;
	margin-left: 10px;
	padding-left: 20px
}
.profile-forks {
	display: inline-block;
	background: url('/static/imgs/ico-forks.png') no-repeat;
	margin-left: 10px;
	padding-left: 20px
}
.profile-comments {
	display: inline-block;
	background: url('/static/imgs/ico-comments.png') no-repeat;
	margin-left: 10px;
	padding-left: 20px
}
.profile-likes {
	display: inline-block;
	background: url('/static/imgs/ico-likes.png') no-repeat;
	margin-left: 10px;
	padding-left: 20px
}
.profile-tweets {
	list-style: none;
	margin: 0;
	background: #fff
}
.profile-tweets li {
	padding: 10px 15px;
	border-bottom: 1px solid #c2c2c2
}
.tweet-title {
	border-bottom: 0;
	position: relative;
	padding-left: 45px
}
.tweet-title img {
	position: absolute;
	left: 0;
	width: 32px;
	height: 32px;
	border: 2px solid #d75701
}
.tweet-title span {
	color: #777;
	font-size: 13px;
	padding-left: 3px
}
.tweet-title:hover {
	border-bottom: 0
}
.tweet-text {
	color: #777;
	margin: 0;
	padding: 3px 0;
	font-size: 13px;
	line-height: 18px;
	margin-left: 45px
}
.tweet-text a {
	border-bottom: 0
}
.tweet-date {
	margin: 0;
	font-size: 13px;
	line-height: 18px;
	margin-left: 45px;
	color: #999
}
.profile-repos {
	list-style: none;
	margin: 0;
	background: #fff
}
.profile-repos li {
	padding: 10px 15px;
	border-bottom: 1px solid #c2c2c2
}
.profile-repo-name {
	border-bottom: 0;
	font-weight: 500
}
.profile-repo-name:hover {
	border-bottom: 0
}
.profile-repo-text {
	color: #777;
	margin: 0;
	padding: 5px 0;
	font-size: 13px;
	line-height: 18px
}
.profile-repo-stats {
	list-style: none;
	margin: 0;
	font-size: 13px;
	line-height: 18px
}
.profile-repo-stats li {
	padding: 0;
	border: 0;
	display: inline-block;
	zoom: 1;
*display:inline
}
.profile-repo-stats a {
	border-bottom: 0
}
.profile-repo-stats a:hover {
	border-bottom: 0;
	color: #d75701
}
.profile-repo-fork {
	margin: 0;
	padding: 0;
	font-size: 13px;
	line-height: 18px
}
.profile-repo-fork a {
	border-bottom: 0;
	color: #777
}
.profile-repo-fork a:hover {
	border-bottom: 0;
	color: #d75701
}
.profile-repo-logo {
	float: right;
	border-bottom: 0
}
.profile-repo-logo img {
	width: 32px;
	height: 32px;
	border: 0
}
.profile-repo-logo:hover {
	border-bottom: 0
}
.profile-shots {
	list-style: none;
	margin: 0;
	padding: 15px 0
}
.profile-shots>li {
	float: left;
	width: 23%;
	padding: 5px;
	margin: 0 0 10px 10px;
	background: #fff;
	-webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.25);
	-moz-box-shadow: 0 1px 3px rgba(0,0,0,0.25);
	box-shadow: 0 1px 3px rgba(0,0,0,0.25)
}
.profile-shot {
	border-bottom: 0;
	display: block
}
.profile-shot img {
	width: 100%;
}
.profile-shot:hover {
	border-bottom: 0
}
.profile-shot-title {
	display: block;
	padding: 5px 0;
	font-size: 13px;
	line-height: 18px;
	color: #4b4b4b;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap
}
.profile-shot-stats {
	list-style: none;
	margin: 0;
	font-size: 13px;
	line-height: 18px
}

.profile-shot-stats li {
	margin-bottom: 0;
	padding: 0;
	border: 0;
	display: inline-block !important;
	zoom: 1;
*display:inline
}
.profile-shot-stats li:first-child a, .profile-shot-stats li:first-child span {
	margin-left: 0
}
.profile-shot-stats a {
	border-bottom: 0
}
.profile-shot-stats a:hover {
	border-bottom: 0;
	color: #d75701
}
.profile-shot-date {
	float: right;
	color: #999
}
.instagram .profile-shot img {
	width: 300px;
	height: 300px
}
.profile-tracks {
	list-style: none;
	margin: 0;
	background: #fff
}
.profile-tracks li {
	padding: 10px 15px;
	border-bottom: 1px solid #c2c2c2
}
.track-image {
	border-bottom: 0;
	position: relative
}
.track-image img {
	position: absolute;
	left: 0;
	width: 32px;
	height: 32px;
	border: 2px solid #d75701
}
.track-image:hover {
	border-bottom: 0
}
.track-detail {
	color: #777;
	margin: 0;
	padding: 0 0 3px 0;
	font-size: 14px;
	line-height: 18px;
	margin-left: 45px
}
.track-detail a {
	border-bottom: 0;
	font-weight: 500
}
.track-date {
	margin: 0;
	font-size: 13px;
	line-height: 18px;
	margin-left: 45px;
	color: #999
}
.profile-checkins {
	list-style: none;
	margin: 0;
	background: #fff
}
.profile-checkins li {
	padding: 10px 15px;
	border-bottom: 1px solid #c2c2c2
}
.checkin-title {
	border-bottom: 0;
	position: relative;
	padding-left: 45px
}
.checkin-title img {
	position: absolute;
	left: 0;
	width: 32px;
	height: 32px
}
.checkin-title strong {
	text-overflow: ellipsis;
	white-space: nowrap;
	max-width: 250px;
	overflow: hidden;
	display: inline-block
}
.checkin-title span {
	color: #777;
	font-size: 13px;
	padding-left: 3px
}
.checkin-title:hover {
	border-bottom: 0
}
.checkin-location {
	color: #777;
	margin: 0;
	padding: 3px 0;
	font-size: 13px;
	line-height: 18px;
	margin-left: 45px
}
.checkin-location a {
	border-bottom: 0
}
.checkin-date {
	margin: 0;
	font-size: 13px;
	line-height: 18px;
	margin-left: 45px;
	color: #999
}
.profile-games {
	list-style: none;
	margin: 0;
	background: #fff
}
.profile-games li {
	padding: 10px 15px;
	border-bottom: 1px solid #c2c2c2;
	min-height: 80px
}
.profile-games strong {
	margin-left: 155px
}
.profile-game-title {
	border-bottom: 0;
	position: relative;
	padding-left: 45px
}
.profile-game-title img {
	display: block;
	position: absolute;
	margin: 5px 15px 5px 0;
	left: 0;
	top: 0;
	width: 184px;
	height: 69px;
	border: 2px solid #d75701
}
.profile-game-title span {
	color: #777;
	font-size: 13px;
	padding-left: 3px
}
.profile-game-title:hover {
	border-bottom: 0
}
.profile-game-text {
	color: #777;
	margin: 0;
	padding: 3px 0;
	font-size: 13px;
	line-height: 18px;
	margin-left: 200px
}
.profile-game-text a {
	border-bottom: 0
}
.profile-stackoverflow {
	list-style: none;
	margin: 0;
	background: #fff
}
.profile-stackoverflow li {
	padding: 10px 15px;
	border-bottom: 1px solid #c2c2c2
}
.profile-stackoverflow-name {
	border-bottom: 0;
	font-weight: 500
}
.profile-stackoverflow-name:hover {
	border-bottom: 0
}
.profile-stackoverflow-description {
	margin: 0;
	padding: 5px 0;
	font-size: 13px;
	line-height: 18px
}
.profile-stackoverflow-details {
	color: #777;
	list-style: none;
	margin: 0;
	font-size: 13px;
	line-height: 18px
}
.profile-stackoverflow-details li {
	padding: 0;
	border: 0;
	display: inline-block;
	zoom: 1;
*display:inline
}
.profile-stackoverflow-details a {
	border-bottom: 0
}
.profile-stackoverflow-details a:hover {
	border-bottom: 0;
	color: #d75701
}
.linkedin-details {
	margin: 0;
	background: #fff
}
.linkedin-details p {
	margin: 0 0 10px 0;
	line-height: 22px
}
.linkedin-details p.linkedin-dates {
	font-size: 12px;
	line-height: 16px;
	margin-bottom: 5px
}
.linkedin-sec {
	border-top: 1px solid #c2c2c2;
	padding: 10px
}
.linkedin-sec .linkedin-title {
	font-size: 14px;
	font-weight: normal
}
.linkedin-sec ul.linkedin-experience, .linkedin-sec ul.linkedin-education {
	list-style: none;
	margin: 15px
}
.linkedin-sec ul.linkedin-experience li, .linkedin-sec ul.linkedin-education li {
	margin-bottom: 20px
}
.linkedin-sec.linkedin-summary {
	border-top: 0
}
.linkedin-sec.linkedin-summary p {
	padding: 15px
}
.linkedin-skills {
	list-style: none;
	margin: 15px
}
.linkedin-skills li {
	display: inline-block;
	zoom: 1;
*display:inline;
	background: #e9e9e9;
	border: 1px solid #c2c2c2;
	padding: 3px 10px;
	margin: 0 5px 5px 0;
	font-size: 14px
}
.linkedin-groups {
	margin: 15px 15px 15px 30px
}
code, pre {
	padding: 0 3px 2px;
	color: #333;
	font-family: "Monaco", Courier New, monospace;
	font-size: 12px;
	font-weight: normal;
	line-height: 20px;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px
}
code {
	padding: 2px 4px;
	color: #d75701;
	background-color: #f7f7f9;
	border: 1px solid #e1e1e8
}
pre {
	display: block;
	padding: 8px;
	margin: 0 0 9px;
	word-break: break-all;
	word-wrap: break-word;
	white-space: pre;
	white-space: pre-wrap;
	background-color: #f5f5f5;
	border: 1px solid #ccc;
	border: 1px solid rgba(0,0,0,0.15);
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px
}
pre.prettyprint {
	margin-bottom: 20px
}
pre code {
	padding: 0;
	color: inherit;
	background-color: transparent;
	border: 0
}
.pre-scrollable {
	max-height: 340px;
	overflow-y: scroll
}
blockquote code {
	padding: 0;
	color: inherit;
	background-color: transparent;
	border: 0
}
.com {
	color: #93a1a1
}
.lit {
	color: #195f91
}
.pun, .opn, .clo {
	color: #93a1a1
}
.fun {
	color: #dc322f
}
.str, .atv {
	color: #da3f47
}
.kwd, .linenums .tag {
	color: #1e347b
}
.typ, .atn, .dec, .var {
	color: teal
}
.pln {
	color: #48484c
}
.prettyprint {
	padding: 8px;
	background-color: #f7f7f9;
	border: 1px solid #e1e1e8
}
.prettyprint.linenums {
	-webkit-box-shadow: inset 40px 0 0 #fbfbfc, inset 41px 0 0 #ececf0;
	-moz-box-shadow: inset 40px 0 0 #fbfbfc, inset 41px 0 0 #ececf0;
	box-shadow: inset 40px 0 0 #fbfbfc, inset 41px 0 0 #ececf0
}
ol.linenums {
	margin: 0 0 0 33px
}
ol.linenums li {
	padding-left: 12px;
	color: #bebec5;
	line-height: 18px;
	text-shadow: 0 1px 0 #fff
}
.apps-section {
	background: #e9e9e9 url('/static/imgs/b.png');
	height: 1000px
}
.apps h2 {
	padding-bottom: 15px
}
.apps a {
	display: inline-block;
	width: 340px;
	border: 1px solid #c2c2c2;
	background: #fff;
	margin: 10px 5px 20px 0;
	-webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.25);
	-moz-box-shadow: 0 1px 3px rgba(0,0,0,0.25);
	box-shadow: 0 1px 3px rgba(0,0,0,0.25)
}
.apps a:hover {
	border: 1px solid #d75701;
	-webkit-box-shadow: 0 0 3px #d75701;
	-moz-box-shadow: 0 0 3px #d75701;
	box-shadow: 0 0 3px #d75701
}
.apps img {
	witdh: 340px;
	display: block
}
.profile.apps {
	padding: 20px 20px 40px 20px
}
.profile.apps .close {
	background-color: transparent
}
.main-header {
	position: fixed;
	z-index: 1100;
	top: 0;
	left: 0;
	width: 240px;
	height: 100%;
	min-height: 750px;
	float: left;
	border-right: 1px solid #c2c2c2;
	background: #e9e9e9 url('/static/imgs/b.png')
}
.main-header hgroup .picture a {
	display: inline-block;
	height: 84px;
	width: 84px;
	margin: 30px 35px 20px 35px;
	border: 3px solid #d75701;
	background: #000 0 url('/static/imgs/new-pic.png');
	-webkit-box-shadow: 0 1px 1px #f9f9f9;
	-moz-box-shadow: 0 1px 1px #f9f9f9;
	box-shadow: 0 1px 1px #f9f9f9
}
.main-header hgroup h1 {
	font-size: 24px;
	margin: 0 35px;
	text-shadow: 0 1px 1px #f9f9f9
}
.main-header hgroup h2 {
	margin: 10px 35px;
	font-size: 14px;
	font-weight: normal;
	line-height: 25px;
	color: #4b4b4b
}
.main-header nav {
	margin: 30px 0
}
.main-header nav ul {
	border-top: 1px solid #d2d2d2;
	list-style: none;
	margin-left: 0
}
.main-header nav li {
	margin-bottom: 0
}
.main-header nav a, .main-header nav a:hover {
	border-bottom: 1px solid #d2d2d2
}
.main-header nav a {
	position: relative;
	padding: 15px 30px;
	color: #404040;
	display: block;
	font-weight: 500;
	text-shadow: 0 1px 1px #f9f9f9
}
.main-header nav a:hover {
	color: #fff;
	background: #d75701;
	border-right: 0;
	text-shadow: none
}
.main-header nav .sel a {
	border-right: 6px solid #d75701
}
.main-header .spinner {
	position: absolute!important;
	right: 30px;
	top: 23px
}
.main-header .fork-me {
	position: absolute;
	left: 30px;
	bottom: 20px;
	font-size: 13px;
	color: #4b4b4b;
	border-bottom: 0
}
.main-header .fork-me:hover {
	color: #d75701
}
.main-section {
	position: relative;
	overflow: hidden;
	margin-left: 241px;
	padding: 35px
}
.blog-section {
	padding: 0
}
.blog-section hgroup h2, .blog-section hgroup h1 {
	font-size: 30px;
	line-height: 35px;
	font-weight: 500;
	line-height: 40px;
	margin: 50px 0 25px 0
}
.blog-section hgroup h2 a {
	border-bottom: 0;
	font-weight: 500
}
.blog-section hgroup h3 a {
	display: none
}
.blog-section hgroup h3 a.adjusted {
	display: block;
	position: absolute;
	top: auto;
	width: 100%;
	margin-left: -34px;
	padding: 12px 35px;
	border-bottom: 1px solid #c2c2c2;
	border-top: 1px solid #c2c2c2;
	font-size: 16px;
	font-weight: 500;
	background-color: #fff;
	background-color: rgba(255,255,255,0.8)
}
.blog-section hgroup h3 a.active {
	position: fixed;
	top: 0;
	bottom: auto;
	margin-top: 0
}
.blog-section article {
	width: 700px;
	overflow: hidden;
	line-height: 25px;
	padding: 25px 35px 50px 34px;
	background-color: #fff
}
.blog-section article img {
	padding: 2px;
	border: 1px solid #c2c2c2;
	margin: 0 15px 5px 0;
	max-width: 700px
}
.blog-section article a.img-link {
	border-bottom: 0
}
.blog-section article a.img-link:hover img {
	border-color: #d75701
}
.blog-section .loading {
	display: block;
	padding: 15px 35px;
	font-size: 16px;
	font-weight: 200;
	line-height: 25px
}
.blog-section footer {
	padding-top: 10px
}
.blog-section footer h4 {
	float: left;
	text-transform: uppercase;
	font-size: 13px;
	line-height: 28px;
	padding: 0 15px 0 0
}
.tags {
	list-style: none;
	margin: 0 0 10px 0
}
.tags li {
	display: inline-block;
	zoom: 1;
*display:inline
}
.tags a {
	padding: 3px 10px;
	font-size: 13px;
	text-shadow: 0 1px 1px #f9f9f9;
	background: #e9e9e9;
	border: 1px solid #c2c2c2
}
.tags a:hover {
	background: #d75701;
	color: #fff;
	text-shadow: none;
	border: 1px solid #d75701
}
.sharethis {
	padding-bottom: 2em;
	text-align: center
}
.disqus-thread a {
	border-bottom: 0
}
.mobile-nav {
	display: none
}
.load-more-button {
	display: inline-block;
	margin: 0 20px 50px 20px;
	padding: 10px 30px;
	background-color: #d75701;
	border: 1px solid #d75701;
	color: #fff
}
.load-more-button:hover {
	border: 1px solid #d75701;
	background: #fff;
	color: #d75701
}
.load-more-button .spinner {
	left: 140px;
	top: -8px
}
.read-more-link {
	display: inline-block;
	margin: 0;
	padding: 2px 20px;
	background-color: #d75701;
	border: 1px solid #d75701;
	color: #fff
}
.read-more-link:hover {
	background: #fff;
	color: #d75701
}
.TwitterPictureProfile {
	margin-left: 2px;
	width: 32px !important;
}
p.anchor-img {
   position: absolute;
   right: 90px;
   top: 160px;
}
p.party-header {
	margin-top:-50px;
}
/* Large desktop */
@media (max-width: 1200px) {
	.profile-shots>li {
		margin: 0 0 5px 5px !important;
		width: 23.4% !important;
	}
	.profile-shot img {
		width: 100% !important;
	}
}
 

 
@media(max-width:1024px), (max-height:800px) {
	header.main-header hgroup .picture a, header.main-header nav {
		margin-top: 30px
	}
	.profile-shots>li {
		margin: 0 0 5px 5px !important;
		width: 30% !important;
	}
	.profile-shot img {
		width: 100% !important;
	}
}

@media(min-width:801px) and (max-width:1024px) {
	.blog-section article {
		width: 500px
	}
	.blog-section article img {
		max-width: 400px
	}
	
}

@media(max-width:800px) {
	.blog-section article {
		width: 400px
	}
	.blog-section article img {
		max-width: 400px
	}
	
}

@media(max-height:700px) and (min-width:800px) {
	header.main-header h1 {
		padding-top: 15px
	}
	header.main-header nav {
		margin-top: 15px
	}
	header.main-header hgroup .picture a {
		margin: 15px 35px 0 35px
	}
}
/* Portrait tablet to landscape and desktop */
@media (min-width: 768px) and (max-width: 979px) {
	.profile-shots>li {
		margin: 0 0 5px 5px !important;
		width: 31% !important;
	}
	.profile-shot img {
		width: 100% !important;
	}
	
}
/* Landscape phone to portrait tablet */
@media(max-width:767px) {
	.profile-shots>li {
		margin: 0 0 5px 5px !important;
		width: 30% !important;
	}
	.profile-shot img {
		width: 100% !important;
	}
	p.party-header {
		margin-top:-80px;
	}
	body {
		background: transparent;
		overflow-x: hidden
	}
	.mobile-nav {
		display: block;
		position: fixed;
		top: 0;
		height: 45px;
		width: 100%;
		z-index: 3000;
		background: #e9e9e9 url('/static/imgs/b.png');
		border-top: 3px solid #d75701;
		-webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.25);
		-moz-box-shadow: 0 1px 3px rgba(0,0,0,0.25);
		box-shadow: 0 1px 3px rgba(0,0,0,0.25)
	}
	.mobile-nav h3 {
		float: right;
		padding: 10px
	}
	.mobile-nav h3 a {
		border-bottom: 0;
		font-weight: bold;
		color: #404040;
		text-shadow: 0 1px 1px #f9f9f9
	}
	.mobile-nav .nav-btn {
		float: left;
		padding: 7px 10px 4px;
		margin: 8px 10px;
		background-color: #333;
		background-repeat: repeat-x;
		background-image: -khtml-gradient(linear, left top, left bottom, from(#404040), to(#333));
		background-image: -moz-linear-gradient(top, #404040, #333);
		background-image: -ms-linear-gradient(top, #404040, #333);
		background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #404040), color-stop(100%, #333));
		background-image: -webkit-linear-gradient(top, #404040, #333);
		background-image: -o-linear-gradient(top, #404040, #333);
		background-image: linear-gradient(top, #404040, #333);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#404040', endColorstr='#333333', GradientType=0);
		-webkit-border-radius: 4px;
		-moz-border-radius: 4px;
		border-radius: 4px;
		-webkit-box-shadow: 0 1px 1px #f9f9f9;
		-moz-box-shadow: 0 1px 1px #f9f9f9;
		box-shadow: 0 1px 1px #f9f9f9
	}
	.mobile-nav .nav-btn-bar {
		display: block;
		width: 18px;
		height: 2px;
		margin-bottom: 3px;
		background-color: #f9f9f9;
		-webkit-border-radius: 1px;
		-moz-border-radius: 1px;
		border-radius: 1px;
		-webkit-box-shadow: 0 1px 0 rgba(0,0,0,0.25);
		-moz-box-shadow: 0 1px 0 rgba(0,0,0,0.25);
		box-shadow: 0 1px 0 rgba(0,0,0,0.25)
	}
	header.main-header {
		position: absolute
	}
	header.main-header hgroup .picture a {
		margin: 60px 0 10px 10px
	}
	header.main-header hgroup h1 {
		font-size: 18px;
		margin: 0 10px
	}
	header.main-header hgroup h2 {
		margin: 0 10px 10px 10px
	}
	header.main-header nav {
		margin: 20px 0
	}
	header.main-header .fork-me {
		display: none
	}
	.main-section {
		margin: 45px 0 0 0;
		position: relative;
		min-height: 500px;
		left: 0;
		z-index: 2000;
		background-color: #fff;
		-webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.25);
		-moz-box-shadow: 0 1px 3px rgba(0,0,0,0.25);
		box-shadow: 0 1px 3px rgba(0,0,0,0.25);
		-webkit-transition: left .3s ease-out;
		-moz-transition: left .3s ease-out;
		-o-transition: left .3s ease-out;
		transition: left .3s ease-out
	}
	.main-section.nav-opened {
		left: 240px
	}
	.blog-section hgroup h2, .blog-section hgroup h1 {
		font-size: 24px;
		line-height: 30px;
		font-weight: 500;
		margin: 10px 0 5px 0
	}
	.blog-section hgroup h3 a {
		position: static;
		margin: 0;
		padding: 5px 0;
		border: 0;
		font-weight: 300;
		display: block
	}
	.blog-section article {
		width: 95%;
		padding: 10px 10px 30px;
		border-bottom: 1px solid #c2c2c2
	}
	.blog-section article img {
		max-width: 300px
	}
	.blog-section .loading {
		padding: 15px
	}
	.modal-backdrop {
		z-index: 3500
	}
	.modal {
		position: absolute;
		width: 100%;
		height: 1500px;
		z-index: 4000;
		top: 45px
	}
	.modal.fade.large {
		width: 100%
	}
	.modal.fade.in {
		left: 0
	}
	.profile.twitter, .profile.github, .profile.bitbucket, .profile.dribbble, .profile.instagram {
		overflow: scroll
	}
	.apps a, .apps a img {
		width: 280px
	}
	.profile-info .btn {
		position: static;
		margin-top: 5px
	}
	.shots-likes-received, .shots-likes-given {
		display: none
	}
	.profile-shots {
		padding: 10px 0
	}
/*	.profile-shots>li {
		margin: 0 0 5px 5px;
		width: 240px
	}
	.profile-shots img {
		width: 240px
	}*/
	.instagram .profile-shot img {
		width: 280px;
		height: 280px
	}
	.TwitterPictureProfile {
		margin-left: 2px;
		width: 32px !important;
	}
	.profile-shot-stats ul li div{ 
		width:80px !important;
	}
	
}

@media(max-height:600px) and (min-width:800px) {
	header.main-header .picture {
		display: none
	}
}

@media(max-height:500px) and (min-width:800px) {
	header.main-header hgroup h2 {
		display: none
	}
}
/*@media (max-width:480px){
	.iphonefix {
		width:480px ;
		height:auto;
	}
}*/
/* Landscape phones and down */
@media (min-width:321px) and (max-width:480px) {
	.profile-shots>li {
		margin: 0 0 5px 5px !important;
		width: 45% !important;
	}
	.profile-shot img {
		width:100% !important;
	}
	
}
@media (max-width:320px){
	.profile-shots>li {
		margin: 0 0 5px 5px !important;
		width: 90.5% !important;
	}
	.profile-shot img {
		width: 100% !important;
	}
	p.anchor-img {
	   position: absolute;
	   right: 90px;
	   top: 160px;
	}
}
@media only screen (max-device-width : 480px) { 
	.iphonefix_landscape {
		width:100% !important;
		height:auto;
		display:block !important;
	}
	.profile-shots>li {
		margin: 0 0 5px 5px !important;
		width: 90.5% !important;
	}
	.profile-shot img {
		width: 100% !important;
	}
}
@media only screen and (max-device-width : 320px) {
	.iphonefix_portrait {
		width:240px !important;
		height:auto;
		display:block !important;
	}
	
	.profile-shots>li {
		margin: 0 0 5px 5px !important;
		width: 90.5% !important;
	}
	.profile-shot img {
		width: 100% !important;
	}
} 



/* Winner */
li.mattwhiting {
	background-color:#EF1993 !important;	
}

li.comment{
	float: right;
	font-weight: bold;
	font-size: 16px;	
}
