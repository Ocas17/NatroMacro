if (MoveMethod = "walk")
{
    nm_gotoramp()
    nm_Walk(67.5, BackKey, LeftKey)
    send "{" RotRight " 4}"
    nm_Walk(31, FwdKey)
    nm_Walk(7.8, LeftKey)
    nm_Walk(10, BackKey)
    nm_Walk(5, RightKey)
    nm_Walk(1.5, FwdKey)
    nm_Walk(60, LeftKey)
    nm_Walk(3.75, RightKey)
    nm_Walk(38, FwdKey)
    send "{" RotLeft " 4}"
    nm_Walk(14, RightKey)
    nm_Walk(15, FwdKey, LeftKey)
    nm_Walk(1, BackKey)
    HyperSleep(200)
    nm_Walk(25, RightKey)
    Hypersleep(200)
    send "{" RotRight " 2}"
    Hypersleep(200)
    ;inside badge shop
    nm_Walk(15, FwdKey)
    nm_Walk(1, FwdKey, RightKey)
    ;align with corner
    nm_Walk(7, FwdKey)
    nm_Walk(3, BackKey)
    nm_Walk(26, LeftKey)
    nm_Walk(1, FwdKey, LeftKey)
    sleep 300
}
else
{
    nm_gotoramp()
    nm_gotocannon()
    send "{e down}"
    HyperSleep(100)
    send "{e up}{" RightKey " down}{" BackKey " down}"
    HyperSleep(800)
    send "{space 2}"
    HyperSleep(4500)
    send "{" BackKey " up}"
    HyperSleep(500)
    send "{" RightKey " up}{space}"
    Sleep 2000
    nm_Walk(18, RightKey)
    nm_Walk(36, FwdKey)
    nm_Walk(12, RightKey)
    nm_Walk(29, FwdKey)
    nm_Walk(6, BackKey)
    nm_Walk(5, FwdKey, RightKey)
    send "{" RotRight " 2}"
    Sleep 300
}