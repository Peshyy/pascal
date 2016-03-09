program insertion_sort;

const
  N = 10;   // Max number of array elements

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

{ Start of procedure insertionSort }
procedure insertionSort(var arrIn : array1d);
  var
    holePosition, valueToInsert : Integer;  // Variables
    i : Integer;                            // Loop variable

  begin
    for i := 2 to N do begin
      valueToInsert := arrIn[i];
      holePosition := i;

      while ((holePosition > 1) and (arrIn[i-1] > valueToInsert)) do begin
        arrIn[holePosition] := arrIn[holePosition - 1];
        holePosition := holePosition-1;
      end;

      arrIn[holePosition] := valueToInsert;

    end;
  end;
{ End of procedure insertionSort }

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

var
  array1 : array1d;

begin
  fillArray(array1);
  listArray(array1);
  insertionSort(array1);
  listArray(array1);
end.
