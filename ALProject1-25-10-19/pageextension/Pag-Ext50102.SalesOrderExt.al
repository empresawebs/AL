pageextension 50102 "Sales Order Ext." extends "Sales Order" //MyTargetPageId
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