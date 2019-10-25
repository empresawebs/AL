tableextension 50101 "Sales Header Ext." extends "Sales Header" //MyTargetTableId
{
    fields
    {
        modify("Sell-to Customer No.")
        {
            trigger OnBeforeValidate()
            var
                Customer: Record Customer;
            begin
                "Customer Type" := '';
                if "Sell-to Customer No." <> '' then begin
                    Customer.Reset();
                    Customer.Get("Sell-to Customer No.");
                    "Customer Type" := Customer."Customer Type";
                end;
            end;
        }

        field(50100; "Customer Type"; Code[20])
        {
            Caption = 'Tipo Cliente';
            DataClassification = ToBeClassified;
            TableRelation = "Customer Type".Code;
        }
    }

}