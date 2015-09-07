From: Krzysztof Kozlowski <k.kozlowski@samsung.com>
Subject: Re: [PATCH 4/4] ARM: multi_v7_defconfig: Enable DW USB2 support and
 rockchip phy
Date: Mon, 07 Sep 2015 16:56:42 +0900
Message-ID: <55ED433A.5000907@samsung.com>
References: <1441570566-14001-1-git-send-email-sjoerd.simons@collabora.co.uk>
 <1441609832.8778.4.camel@collabora.co.uk> <55ED3BC5.8050603@samsung.com>
 <1447076.WCyUA0P2ql@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-reply-to: <1447076.WCyUA0P2ql@diego>
Sender: linux-kernel-owner@vger.kernel.org
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
Cc: Sjoerd Simons <sjoerd.simons@collabora.co.uk>, linux-rockchip@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>, Kevin Hilman <khilman@linaro.org>, linux-arm-kernel@lists.infradead.org, Javier Martinez Canillas <javier@osg.samsung.com>, Kukjin Kim <kgene@kernel.org>, Thierry Reding <treding@nvidia.com>, Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org, Russell King <linux@arm.linux.org.uk>, Alexandre Belloni <alexandre.belloni@free-electrons.com>, Lee Jones <lee.jones@linaro.org>, Ray Jui <rjui@broadcom.com>, Stephen Warren <swarren@nvidia.com>, Marek Szyprowski <m.szyprowski@samsung.com>
List-Id: linux-rockchip.vger.kernel.org

On 07.09.2015 16:53, Heiko St=FCbner wrote:
> Am Montag, 7. September 2015, 16:24:53 schrieb Krzysztof Kozlowski:
>> On 07.09.2015 16:10, Sjoerd Simons wrote:
>>> Hey Krzysztof,
>>>
>>> On Mon, 2015-09-07 at 09:02 +0900, Krzysztof Kozlowski wrote:
>>>> On 07.09.2015 05:16, Sjoerd Simons wrote:
>>>>> The DesignWare HS OTG USB 2.0 is used in various SoC families amo=
ng
>>>>> wich
>>>>> the various rockchip SoCs, enable the driver and the PHY glue for
>>>>> rockchip
>>>>
>>>> +Cc Marek and Kukjin,
>>>>
>>>> This would conflict with Marek's:
>>>> [PATCH v2] ARM: multi_v7_defconfig: Enable DWC2 USB driver and USB
>>>> ethernet gadget
>>>> http://www.spinics.net/lists/linux-samsung-soc/msg46743.html
>>>>
>>>> Probably your series and Marek's change should go together to the
>>>> same
>>>> tree. How about rebasing your work on top of it?
>>>
>>> Thanks for the pointer! I'm entirely happy to rebase on Mareks patc=
h or
>>> this one dropped for now until Mareks patch lands.
>>>
>>> These patches were based on current linux-next, so i guess Mareks p=
athc
>>> didn't land just yet? Tbh, i don't really know what tries multi_v7
>>> tends to go through (especially for non-platform specific changes)
>>
>> It was too late for Marek's patch to go for v4.3 merge window, so I
>> applied it but not pushed to my for-next branch. AFAIU, Stephen does=
 not
>> want v4.4 material during merge window because of mangling with stat=
istics.
>>
>>
>> If you want to rebase (or cherry-pick), you can find Marek's patch h=
ere:
>> branch: defconfig-for-next
>> repo: git://github.com/krzk/linux.git
>>
>> However this *branch will be rebased on v4.3-rc1* (because this is
>> material for v4.4). After v4.3-rc1 I can prepare a tag for other
>> interested parties.
>>
>>
>> As for multi_v7_defconfig policy, I got impression from the
>> Arnd/Olof/Kevin comments on LKML, that platform specific changes sho=
uld
>> go through platform tree. However this is multi-platform change so m=
aybe
>> we can push both patches through arm-soc.
>>
>>
>> Arnd, Olof, Kevin (BTW, you missed to CC him),
>>
>> How do you wish to handle this case (USB_DWC2 and two patches: Marek=
's
>> and Sjoerd's)?
>=20
> I guess the easiest option would be to just drop the dwc2 from here, =
only=20
> keeping the phy enablement and let everything (Marek's and Sjoerd's p=
atch)=20
> come together in the armsoc defconfig branch? As the rest of both pat=
ches don't=20
> seem to touch common areas, they should be easily mergable from diffe=
rent trees=20
> as well.

Yes, I agree. The config PHY_ROCKCHIP_USB does not depend on it directl=
y
so this should work fine.

Best regards,
Krzysztof
