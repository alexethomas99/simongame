//Alex's version

program NewGame;

uses crt,sysutils,dateutils;
var a, ColourVal: Integer;
    Answer: String;
    ToTime, FromTime: TDateTime;
    Score: Integer;

procedure Flash;
begin
    writeln('##########');
    writeln('##########');
    writeln('##########');
    writeln('##########');
    writeln('##########');

    delay(10000);

    clrscr;
end;

procedure Colours;
begin
 randomize;
 ColourVal:=random(4)+1;
 if (ColourVal=1) then
   begin
   TextColor(Red);
   Flash();
   Answer:='R';
   end
 else if (ColourVal=2) then
   begin
   TextColor(Green);
   Flash();
   Answer:='G';
   end
 else if (ColourVal=3) then
   begin
   TextColor(Blue);
   Flash();
   Answer:='B';
   end
 else if (ColourVal=4) then
   begin
   TextColor(Yellow);
   Flash();
   Answer:='Y';
   end

end;

procedure Beginning;
begin

  writeln(' _______ _________ _______  _______  _              _______  _______  _______  _______');
  writeln('(  ____ \\__   __/(       )(  ___  )( (    /|     (  ____ \(  ___  )(       )(  ____ \  ') ;
  writeln('| (    \/   ) (   | () () || (   ) ||  \  ( |     | (    \/| (   ) || () () || (    \/  ')  ;
  writeln('| (_____    | |   | || || || |   | ||   \ | |     | |      | (___) || || || || (__      ')   ;
  writeln('(_____  )   | |   | |(_)| || |   | || (\ \) |     | | ____ |  ___  || |(_)| ||  __)     ')    ;
  writeln('      ) |   | |   | |   | || |   | || | \   |     | | \_  )| (   ) || |   | || (        ')     ;
  writeln('/\____) |___) (___| )   ( || (___) || )  \  |     | (___) || )   ( || )   ( || (____/\  ')      ;
  writeln('\_______)\_______/|/     \|(_______)|/    )_)     (_______)|/     \||/     \|(_______/  ')       ;



  delay(5000);


  clrscr;

repeat for a := 1 to 1 DO;
     begin
      textcolor(random(15)+1);
      write(random(2));
      end;
until keypressed;

delay(1);

  clrscr;
  writeln('_______ _________ _______  _______  _              _______  _______  _______  _______');
  writeln('(  ____ \\__   __/(       )(  ___  )( (    /|     (  ____ \(  ___  )(       )(  ____ \  ') ;
  writeln('| (    \/   ) (   | () () || (   ) ||  \  ( |     | (    \/| (   ) || () () || (    \/  ')  ;
  writeln('| (_____    | |   | || || || |   | ||   \ | |     | |      | (___) || || || || (__      ')   ;
  writeln('(_____  )   | |   | |(_)| || |   | || (\ \) |     | | ____ |  ___  || |(_)| ||  __)     ')    ;
  writeln('      ) |   | |   | |   | || |   | || | \   |     | | \_  )| (   ) || |   | || (        ')     ;
  writeln('/\____) |___) (___| )   ( || (___) || )  \  |     | (___) || )   ( || )   ( || (____/\  ')      ;
  writeln('\_______)\_______/|/     \|(_______)|/    )_)     (_______)|/     \||/     \|(_______/  ')       ;


  delay(2000);

  writeln('Made by the king of ascii');

  delay(1000);
  writeln('Aka.the king of swag');

  delay(1000);

  writeln('So Team Wonderwoman');
  readln();

  delay(1000);

  writeln('Press Enter to start the game');
  readln;

  clrscr;
end;
begin
  Beginning();
  Colours();
  Flash();
end.
