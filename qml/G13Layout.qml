import QtQuick 2.10
import QtQuick.Controls 2.3


Item {

    id: g13
    property double imageScale: Math.min(deviceImage.paintedHeight / deviceImage.sourceSize.height, deviceImage.paintedWidth / deviceImage.sourceSize.width )
    property bool debugDraw: false

    property string logitecBlue: "#00A7E0"
    property double buttonGlowRadius: 4
    property double buttonGlowThickness: 5
    property double stickBtnRadius: 20 * imageScale

    width: deviceImage.implicitWidth

    signal buttonClicked(string buttonID)

    Image
    {
        id: deviceImage
        anchors.fill: parent
//        anchors.top: parent.top
//        anchors.bottom: parent.bottom
//        anchors.horizontalCenter: parent.horizontalCenter
        fillMode: Image.PreserveAspectFit
        source: "G13device.png"
    }

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
    //        LED INTERFACE BUTTONS: BD, L1->L4, LIGHT_STATE
    //
    ///////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////

    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : bdarea.containsMouse ? logitecBlue : "transparent"
        border.width: buttonGlowThickness
        radius: buttonGlowRadius* 5
        id: bdrect
        MouseArea
        {
            id:bdarea
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true
            onClicked: g13.buttonClicked("BD")
        }

        Label
        {
            anchors.centerIn:parent
            text: "BD"
            color: bdarea.containsMouse ? logitecBlue : "white"
        }
        height: stickBtnRadius * 1.5
        width: stickBtnRadius * 1.5

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * -0.253
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * -0.34
    }

    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : l1area.containsMouse ? logitecBlue : "transparent"
        border.width: buttonGlowThickness
        radius: buttonGlowRadius
        id: l1rect
        MouseArea
        {
            id:l1area
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true
            onClicked: g13.buttonClicked("L1")
        }

        Label
        {
            anchors.centerIn:parent
            text: "L1"
            color: l1area.containsMouse ? logitecBlue : "white"
        }
        height: 15 * imageScale
        width: 45 * imageScale

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * -0.13
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * -0.34
    }

    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : l2area.containsMouse ? logitecBlue : "transparent"
        border.width: buttonGlowThickness
        radius: buttonGlowRadius
        id: l2rect
        MouseArea
        {
            id:l2area
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true
            onClicked: g13.buttonClicked("L2")
        }

        Label
        {
            anchors.centerIn:parent
            text: "L2"
            color: l2area.containsMouse ? logitecBlue : "white"
        }
        height: 15 * imageScale
        width: 45 * imageScale

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * -0.045
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * -0.34
    }

    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : l3area.containsMouse ? logitecBlue : "transparent"
        border.width: buttonGlowThickness
        radius: buttonGlowRadius
        id: l3rect
        MouseArea
        {
            id:l3area
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true
            onClicked: g13.buttonClicked("L3")
        }

        Label
        {
            anchors.centerIn:parent
            text: "L3"
            color: l3area.containsMouse ? logitecBlue : "white"
        }
        height: 15 * imageScale
        width: 45 * imageScale

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * 0.045
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * -0.34
    }

    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : l4area.containsMouse ? logitecBlue : "transparent"
        border.width: buttonGlowThickness
        radius: buttonGlowRadius
        id: l4rect
        MouseArea
        {
            id:l4area
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true
            onClicked: g13.buttonClicked("L4")
        }

        Label
        {
            anchors.centerIn:parent
            text: "L4"
            color: l4area.containsMouse ? logitecBlue : "white"
        }
        height: 15 * imageScale
        width: 45 * imageScale

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * 0.13
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * -0.34
    }

    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : lsarea.containsMouse ? logitecBlue : "transparent"
        border.width: buttonGlowThickness
        radius: buttonGlowRadius * 5
        id: lsrect
        MouseArea
        {
            id:lsarea
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true
            onClicked: g13.buttonClicked("LIGHT_STATE")
        }

        Label
        {
            anchors.centerIn:parent
            text: "LS"
            color: lsarea.containsMouse ? logitecBlue : "white"
        }
        height: stickBtnRadius * 1.5
        width: stickBtnRadius * 1.5

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * 0.253
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * -0.34
    }


    ///////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////
    //
    //        MACRO PROFILE BUTTONS: M1->M3 + MR
    //
    ///////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////


    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : m1area.containsMouse ? logitecBlue : "transparent"
        border.width: buttonGlowThickness
        radius: buttonGlowRadius
        id: m1rect
        MouseArea
        {
            id:m1area
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true
            onClicked: g13.buttonClicked("M1")
        }

        Label
        {
            anchors.centerIn:parent
            text: "M1"
            color: m1area.containsMouse ? logitecBlue : "white"
        }
        height: 30 * imageScale
        width: 75 * imageScale

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * -0.215
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * -0.293
    }

    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : m2area.containsMouse ? logitecBlue : "transparent"
        border.width: buttonGlowThickness
        radius: buttonGlowRadius
        id: m2rect
        MouseArea
        {
            id:m2area
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true
            onClicked: g13.buttonClicked("M2")
        }

        Label
        {
            anchors.centerIn:parent
            text: "M2"
            color: m2area.containsMouse ? logitecBlue : "white"
        }
        height: 30 * imageScale
        width: 84 * imageScale

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * -0.076
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * -0.293
    }

    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : m3area.containsMouse ? logitecBlue : "transparent"
        border.width: buttonGlowThickness
        radius: buttonGlowRadius
        id: m3rect
        MouseArea
        {
            id:m3area
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true
            onClicked: g13.buttonClicked("M3")
        }

        Label
        {
            anchors.centerIn:parent
            text: "M3"
            color: m3area.containsMouse ? logitecBlue : "white"
        }
        height: 30 * imageScale
        width: 84 * imageScale

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * 0.075
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * -0.293
    }

    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : mrarea.containsMouse ? logitecBlue : "transparent"
        border.width: buttonGlowThickness
        radius: buttonGlowRadius
        id: mrrect
        MouseArea
        {
            id:mrarea
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true
            onClicked: g13.buttonClicked("MR")
        }

        Label
        {
            anchors.centerIn:parent
            text: "MR"
            color: mrarea.containsMouse ? logitecBlue : "white"
        }
        height: 30 * imageScale
        width: 75 * imageScale

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * 0.217
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * -0.293
    }


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
            onClicked: g13.buttonClicked("G1")

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
            onClicked: g13.buttonClicked("G2")
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
            onClicked: g13.buttonClicked("G3")
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
            onClicked: g13.buttonClicked("G4")
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
            onClicked: g13.buttonClicked("G5")
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
            onClicked: g13.buttonClicked("G6")
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
            onClicked: g13.buttonClicked("G7")
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
            onClicked: g13.buttonClicked("G8")
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
            onClicked: g13.buttonClicked("G9")
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
            onClicked: g13.buttonClicked("G10")
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
            onClicked: g13.buttonClicked("G11")
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
            onClicked: g13.buttonClicked("G12")
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
            onClicked: g13.buttonClicked("G13")
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
            onClicked: g13.buttonClicked("G14")
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
            onClicked: g13.buttonClicked("G15")
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
            onClicked: g13.buttonClicked("G16")
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
            onClicked: g13.buttonClicked("G17")
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
            onClicked: g13.buttonClicked("G18")
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
            onClicked: g13.buttonClicked("G19")
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
            onClicked: g13.buttonClicked("G20")
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
            onClicked: g13.buttonClicked("G21")
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
            onClicked: g13.buttonClicked("G22")
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


    ///////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////
    //
    //         STICK AREA
    //
    ///////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////


    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : leftarea.containsMouse ? logitecBlue : "transparent"
        border.width: buttonGlowThickness
        radius: buttonGlowRadius
        id: leftrect
        MouseArea
        {
            id:leftarea
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true
            onClicked: g13.buttonClicked("LEFT")
        }

        Label
        {
            anchors.centerIn:parent
            text: "."
            color: leftarea.containsMouse ? logitecBlue : "white"
        }
        height: 93 * imageScale
        width: 37 * imageScale

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * 0.265
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * 0.105
    }

    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : downarea.containsMouse ? logitecBlue : "transparent"
        border.width: buttonGlowThickness
        radius: buttonGlowRadius
        id: downrect
        MouseArea
        {
            id: downarea
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true
            onClicked: g13.buttonClicked("DOWN")
        }

        Label
        {
            anchors.centerIn:parent
            text: "."
            color: downarea.containsMouse ? logitecBlue : "white"
        }
        height: 46 * imageScale
        width: 62 * imageScale

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * 0.358
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * 0.187
    }

    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : tophatarea.containsMouse ? logitecBlue : "transparent"
        border.width: buttonGlowThickness
        radius: buttonGlowRadius*2
        id: tophatrect
        MouseArea
        {
            id:tophatarea
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true
            onClicked: g13.buttonClicked("TOP")
        }

        Label
        {
            anchors.centerIn:parent
            text: "."
            color: tophatarea.containsMouse ? logitecBlue : "white"
        }
        height: stickBtnRadius
        width: stickBtnRadius

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * 0.4
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * 0.086
    }

    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : stickuparea.containsMouse ? logitecBlue : "transparent"
        border.width: buttonGlowThickness
        radius: buttonGlowRadius*2
        id: stickuprect
        MouseArea
        {
            id:stickuparea
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true
            onClicked: g13.buttonClicked("STICK_UP")
        }

        Label
        {
            anchors.centerIn:parent
            text: "."
            color: stickuparea.containsMouse ? logitecBlue : "white"
        }
        height: stickBtnRadius
        width: stickBtnRadius

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * 0.4
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * 0.055
    }


    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : stickleftarea.containsMouse ? logitecBlue : "transparent"
        border.width: buttonGlowThickness
        radius: buttonGlowRadius*2
        id: stickleftrect
        MouseArea
        {
            id:stickleftarea
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true
            onClicked: g13.buttonClicked("STICK_LEFT")
        }

        Label
        {
            anchors.centerIn:parent
            text: "."
            color: stickleftarea.containsMouse ? logitecBlue : "white"
        }
        height: stickBtnRadius
        width: stickBtnRadius

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * 0.361
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * 0.086
    }

    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : stickdownarea.containsMouse ? logitecBlue : "transparent"
        border.width: buttonGlowThickness
        radius: buttonGlowRadius*2
        id: stickdownrect
        MouseArea
        {
            id:stickdownarea
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true
            onClicked: g13.buttonClicked("STICK_DOWN")
        }

        Label
        {
            anchors.centerIn:parent
            text: "."
            color: stickdownarea.containsMouse ? logitecBlue : "white"
        }
        height: stickBtnRadius
        width: stickBtnRadius

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * 0.4
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * 0.12
    }

    Rectangle
    {
        color: "transparent"
        border.color: debugDraw ? "yellow" : stickrightarea.containsMouse ? logitecBlue : "transparent"
        border.width: buttonGlowThickness
        radius: buttonGlowRadius*2
        id: stickrightrect
        MouseArea
        {
            id:stickrightarea
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true
            onClicked: g13.buttonClicked("STICK_RIGHT")
        }

        Label
        {
            anchors.centerIn:parent
            text: "."
            color: stickrightarea.containsMouse ? logitecBlue : "white"
        }
        height: stickBtnRadius
        width: stickBtnRadius

        anchors.horizontalCenter: deviceImage.horizontalCenter
        anchors.horizontalCenterOffset: deviceImage.paintedWidth * 0.439
        anchors.verticalCenter: deviceImage.verticalCenter
        anchors.verticalCenterOffset: deviceImage.paintedHeight * 0.086
    }


}
