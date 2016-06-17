From: Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>
Subject: Re: [PATCH 1/3] phy: rockchip-usb: should be a child device of the GRF
Date: Fri, 17 Jun 2016 18:05:09 +0530
Message-ID: <5763EE7D.4000600@ti.com>
References: <1459431812-6286-1-git-send-email-heiko@sntech.de>
 <1879262.vnFSl1oxpJ@diego> <5728845B.8070405@ti.com>
 <7658149.o0yR5eAPe1@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <7658149.o0yR5eAPe1@diego>
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

Hi Heiko,

On Tuesday 03 May 2016 04:32 PM, Heiko St=FCbner wrote:
> Hi Kishon,
> =

> Am Dienstag, 3. Mai 2016, 16:28:35 schrieb Kishon Vijay Abraham I:
>> On Sunday 01 May 2016 01:37 AM, Heiko St=FCbner wrote:
>>> Am Dienstag, 19. April 2016, 08:13:47 schrieb Heiko St=FCbner:
>>>> Am Donnerstag, 31. M=E4rz 2016, 15:43:30 schrieb Heiko Stuebner:
>>>>> The usb-phy is fully enclosed in the general register files (GRF).
>>>>> Therefore as seen from the device-tree it shouldn't be a separate
>>>>> platform-
>>>>> device but instead a sub-device of the GRF - using the simply-mfd
>>>>> mechanism.
>>>>>
>>>>> As the usb-phy is part of the kernel for some releases now, we keep
>>>>> the old (and now deprecated) binding for compatibility purposes.
>>>>>
>>>>> Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
>>>>
>>>> could you look into picking this patch up for 4.7?
>>>>
>>>> Same principle as for the other phy drivers, but it's already in the
>>>> kernel
>>>> for a while, so it gets a fallback for the old binding and can go thro=
ugh
>>>> the normal way.
>>>>
>>>> The other two (devicetree-)patches I would then simply queue for 4.8
>>>> myself
>>>> after you're fine with the driver-side.
>>>
>>> just saw that you already have a tag for 4.7-related phy changes since
>>> this
>>> afternoon, but no phy pull to Greg on lkml yet.
>>>
>>> So maybe there is still a way for this phy conversion (to be under the
>>> Rockchip GRF node) to make it in for 4.7 :-) ?
>>
>> Looks like I've missed this before sending the pull request. Sorry about
>> that. Is it okay if the PHY changes also go in 4.8?
> =

> yep, 4.8 is no problem as well. We have the current binding in the kernel=
 for =

> so long, that waiting one more kernel release won't be a problem.

Can you resend the patch after fixing these checkpatch warnings?
WARNING: Possible unwrapped commit description (prefer a maximum 75 chars p=
er line)
#52:
device but instead a sub-device of the GRF - using the simply-mfd mechanism.

WARNING: line over 80 characters
#123: FILE: drivers/phy/phy-rockchip-usb.c:402:
+		phy_base->reg_base =3D syscon_node_to_regmap(dev->parent->of_node);

total: 0 errors, 2 warnings, 68 lines checked

After that I'll take them in my -next.

Thanks
Kishon
