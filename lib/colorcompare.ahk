Class colorCompare {
    CompareAtPos(xPos, yPos, colorCode) {
        PixelGetColor, color, %xPos%, %yPos%
        Return color = colorCode
    }
    getColorAtPos(xPos, yPos) {
        PixelGetColor, color, %xPos%, %yPos%
        Return color
    }
    isgameActive(xPos, yPos, colorCode) {
        Return colorCompare.CompareAtPos(xPos, yPos, colorCode)
    }
}
