tableextension 50103 "Sales Invoice Header Ext." extends "Sales Invoice Header" //MyTargetTableId
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