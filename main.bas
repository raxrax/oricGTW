10 PAPER0:INK7:PING:CLS:POKE#26A,10
20 PLOT 12,12,CHR$(12)+"Please wait..."
30 EN = 22 ' MAX INPUT CHARS


50 ' CP - CURRENT POSITION
51 ' EG - END GAME
52 ' X - TEXT X POS
53 ' Y - TEXT Y POS
54 ' T$- TEXT
55 ' LP - LAST POSITION

95 ' P$ - PLACES
96 ' 1 - LOCATION     3 - FILE NAME
97 ' 2 - MESSAGE      4 - COMMAND
98 ' L - COUNT OF PLACES
99 ' AC$ - available commands
100 L = 22 : DIM P$(L,4), AC(L,3)

105 P$(0,1) = "Title screen"
106 P$(0,2) = "Hi! I want to show you my way to work, which I travel every day. Type 'HELP'."
107 P$(0,3) = "TITLE"
108 P$(0,4) = ""
109 AC(0,0) = 1 : AC(0,1) = 0 : AC(0,2) = 0 

110 P$(1,1) = "Bedroom"
111 P$(1,2) = "9:00am. Of couse you late again. Hurry up. Today you have a project deadline."
112 P$(1,3) = "BEDROOM"
113 P$(1,4) = "START"
114 AC(1,0) = 3 : AC(1,1) = 4 : AC(1,2) = 5 

120 P$(2,1) = "Bedroom"
121 P$(2,2) = "9:00am. Of couse you late again. Hurry up. Today you have a project deadline."
122 P$(2,3) = "BEDROOM"
123 P$(2,4) = "GO TO BEDROOM"
124 AC(2,0) = 3 : AC(2,1) = 4 : AC(2,2) = 5 

130 P$(3,1) = "Kitchen"
131 P$(3,2) = "Breakfast is the most important feed of the day. You cook it fast."
132 P$(3,3) = "BREAKFAST"
133 P$(3,4) = "MAKE BREAKFAST"
134 AC(3,0) = 2 : AC(3,1) = 4 : AC(3,2) = 21

140 P$(4,1) = "Bathroom"
141 P$(4,2) = "Quick shower. Dont forget to wash everything! Hygiene is important!"
142 P$(4,3) = "SHOWER"
143 P$(4,4) = "TAKE A SHOWER"
144 AC(4,0) = 3 : AC(4,1) = 2 : AC(4,2) = 5 

150 P$(5,1) = "My door"
151 P$(5,2) = "OOPS.. Almost forgot to lock your door."
152 P$(5,3) = "MYDOOR"
153 P$(5,4) = "LEAVE HOME"
154 AC(5,0) = 6 : AC(5,1) = 0 : AC(5,2) = 0 

160 P$(6,1) = "Elevator"
161 P$(6,2) = "Your knees are aching. You need to use elevator."
162 P$(6,3) = "ELEVATOR"
163 P$(6,4) = "LOCK DOOR"
164 AC(6,0) = 7 : AC(6,1) = 0 : AC(6,2) = 0 

170 P$(7,1) = "Home door"
171 P$(7,2) = "You are outside. Choose how to continue: 'GET IN CAR' OR 'PUBLIC TRANSPORT'"
172 P$(7,3) = "FDOOR"
173 P$(7,4) = "PUSH BUTTON"
174 AC(7,0) = 8 : AC(7,1) = 20 : AC(7,2) = 0 

180 P$(8,1) = "Parking"
181 P$(8,2) = "Oh my GOD! Where your car is parked? Beep, beep... thank you gadgets!"
181 P$(8,3) = "CARS"
181 P$(8,4) = "GET IN CAR"
184 AC(8,0) = 9 : AC(8,1) = 0 : AC(8,2) = 0 

190 P$(9,1) = "In the car"
191 P$(9,2) = "Traffic jam! You are bored. Will you wait or take a shortcut to office?"
192 P$(9,3) = "CAR"
193 P$(9,4) = "DRIVE"
194 AC(9,0) = 14 : AC(9,1) = 18 : AC(9,2) = 0 

200 P$(10,1) = "In front of the subway"
201 P$(10,2) = "In front of subway station. Next choice: 'USE SUBWAY' OR 'TAKE THE BUS'"
202 P$(10,3) = "FMETRO"
203 P$(10,4) = "JUST WALK"
204 AC(10,0) = 11 : AC(10,1) = 16 : AC(10,2) = 0 

