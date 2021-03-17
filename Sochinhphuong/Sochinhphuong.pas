uses crt;
var n,TestFactor:longint;
    k:real;
Procedure Nhapdulieu;
begin
    write('Nhap n: ');
    readln(n);
end;

Procedure Xuatkq;
begin
    k:=sqrt(n);
    TestFactor:=trunc(k);
    TestFactor:=TestFactor*TestFactor;
    if TestFactor - n =0 then
        writeln('True')
    else
        writeln('False');
end;

begin
    clrscr;
    Nhapdulieu;
    Xuatkq;

    readln;
end.
