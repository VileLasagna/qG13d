import QtQuick 2.10
import QtQuick.Controls 2.3

Page
{
    anchors.fill: parent

    title: qsTr("Keys")

    background: Rectangle { id: bg; anchors.fill: parent; color: "#AFAFAF"}

    G13Layout
    {
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }

}
