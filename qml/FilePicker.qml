import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Item
{

    TreeView
    {
        anchors.fill: parent
            TableViewColumn
            {
                title: "Name"
                role: "fileName"
                width: 300

            }
        model: File_Model
        rootIndex: G13.folderIndex
        style:  TreeViewStyle
                {
                    backgroundColor: "#3D4249"
                    alternateBackgroundColor: "#3D4249"
                    textColor:"#FFFFFF"
                    highlightedTextColor: "#294570"
                }
        onDoubleClicked: G13.loadProfile(index)
    }

}
