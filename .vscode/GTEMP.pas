
Uses crt;

Var n,j: integer;
  f: text;
  s: string;

Const inp = 'Sinhnhiphan.txt';

Function dk(s:String): boolean;

Var i,count: integer;
Begin
  dk := true;
  count := 0;
  For i:=1 To length(s) Do
    If s[i]='0' Then
      Begin
        count := 1;
        break;
      End;
  If count=1 Then dk := false;
End;

Procedure xuli;

Var i: integer;
Begin
  assign(f,inp);
  rewrite(f);
  s := '';
  For i:=1 To n Do
    s := s+'0';
  writeln(f,s);

  Repeat
    For i:=n Downto 1 Do
      Begin
        If s[i]='0' Then
          Begin
            s[i] := '1';
            If i<>n Then
              Begin
                For j:=i+1 To n Do
                  s[j] := '0';
                writeln(f,s);
                break;
              End
            Else writeln(f,s);


          End;

      End;
  Until dk(s)=true;
  close(f);
End;

Begin
  clrscr;
  write('Nhap n: ');
  readln(n);
  xuli;
  readln;
End.
