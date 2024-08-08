program repe;

type
    vetor = array [-100..100] of boolean;
    matriz = array [1..100, 1..100] of integer;

var
    w: matriz;
    m, n: integer;


procedure ler_matriz (var w: matriz; var l, c: integer);
var
    i, j: integer;
begin

    read(l, c);
    for i:= 1 to l do 
        for j:= 1 to c do 
            read(w[i, j]);

end;

function proc_repetido (var w: matriz; l, c: integer):boolean;
var
    i, j: integer;
    repete: boolean;
    encontrado: vetor;
begin
    
    repete:= false;

    for i:= -100 to 100 do
        encontrado[i]:= false;

            for i:= 1 to l do
                for j:= 1 to c do

                    if encontrado[w[i, j]] then
                        repete:= true
                    else
                        encontrado[w[i, j]]:= true;

    proc_repetido:= repete;

end;

begin

    ler_matriz (w, m, n);
    if proc_repetido (w, m, n) then
        write('sim')
    else
        write('nao');

end.
