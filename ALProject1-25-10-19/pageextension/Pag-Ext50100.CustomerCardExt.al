pageextension 50100 "Customer Card Ext." extends "Customer Card" //MyTargetPageId
{
    layout
    {
        addafter(Name)
        {
            field("Customer Type"; "Customer Type")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        addfirst(Processing)
        {
            action(Training)
            {
                ApplicationArea = All;
                Caption = 'Botón Formación';
                Promoted = true; //Para que salga en la barra superior
                PromotedCategory = Process; //Para que salga en la barra superior
                PromotedIsBig = true; //Para que salga en la barra superior
                PromotedOnly = true; //Para que salga en un unico lugar
                Image = PutawayLines;
                trigger OnAction()
                begin
                    ShowTrainingMessage();
                end;
            }
        }
    }
}