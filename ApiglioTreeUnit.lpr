{$mode objfpc}{$H+}

program ApiglioTreeUnit;

uses Apiglio_Tree;

var ti:integer;

begin

  ATree.AddUnit('',nil,NBT_Compound);
  ATree.CurrentInto('');
  ATree.AddUnit('level',nil,NBT_Compound);

  ATree.CurrentInto('level');
  ATree.AddUnit('xPos',nil,NBT_Int);
  ATree.AddUnit('zPos',nil,NBT_Int);

  ATree.CurrentOut;

  ATree.AddUnit('level2',nil,NBT_Compound);
  ATree.CurrentInto('level2');
  ATree.AddUnit('Section',nil,NBT_List);
  ATree.AddUnit('Entites',nil,NBT_List);

  ATree.PrintJSON;
  writeln;
  writeln;
  writeln;

  ATree.root.print;
  writeln;
  writeln;
  writeln;

  ATree.Clear;
  ATree.root.print;
  readln;

  ATree.Clear;
  for ti:=0 to 6000 do
    begin
      ATree.AddUnit('',nil,NBT_Compound);
      ATree.CurrentInto('');
      ATree.AddUnit('level',nil,NBT_Compound);

      ATree.CurrentInto('level');
      ATree.AddUnit('xPos',nil,NBT_Int);
      ATree.AddUnit('zPos',nil,NBT_Int);

      ATree.CurrentOut;

      ATree.AddUnit('level2',nil,NBT_Compound);
      ATree.CurrentInto('level2');
      ATree.AddUnit('Section',nil,NBT_List);
      ATree.AddUnit('Entites',nil,NBT_List);
      ATree.Clear;
    end;


end.

