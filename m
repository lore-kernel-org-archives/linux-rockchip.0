From: Mirza Krak <mirza.krak-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: High CPU load produced by USB (DW2)
Date: Wed, 7 Feb 2018 10:48:57 +0100
Message-ID: <CALw8SCXuOCpndakFBRbP7FpJKOSH+nzNStkszWD4XTXVSK1zyQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: linux-usb <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: gregkh <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi.

I initially started a thread on a different mailing list [1], and you
can take look there for some additional background.

I am using a 4.14.15 stable kernel on a RK3288 SoC (FireFly RK3288
board) which uses the DW2 USB core. I have noticed that when
connecting a USB device there is unreasonable high CPU load produced
by the USB interrupts.

Here is one example with a MIDI keyboard connected on USB (not really
doing anything on it)

   79     2 root     SW       0   0%  19% [irq/45-dwc2_hso]
   78     2 root     SW       0   0%  11% [irq/45-ff540000]

Can also see that there is a "HIGH" interrupt count

root@esp5-d1:~# watch cat /proc/interrupts | grep usb
 45:   43681938          0          0          0     GIC-0  57 Level
  ff540000.usb, dwc2_hsotg:usb1
 46:          0          0          0          0     GIC-0  55 Level
  ff580000.usb, ff580000.usb, dwc2_hsotg:usb2
 45:   43829473          0          0          0     GIC-0  57 Level
  ff540000.usb, dwc2_hsotg:usb1
 46:          0          0          0          0     GIC-0  55 Level
  ff580000.usb, ff580000.usb, dwc2_hsotg:usb2
 45:   43972333          0          0          0     GIC-0  57 Level
  ff540000.usb, dwc2_hsotg:usb1
 46:          0          0          0          0     GIC-0  55 Level
  ff580000.usb, ff580000.usb, dwc2_hsotg:usb2
 45:   44118769          0          0          0     GIC-0  57 Level
  ff540000.usb, dwc2_hsotg:usb1
 46:          0          0          0          0     GIC-0  55 Level
  ff580000.usb, ff580000.usb, dwc2_hsotg:usb2
 45:   44267876          0          0          0     GIC-0  57 Level
  ff540000.usb, dwc2_hsotg:usb1
 46:          0          0          0          0     GIC-0  55 Level
  ff580000.usb, ff580000.usb, dwc2_hsotg:usb2

Again not really doing anything with the device, it is just connected.
I have also tested with server different devices with same result (BT
and WLAN).

The CPU load is exposed when I add "threadirqs" to kernel arguments,
otherwise it does not seem that it accounted for (not see in "top")
but the number of interrupts is still high.

Any thoughts on this? Please let me know if there is additional
information that I can provide to help debug this.


[1]. https://www.spinics.net/lists/linux-rt-users/msg18341.html

--=20
Med V=C3=A4nliga H=C3=A4lsningar / Best Regards

Mirza Krak
--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