210 P$(11,1) = "In Subway station"
211 P$(11,2) = "You are in subway station. Train is coming. Get off the rails. Get in the train."
212 P$(11,3) = "MTRAIN"
213 P$(11,4) = "USE SUBWAY"
214 AC(11,0) = 12 : AC(11,1) = 0 : AC(11,2) = 0 

220 P$(12,1) = "Airport Sofia"
221 P$(12,2) = "You arrived at 'Sofia Airport' station. Bend over, airplane is coming :)."
222 P$(12,3) = "AIRPORT"
223 P$(12,4) = "CATCH THE TRAIN"
224 AC(12,0) = 14 : AC(12,1) = 19 : AC(12,2) = 0 

230 P$(13,1) = "Bus Station"
231 P$(13,2) = "You just missed the bus. Next is after a while. 'Take me back to gambling club:)'"
232 P$(13,3) = "BUSST"
233 P$(13,4) = "NO"
234 AC(13,0) = 22 : AC(13,1) = 0 : AC(13,2) = 0 

240 P$(14,1) = "in front of the office"
241 P$(14,2) = "This is your office building. You have to hurry, because you are really late."
242 P$(14,3) = "OFFICEB"
243 P$(14,4) = "GO TO OFFICE"
244 AC(14,0) = 15 : AC(14,1) = 0 : AC(14,2) = 0 

250 P$(15,1) = "My workplace"
251 P$(15,2) = "Congratulations! You have completed the journey. It is time to work :)."
252 P$(15,3) = "MYSPOT"
253 P$(15,4) = "ENTER BUILDING"
254 AC(15,0) = 0 : AC(15,1) = 0 : AC(15,2) = 0 

260 P$(16,1) = "Gamble"
261 P$(16,2) = "You pass by a gambling club. Do you want to enter for a while?"
262 P$(16,3) = "GAMBLE"
263 P$(16,4) = "TAKE THE BUS"
264 AC(16,0) = 17 : AC(16,1) = 13 : AC(16,2) = 0 

270 P$(17,1) = "GAME OVER"
271 P$(17,2) = "You spent all day inside gamble club. You did't get to work today. YOU ARE FIRED!!!"
272 P$(17,3) = "GAMEOVER"
273 P$(17,4) = "YES"
274 AC(17,0) = 0 : AC(17,1) = 0 : AC(17,2) = 0 

280 P$(18,1) = "GAME OVER 2"
281 P$(18,2) = "'Congratulations!' The road is bad. You got a flat tire, and spent all day to repair. YOU ARE FIRED!!!"
282 P$(18,3) = "GAMEOVER"
283 P$(18,4) = "USE SHORTCUT"
284 AC(18,0) = 0 : AC(18,1) = 0 : AC(18,2) = 0 

290 P$(19,1) = "Airport"
291 P$(19,2) = "You see a part of the airport and a tail of one airplane."
292 P$(19,3) = "AIRPORT2"
293 P$(19,4) = "LOOK AROUND"
294 AC(19,0) = 14 : AC(19,1) = 0 : AC(19,2) = 0 

300 P$(20,1) = "Trail"
301 P$(20,2) = "Today weather is wonderful. Your hands are in the pockets and you are whistling."
302 P$(20,3) = "TRAIL"
303 P$(20,4) = "PUBLIC TRANSPORT"
304 AC(20,0) = 10 : AC(20,1) = 0 : AC(20,2) = 0 

310 P$(21,1) = "WINDOW"
311 P$(21,2) = "The weather is wonderful."
312 P$(21,3) = "VIEW"
313 P$(21,4) = "GO TO THE WINDOW"
314 AC(21,0) = 3 : AC(21,1) = 4 : AC(21,2) = 5

320 P$(22,1) = "Into the bus"
321 P$(22,2) = "You're on the bus. You can check your mail... more tasks."
322 P$(22,3) = "INBUS"
323 P$(22,4) = "CATCH THE BUS"
324 AC(22,0) = 14 : AC(22,1) = 0 : AC(22,2) = 0


