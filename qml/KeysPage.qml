import QtQuick 2.10
import QtQuick.Controls 2.3

Page
{
    anchors.fill: parent

    title: qsTr("Keys")

    background: Rectangle { anchors.fill: parent; color: "#AFAFAF"}

    property double imageScale: Math.min(deviceImage.paintedHeight / deviceImage.sourceSize.height, deviceImage.paintedWidth / deviceImage.sourceSize.width )
    property bool debugDraw: true

    property string logitecBlue: "#00A7E0"

    Image
    {
        id: deviceImage
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        fillMode: Image.PreserveAspectFit
        source: "G13device.png"
    }
//    Image
//    {
//        id: glowImage
//        anchors.horizontalCenter: deviceImage.horizontalCenter
//        anchors.horizontalCenterOffset: deviceImage.paintedWidth * 0.023
//        anchors.verticalCenter: deviceImage.verticalCenter
//        anchors.verticalCenterOffset: deviceImage.paintedHeight * -0.01
//        //anchors.topMargin: deviceImage.height * 0.2
//        height: sourceSize.height * (deviceImage.paintedHeight / deviceImage.sourceSize.height)
//        width: sourceSize.width * (deviceImage.paintedWidth / deviceImage.sourceSize.width)
//        fillMode: Image.PreserveAspectFit
//        source: "pulseglow.png"
//        opacity: keysMouseArea.containsMouse ? 0: 0
//        Behavior on opacity
//        {
//            NumberAnimation{ duration: 200}
//        }


//        MouseArea
//        {
//            id: keysMouseArea
//            anchors.fill: parent
//            hoverEnabled: true

//        }
//    }

    Image
    {
        id: glowouterImage
        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * 0.023
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * -0.01
        //anchors.topMargin: deviceImage.height * 0.2
        height: sourceSize.height * (deviceImage.paintedHeight / deviceImage.sourceSize.height)
        width: sourceSize.width * (deviceImage.paintedWidth / deviceImage.sourceSize.width)
        fillMode: Image.PreserveAspectFit
        source: "pulseglow_home_gkey.png"
    }

    ///Buttons start here

    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : g1area.containsMouse ? logitecBlue : "transparent"
        border.width: 3
        radius: 4
        id: g1rect
        MouseArea
        {
            id:g1area
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true

        }

        Label
        {
            anchors.centerIn:parent
            text: "G1"
            color: g1area.containsMouse ? logitecBlue : "white"
        }
        height: 36 * imageScale
        width: 60 * imageScale

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * -0.34
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * -0.225
    }

    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : g2area.containsMouse ? logitecBlue : "transparent"
        border.width: 3
        radius: 4
        id: g2rect
        MouseArea
        {
            id:g2area
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true

        }

        Label
        {
            anchors.centerIn:parent
            text: "G2"
            color: g2area.containsMouse ? logitecBlue : "white"
        }
        height: 40 * imageScale
        width: 51 * imageScale

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * -0.218
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * -0.22
    }

    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : g3area.containsMouse ? logitecBlue : "transparent"
        border.width: 3
        radius: 4
        id: g3rect
        MouseArea
        {
            id:g3area
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true

        }

        Label
        {
            anchors.centerIn:parent
            text: "G3"
            color: g3area.containsMouse ? logitecBlue : "white"
        }
        height: 41 * imageScale
        width: 51 * imageScale

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * -0.11
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * -0.22
    }

    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : g4area.containsMouse ? logitecBlue : "transparent"
        border.width: 3
        radius: 4
        id: g4rect
        MouseArea
        {
            id:g4area
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true

        }

        Label
        {
            anchors.centerIn:parent
            text: "G4"
            color: g4area.containsMouse ? logitecBlue : "white"
        }
        height: 42 * imageScale
        width: 50 * imageScale

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * -0.001
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * -0.22
    }

    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : g5area.containsMouse ? logitecBlue : "transparent"
        border.width: 3
        radius: 4
        id: g5rect
        MouseArea
        {
            id:g5area
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true

        }

        Label
        {
            anchors.centerIn:parent
            text: "G5"
            color: g5area.containsMouse ? logitecBlue : "white"
        }
        height: 42 * imageScale
        width: 50 * imageScale

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * 0.105
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * -0.22
    }

    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : g6area.containsMouse ? logitecBlue : "transparent"
        border.width: 3
        radius: 4
        id: g6rect
        MouseArea
        {
            id:g6area
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true

        }

        Label
        {
            anchors.centerIn:parent
            text: "G6"
            color: g6area.containsMouse ? logitecBlue : "white"
        }
        height: 42 * imageScale
        width: 52 * imageScale

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * 0.217
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * -0.22
    }

    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : g7area.containsMouse ? logitecBlue : "transparent"
        border.width: 3
        radius: 4
        id: g7rect
        MouseArea
        {
            id:g7area
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true

        }

        Label
        {
            anchors.centerIn:parent
            text: "G6"
            color: g7area.containsMouse ? logitecBlue : "white"
        }
        height: 37 * imageScale
        width: 63 * imageScale

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * 0.335
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * -0.225
    }

}
