import QtQuick 2.9
import QtQuick.Window 2.2
import "Spark/Component/LaunchChild" as LaunchPage


Window {
    visible: true
    width: 640
    height:1020
    title: qsTr("Hello World")

    LaunchPage.LaunchChild{
        id:launch
        anchors.fill: parent
        Component.onCompleted: {
            for(var i = 0;i<launch.controlCount;i++)
             launch.addChildSource("Test","qrc:/Spark/Component/Child/Test.qml")
        }
    }
}
