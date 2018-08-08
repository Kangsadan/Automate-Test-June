*** Setting ***
Library             Selenium2Library
Resource            data.robot
Resource            keyword.robot
Test Setup          เปิดหน้าเว็บ    ${URL}    ${BROWSER}
Test Template       Login
Test Teardown       ออกจากระบบ

*** Test Cases ***
TC-LG-1 ลูกค้าเข้าสู่ระบบของเว็บไซต์ด้วย อีเมล, รหัสผ่าน และกดปุ่มเข้าสู่ระบบ
    ...  ${EMAIL_SUCCESS}
    ...  ${PASSWORD_SUCCESS}

TC-LG-2 ลูกค้าเข้าสู่ระบบของเว็บไซต์ด้วย เบอร์โทรศัพท์, รหัสผ่าน และกดปุ่มเข้าสู่ระบบ
    ...  ${TEL_SUCCESS}
    ...  ${PASSWORD_SUCCESS}

TC-LG-5 ลูกค้าเข้าสู่ระบบของเว็บไซต์ด้วยอีเมลไม่มีในระบบ
    ...  ${EMAIL_INVALID}
    ...  ${PASSWORD_SUCCESS}

TC-LG-6 ลูกค้าเข้าสู่ระบบของเว็บไซต์ด้วย เบอร์โทรศัทพ์ไม่มีในระบบ
    ...  ${TEL_INVALID}
    ...  ${PASSWORD_SUCCESS}

TC-LG-7 ลูกค้าเข้าสู่ระบบของเว็บไซต์ด้วย อีเมล แต่กรอกรหัสผ่านผิด
    ...  ${EMAIL_SUCCESS}
    ...  ${PASSWORD_UNSUCCESS}

TC-LG-8 ลูกค้าเข้าสู่ระบบของเว็บไซต์ด้วย เบอร์โทรศัพท์ แต่กรอกรหัสผ่านผิด
    ...  ${TEL_SUCCESS}
    ...  ${PASSWORD_UNSUCCESS}

**** keyword ***
Login
    [Arguments]    ${email or tel}    ${password}
    กด เข้าสู่ระบบ
    กรอก หมายเลขโทรศัพท์หรืออีเมล    ${email or tel}
    กรอก รหัสผ่าน    ${password}
    กดยืนยัน เข้าสู่ระบบ
    ตรวจสอบความถูกต้อง