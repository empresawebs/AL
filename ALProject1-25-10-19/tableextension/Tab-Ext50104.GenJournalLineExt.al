tableextension 50104 "Gen. Journal Line Ext." extends "Gen. Journal Line" //MyTargetTableId
{
    fields
    {
        field(50100; "Customer Type"; Code[20])
        {
            Caption = 'Tipo Cliente';
            DataClassification = ToBeClassified;
            TableRelation = "Customer Type".Code;
        }
    }
}