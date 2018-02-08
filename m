From: Mirza Krak <mirza.krak-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: High CPU load produced by USB (DW2)
Date: Thu, 8 Feb 2018 14:06:58 +0100
Message-ID: <CALw8SCVALfRZiF5sZKn0AcXaF6m6GSXXxKAGj2O+ndbgpeCiqw@mail.gmail.com>
References: <CALw8SCXuOCpndakFBRbP7FpJKOSH+nzNStkszWD4XTXVSK1zyQ@mail.gmail.com>
 <410670D7E743164D87FA6160E7907A560113A67F86@am04wembxa.internal.synopsys.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <410670D7E743164D87FA6160E7907A560113A67F86-ouFQeoKRuQ8bQ7k9MBbv4fufCSb+aD3WLzEdoUbNIic@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Minas Harutyunyan <Minas.Harutyunyan-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Cc: linux-usb <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, gregkh <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, "John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org" <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On 8 February 2018 at 12:02, Minas Harutyunyan
<Minas.Harutyunyan-HKixBCOQz3hWk0Htik3J/w@public.gmane.org> wrote:
> Hi Mirza,
>
> On 2/7/2018 1:49 PM, Mirza Krak wrote:

< snip >

>
> Could you please provide additional info:
> 1. Does your core support descriptor DMA mode? (bits 31 and 30 of GHWCFG4=
).
> 2. Version of core (GSNPSID)?

It does seem to support descriptor DMA mode, and content of both
GHWCFG4 and GSNPSID are posted below.

root@esp5-d1:~# dmesg | grep -E "GHWCFG4|GSNPSID"
[    1.109298] dwc2 ff540000.usb: GSNPSID @0xF0940040 : 0x4F54310A
[    1.109344] dwc2 ff540000.usb: GHWCFG4 @0xF0940050 : 0xC8004030
[    1.489016] dwc2 ff580000.usb: GSNPSID @0xF09C0040 : 0x4F54310A
[    1.489063] dwc2 ff580000.usb: GHWCFG4 @0xF09C0050 : 0xDBF04030

Full register dump at boot (no devices connected) can be found at [1].

> 3. Do you connect any HS HUB between dwc core port and keyboard? Is it
> available connection scenarios when Split traffic generated?

There is actually an HS HUB (FE1_QFP48) between dwc core and keyboard,
I was not aware of it but it is mounted on the board.


[1]. https://gist.github.com/mirzak/a6245dddd4670f3b908a9783f9db8b0d
--=20
Med V=C3=A4nliga H=C3=A4lsningar / Best Regards

Mirza Krak
--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
