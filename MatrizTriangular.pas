program M002;

type matriz = array [0..100, 0..100] of integer;

var
    w: matriz;
    n: integer;

procedure ler_matriz (var w: matriz; var n: integer);
var
    i, j: integer;

begin
    
    read(n);

    for i:= 1 to n do
        for j:= 1 to n do
            read(w[i, j]);

end;

function triangular_inferior (var w: matriz; n: integer):boolean;
var
    i, j: integer;
begin

    triangular_inferior:= true;

    for i:= 1 to n do
        for j:= 1 to (i - 1) do
            
                if (w[i, j] <> 0) then begin
                    triangular_inferior:= false;
                    exit;
                end;
            
end;

function triangular_superior (var w: matriz; n: integer):boolean;
var
    i, j: integer;
begin

    triangular_superior:= true;

        for i:= 1 to n do
            for j:= j + 1 to n do

                    if (w[i, j] <> 0) then begin
                        triangular_superior:= false;
                        exit;
                    end;

end;
                
begin

    ler_matriz (w, n);
    if triangular_inferior (w, n) or triangular_superior (w, n) then
        write('sim')
    else
        write('nao');
    
end.
