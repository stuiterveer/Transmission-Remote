import QtQuick 2.12
import QtQuick.Layouts 1.12

import QtQuick.Controls 2.12
import Ubuntu.Components 1.3

Page {
    header: PageHeader {
        title: "Settings"
    }
    Column {
        anchors.fill: parent
        anchors.margins: units.gu(2)
        anchors.topMargin: parent.header.height + anchors.margins
        spacing: units.gu(2)

        RowLayout {
            anchors.left: parent.left
            anchors.right: parent.right
            Label {
                text: "Hostname"
                Layout.fillWidth: true
            }
            TextField {
                text: root.host
                onTextChanged: root.host = text
            }
        }
        RowLayout {
            anchors.left: parent.left
            anchors.right: parent.right
            Label {
                text: "Port"
                Layout.fillWidth: true
            }
            TextField {
                text: root.port
                inputMethodHints: Qt.ImhDigitsOnly
                onTextChanged: root.port = parseInt(text)
            }
        }
        RowLayout {
            anchors.left: parent.left
            anchors.right: parent.right
            Label {
                text: "Use SSL"
                Layout.fillWidth: true
            }

            Switch {
                onCheckedChanged: root.use_ssl = checked

                checked: root.use_ssl
            }
        }
    }
}
