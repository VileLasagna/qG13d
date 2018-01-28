import QtQuick 2.10
import QtQuick.Controls 2.3

Page
{
    anchors.fill: parent

    title: qsTr("Keys")

    background: Rectangle { id: bg; anchors.fill: parent; color: "#4F4F4F"}

    property string lastButton: "None"

    G13Layout
    {
        id: device
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        onButtonClicked: lastButton = buttonID
    }

    Label
    {
        text: "Last \nButton \npressed:\n" + lastButton
        //font.pointSize: 48
        anchors.top: parent.top
        anchors.topMargin: 100
        anchors.left: device.right
        anchors.leftMargin: 50
    }

}
