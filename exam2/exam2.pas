program exam2;

const
  N = 10;

type
  array1d = Array[1..N] of Integer;
  fnIn = Text;

{ Start of procedure fileInput }
procedure fileInput(var fIn : fnIn);
  var
    fName : String;

  begin
    Write('Enter file name: ');
    ReadLn(fName);

    Assign(fIn, fName);

    WriteLn();
  end;
{ End of procedure fileInput}

{ Start of procedure fillArray }
procedure fillArray(var fIn : fnIn; var arr : array1d);
  var
    i : Integer;

  begin
    Reset(fIn);

    for i := 1 to N do begin
      ReadLn(fIn, arr[i]);
    end;

    WriteLn();
  end;
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
  fileInput(fileOut);
  fillArray(fileOut, elements);
  listArray(elements); { Elements aren't filled in }

  for i := 1 to N do begin
    ReadLn(fileOut, j);
    WriteLn(j);
  end;

end.
