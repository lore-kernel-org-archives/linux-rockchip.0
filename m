From: Robert Foss <robert.foss-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: rk3399: Graphical artifacts when running for-next
Date: Fri, 22 Feb 2019 11:56:45 +0100
Message-ID: <50696da7-bda6-b626-d2fa-432321a73681@collabora.com>
References: <69ddf17a-232d-fc1f-f6a7-59dbde220395@collabora.com>
 <2996476.nJxoliyDTa@phil>
 <48fe80bd-92bf-41fa-f508-941765e4354b@collabora.com>
 <1654246.IP1FNPqO5J@phil>
 <ec6768e8-c6ce-b4e6-10b6-2880dbbdff4d@collabora.com>
 <8d5e0ce1-b1c5-1f4b-fd81-f18f376fc756@collabora.com>
 <eaec0319d2a79a49a39fc29bfe2473f2cec15b52.camel@collabora.com>
 <905cfe71-c98d-f73d-8870-623129b5e470@collabora.com>
 <AM3PR03MB096698953B17A52CA58EF251AC7E0@AM3PR03MB0966.eurprd03.prod.outlook.com>
 <cc5be462-6684-f945-bee9-5b583aee6f37@collabora.com>
 <d0d37ca1-4afb-8ee2-f648-5a42879900de@collabora.com>
 <AM3PR03MB096678395D7722EDCF81E775AC7F0@AM3PR03MB0966.eurprd03.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <AM3PR03MB096678395D7722EDCF81E775AC7F0-XQTXrJX/giFAc9da7WRX18eAHadYHfrlvxpqHgZTriW3zl9H0oFU5g@public.gmane.org>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Tom Cubie <tom-ZvE2cuBqvIQAvxtiuMwx3w@public.gmane.org>, Tomeu Vizoso <tomeu.vizoso-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org



On 2/22/19 10:30 AM, Jonas Karlman wrote:
> On 2019-02-22 09:45, Robert Foss wrote:
>>
>> On 2/22/19 9:41 AM, Robert Foss wrote:
>>> Hey Jonas,
>>>
>>> On 2/21/19 9:29 PM, Jonas Karlman wrote:
>>>> On 2019-02-21 20:42, Robert Foss wrote:
>>>>> On 2/21/19 8:15 PM, Ezequiel Garcia wrote:
>>>>>> Folks,
>>>>>>
>>>>>> On Thu, 2019-02-21 at 20:08 +0100, Robert Foss wrote:
>>>>>> [..]
>>>>>>
>>>>>> The clock debugging is obviously good research.
>>>>>>
>>>>>>>> Additionally I've had a look at the libdrm modetest util, and it i=
s reporting
>>>>>>>> far fewer modes than what I would expect on my 4k monitor.
>>>>>>>>
>>>>>> That said, this is also worth looking into.
>>>>>> I'm curious, is the EDID the kernel getting OK?
>>>>>>
>>>>> Given that modetest lists way too few modes, I would think
>>>>> there could be some EDID related issues.
>>>> It is more likely the issue is in dw_hdmi_rockchip_mode_valid(), it cu=
rrently
>>>> filters out
>>>> any mode not defined in rockchip_mpll_cfg.
>>>> That method needs some changes to allow for 4k modes and fractal refre=
sh rates.
>>>> E.g. for RK3328 it should probably check the inno-hdmi-phy clock rates.
>>>
>>> This seemed like a good suggetions, so I disabled the rockchip_mpll_cfg=
 in
>>> dw_hdmi_rockchip_mode_valid(), and ran libdrm/modetest. I now have 5 mo=
des.
>>> But no higher resolution ones, only low resolution ones that don't seem
>> s/, only low resolution ones that don't seem/./g
>>
>>> $ modetest
>>> [..]
>>> trying to open device 'rockchip'...done
>>> Encoders:
>>> id=A0=A0=A0=A0=A0 crtc=A0=A0=A0 type=A0=A0=A0 possible crtcs=A0 possibl=
e clones
>>> 44=A0=A0=A0=A0=A0 34=A0=A0=A0=A0=A0 TMDS=A0=A0=A0 0x00000003=A0=A0=A0=
=A0=A0 0x00000000
>>>
>>> Connectors:
>>> id=A0=A0=A0=A0=A0 encoder status=A0=A0=A0=A0=A0=A0=A0=A0=A0 name=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 size (mm)=A0=A0=A0=A0=A0=A0 modes=A0=A0 encoders
>>> 45=A0=A0=A0=A0=A0 44=A0=A0=A0=A0=A0 connected=A0=A0=A0=A0=A0=A0 HDMI-A-=
1=A0=A0=A0=A0=A0=A0=A0 0x0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 5=A0=A0=A0=
=A0=A0=A0 44
>>>   =A0 modes:
>>>   =A0=A0=A0=A0=A0=A0=A0 name refresh (Hz) hdisp hss hse htot vdisp vss =
vse vtot)
>>>   =A0 1024x768 60 1024 1048 1184 1344 768 771 777 806 65000 flags: [..]
>>>   =A0 800x600 60 800 840 968 1056 600 601 605 628 40000 flags: [..]
>>>   =A0 800x600 56 800 824 896 1024 600 601 603 625 36000 flags: [..]
>>>   =A0 848x480 60 848 864 976 1088 480 486 494 517 33750 flags: [..]
>>>   =A0 640x480 60 640 656 752 800 480 490 492 525 25175 flags: [...]
> =

> If you only get up to 1024x768 there is probably some issue with reading =
EDID.
> Does the EDID property in modetest show any content?
> =

> I have some code at [1] that will update EDID more often (work in progres=
s for CEC and audio improvements),
> it will only affect the EDID property and won't add new modes from the de=
tect callback.
> This has mainly been tested on RK3288/RK3328 and Allwinner H3 so far.
> =

> [1] https://github.com/Kwiboo/linux-rockchip/compare/8874c206d613dc575f5c=
b6e385e7a866020138d0...21b7ba23c14661f85f82b068af9a9510f7d5fb0a

You are entirely correct. A patch already submitted, but not merged yet fix=
es
this EDID issues for the RockPi4.

https://www.spinics.net/lists/arm-kernel/msg708359.html

> =

> Regards,
> Jonas
> =

> =
