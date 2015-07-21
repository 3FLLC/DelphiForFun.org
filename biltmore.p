// See: http://delphiforfun.org/programs/Math_Topics/Biltmore.htm

uses
   Math;

{Calculate the distances corresponding to diameter values}
procedure Calc(Incr,MaxD,ArmLen:Longint);
var
  S:extended;

begin
   if (MaxD>0) and (ArmLen>0) then begin
      for var D:=1 to Maxd do begin
         if (incr==1) or (D mod 2==0) then begin
            S:=sqrt(D*D*ArmLen/(D+ArmLen));
            Writeln(format('   %2d         %5.1f',[D,S]));
         end;
      end;
   end;
end;

Writeln('Tree          Distance');
Writeln('Diameter      On Stick');
Calc(1,30,25);
Writeln();
Calc(2,60,50);
