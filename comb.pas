 {$mode objfpc}
const n = 5;var p: boolean;
var   a:array[1..n] of longint;
      index : integer;
      {$I-}
procedure generate (l,r:integer);
var i,v:integer;
begin
      if (l=r) then begin
        for i:=1 to n do write(a[i],' ');
        writeln;
      end else begin
        for i := l to r do begin
           v:=a[l]; a[l]:=a[i]; a[i]:=v;
           generate(l+1,r);
           v:=a[l]; a[l]:=a[i]; a[i]:=v;
        end;
      end;
end;

begin
      p:=true;
      for index := 1 to n do read(a[index]);if ioresult<>0 then begin write('Ошибка ввода');p:=false;end;
      if p then generate( 1,n );
      readln;
      readln;
end.

