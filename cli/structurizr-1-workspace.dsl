workspace "Name" "Description" {
    model {
        key = softwareSystem key "Key"
        data = softwareSystem data "Data"
    }
    
    views {
        systemContext key {
            include *
            autolayout lr
        }

        container key {
            include *
            autolayout lr
        }

        theme default
    }
}
