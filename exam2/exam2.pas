program exam2;

const
  N = 10;

type
  array1d = Array[1..N] of Integer;
  fnIn = TextFile;

{ Start of procedure fillArray }
{procedure fillArray(fileIn : textFile);
  var
    i : Integer;

  begin
    WriteLn('Filling array elements...');

    Randomize;

    for i := 1 to N do begin
      fileIn[i] := Random(1000);
    end;

    WriteLn();
  end;}
{ End of procedure fillArray }

{ Start of procedure listArray }
procedure listArray(arrList : array1d);
  var
    i : Integer;

  begin
    WriteLn('Array elements:');

    for i := 1 to N do begin
      Write(arrList[i], ' ');
    end;

    WriteLn();
    WriteLn();
  end;
{ End of procedure listArray }

{
  TODO:
  - Insert an array from a text file
  - Check if the array elements are sorted in descending order
  - Are there any three identical elements with equal values
    in the array and counts how many are they
}

var
  elements : array1d;
  fileOut : fnIn;
  i, j : Integer;

begin
  Assign(fileOut, 'file.txt');
  Reset(fileOut);

  for i := 1 to N do begin
    ReadLn(fileOut, j);
    WriteLn(j);
  end;

end.
