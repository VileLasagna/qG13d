import QtQuick 2.10
import QtQuick.Controls 2.3

Page
{
    anchors.fill: parent

    title: qsTr("Keys")

    background: Rectangle { anchors.fill: parent; color: "#AFAFAF"}

    property double imageScale: Math.min(deviceImage.paintedHeight / deviceImage.sourceSize.height, deviceImage.paintedWidth / deviceImage.sourceSize.width )
    property bool debugDraw: false

    property string logitecBlue: "#00A7E0"
    property double buttonGlowRadius: 4
    property double buttonGlowThickness: 5

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

    ///////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////
    //
    //         ROW 1 -> G1->G7
    //
    ///////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////

    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : g1area.containsMouse ? logitecBlue : "transparent"
        border.width: buttonGlowThickness
        radius: buttonGlowRadius
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
        border.width: buttonGlowThickness
        radius: buttonGlowRadius
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
        border.width: buttonGlowThickness
        radius: buttonGlowRadius
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
        border.width: buttonGlowThickness
        radius: buttonGlowRadius
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
        border.width: buttonGlowThickness
        radius: buttonGlowRadius
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
        border.width: buttonGlowThickness
        radius: buttonGlowRadius
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
        border.width: buttonGlowThickness
        radius: buttonGlowRadius
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
            text: "G7"
            color: g7area.containsMouse ? logitecBlue : "white"
        }
        height: 37 * imageScale
        width: 63 * imageScale

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * 0.335
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * -0.225
    }

    ///////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////
    //
    //         ROW 2 -> G8->G14
    //
    ///////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////

    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : g8area.containsMouse ? logitecBlue : "transparent"
        border.width: buttonGlowThickness
        radius: buttonGlowRadius
        id: g8rect
        MouseArea
        {
            id:g8area
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true

        }

        Label
        {
            anchors.centerIn:parent
            text: "G8"
            color: g8area.containsMouse ? logitecBlue : "white"
        }
        height: 36 * imageScale
        width: 54 * imageScale

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * -0.34
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * -0.155
    }

    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : g9area.containsMouse ? logitecBlue : "transparent"
        border.width: buttonGlowThickness
        radius: buttonGlowRadius
        id: g9rect
        MouseArea
        {
            id:g9area
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true

        }

        Label
        {
            anchors.centerIn:parent
            text: "G9"
            color: g9area.containsMouse ? logitecBlue : "white"
        }
        height: 42 * imageScale
        width: 52 * imageScale

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * -0.228
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * -0.15
    }

    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : g10area.containsMouse ? logitecBlue : "transparent"
        border.width: buttonGlowThickness
        radius: buttonGlowRadius
        id: g10rect
        MouseArea
        {
            id:g10area
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true

        }

        Label
        {
            anchors.centerIn:parent
            text: "G10"
            color: g10area.containsMouse ? logitecBlue : "white"
        }
        height: 42 * imageScale
        width: 52 * imageScale

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * -0.113
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * -0.147
    }

    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : g11area.containsMouse ? logitecBlue : "transparent"
        border.width: buttonGlowThickness
        radius: buttonGlowRadius
        id: g11rect
        MouseArea
        {
            id:g11area
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true

        }

        Label
        {
            anchors.centerIn:parent
            text: "G11"
            color: g11area.containsMouse ? logitecBlue : "white"
        }
        height: 44 * imageScale
        width: 50 * imageScale

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * -0.001
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * -0.145
    }

    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : g12area.containsMouse ? logitecBlue : "transparent"
        border.width: buttonGlowThickness
        radius: buttonGlowRadius
        id: g12rect
        MouseArea
        {
            id:g12area
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true

        }

        Label
        {
            anchors.centerIn:parent
            text: "G12"
            color: g12area.containsMouse ? logitecBlue : "white"
        }
        height: 42 * imageScale
        width: 52 * imageScale

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * 0.108
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * -0.15
    }

    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : g13area.containsMouse ? logitecBlue : "transparent"
        border.width: buttonGlowThickness
        radius: buttonGlowRadius
        id: g13rect
        MouseArea
        {
            id:g13area
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true

        }

        Label
        {
            anchors.centerIn:parent
            text: "G13"
            color: g13area.containsMouse ? logitecBlue : "white"
        }
        height: 42 * imageScale
        width: 54 * imageScale

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * 0.222
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * -0.152
    }

    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : g14area.containsMouse ? logitecBlue : "transparent"
        border.width: buttonGlowThickness
        radius: buttonGlowRadius
        id: g14rect
        MouseArea
        {
            id:g14area
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true

        }

        Label
        {
            anchors.centerIn:parent
            text: "G14"
            color: g14area.containsMouse ? logitecBlue : "white"
        }
        height: 40 * imageScale
        width: 55 * imageScale

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * 0.335
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * -0.158
    }

    ///////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////
    //
    //         ROW 3 -> G15->G19
    //
    ///////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////



    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : g15area.containsMouse ? logitecBlue : "transparent"
        border.width: buttonGlowThickness
        radius: buttonGlowRadius
        id: g15rect
        MouseArea
        {
            id:g15area
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true

        }

        Label
        {
            anchors.centerIn:parent
            text: "G15"
            color: g15area.containsMouse ? logitecBlue : "white"
        }
        height: 42 * imageScale
        width: 68 * imageScale

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * -0.245
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * -0.075
    }

    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : g16area.containsMouse ? logitecBlue : "transparent"
        border.width: buttonGlowThickness
        radius: buttonGlowRadius
        id: g16rect
        MouseArea
        {
            id:g16area
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true

        }

        Label
        {
            anchors.centerIn:parent
            text: "G16"
            color: g16area.containsMouse ? logitecBlue : "white"
        }
        height: 43 * imageScale
        width: 54 * imageScale

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * -0.12
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * -0.073
    }

    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : g17area.containsMouse ? logitecBlue : "transparent"
        border.width: buttonGlowThickness
        radius: buttonGlowRadius
        id: g17rect
        MouseArea
        {
            id:g17area
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true

        }

        Label
        {
            anchors.centerIn:parent
            text: "G17"
            color: g17area.containsMouse ? logitecBlue : "white"
        }
        height: 46 * imageScale
        width: 52 * imageScale

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * -0.003
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * -0.07
    }

    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : g18area.containsMouse ? logitecBlue : "transparent"
        border.width: buttonGlowThickness
        radius: buttonGlowRadius
        id: g18rect
        MouseArea
        {
            id:g18area
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true

        }

        Label
        {
            anchors.centerIn:parent
            text: "G18"
            color: g18area.containsMouse ? logitecBlue : "white"
        }
        height: 44 * imageScale
        width: 54 * imageScale

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * 0.112
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * -0.072
    }

    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : g19area.containsMouse ? logitecBlue : "transparent"
        border.width: buttonGlowThickness
        radius: buttonGlowRadius
        id: g19rect
        MouseArea
        {
            id:g19area
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true

        }

        Label
        {
            anchors.centerIn:parent
            text: "G19"
            color: g19area.containsMouse ? logitecBlue : "white"
        }
        height: 42 * imageScale
        width: 64 * imageScale

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * 0.23
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * -0.075
    }

    ///////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////
    //
    //         ROW 4 -> G20->G22
    //
    ///////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////


    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : g20area.containsMouse ? logitecBlue : "transparent"
        border.width: buttonGlowThickness
        radius: buttonGlowRadius
        id: g20rect
        MouseArea
        {
            id:g20area
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true

        }

        Label
        {
            anchors.centerIn:parent
            text: "G20"
            color: g20area.containsMouse ? logitecBlue : "white"
        }
        height: 43 * imageScale
        width: 93 * imageScale

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * -0.148
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * 0.003
    }

    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : g21area.containsMouse ? logitecBlue : "transparent"
        border.width: buttonGlowThickness
        radius: buttonGlowRadius
        id: g21rect
        MouseArea
        {
            id:g21area
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true

        }

        Label
        {
            anchors.centerIn:parent
            text: "G21"
            color: g21area.containsMouse ? logitecBlue : "white"
        }
        height: 46 * imageScale
        width: 52 * imageScale

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * -0.003
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * 0.003
    }

    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : g22area.containsMouse ? logitecBlue : "transparent"
        border.width: buttonGlowThickness
        radius: buttonGlowRadius
        id: g22rect
        MouseArea
        {
            id:g22area
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true

        }

        Label
        {
            anchors.centerIn:parent
            text: "G22"
            color: g22area.containsMouse ? logitecBlue : "white"
        }
        height: 44 * imageScale
        width: 90 * imageScale

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * 0.142
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * 0.003
    }

}
