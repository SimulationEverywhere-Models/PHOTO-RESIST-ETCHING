#include(var.inc)

[top]
components : PEtch

[PEtch]
type : cell
dim : (20,20)
delay : inertial
defaultDelayTime  : 100
border : nowrapped
neighbors :              PEtch(-1,0)
neighbors : PEtch(0,-1)  PEtch(0,0)   PEtch(0,1)
neighbors :              PEtch(1,0) 

initialvalue : 0

initialrowvalue : 0 00001111111111110000
localtransition : EtchBehavior
%initialCellsValue : PEtch.val

[EtchBehavior]
rule : 1    {#macro(T)}  {(0,0)=0 and (-1,0)=1 and (0,-1)=0 and (0,1)=0}
rule : 1    {#macro(T)}  {(0,0)=0 and (-1,0)=0 and (0,-1)=1 and (0,1)=0}
rule : 1    {#macro(T)}  {(0,0)=0 and (-1,0)=0 and (0,-1)=0 and (0,1)=1}

rule : 1   {(1/2)*#macro(T)} {(0,0)=0 and (-1,0)=1 and (0,-1)=0 and (0,1)=1}
rule : 1   {(1/2)*#macro(T)} {(0,0)=0 and (-1,0)=1 and (0,-1)=1 and (0,1)=0}
rule : 1   {(1/2)*#macro(T)} {(0,0)=0 and (-1,0)=0 and (0,-1)=1 and (0,1)=1}

rule : 1   {(1/3)*#macro(T)} {(0,0)=0 and (-1,0)=1 and (0,-1)=1 and (0,1)=1}

rule : {(0,0)} 0 { t }




