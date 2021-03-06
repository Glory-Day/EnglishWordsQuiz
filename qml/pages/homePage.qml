import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import QtQuick.Layouts 1.15
import "../components"

Item {
    Rectangle {
        id: background
        width: 980
        height: 680
        color: "#00000000"

        //Image Component
        Image {
            id: logo
            width: 400
            height: 400
            source: "../../resources/application_background_image.png"
            anchors {
                top: background.top
                topMargin: 70
                horizontalCenter: background.horizontalCenter
            }
        }

        //Text Bar Column Component
        Column {
            id: textBars
            width: 720
            height: 120
            spacing: 20
            anchors {
                bottom: background.bottom
                bottomMargin: 20
                horizontalCenter: background.horizontalCenter
            }

            //To Do Text Bar Component
            ProgressTextBar {
                id: toDoBar
                iconPath: "../../resources/check.png"
                message: qsTr("To Do Bar Component")
            }

            //Database Text Bar Component
            ProgressTextBar {
                id: databaseBar
                iconPath: "../../resources/data.png"
                message: qsTr("Database Bar Component")
            }
        }
    }
}