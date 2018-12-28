import QtQuick 2.9
import QtQuick.Controls 2.4

Button{
    id:root
    signal clicked
    onClicked: {
        emit:root.clicked()
    }
}