1000 ' Game
1010 GOSUB 10000 ' CURSOR
1100 HIRES : POKE#26A,10 : PRINT CHR$(29) : PRINT : PRINT
2010 CP = 0 ' start from title
3000 GOSUB 20000 ' GAME ENGINE
4000 K$ = KEY$ : GET K$
4010 TEXT : PRINT "GAME OVER"  : CALL #F8D0
9999 END





10000 ' FONT AND CURSOR
10010 !LOAD"FONT.BIN"
10030 RETURN

10100 ' INPUT; RETURN RESULT IN Q$
10110 P$=CHR$(95)+CHR$(32)+CHR$(8)+CHR$(8)
10120 Q$ = "":I=0:PRINT ">"+P$;:
10130 GET K$: K=ASC(K$)
10140 IF K=13 AND Q$<>"" THEN PRINT" ";:RETURN
10150 IF K=20 THEN PRINT K$;:M=300:GOTO 11110
10160 IF K<32 THEN M=150:GOTO 11110
10170 IF K=127THEN IF I>0 THEN I=I-1:M=100:GOTO 11100 ELSE M=200:GOTO 11110
10180 IF POS(0)>36 OR I=EN THEN M=220:GOTO 11110
10190 Q$=Q$+K$:I=I+1:M=70
11100 Q$=LEFT$(Q$,I):PRINT K$P$;:
11110 SOUND 1,M,7:WAIT 3: SOUND 1,1,0: GOTO 10130
11190 RETURN

11200 ' PRINT TEXT
11201 ' X, Y, T$
11210 FOR IP = 1 TO LEN(T$)
11220 C$ = MID$(T$,IP,1)
11230 POKE #BB7F + (Y*40)+X + IP, ASC(C$)
11240 NEXT
11290 RETURN

20000 ' GAME ENGINE
20001 ' CP - CURRENT POSITION
20001 ' EG - END GAME
20100 EG = 0 : LP = -1 :REPEAT
20101 PRINT:PRINT:PRINT
20105 GOSUB 21000 ' LOAD IMAGE
20110 T$ = P$(CP,2): X=0 : Y=25 : GOSUB 11200 ' PRINT TEXT
20300 GOSUB 10100 ' INPUT
20400 GOSUB 23000 ' PROCESS COMMAND
20400 GOSUB 24000 ' GAME OVER CHECK
20900 UNTIL EG = 1
20901 PRINT:PRINT:PRINT
20910 GOSUB 21000 ' LOAD IMAGE
20920 T$ = P$(CP,2): X=0 : Y=25 : GOSUB 11200 ' PRINT TEXT
20999 RETURN

21000 ' LOAD IMAGE
21001 ' LP - LAST POSITION
21005 IF LP = CP THEN RETURN
21010 K$=P$(CP,3) + ".BIN"
21020 LOAD K$
21030 LP = CP
21999 RETURN

22000 ' PRINT AVAILABLE COMMANDS
21003 CLS 
22005 T$ = CHR$(2)+"AVAILABLE COMMANDS:": X=0:Y=25:GOSUB 11200
22010 Y1=0 : FOR I = 0 TO 2
22020 IF AC(CP,I) > 0 THEN T$= CHR$(3)+ P$(AC(CP,I),4):Y1=Y1+1:X=21:Y=24+Y1:GOSUB 11200
22030 NEXT
22035 T$ = CHR$(2)+"Location: "+P$(CP,1): X=0:Y=27:GOSUB 11200
22040 K$ = KEY$ : GET K$:
22041 PRINT:PRINT:PRINT
22999 RETURN

23000 ' PROCESS COMMAND
23005 IF Q$ = "HELP" THEN GOSUB 22000 : RETURN ' PRINT AVAILABLE COMMANDS
23006 IF Q$ = "EXIT" THEN 4010 ' EXIT
23010 FOR I = 1 TO L
23020 IF P$(I,4) = Q$ AND(P$(AC(CP,0),4)=Q$ OR P$(AC(CP,1),4)=Q$ OR P$(AC(CP,2),4)=Q$) THEN CP = I: RETURN
23030 NEXT
23040 T$=CHR$(1)+"Wrong command!         ":X=0:Y=27:GOSUB 11200: WAIT 100
23090 RETURN 

24000 ' GAME OVER CHECK
24010 IF AC(CP,0)=0 AND AC(CP,1)=0 AND AC(CP,2)=0 THEN EG=1
24020 RETURN


