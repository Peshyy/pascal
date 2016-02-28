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

{ Start of function descArray }
function descArray(arr : array1d):Boolean;
  var
    i : Integer;
    result : Boolean;

  begin
    result := true;

    for i := 1 to N do begin
      if arr[i] < arr[i+1] then begin
        result := false;
      end;
    end;

    descArray := result;

    if result = true then begin
      WriteLn('Array elements are sorted in descending order');
    end else begin
      WriteLn('Array elements are not sorted in descending order');
    end;

    WriteLn();
  end;
{ End of function descArray }

{ Start of procedure tripleEl }
procedure tripleEl(arr : array1d);
  var
    i, j, k : Integer;
    result : Integer;

  begin
    result := 0;

    for i := 1 to N do begin
      for j := i+1 to N do begin
        for k := j+1 to N do begin
          if (arr[i] = arr[j]) and (arr[j] = arr[k]) then begin
            result := result+1;
          end;
        end;
      end;
    end;

    if result <> 0 then begin
      WriteLn('There are ', result, ' number of triple equally valued elements');
    end else begin
      WriteLn('there are no triple equally valued elements');
    end;

    WriteLn();
  end;
{ End of procedure tripleEl }

{ Start of procedure closeFile }
procedure closeFile(var fIn : fnIn);
  begin
    Close(fIn);
  end;
{ End of procedure closeFile }

var
  elements : array1d;
  fileOut : fnIn;

begin
  fileInput(fileOut);
  fillArray(fileOut, elements);
  listArray(elements);
  descArray(elements);
  tripleEl(elements);
  closeFile(fileOut);

  Write('Press <Enter> to close the program...');
  ReadLn();
end.
