/// <reference path="~/GeneratedArtifacts/viewModel.js" />

myapp.BrowseHoldingInventories.selectNextStrRqsNum_execute = function (screen)
{///custom screen method to set selected item to next StrRqsNum
    //calc next num
    var nextNum = (Number(screen.HoldingInventories.selectedItem.StrRqsNum) + 1).toString();
    // iterate collection data to find the next item
    var nextItem = msls.iterate(screen.HoldingInventories.data)
                        .where(function (i)
                        {
                            return i.StrRqsNum == nextNum;
                        }).first();
    if (nextItem)
    {   //if found - select the item & return true
        screen.HoldingInventories.selectedItem = nextItem;
        return true;
    }
    else
    {   //not found - return false
        return false;
    };
};

myapp.BrowseHoldingInventories.TapMethod_execute = function (screen) {
    // tap method of list item on borwse screen.

    //handy way to save/set scroll position
    var scrollTopPosition = $(window).scrollTop();

    //currently selected item
    var item = screen.HoldingInventories.selectedItem;

    //showAddEditScreen - pass item
           // beforeShown: setup binding on FieldB
            //afterClosed: if commit & select next then recurse

    myapp.showAddEditHoldingInventory(item, {
        beforeShown: function (addEditScreen)
        {//this executes before the screen is shown
            //find the trigger field
            var contentItem = addEditScreen.findContentItem("FieldB");
            if (contentItem)
            {   //databind to catch value change
                contentItem.dataBind(contentItem.bindingPath, function(newValue){
                    if (newValue && contentItem.oldValue && newValue != contentItem.oldValue)
                    {   //if change then commit - this triggers close of addEditScreen
                        myapp.commitChanges();
                    }
                    contentItem.oldValue = newValue;
                });

            }
        },
        afterClosed: function (addEditScreen, navigationAction)
        {//this executes after the screen is closed
            //scroll browse screen to where we left off
            $(window).scrollTop(scrollTopPosition);
            //if commit
            if (navigationAction == msls.NavigateBackAction.commit)
            {   //try to select next item in list
                if (myapp.BrowseHoldingInventories.selectNextStrRqsNum_execute(screen) == true)
                {   //next item selected then recurse
                    myapp.BrowseHoldingInventories.TapMethod_execute(screen);
                }
            }
        }
    });
};
