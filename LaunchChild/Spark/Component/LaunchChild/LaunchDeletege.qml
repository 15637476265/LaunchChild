import QtQuick 2.9
import QtQuick.Controls 2.4

Component {
    id: pageComponent
    Item {
        id: page
        clip: true
        property url childSource

        Loader{
            focus: true
            source: childSource
            anchors.fill: parent
            onLoaded: {
                item.returnBtnClicked.connect(root.returnMain);
            }
        }
    }
}
