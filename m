From: Michael Niewoehner <linux-zzFNMPX9jIaDjmgdnaGrkw@public.gmane.org>
Subject: [BUG] usb: dwc2: USB broken on rk3188 after commit 09c96980dc72
Date: Sat, 13 Feb 2016 21:36:30 +0100
Message-ID: <EC2F7730-29D3-45BB-9614-9FF8D0A2015E@mniewoehner.de>
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi John,

looks like your patch 09c96980dc72 breaks usb on rk3188 / radxa-rock.
I don=92t get any error message and even the usb hub is detected but no=
 attached usb device works.
After reverting 09c96980dc72 (and the related patches) everything is fi=
ne again.
I tested next-20160212 and v4.5-rc3.

Do you have any idea how to fix that?

Best regards
Michael


Reverted patches:
192cb07f7928e8cb09a9851e6c0f7478baa3bc6d
03b32e4c9bd1b52fcf1e4304e7a704aa0315e398
60c0288c72c980fb37ed4e48f68c9743a53b662c
25362d318371e1e271dda24995ceabb8457b3b7c
97e463886b873f62bea2293e7edf81fdb884b84f
241729baa932a69cd203dbaa81abbb8af5b77b65
43e9034904dd37db7ed87fa8f5039c561c4004cd
55e1040e424b59063da627fb580ec953f4c01de7
09c96980dc723462ed2eeacc945fed5bcb278f85

Config: https://github.com/c0d3z3r0/radxarock-firmware/blob/master/linu=
x.config
--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
