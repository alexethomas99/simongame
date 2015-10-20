program WorkingSimonGame;

uses crt,sysutils,dateutils;
var
    Level, Colour, Score, Count, Rtime, Ttime, Highscore, Dly: Integer;
    Play, Sequence, UserInput, GameStartInput: String;
    TtimeStart, TtimeEnd, RtimeStart, RtimeEnd: TDateTime;

procedure Beginning; forward;
procedure InstructionPage;
begin
 write('After Each Instruction Appears, Press Enter If You Understand.');
 readln;
 write('When The Game Begins, One Colour Will Appear.');
 readln;
 write('Memorize The Colour And Answer Appropriately e.g. Red = R.');
 readln;
 write('If That Answer Is Correct Then You Will Advance To The Next Level.');
 readln;
 write('The Next Level Will Display One More Colour Then Previously.');
 readln;
 write('Input All Colour Shown In Order To Progress.');
 readln;
 write('Getting Even One Colour In The Sequence Wrong Will End The Game.');
 readln();
 clrscr;
 Beginning();
end;
procedure Game;
begin
  begin
   TtimeStart:= now;
   Level:=2;
   Count:=1;
   Dly:=1000;
   randomize;
   Play:='true';
   while Play='true' do
   begin
   repeat
   RtimeStart:= now;
   Colour:=random(4)+1;
   case colour of
   1: begin
   textbackground(Red);
   clrscr;
   delay(Dly);
   textbackground(black);
   clrscr;
      end;
   2: begin
   textbackground(blue);
   clrscr;
   delay(Dly);
   textbackground(black);
   clrscr;
      end;
   3: begin
   textbackground(green);
   clrscr;
   delay(Dly);
   textbackground(black);
   clrscr;
      end;
   4: begin
   textbackground(yellow);
   clrscr;
   delay(Dly);
   textbackground(black);
   clrscr;
      end;
   end;
   sequence:=sequence+inttostr(colour);
   textbackground(black);
   delay(200);
   clrscr;
   count:=count+1;
    until count=level;

   textcolor(white);
   writeln('Red=1, Blue=2, Green=3, Yellow=4');
   readln(UserInput);
   RtimeEnd:=now;
   Rtime:= secondsbetween(RtimeEnd,RtimeStart);
   if UserInput=Sequence then
   begin
   Level:=Level+1;
   Count:=Level-Count;
   Dly:=Dly-50;
   Sequence:=('');
   UserInput:=('');
   writeln('You took ', rtime,' seconds on that round.');
   readln;
   end;
   if userinput<>sequence then
   Play:='false';
   end;
   TtimeEnd:= now;
   Ttime:= secondsbetween(TtimeEnd,TtimeStart);
   Score:=Level-2;
   writeln('Oops! The correct answer was ',Sequence, '.');
   writeln('Your total time was ', Ttime,' seconds.');
   writeln('Your score was ',Score, '.');
   readln;
   clrscr;
   Sequence:=(''); //Without this, the first round after restarting has an answer above one integer.
   Beginning();
  end;

end;
procedure Beginning;
begin
  writeln('  _____ _                          _____                      ');
  writeln(' / ____(_)                        / ____|                     ');
  writeln('| (___  _ _ __ ___   ___  _ __   | |  __  __ _ _ __ ___   ___ ');
  writeln(' \___ \| |  _ ` _ \ / _ \|  _ \  | | |_ |/ _` |  _ ` _ \ / _ \');
  writeln(' ____) | | | | | | | (_) | | | | | |__| | (_| | | | | | |  __/');
  writeln('|_____/|_|_| |_| |_|\___/|_| |_|  \_____|\__,_|_| |_| |_|\___|');
  writeln('Please press the appropriate integer... ');

  writeln('     1: Play ');
  writeln('     2: Instructions ');
  readln(GameStartInput);
  if GameStartInput='1' then
  begin
  Game();
  end
  else if GameStartInput='2' then
  begin
  clrscr;
  InstructionPage();
  end
  else
  begin
  writeln ('Invalid Input'); //Start screen validation
  readln();
  clrscr;
  Beginning();
  end;

end;
begin;
Beginning();
end.
