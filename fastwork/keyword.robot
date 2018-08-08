*** Keyword ***
เปิดหน้าเว็บ
    [Arguments]    ${url}    ${browser}
    Open browser    ${url}    ${browser}
    Wait Until Element Is Visible    xpath = //*[@id="app-content"]/div[2]/div[1]/div/div/h2    5s

กด เข้าสู่ระบบ
    Click Element    xpath = //*[@id="app"]/div[1]/div[2]/div[1]/div/div[3]/button
    Wait Until Element Is Visible    xpath = //*[@id="app"]/div[13]/div/div/div[2]/div    5s

กรอก หมายเลขโทรศัพท์หรืออีเมล
    [Arguments]    ${email or tel}
    Focus    name = username
    Input Text    name = username    ${email or tel}

กรอก รหัสผ่าน
    [Arguments]    ${password}
    Focus    name = password
    Input Text    name = password    ${password}

กดยืนยัน เข้าสู่ระบบ
    Click Element    xpath = //*[@id="app"]/div[13]/div/div/div[2]/div/div[2]/div/form/button

ตรวจสอบความถูกต้อง
    Log To Console    >> รอ Expected Result จาก PO

ออกจากระบบ
    Close Browser