±
8C:\Projects\WebAPI-master\WebAPI.Domain\Base\BaseArgs.cs
	namespace 	
WebAPI
 
. 
Domain 
. 
Base 
{ 
public 

class 
BaseArgs 
{ 
public		 
short		 
Id		 
{		 
get		 
;		 
set		 "
;		" #
}		$ %
}

 
} ³
:C:\Projects\WebAPI-master\WebAPI.Domain\Base\BaseDomain.cs
	namespace 	
WebAPI
 
. 
Domain 
. 
Base 
{ 
public 

class 

BaseDomain 
{ 
public		 
int		 
Id		 
{		 
get		 
;		 
set		  
;		  !
}		" #
}

 
} “
GC:\Projects\WebAPI-master\WebAPI.Domain\Cliente\Entities\ClienteArgs.cs
	namespace 	
WebAPI
 
. 
Domain 
. 
Cliente 
.  
Entities  (
{ 
public 

class 
ClienteArgs 
: 
BaseArgs '
{		 
public

 
string

 
Nome

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
} 
} î
IC:\Projects\WebAPI-master\WebAPI.Domain\Cliente\Entities\ClienteDomain.cs
	namespace 	
WebAPI
 
. 
Domain 
. 
Cliente 
.  
Entities  (
{ 
public 

class 
ClienteDomain 
:  

BaseDomain! +
{		 
public

 
string

 
Nome

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 
short 
Idade 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
DateTime 
DataNascimento &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} Û
PC:\Projects\WebAPI-master\WebAPI.Domain\Cliente\Interfaces\IClienteRepository.cs
	namespace 	
WebAPI
 
. 
Domain 
. 
Cliente 
.  

Interfaces  *
{ 
public		 

	interface		 
IClienteRepository		 '
:		( )
IRepositoryInsert

 
<

 
ClienteDomain

 '
>

' (
,

( )
IRepositoryGet 
< 
ClienteDomain $
>$ %
,% &
IRepositoryGetAll 
< 
ClienteDomain '
,' (
ClienteArgs) 4
>4 5
,5 6
IRepositoryUpdate 
< 
ClienteDomain '
>' (
,( )
IRepositoryDelete 
{ 
} 
} ð
MC:\Projects\WebAPI-master\WebAPI.Domain\Cliente\Interfaces\IClienteService.cs
	namespace 	
WebAPI
 
. 
Domain 
. 
Cliente 
.  

Interfaces  *
{ 
public 

	interface 
IClienteService $
:% &
IServiceBase' 3
<3 4
ClienteDomain4 A
,A B
ClienteArgsC N
>N O
{ 
} 
}		 ±
GC:\Projects\WebAPI-master\WebAPI.Domain\Interfaces\IRepositoryDelete.cs
	namespace 	
WebAPI
 
. 
Domain 
. 

Interfaces "
{ 
public 

	interface 
IRepositoryDelete &
{ 
int		 
Delete		 
(		 
int		 
id		 
)		 
;		 
}

 
} œ
DC:\Projects\WebAPI-master\WebAPI.Domain\Interfaces\IRepositoryGet.cs
	namespace 	
WebAPI
 
. 
Domain 
. 

Interfaces "
{ 
public 

	interface 
IRepositoryGet #
<# $
T$ %
>% &
where 
T 
: 

BaseDomain 
{ 
T 	
Get
 
( 
int 
id 
) 
; 
}		 
}

 Ê
GC:\Projects\WebAPI-master\WebAPI.Domain\Interfaces\IRepositoryGetAll.cs
	namespace 	
WebAPI
 
. 
Domain 
. 

Interfaces "
{ 
public 

	interface 
IRepositoryGetAll &
<& '
T' (
,( )
Args* .
>. /
where		 
T		 
:		 

BaseDomain		 
where

 
Args

 
:

 
BaseArgs

 
{ 
IEnumerable 
< 
T 
> 
GetAll 
( 
Args "
args# '
)' (
;( )
} 
} ¨
GC:\Projects\WebAPI-master\WebAPI.Domain\Interfaces\IRepositoryInsert.cs
	namespace 	
WebAPI
 
. 
Domain 
. 

Interfaces "
{ 
public 

	interface 
IRepositoryInsert &
<& '
T' (
>( )
where		 
T		 
:		 

BaseDomain		 
{

 
int 
Insert 
( 
T 
model 
) 
; 
} 
} ¨
GC:\Projects\WebAPI-master\WebAPI.Domain\Interfaces\IRepositoryUpdate.cs
	namespace 	
WebAPI
 
. 
Domain 
. 

Interfaces "
{ 
public 

	interface 
IRepositoryUpdate &
<& '
T' (
>( )
where		 
T		 
:		 

BaseDomain		 
{

 
int 
Update 
( 
T 
model 
) 
; 
} 
} ¾
BC:\Projects\WebAPI-master\WebAPI.Domain\Interfaces\IServiceBase.cs
	namespace 	
WebAPI
 
. 
Domain 
. 

Interfaces "
{ 
public 

	interface 
IServiceBase !
<! "
T" #
,# $
Args% )
>) *
:+ ,
IServiceGet		 
<		 
T		 
>		 
,		 
IServiceGetAll

 
<

 
T

 
,

 
Args

 
>

 
,

  
IServiceInsert 
< 
T 
> 
, 
IServiceUpdate 
< 
T 
> 
, 
IServiceDelete 
where 
T 
: 

BaseDomain  
where 
Args 
: 
BaseArgs  
{ 
} 
} «
DC:\Projects\WebAPI-master\WebAPI.Domain\Interfaces\IServiceDelete.cs
	namespace 	
