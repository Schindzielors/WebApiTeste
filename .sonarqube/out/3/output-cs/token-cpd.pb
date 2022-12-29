�.
EC:\Projects\WebAPI-master\WebAPI\BaseController\BaseCrudController.cs
	namespace

 	
WebAPI


 
.

 
BaseController

 
{ 
[ 
Route 

(
 
$str 
) 
] 
[

]
public 

class 
BaseCrudController #
<# $
T$ %
,% &
Args' +
>+ ,
:- .
ControllerBase/ =
where 
T 
: 

BaseDomain 
where 
Args 
: 
BaseArgs 
{ 
private 
readonly 
IServiceBase %
<% &
T& '
,' (
Args) -
>- .
service/ 6
;6 7
public 
BaseCrudController !
(! "
IServiceBase" .
<. /
T/ 0
,0 1
Args2 6
>6 7
service8 ?
)? @
{ 	
this 
. 
service 
= 
service "
;" #
} 	
[ 	
HttpGet	 
( 
$str 
) 
] 
public 

Get  
(  !
int! $
Id% '
)' (
{ 	
try 
{ 
return 
Ok 
( 
service !
.! "
Get" %
(% &
Id& (
)( )
)) *
;* +
} 
catch 
( 
	Exception 
ex 
)  
{   
return!! 

StatusCode!! !
(!!! "
$num!!" %
,!!% &
$"!!' )
{!!) *
ex!!* ,
.!!, -
Message!!- 4
}!!4 5
$str!!5 8
{!!8 9
ex!!9 ;
.!!; <

StackTrace!!< F
}!!F G
"!!G H
)!!H I
;!!I J
}"" 
}## 	
[%% 	
HttpGet%%	 
]%% 
public&& 

Get&&  
(&&  !
[&&! "
FromBody&&" *
]&&* +
Args&&+ /
args&&0 4
)&&4 5
{'' 	
try(( 
{)) 
return** 
Ok** 
(** 
service** !
.**! "
GetAll**" (
(**( )
args**) -
)**- .
)**. /
;**/ 0
}++ 
catch,, 
(,, 
	Exception,, 
ex,, 
),,  
{-- 
return.. 

StatusCode.. !
(..! "
$num.." %
,..% &
$"..' )
{..) *
ex..* ,
..., -
Message..- 4
}..4 5
$str..5 8
{..8 9
ex..9 ;
...; <

StackTrace..< F
}..F G
"..G H
)..H I
;..I J
}// 
}00 	
[22 	
HttpPost22	 
]22 
public33 

Post33 !
(33! "
[33" #
FromBody33# +
]33+ ,
T33, -
model33. 3
)333 4
{44 	
try55 
{66 
return77 
Ok77 
(77 
service77 !
.77! "
Insert77" (
(77( )
model77) .
)77. /
)77/ 0
;770 1
}88 
catch99 
(99 
	Exception99 
ex99 
)99  
{:: 
return;; 

StatusCode;; !
(;;! "
$num;;" %
,;;% &
$";;' )
{;;) *
ex;;* ,
.;;, -
Message;;- 4
};;4 5
$str;;5 8
{;;8 9
ex;;9 ;
.;;; <

StackTrace;;< F
};;F G
";;G H
);;H I
;;;I J
}<< 
}== 	
[?? 	
HttpPut??	 
]?? 
public@@ 

Put@@  
(@@  !
[@@! "
FromBody@@" *
]@@* +
T@@+ ,
model@@- 2
)@@2 3
{AA 	
tryBB 
{CC 
returnDD 
OkDD 
(DD 
serviceDD !
.DD! "
UpdateDD" (
(DD( )
modelDD) .
)DD. /
)DD/ 0
;DD0 1
}EE 
catchFF 
(FF 
	ExceptionFF 
exFF 
)FF  
{GG 
returnHH 

StatusCodeHH !
(HH! "
$numHH" %
,HH% &
$"HH' )
{HH) *
exHH* ,
.HH, -
MessageHH- 4
}HH4 5
$strHH5 8
{HH8 9
exHH9 ;
.HH; <

StackTraceHH< F
}HHF G
"HHG H
)HHH I
;HHI J
}II 
}JJ 	
[LL 	

HttpDeleteLL	 
(LL 
$strLL 
)LL 
]LL 
publicMM 

DeleteMM #
(MM# $
intMM$ '
IdMM( *
)MM* +
{NN 	
tryOO 
{PP 
returnQQ 
OkQQ 
(QQ 
serviceQQ !
.QQ! "
DeleteQQ" (
(QQ( )
IdQQ) +
)QQ+ ,
)QQ, -
;QQ- .
}RR 
catchSS 
(SS 
	ExceptionSS 
exSS 
)SS  
{TT 
returnUU 

StatusCodeUU !
(UU! "
$numUU" %
,UU% &
$"UU' )
{UU) *
exUU* ,
.UU, -
MessageUU- 4
}UU4 5
$strUU5 8
{UU8 9
exUU9 ;
.UU; <

StackTraceUU< F
}UUF G
"UUG H
)UUH I
;UUI J
}VV 
}WW 	
}XX 
}YY �
AC:\Projects\WebAPI-master\WebAPI\Controllers\ClienteController.cs
	namespace 	
