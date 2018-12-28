import QtQuick 2.9
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.10


Page{
    id:root
    anchors.fill: parent

    implicitWidth: 640
    implicitHeight: 480

    property int controlCount:controls.controlModel.count

    property ListModel myModel: StackModel{}
    property Component pageComponent:LaunchDeletege{}

    Container{
        id:control
        anchors.fill: parent
        contentItem: RowLayout{
            anchors.fill: parent
            Repeater{
                model: control.contentModel
            }
        }
        Controls{
            id:controls
            onClicked: {
                stack.clear()
                showContent(myModel.get(index).childSource)
            }
        }

        StackView{
            id:stack
            Layout.fillWidth:  true
            Layout.fillHeight: true
            background: Rectangle{
                anchors.fill: parent
                color: "black"
            }
        }
    }

    function showContent(url) {
        var item = pageComponent.createObject(null, { childSource: url })
        stack.push(item)
    }

    function addChildSource(name, childSource) {
        myModel.append({"name":name, "childSource":childSource})
    }

    function returnMain(){
        stack.clear()
    }

}

