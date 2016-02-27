program test1;

type
  array1d = Array[1..10] of Integer;

var
  i, j, k, a, b, c : Integer;
  arr : array1d;
  temp : Integer;

begin

  for i := 1 to 10 do begin
    ReadLn(a);
    arr[i] := a;
  end;

  for j := 1 to 10 do begin
    Write(arr[j], ', ');
  end;

  WriteLn();
  WriteLn('Press any key to sort...');
  ReadLn();

  for k := 1 to 10 do begin
    for c := 1 to 9 do begin
      if arr[c] > arr[c+1] then begin
        temp := arr[c];
        arr[c] := arr[c+1];
        arr[c+1] := temp;
      end;
    end;
  end;

  { for k := 10 downto 2 do begin
    while arr[k] < arr[k-1] do begin
      temp := arr[k];
      arr[k] := arr[k-1];
      arr[k-1] := temp;
    end;
  end; }

  for b := 1 to 10 do begin
    Write(arr[b], ', ');
  end;

  WriteLn();

  ReadLn();
end.