WebAPI
 
. 
Controllers 
{ 
[
Route

(
 
$str
)
]
[ 

] 
public 

class 
ClienteController "
:# $
BaseCrudController% 7
<7 8

,E F
ClienteArgsG R
>R S
{ 
public 
ClienteController  
(  !
IServiceBase! -
<- .

,; <
ClienteArgs= H
>H I
serviceJ Q
)Q R
:S T
baseU Y
(Y Z
serviceZ a
)a b
{ 	
} 	
} 
} �
@C:\Projects\WebAPI-master\WebAPI\Controllers\ValuesController.cs
	namespace 	
WebAPI
 
. 
Controllers 
{ 
[		 
Route		 

(		
 
$str		 
)		 
]		 
[

 


 
]

 
public 

class 
ValuesController !
:" #
ControllerBase$ 2
{ 
[ 	
HttpGet	 
] 
public 
ActionResult 
< 
IEnumerable '
<' (
string( .
>. /
>/ 0
Get1 4
(4 5
)5 6
{ 	
return 
new 
string 
[ 
] 
{  !
$str" *
,* +
$str, 4
}5 6
;6 7
} 	
[ 	
HttpGet	 
( 
$str 
) 
] 
public 
ActionResult 
< 
string "
>" #
Get$ '
(' (
int( +
id, .
). /
{ 	
return 
$str 
; 
} 	
[ 	
HttpPost	 
] 
public 
void 
Post 
( 
[ 
FromBody "
]" #
string$ *
value+ 0
)0 1
{ 	
} 	
["" 	
HttpPut""	 
("" 
$str"" 
)"" 
]"" 
public## 
void## 
Put## 
(## 
int## 
id## 
,## 
[##  !
FromBody##! )
]##) *
string##+ 1
value##2 7
)##7 8
{$$ 	
}%% 	
[(( 	

HttpDelete((	 
((( 
$str(( 
)(( 
](( 
public)) 
void)) 
Delete)) 
()) 
int)) 
id)) !
)))! "
{** 	
}++ 	
},, 
}-- �1
+C:\Projects\WebAPI-master\WebAPI\Program.cs
	namespace 	
WebAPI
 
