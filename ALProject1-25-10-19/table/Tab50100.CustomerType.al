table 50100 "Customer Type"
{
    DataClassification = ToBeClassified;
    LookupPageId = "Customer Type";
    DrillDownPageId = "Customer Type";

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Código';
            DataClassification = ToBeClassified;
        }

        field(2; "Name"; Text[250])
        {
            Caption = 'Descripción';
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }

    }

}