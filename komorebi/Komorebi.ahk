#Requires AutoHotkey v2.0

;Chạy Komorebi lúc startup
if !ProcessExist("komorebi.exe") {
    Run("komorebic start --whkd", , "Hide")
}