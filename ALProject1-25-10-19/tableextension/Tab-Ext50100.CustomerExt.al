tableextension 50100 "Customer Ext." extends "Customer" //MyTargetTableId
{
    fields
    {
        
        modify(Name)
        {
            trigger OnBeforeValidate()
            begin
                if not Confirm('¿Desea modificar el campo Nombre?') then
                    Error('');
            end;
        }

        field(50100; "Customer Type"; Code[20])
        {
            Caption = 'Tipo Cliente';
            DataClassification = ToBeClassified;
            TableRelation = "Customer Type".Code;

            trigger OnValidate()
            var
                Item: Record Item;
            begin
                TestField("No.");
            end;
        }

        /*
        field(50100; "Customer Type"; Option) //Campo Tipo Select
        {
            Caption = 'Tipo Cliente';
            DataClassification = ToBeClassified;
            OptionMembers = Normal,VIP,Contado;
            OptionCaption = 'Normal,VIP,Contado';
        }
        */

        /*
        field(50100; "Customer Type"; Code[20])
        {
            Caption = 'Tipo Cliente';
            DataClassification = ToBeClassified;
            TableRelation = "Customer Type".Code;
        }
        */

    }

    procedure ShowTrainingMessage()
    begin
        Error('Ha ocurrido un error.'); //Para debugar
        Message(Name + '\' + format("Customer Type") + '\' + "Location Code"); //format() cuando es un campo Option
    end;

}