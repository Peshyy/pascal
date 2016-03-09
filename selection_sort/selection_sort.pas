program selection_sort;

const
  N = 10;

type
  array1d = Array[1..N] of Integer;

{ Start pf procedure switchElements }
procedure switchElements(var el1, el2 : Integer);
  var
    temp : Integer;

  begin
    temp := el1;
    el1 := el2;
    el2 := temp;
  end;
{ End of procedure switchElements }

{ Start of procedure fillArray }
procedure fillArray(var arrFill : array1d);
  var
    i : Integer;

  begin
    WriteLn('Filling array elements...');

    Randomize;

    for i := 1 to N do begin
      arrFill[i] := Random(1000);
    end;

    WriteLn();
  end;
{ End of procedure fillArray }

{ Start of procedure listArray }
procedure listArray(arr : array1d);
  var
    i : Integer;

  begin
    WriteLn('Array elements:');
    for i := 1 to N do begin
      Write(arr[i], ' ');
    end;

    WriteLn();
    WriteLn();
  end;
{ End of procedure listArray }

{ Start of procedure selectionSort }
procedure selectionSort(var arrSort : array1d);
  var
    i, j : Integer;    // Loop variable
    minEl : Integer;  // Variable for lowest value element

  begin
    WriteLn('Sorting array elements...');

    for i := 1 to N-1 do begin
      minEl := i;

      for j := i+1 to N do begin
        if arrSort[j] < arrSort[minEl] then begin
          minEl := j;
        end;
      end;

      if minEl <> i then begin
        switchElements(arrSort[minEl], arrSort[i]);
      end;
    end;

    WriteLn('Done sorting array!');

    WriteLn();
  end;
{ End of procedure selectionSort }

{ Start of function isSorted }
function isSorted(arr : array1d):Boolean;
  var
    i : Integer;
    s : Boolean;

  begin
    s := true;
    for i := 1 to N-1 do begin
      if arr[i] > arr[i+1] then begin
        s := false;
      end;
    end;

    isSorted := s;

    if isSorted then begin
      WriteLn('Array is sorted!');
    end else begin
      WriteLn('Array is NOT sorted!');
    end;

    WriteLn();
  end;
{ End of function isSorted }


var
  array1 : array1d;

begin
  fillArray(array1);
  listArray(array1);
  selectionSort(array1);
  listArray(array1);
  isSorted(array1);

  Write('Press <Enter> to close the program...');
  ReadLn();
end.
