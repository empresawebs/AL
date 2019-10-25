tableextension 50102 "Sales Shipment Header Ext." extends "Sales Shipment Header" //MyTargetTableId
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