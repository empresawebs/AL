pageextension 50104 "Posted Sales Shipment Ext." extends "Posted Sales Shipment" //MyTargetPageId
{
    layout
    {
        addafter("Sell-to Customer Name")
        {
            field("Customer Type"; "Customer Type")
            {
                ApplicationArea = All;
            }
        }
    }
}