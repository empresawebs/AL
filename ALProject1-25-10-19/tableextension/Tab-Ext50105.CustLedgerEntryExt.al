tableextension 50105 "Cust. Ledger Entry Ext." extends "Cust. Ledger Entry"
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