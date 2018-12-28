import QtQuick 2.9
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.10

Page{
    id:root

    Layout.preferredWidth:  120
    Layout.fillHeight: true

    signal clicked(int index)
    property ListModel controlModel: ControlModel{}


    ListView{
        anchors.fill: parent
        delegate: Button{
            onClicked: {
                emit:root.clicked(index)
            }
        }
        spacing: 14
        model:controlModel
    }


}
