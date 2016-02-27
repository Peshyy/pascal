program selection_sort;

const
  N = 10;

type
  array1d = Array[1..N] of Integer;

{ Start of procedure fillArray }
procedure fillArray(var arrFill : array1d);
  var
    i : Integer;

  begin
    WriteLn('Filling array elements...');

    Randomize;

    for i := 1 to N do begin
      arrFill[i] := Random(1000);
      //WriteLn('Random number #', i, ' is ', arrFill[i]);
    end;
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
  end;
{ End of procedure listArray }

{ Start of procedure selectionSort }
procedure selectionSort(var arrSort : array1d);
  var
    i, j, temp : Integer;      // Loop variable
    minEl : Integer;  // Variable for lowest value element

  begin
    WriteLn('Sorting array elements...');

    for i := 1 to N-1 do begin
      minEl := i;

      for j := i+1 to N do begin
        if arrSort[j] < arrSort[minEl] then begin
          minEl := arrSort[j];
        end;
      end;

      if minEl <> i then begin
        temp := arrSort[minEl];
        arrSort[minEl] := arrSort[i];
        arrSort[i] := temp;
      end;
    end;
  end;
{ End of procedure selectionSort }

{ Start of function isSorted }
function isSorted(arr : array1d):Boolean;
  var
    i : Integer;
    s : Boolean;

  begin
    s := true;
    for i := 1 to N do begin
      if arr[i] > arr[i+1] then begin
        s := false;
      end;
    end;

    isSorted := s;

    WriteLn(isSorted);
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
end.
