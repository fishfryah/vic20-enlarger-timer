

;victimer.bin ==1001==
  100 poke 37138,255
  110 poke 37136,255
  200 print "{clr}{wht}";
 1000 ti$="000000"
 1010 ts$="000000":ts=6
 1100 poke 36879,8
 1200 poke 36878,15
 1300 print "{home}";
 1400 poke 36874,0
 1500 print "{home}"
 1600 print "{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down} f1 - focus  on/off"
 1800 print "{down} f3 - safe   on/off"
 2000 print "{down} f5 - timer   start"
 2200 print "{down} f7 - expose on/off"
 2301 rem
 2302 rem
 2303 rem
 2310 if pa=1 then ti$=t$
 2400 if ti$=t$ then gosub 5000
 2420 ifval(ti$)>=val(ts$)andval(ti$)<(val(ts$)+3)then poke 36874,170
 2430 ifval(ti$)>=val(ts$) then tm=0: ex=0 :gosub 40000
 2500 t$=ti$:print "{home}clk:"+"{rvon} "+t$+" {rvof}";
 2502 if pa=0 then print "      ":
 2503 if pa=1 then print " {rvon}pause{rvof}"
 2505 print "{down}set:";
 2510 print "{rvon} "+ts$+" {rvof}:";
 2520 if ex=0 then print "  :";
 2522 if ex=1 then print "{rvon}ex{rvof}:";
 2523 if tm=0 then print "  :";
 2525 if tm=1 then print "{rvon}tm{rvof}:";
 2527 if fc=0 then print "  :";
 2529 if fc=1 then print "{rvon}fc{rvof}:";
 2530 if sa=0 then print "{down}{down}                                                           ";
 2531 if sa=0 then print "                                                             ";
 2532 if sa=0 then print "                                                             ";
 2540 if sa=1 then print "{down}{down}{rvon}                                                          ";
 2541 if sa=1 then print "                                                             ";
 2542 if sa=1 then print "                                                         {rvof}:";
 2590 print
 2600 poke 36874,0
 2610 rem poke 36875,0
 2620 rem poke 36876,0
 2700 goto 2310
 3000 rem
 3001 rem
 3003 rem
 3004 rem
 5000 get a$:if a$="" then return
 6000 if a$="{clr}" then ti$="000000"
 6010 if a$="{home}" then ts$="000000":ts=6
 7000 if a$>=chr$(48) and a$<=chr$(57) then gosub 20000
 8000 if a$="{f1}" and fc=1 then fc=0:goto 9000
 8010 if a$="{f1}" and fc=0 then fc=1:goto 9000
 8020 if a$="{f3}" and sa=1 then sa=0:goto 9000
 8030 if a$="{f3}" and sa=0 then sa=1:goto 9000
 8040 if a$="{f5}" and tm=1 then tm=0:goto 9000
 8050 if a$="{f5}" and tm=0 and ex=0 then tm=1:ti$="000000":goto 9000
 8070 if a$="{f7}" and ex=1 then ex=0:goto 9000
 8080 if a$="{f7}" and ex=0 and tm=0 then fc=0: ex=1:ti$="000000":goto 9000
 8090 if a$=" " then gosub 30000
 9000 gosub 40000
10000 return
10001 rem
10002 rem
10003 rem
10004 rem
20000 tx$=right$(ts$,5)
20020 ts$=tx$+a$
20300 return
30000 if pa=0 then pa=1:goto 30020
30010 if pa=1 then pa=0
30020 return
30992 rem
30993 rem
30994 rem
40000 if ex=1 or fc=1 then poke 37136,0
40100 if ex=0 and fc=0 then poke 37136,8
40200 return
40300 rem
40301 rem
40302 rem

