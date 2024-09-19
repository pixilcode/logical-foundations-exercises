list:
    @just --list

test chapter: && clean
    coqc -Q . LF {{chapter}}.v
    coqc -Q . LF {{chapter}}Test.v
    
clean:
    rm -f *.glob
    rm -f *.vok
    rm -f *.vos
    rm -f .*.aux
