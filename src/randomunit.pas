unit randomunit;
(* this unit does something *)
 
(* public *)
interface
 
type
	(* the type TRandomNumber gets globally known *)
	(* since it is included somewhere (uses-statement) *)
	TRandomNumber = integer;
 
(* of course the const- and var-blocks are possible, too *)
 
(* a list of procedure/function signatures makes *)
(* them useable from outside of the unit *)
function getRandomNumber(): TRandomNumber;
 
(* an implementation of a function/procedure *)
(* must not be in the interface-part *)
 
(* private *)
implementation
 
var
	(* var in private-part *)
	(* => only modifiable inside from this unit *)
	chosenRandomNumber: TRandomNumber;
 
function getRandomNumber(): TRandomNumber;
begin
	(* return value *)
	getRandomNumber := chosenRandomNumber;
end;
 
(* initialization is the part executed *)
(* when the unit is loaded/included *)
initialization
begin
	(* choose our random number *)
	chosenRandomNumber := 3;
	(* chosen by fair-dice-roll *)
	(* guaranteed to be random *)
end;
 
(* finalization is worked off at program end *)
finalization
begin
	(* this unit says 'bye' at program halt *)
	writeln('bye');
end;
end.