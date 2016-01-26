/// <reference path="~/GeneratedArtifacts/viewModel.js" />

myapp.ViewHoldingInventory.Details_postRender = function (element, contentItem) {
    // Write code here.
    var name = contentItem.screen.HoldingInventory.details.getModel()[':@SummaryProperty'].property.name;
    contentItem.dataBind("screen.HoldingInventory." + name, function (value) {
        contentItem.screen.details.displayName = value;
    });
}

