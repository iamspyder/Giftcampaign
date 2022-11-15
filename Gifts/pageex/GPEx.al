pageextension 50131 SalesOrderExt_PKT extends "Sales Order"
{
    actions
    {
        addlast(Processing)
        {
            action(AddFreeGifts)
            {
                Caption = 'Add Free Gifts';
                ToolTip = 'Adds Free Gifts to the current Sales Order based onactive Campaigns';
                ApplicationArea = All;
                Image = Add;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                trigger OnAction()
                begin
                    GiftManagement.AddGifts(Rec);
                end;
            }
        }
    }
    var
        GiftManagement: Codeunit GiftManagement_PKT;
}