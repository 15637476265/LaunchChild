import QtQuick 2.9
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.10


Rectangle{
    id:root
    Layout.fillWidth: true
    Layout.fillHeight: true

    signal returnBtnClicked
    color: Qt.rgba(Math.random(),Math.random(),Math.random(),1)
//    Component.onCompleted: {

//    }
    MouseArea{
        anchors.fill: parent
        onClicked: {
            console.log(root.color)
            emit:returnBtnClicked()
        }
    }
}
