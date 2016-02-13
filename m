From: Michael Niewoehner <linux-zzFNMPX9jIaDjmgdnaGrkw@public.gmane.org>
Subject: Re: [PATCH] usb: dwc2: Add extra delay when forcing dr_mode
Date: Sat, 13 Feb 2016 22:40:54 +0100
Message-ID: <7C5BF428-E5A3-44A1-A294-9E8018E382AB@mniewoehner.de>
References: <cover.1454633496.git.johnyoun@synopsys.com> <52b1b554810ac3a434e3c570cade28cab3dd6b1e.1454633496.git.johnyoun@synopsys.com> <24688651.GlpVaD0cKm@phil>
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <24688651.GlpVaD0cKm@phil>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Cc: Caesar Wang <caesar.upstream-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Felipe Balbi <balbi-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Tao Huang <huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi John,
Hi Heiko,

on rk3188 25 ms don=92t seem to be enough also.
Increasing the sleep time to 50 ms solve the problem for me while 32 ms=
 seem to be the absolute minimum.

Best regards
Michael



Am 13.02.2016 um 22:13 schrieb Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>:

> Am Donnerstag, 4. Februar 2016, 17:50:34 schrieb John Youn:
>> Fixes an issue found on rockchip rk3036-based SOC platforms. For som=
e
>> reason, the existing msleep(25) is not enough after the force mode. =
The
>> following patch was reported to fix the issue.
>>=20
>> This does increase the probe delay again slightly, but not up to the
>> level it was before the original series of patches that this fixes. =
It
>> does not cause any other issues when tested on Synopsys HAPS and Alt=
era
>> socfpga platforms.
>>=20
>> Need to revisit this series next release to see if we can address th=
ese
>> issues without having an unconditional delay.
>>=20
>> Fixes: 09c96980dc72 ("usb: dwc2: Add functions to set and clear forc=
e
>> mode") Reported-by: Caesar Wang <caesar.upstream-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> Tested-by: Caesar Wang <caesar.upstream-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> Signed-off-by: John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
>=20
> Tested-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
> (also on a rk3036 where I hit the described problem)
>=20
>=20
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip


--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
