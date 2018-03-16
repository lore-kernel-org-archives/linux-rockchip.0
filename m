From: Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>
Subject: Re: [PATCH v2 1/6] phy: rockchip-typec: fall back to working in
 host-mode if extcon is missing.
Date: Fri, 16 Mar 2018 11:29:59 +0530
Message-ID: <32f24fca-7d89-6edf-26a4-8dc7d1d1ea31@ti.com>
References: <20180301152515.20940-1-enric.balletbo@collabora.com>
 <20180301152515.20940-2-enric.balletbo@collabora.com>
 <20019382.PXhIOVQJGo@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20019382.PXhIOVQJGo@diego>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Enric Balletbo i Serra <enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: gwendal-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, groeck-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org



On Wednesday 14 March 2018 01:44 PM, Heiko St=FCbner wrote:
> Hi Kishon,
> =

> Am Donnerstag, 1. M=E4rz 2018, 16:25:10 CET schrieb Enric Balletbo i Serr=
a:
>> Right now the rockchip type-c phy does fail probing when no extcon is
>> detected. Some boards get the cable-state via the extcon interface and
>> have this supported, other boards seem to use the fusb302 chip or
>> another but the driver currently does not seem to utilize the extcon
>> interface to report the cable-state. And, other, just connect the type-c
>> to a standard USB-A port so use no controller at all. A missing extcon
>> shouldn't fail to probe, instead, should just fall back to working in
>> host-mode if it cannot get the extcon.
>>
>> Fixes: c301b327aea898af ("arm64: dts: rockchip: add usb3-phy otg-port
>> support for rk3399") Reported-by: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> Signed-off-by: Enric Balletbo i Serra <enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> =

> Reviewed-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
> =

> I did revert the original commit mentioned in the fixes tag for 4.16-rc
> but it would nevertheless be really cool if these 2 patches (code + bindi=
ng)
> could make it into your tree for 4.17 :-)
> =

> And ideally also with the other 5 patches from Enric starting at
> 	[PATCH v3 1/6] phy: rockchip-typec: deprecate some DT properties for var=
ious register fields.
> =

> from 2018-02-16.

merged now, thanks!

-Kishon
