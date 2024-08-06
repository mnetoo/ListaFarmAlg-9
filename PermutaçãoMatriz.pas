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

procedure eh_permuta (var w: matriz; n: integer);
var deu_merda: boolean;
    i, j, x, y: integer; // x: linha - y: coluna
begin

    i:= 1;
    j:= 1;
    deu_merda:= false; // a principio a matriz é permutavel, logo, nao deu merda
        
        while (i<=n) and not deu_merda do
        begin
        
            while (j<=n) and not deu_merda do
            begin
            
                if not ((w[i,j]=0) or (w[i,j]=1)) then // se entrar no if, é pq achou alguma coisa diferente de 1 ou 0
                    deu_merda:= true;
            
                    if w[i,j]=1 then // vai comecar a procurar 0 em todas as direcoes quando achar 1 na matriz
                    begin
                
                        x:= 1;
                        y:= 1;
                        // nao tem necessidade de procurar pra esquerda, pois eu já fiz essa procura com o resto do código
                        
                        for y:= j+1 to n do // comeca a procurar pra direita
                        
                            if w[i,y]<>0 then
                                deu_merda:= true;
                        
                        y:= 1; // so pra resetar as colunas
                        x:= i-1; // pega uma linha pra cima, pra nao pegar o mesmo lugar que encontrou o 1
                
                while (x>=1) and not deu_merda do // comeca a procurar pra cima
                begin

                    if w[x, j]<>0 then
                        deu_merda:= true;
                    
                    x:= x-1;
                
                end;
                
                    x:= i+1; // pega uma linha pra baixo, pra nao pegar o mesmo lugar que encontrou o 1
                
                        while (x<=n) and not deu_merda do // procura só pra baixo
                        begin
                    
                            if w[x,j]<>0 then
                                deu_merda:= true;
                    
                            x:= x+1;
                        
                        end;

                    x:= 1;

                end;

                j:= j+1;

            end;

            j:= 1;
            i:= i+1;

        end;

    if deu_merda then
        write ('nao')
    else
        write ('sim');
end;
                
begin

    ler_matriz (w, n);
    eh_permuta (w, n);
    
end.
