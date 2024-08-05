program M001;

type matriz = array [0..100, 0..100] of integer;

var
    w: matriz;
    m, n, linha, coluna: integer;

procedure ler_matriz (var w: matriz; var l, c: integer);
var
    i, j: integer;

begin
    
    read(l, c);

    for i:= 1 to l do
        for j:= 1 to c do
            read(w[i, j]);

end;

function linha_nula (var w: matriz; l, c: integer):integer;
var
    i, j, count: integer;
    nula: boolean;

begin
    
    count:= 0;

        for i:= 1 to l do 
        begin

            j:= 1;
            nula:= true;

            while (j <= c) and (nula = true) do
            begin

                if (w[i, j] <> 0) then
                    nula:= false;
                j:= j + 1;
                
            end;

            if nula then
                count:= count + 1;

        end;

    linha_nula:= count;

end;

function coluna_nula (var w: matriz; l, c: integer): integer;
var
    i, j, count: integer;
    nulo: boolean;
begin

    count:= 0;

        for i:= 1 to l do
        begin

            j:= 1;
            nulo:= true;

                while (j <= c) and (nulo = true) do
                begin

                    if (w[j, i] <> 0) then  
                        nulo:= false;
                    j:= j + 1;
                
                end;

            if nulo then
                count:= count + 1;

        end;

    coluna_nula:= count;

end;

begin

    ler_matriz (w, m, n);
    linha:= linha_nula (w, m, n);
    coluna:= coluna_nula(w, m, n);

        writeln('linhas: ', linha);
        write('colunas: ', coluna);
    
end.
