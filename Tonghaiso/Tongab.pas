uses crt;
var a,b:String;

function Tong(a,b:String):String;
var i,j,LA,LB:integer;
    athay,bthay,tongtam,sonho:byte;
    s,stam:String;
begin
    LA:=length(a);
    LB:=length(b);
    if LA<LB then
        begin
            for i:=1 to LB-LA do
                a:='0'+a;
        end
    else
        begin
            for i:=1 to LA-LB do
                b:='0'+b;
        end;
    sonho:=0;
    s:='';
    for i:=length(a) downto 1 do
        begin
            val(a[i],athay);
            val(b[i],bthay);
            tongtam:=0;
            tongtam:=athay+bthay+sonho;
            sonho:=0;
            if (tongtam>9)and(i<>1) then
                begin
                    sonho:=1;
                    tongtam:=tongtam-10;
                end;
            str(tongtam,stam);
            s:=stam+s;
        end;
    Tong:=s;
end;

Procedure xuatdl;
begin
    writeln(a,' + ',b,' = ',Tong(a,b));
end;

procedure nhapdulieu;
begin
    write('Nhap a: ');
    readln(a);
    write('Nhap b:');
    readln(b);
end;

begin
    clrscr;
    Nhapdulieu;

    xuatdl;
    readln;
end.
