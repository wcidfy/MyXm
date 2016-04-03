import smtplib

sender = 'sender@devtang.com'
receivers = ['receiver@devtang.com']

message = """From: Alert <sender@devtang.com>
To: Some one <receiver@devtang.com>
Subject: SMTP email sample

Hope you can get it.
"""

try:
    obj = smtplib.SMTP('server.mail.devtang.com')
    obj.sendmail(sender, receivers, message)
    print 'OK: send mail succeed'
except Exception:
    print 'Error: unable to send mail'
