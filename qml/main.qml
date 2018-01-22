import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.2

ApplicationWindow {
    id: window
    visible: true
    width: 800
    height: 600
    title: qsTr("G13d Config GUI")

    header: ToolBar
    {
        contentHeight: toolButton.implicitHeight

        RowLayout
        {
            id: toolBarLayout
            ToolButton
            {
                id: toolButton
                text: stackView.depth > 1 ? "\u25C0" : "\u2630"
                font.pixelSize: Qt.application.font.pixelSize * 1.6
                onClicked: drawer.position > 0.5 ? drawer.close() : drawer.open()
            }
            TabBar
            {
                id: pageTabs
                anchors.top: parent.top
                anchors. bottom: parent.bottom
                anchors.left: toolButton.right
                anchors.right: parent.right
                TabButton
                {
                    text: "Keys"
                    width: implicitWidth
                }
                TabButton
                {
                    text: "Screen"
                    width: implicitWidth
                }
                TabButton
                {
                    text: "Macros"
                    width: implicitWidth
                }
            }
        }

    }

    Rectangle
    {
        id:mainArea
        anchors.top:window.header.bottom
        anchors.bottom: parent.bottom
        anchors.left:parent.left
        anchors.right:parent.right
        color: "green"
        Drawer
        {

            id: drawer
            width: parent.width * 0.9
            height: parent.height
            topMargin: window.header.height


            Rectangle
            {
                color: "magenta"
                anchors.fill: parent
                FilePicker
                {
                    anchors.fill: parent
                }
            }
        }
        StackLayout
        {
            z:1
            id: stackView
            anchors.fill: parent
            currentIndex: pageTabs.currentIndex
            Item
            {
                id: keysPage
                KeysPage {}
            }
            Item
            {
                id: screen
                ScreenPage {}
            }
            Item
            {
                id: macros
                MacrosPage {}
            }
        }
    }

}
