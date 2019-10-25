report 50100 "UpdateShipment"
{
    UsageCategory = Administration;
    ApplicationArea = All;
    ProcessingOnly = true;
    Caption = 'Actualizar Tipo Cliente en Albaranes';
    Permissions = TableData "Sales Shipment Header" = rimd; //Con permisos de modificar //rimd = Reader Insert Modify Delete

    dataset
    {
        dataitem(Customer; Customer)
        {
            RequestFilterFields = "No.";
            dataitem("Sales Shipment Header"; "Sales Shipment Header")
            {
                RequestFilterFields = "Sell-to Customer No.";
                DataItemLink = "Sell-to Customer No." = field ("No.");
                trigger OnAfterGetRecord()
                begin
                    "Sales Shipment Header"."Customer Type" := Customer."Customer Type";
                    "Sales Shipment Header".Modify();
                end;
            }
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {

                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }
}