import Quickshell
import QtQuick

ShellRoot {
    PanelWindow {
        anchors {
            top: true
            left: true
            right: true
        }
        implicitHeight: 30

        Text {
            anchors.centerIn: parent
            text: "hello from quickshell"
        }
    }
}
