Class colorCompare {
    CompareAtPos(xPos, yPos, colorCode) {
        PixelGetColor, color, %xPos%, %yPos%
        Return color = colorCode
    }
}
