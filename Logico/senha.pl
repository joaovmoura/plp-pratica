symbols(['-', '@', '%', '?', '*', '$', '!', '#']).

main:- read_line_to_string(user_input, Password),
    verify(Password),
    halt.

verify(Password):- string_chars(Password, Chars_pswrd),
                (containsSymbol(Chars_pswrd),
                containsLetter(Chars_pswrd),
                containsNumber(Chars_pswrd) -> write("Senha forte!");
                write("Senha fraca!")).

containsLetter([Head|Tail]):-(is_alpha(Head) -> true; containsLetter(Tail)).
containsNumber([Head|Tail]):-(is_digit(Head) -> true; containsNumber(Tail)).

containsSymbol([Head|Tail]):- symbols(Symbols),
                        (isSymbol(Head, Symbols) -> true; containsSymbol(Tail)).

isSymbol(_, []):- false.         
isSymbol(X, [C|_]):- atom_string(X, C).
isSymbol(X, [_|Y]):- isSymbol(X, Y).