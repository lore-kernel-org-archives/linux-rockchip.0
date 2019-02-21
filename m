From: Robert Foss <robert.foss-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: rk3399: Graphical artifacts when running for-next
Date: Thu, 21 Feb 2019 20:08:47 +0100
Message-ID: <8d5e0ce1-b1c5-1f4b-fd81-f18f376fc756@collabora.com>
References: <69ddf17a-232d-fc1f-f6a7-59dbde220395@collabora.com>
 <2996476.nJxoliyDTa@phil>
 <48fe80bd-92bf-41fa-f508-941765e4354b@collabora.com>
 <1654246.IP1FNPqO5J@phil>
 <ec6768e8-c6ce-b4e6-10b6-2880dbbdff4d@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <ec6768e8-c6ce-b4e6-10b6-2880dbbdff4d-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
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
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Tom Cubie <tom-ZvE2cuBqvIQAvxtiuMwx3w@public.gmane.org>, Tomeu Vizoso <tomeu.vizoso-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

+Eze

On 2/21/19 5:38 PM, Robert Foss wrote:
> =

> =

> On 2/21/19 4:53 PM, Heiko Stuebner wrote:
>> Am Donnerstag, 21. Februar 2019, 16:46:19 CET schrieb Robert Foss:
>>>
>>> On 2/21/19 2:26 PM, Heiko Stuebner wrote:
>>>> Hi Robert,
>>>>
>>>> Am Donnerstag, 21. Februar 2019, 11:27:15 CET schrieb Robert Foss:
>>>>> Hey Heiko,
>>>>>
>>>>> I've just started booting the RK3399 based Radxa Rock Pi 4 on the mai=
nline
>>>>> kernel. Specifically on linux-rockchip/for-next, with an additional p=
atch
>>>>> adding the GPU DT node[1].
>>>>>
>>>>> Unfortunately I'm seeing an artifact on all display output[2].
>>>>> It, from the VT to 3D content.
>>>>>
>>>>> Is this an issue that has been encountered before?
>>>>
>>>> I haven't seen something like this before. I do test graphics
>>>> on most Rockchip socs regularly (right now dw-hdmi only
>>>> on non-rk3399 socs though).
>>>>
>>>> Did you try full linux-next as well? My for-next branch obviously
>>>> only carries dt/soc-driver stuff but not things like drm-misc.
>>>>
>>>> One possible issue might be the generated clocks. You could check
>>>> $debug/clk/clk_summary for the dclk_vopX to see if that matches
>>>> the suggested clock for the mode. (For example check the requested
>>>> rate in rockchip_vop.c against what it actually gets).
>>>>
>>>
>>> I had a look using the current linux-next/master, and I'm seeing the sa=
me =

>>> results.
>>> Commit: 550f4769c7c4 - Add linux-next specific files for 20190221
>>>
>>>
>>> I had also look at the debugfs output:
>>> # cat /sys/kernel/debug/clk/clk_summary | grep dclk_vop
>>> =A0=A0=A0 dclk_vop0_div=A0=A0=A0 0 1 0 27000000=A0 0 0=A0 50000
>>> =A0=A0=A0=A0=A0 dclk_vop0=A0=A0=A0=A0=A0 0 2 0 27000000=A0 0 0 50000
>>> =A0=A0=A0=A0=A0 dclk_vop0_frac 0 0 0 1350000=A0=A0 0 0 50000
>>> =A0=A0=A0 dclk_vop1_div=A0=A0=A0 1 1 0 59400000=A0 0 0 50000
>>> =A0=A0=A0=A0=A0 dclk_vop1=A0=A0=A0=A0=A0 2 2 0 59400000=A0 0 0 50000
>>> =A0=A0=A0=A0=A0 dclk_vop1_frac 0 0 0 2970000=A0=A0 0 0 50000
>>>
>>> But I can't find a file named rockchip_vop.c exactly. And I'm not entir=
ely sure
>>> about how to decipher the expected values from the driver.
>>
>> drivers/gpu/drm/rockchip_drm_vop.c (my memory of the filename was faulty
>> it seems). As for comparing to the expected rate, I guess the easiest
>> way would be to just insert a printk into vop_crtc_mode_fixup()
>> after the clk_round_rate call, outputting both the requested and
>> calculated rate and then looking that up in the dmesg.
> =

> dmesg:
> vop_crtc_mode_fixup() mode->clock=3D65000000=A0 adjusted_mode->clock=3D61=
538000
> =

> Is the adjusted clock withing the reasonable range?
> =

> =

> Additionally I've had a look at the libdrm modetest util, and it is repor=
ting
> far fewer modes than what I would expect on my 4k monitor.
> =

> As an added note, I have this board+monitor working using proprietary dri=
vers, =

> and up to 4k resolutions.
> =

> trying to open device 'rockchip'...done
> Encoders:
> id=A0=A0=A0=A0=A0 crtc=A0=A0=A0 type=A0=A0=A0 possible crtcs=A0 possible =
clones
> 44=A0=A0=A0=A0=A0 34=A0=A0=A0=A0=A0 TMDS=A0=A0=A0 0x00000003=A0=A0=A0=A0=
=A0 0x00000000
> =

> Connectors:
> id=A0=A0=A0=A0=A0 encoder status=A0=A0=A0=A0=A0=A0=A0=A0=A0 name=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 size (mm)=A0=A0=A0=A0=A0=A0 modes=A0=A0 encoders
> 45=A0=A0=A0=A0=A0 44=A0=A0=A0=A0=A0 connected=A0=A0=A0=A0=A0=A0 HDMI-A-1=
=A0=A0=A0=A0=A0=A0=A0 0x0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 3=A0=A0=A0=A0=
=A0=A0 44
>  =A0 modes:
>  =A0=A0=A0=A0=A0=A0=A0 name refresh (Hz) hdisp hss hse htot vdisp vss vse=
 vtot)
>  =A0 1024x768 60 1024 1048 1184 1344 768 771 777 806 65000 flags: nhsync,=
 nvsync; =

> type: driver
>  =A0 800x600 60 800 840 968 1056 600 601 605 628 40000 flags: phsync, pvs=
ync; =

> type: driver
>  =A0 800x600 56 800 824 896 1024 600 601 603 625 36000 flags: phsync, pvs=
ync; =

> type: driver
> =

> =

> =

> Rob.
