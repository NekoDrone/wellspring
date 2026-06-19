// qmllint disable uncreatable-type import
import Quickshell
import QtQuick

ShellRoot {
    Variants {
        model: Quickshell.screens

        delegate: Component {
            PanelWindow {
                id: main
                // Variants injects each screen into this property
                property var modelData
                screen: modelData

                anchors {
                    top: true
                    left: true
                    right: true
                }
                implicitHeight: 30

                Text {
                    anchors.centerIn: parent
                    text: "hello from quickshell on " + main.modelData.name
                }
            }
        }
    }
}
