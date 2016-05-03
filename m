From: Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>
Subject: Re: [PATCH 1/3] phy: rockchip-usb: should be a child device of the GRF
Date: Tue, 3 May 2016 16:28:35 +0530
Message-ID: <5728845B.8070405@ti.com>
References: <1459431812-6286-1-git-send-email-heiko@sntech.de>
 <1459431812-6286-2-git-send-email-heiko@sntech.de> <2045729.fIbxLc8i6o@diego>
 <1879262.vnFSl1oxpJ@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1879262.vnFSl1oxpJ@diego>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org



On Sunday 01 May 2016 01:37 AM, Heiko St=FCbner wrote:
> Hi Kishon,
> =

> Am Dienstag, 19. April 2016, 08:13:47 schrieb Heiko St=FCbner:
>> Hi Kishon.
>>
>> Am Donnerstag, 31. M=E4rz 2016, 15:43:30 schrieb Heiko Stuebner:
>>> The usb-phy is fully enclosed in the general register files (GRF).
>>> Therefore as seen from the device-tree it shouldn't be a separate
>>> platform-
>>> device but instead a sub-device of the GRF - using the simply-mfd
>>> mechanism.
>>>
>>> As the usb-phy is part of the kernel for some releases now, we keep
>>> the old (and now deprecated) binding for compatibility purposes.
>>>
>>> Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
>>
>> could you look into picking this patch up for 4.7?
>>
>> Same principle as for the other phy drivers, but it's already in the ker=
nel
>> for a while, so it gets a fallback for the old binding and can go through
>> the normal way.
>>
>> The other two (devicetree-)patches I would then simply queue for 4.8 mys=
elf
>> after you're fine with the driver-side.
> =

> just saw that you already have a tag for 4.7-related phy changes since th=
is =

> afternoon, but no phy pull to Greg on lkml yet.
> =

> So maybe there is still a way for this phy conversion (to be under the =

> Rockchip GRF node) to make it in for 4.7 :-) ?

Looks like I've missed this before sending the pull request. Sorry about th=
at.
Is it okay if the PHY changes also go in 4.8?

-Kishon
