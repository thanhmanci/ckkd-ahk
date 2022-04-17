Class Img {
    Draw(xPos, yPos, w, h, ImgPath) {
        Gui, Add, Picture, AltSubmit, %ImgPath%
        Gui -Caption +ToolWindow +AlwaysOnTop
        Gui, Add, Picture, x0 y0 w%w% h%h% , %ImgPath%
        Gui, Show, x%xPos% y%yPos% w%w% h%h%, NoActivate
    }
}
