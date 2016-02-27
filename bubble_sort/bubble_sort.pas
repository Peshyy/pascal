program bubble_sort;

const
  N = 10;   // Max number of array elements

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
  end;
{ End of procedure listArray }

{ Start of procedure bubbleSort }
procedure bubbleSort(var sortArray : array1d);
  var
    i, j, temp : Integer;

  begin
    for i := 1 to N-1 do begin
      for j := i+1 to N do begin
        if sortArray[j] > sortArray[j+1] then begin
          temp := sortArray[i];
          sortArray[j] := sortArray[j+1];
          sortArray[j+1] := temp;
        end;
      end;
    end;
  end;
{ End of procedure bubbleSort }

var
  array_of_elements : array1d;

begin
  fillArray(array_of_elements);
  listArray(array_of_elements);
  bubbleSort(array_of_elements);
  listArray(array_of_elements);
  ReadLn();
end.