WebAPI
 
. 
Domain 
. 

Interfaces "
{ 
public 

	interface 
IServiceDelete #
{ 
int		 
Delete		 
(		 
int		 
id		 
)		 
;		 
}

 
} –
AC:\Projects\WebAPI-master\WebAPI.Domain\Interfaces\IServiceGet.cs
	namespace 	
WebAPI
 
. 
Domain 
. 

Interfaces "
{ 
public 

	interface 
IServiceGet  
<  !
T! "
>" #
where		 
T		 
:		 

BaseDomain		 
{

 
T 	
Get
 
( 
int 
id 
) 
; 
} 
} Ä
DC:\Projects\WebAPI-master\WebAPI.Domain\Interfaces\IServiceGetAll.cs
	namespace 	
WebAPI
 
. 
Domain 
. 

Interfaces "
{ 
public 

	interface 
IServiceGetAll #
<# $
T$ %
,% &
Args' +
>+ ,
where		 
T		 
:		 

BaseDomain		 
where

 
Args

 
:

 
BaseArgs

 
{ 
IEnumerable 
< 
T 
> 
GetAll 
( 
Args "
args# '
)' (
;( )
} 
} ¢
DC:\Projects\WebAPI-master\WebAPI.Domain\Interfaces\IServiceInsert.cs
	namespace 	
WebAPI
 
. 
Domain 
. 

Interfaces "
{ 
public 

	interface 
IServiceInsert #
<# $
T$ %
>% &
where		 
T		 
:		 

BaseDomain		 
{

 
int 
Insert 
( 
T 
model 
) 
; 
} 
} ¢
DC:\Projects\WebAPI-master\WebAPI.Domain\Interfaces\IServiceUpdate.cs
	namespace 	
WebAPI
 
. 
Domain 
. 

Interfaces "
{ 
public 

	interface 
IServiceUpdate #
<# $
T$ %
>% &
where 
T 
: 

BaseDomain 
{ 
int 
Update 
( 
T 
model 
) 
; 
}		 
}

 Ú
IC:\Projects\WebAPI-master\WebAPI.Domain\Mensagem\Entities\MensagemArgs.cs
	namespace 	
WebAPI
 
. 
Domain 
. 
Mensagem  
.  !
Entities! )
{ 
public 

class 
MensagemArgs 
{ 
}		 
}

 è
KC:\Projects\WebAPI-master\WebAPI.Domain\Mensagem\Entities\MensagemDomain.cs
	namespace 	
WebAPI
 
. 
Domain 
. 
Mensagem  
.  !
Entities! )
{ 
public 

class 
MensagemDomain 
{ 
public		 
int		 
id		 
{		 
get		 
;		 
set		  
;		  !
}		" #
public

 
long

 

id_usuario

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
string 
mensagem 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
DateTime 
data 
{ 
get "
;" #
set$ '
;' (
}) *
public 
bool 
aguardando_resposta '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} Ú
IC:\Projects\WebAPI-master\WebAPI.Domain\Pergunta\Entities\PerguntaArgs.cs
	namespace 	
WebAPI
 
. 
Domain 
. 
Pergunta  
.  !
Entities! )
{ 
public 

class 
PerguntaArgs 
{ 
}		 
}

 –
KC:\Projects\WebAPI-master\WebAPI.Domain\Pergunta\Entities\PerguntaDomain.cs
	namespace 	
WebAPI
 
. 
Domain 
. 
Pergunta  
.  !
Entities! )
{ 
public 

class 
PerguntaDomain 
{ 
public		 
string		 
pergunta		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
string

 
resposta

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
} 
} 