{ 
public 

class 
Program 
{ 
private 
static 
string 
token #
=$ %
$str& V
;V W
private 
static 
TelegramBotClient (
	botClient) 2
=3 4
new5 8
TelegramBotClient9 J
(J K
tokenK P
)P Q
;Q R
private 
static 
PerguntaDomain %
	perguntaX& /
=0 1
new2 5
PerguntaDomain6 D
(D E
)E F
;F G
private 
static 
bool 
aguardandoResposta .
=/ 0
false1 6
;6 7
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
StartTelegramBot 
( 
) 
;  
CreateWebHostBuilder  
(  !
args! %
)% &
.& '
Build' ,
(, -
)- .
.. /
Run/ 2
(2 3
)3 4
;4 5
} 	
public 
static 
IWebHostBuilder % 
CreateWebHostBuilder& :
(: ;
string; A
[A B
]B C
argsD H
)H I
=>J L
WebHost   
.    
CreateDefaultBuilder   (
(  ( )
args  ) -
)  - .
.!! 

UseStartup!! 
<!! 
Startup!! #
>!!# $
(!!$ %
)!!% &
;!!& '
public## 
static## 
void## 
StartTelegramBot## +
(##+ ,
)##, -
{$$ 	
	botClient%% 
.%% 
	OnMessage%% 
+=%%  "
BotClient_OnMessage%%# 6
;%%6 7
	botClient'' 
.'' 
StartReceiving'' $
(''$ %
)''% &
;''& '
Thread(( 
.(( 
Sleep(( 
((( 
Timeout((  
.((  !
Infinite((! )
)(() *
;((* +
	botClient)) 
.)) 

())# $
)))$ %
;))% &
}** 	
static,, 
async,, 
void,, 
BotClient_OnMessage,, -
(,,- .
object,,. 4
sender,,5 ;
,,,; <
MessageEventArgs,,= M
e,,N O
),,O P
{-- 	
try.. 
{// 
long00 
	idUsuario00 
=00  
e00! "
.00" #
Message00# *
.00* +
Chat00+ /
.00/ 0
Id000 2
;002 3
if22 
(22 
e22 
.22 
Message22 
.22 
Text22 "
.22" #
ToUpper22# *
(22* +
)22+ ,
==22- /
$str220 8
)228 9
{33 
string44 
msg44 
=44  
$"44! #
$str44# -
{44- .
e44. /
.44/ 0
Message440 7
.447 8
Chat448 <
.44< =
	FirstName44= F
}44F G
$str	44G �
"
44� �
;
44� �
await55 
	botClient55 #
.55# $ 
SendTextMessageAsync55$ 8
(558 9
	idUsuario559 B
,55B C
msg55D G
)55G H
;55H I
}66 
else77 
if77 
(77 
e77 
.77 
Message77 "
.77" #
Text77# '
.77' (
ToUpper77( /
(77/ 0
)770 1
==772 4
$str775 A
)77A B
{88 
aguardandoResposta99 &
=99' (
true99) -
;99- .
string;; 
pergunta;; #
=;;$ %
$";;& (
$str;;( j
";;j k
;;;k l
string<< 
resposta<< #
=<<$ %
$str<<& )
;<<) *
	perguntaX>> 
.>> 
pergunta>> &
=>>' (
pergunta>>) 1
;>>1 2
	perguntaX?? 
.?? 
resposta?? &
=??' (
resposta??) 1
;??1 2
awaitAA 
	botClientAA #
.AA# $ 
SendTextMessageAsyncAA$ 8
(AA8 9
	idUsuarioAA9 B
,AAB C
perguntaAAD L
)AAL M
;AAM N
}BB 
elseCC 
ifCC 
(CC 
aguardandoRespostaCC +
==CC, .
trueCC/ 3
)CC3 4
{DD 
stringEE 
retornoEE "
=EE# $
$strEE% '
;EE' (
ifGG 
(GG 
eGG 
.GG 
MessageGG !
.GG! "
TextGG" &
.GG& '
ToUpperGG' .
(GG. /
)GG/ 0
==GG1 3
	perguntaXGG4 =
.GG= >
respostaGG> F
)GGF G
{HH 
retornoII 
=II  !
$strII" ?
;II? @
}JJ 
elseKK 
{LL 
retornoMM 
=MM  !
$strMM" 7
;MM7 8
}NN 
aguardandoRespostaPP &
=PP' (
falsePP) .
;PP. /
	perguntaXQQ 
=QQ 
newQQ  #
PerguntaDomainQQ$ 2
(QQ2 3
)QQ3 4
;QQ4 5
awaitSS 
	botClientSS #
.SS# $ 
SendTextMessageAsyncSS$ 8
(SS8 9
	idUsuarioSS9 B
,SSB C
retornoSSD K
)SSK L
;SSL M
}TT 
elseUU 
{VV 
awaitWW 
	botClientWW #
.WW# $ 
SendTextMessageAsyncWW$ 8
(WW8 9
	idUsuarioWW9 B
,WWB C
$strWWD \
)WW\ ]
;WW] ^
}XX 
}ZZ 
catch[[ 
([[ 
	Exception[[ 
ex[[ 
)[[  
{\\ 
Console]] 
.]] 
	WriteLine]] !
(]]! "
ex]]" $
)]]$ %
;]]% &
}^^ 
}__ 	
}`` 
}aa �
+C:\Projects\WebAPI-master\WebAPI\Startup.cs
	namespace 	
WebAPI
 
{ 
public 

class 
Startup 
{ 
public!! 
void!! 
ConfigureServices!! %
(!!% &
IServiceCollection!!& 8
services!!9 A
)!!A B
{"" 	
services## 
.## 
AddMvc## 
(## 
)## 
.## #
SetCompatibilityVersion## 5
(##5 6 
CompatibilityVersion##6 J
.##J K
Version_2_2##K V
)##V W
;##W X
services%% 
.%% 
AddTransient%% !
<%%! "
IClienteService%%" 1
,%%1 2
ClienteService%%3 A
>%%A B
(%%B C
)%%C D
;%%D E
services&& 
.&& 
AddTransient&& !
<&&! "
IClienteRepository&&" 4
,&&4 5
ClienteRepository&&6 G
>&&G H
(&&H I
)&&I J
;&&J K
services(( 
.(( 
AddTransient(( !
<((! "
IServiceBase((" .
<((. /

,((< =
ClienteArgs((> I
>((I J
,((J K
ClienteService((L Z
>((Z [
((([ \
)((\ ]
;((] ^
}++ 	
public.. 
void.. 
	Configure.. 
(.. 
IApplicationBuilder.. 1
app..2 5
,..5 6
IHostingEnvironment..7 J
env..K N
)..N O
{// 	
if00 
(00 
env00 
.00 

(00! "
)00" #
)00# $
{11 
app22 
.22 %
UseDeveloperExceptionPage22 -
(22- .
)22. /
;22/ 0
}33 
else44 
{55 
app77 
.77 
UseHsts77 
(77 
)77 
;77 
}88 
app:: 
.:: 
UseHttpsRedirection:: #
(::# $
)::$ %
;::% &
app;; 
.;; 
UseMvc;; 
(;; 
);; 
;;; 
}<< 	
}{{ 
}|| 