From: Randy Li <randy.li-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH] ARM: dts: rockchip: add i2c-bus subnode to edp
Date: Fri, 21 Oct 2016 16:32:24 +0800
Message-ID: <13de56c8-accb-de5d-1713-1bdedf0291b7@rock-chips.com>
References: <1476950845-28242-1-git-send-email-tomeu.vizoso@collabora.com>
 <7604646.6yosK0XMNL@diego>
 <6083453f-08e1-643a-9638-1db38c704aa5@collabora.com>
 <1681294.eoXpQL8f8l@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1681294.eoXpQL8f8l@phil>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org



On 10/21/2016 04:25 PM, Heiko Stuebner wrote:
> Am Donnerstag, 20. Oktober 2016, 15:47:56 CEST schrieb Tomeu Vizoso:
>> On 10/20/2016 03:45 PM, Heiko St=FCbner wrote:
>>> Am Donnerstag, 20. Oktober 2016, 10:07:25 schrieb Tomeu Vizoso:
>>>> Add an empty 'i2c-bus' subnode to the edp node just so that the I2C co=
re
>>>> doesn't attemp to parse the 'ports' subnode as containing i2c devices.
>>>>
>>>> This is to avoid spurious failure messages such as:
>>>>
>>>> i2c i2c-6: of_i2c: modalias failure on /dp@ff970000/ports
>>>
>>> On the one hand, the edp really has an i2c bus - with its only client t=
he
>>> EDID listening at 0x50 (and maybe 0x30).
>>>
>>> On the other hand, adding an empty bus to the (implementation independe=
nt)
>>> devicetree just to make the Linux i2c subsystem happy sounds heavily li=
ke
>>> a
>>> implementation-specific hack, as the edp i2c bus doesn't leak into the
>>> outside world otherwise.
>>>
>>> I guess this empty i2c bus not being part of the binding document points
>>> heavily into the implementation-specific corner :-) .
>>>
>>> My short search on other patches touching this didn't reveal anything b=
ut
>>> maybe this was already discussed somewhere and found to be ok?
>>
>> Here it is:
>>
>> http://www.spinics.net/lists/linux-tegra/msg27862.html
>
> thanks ... I'm still not sure about the placeholder though, aka needing an
> undocumented subnode to make a Linux error message silent.
No it won't and the other error message. I have enabled the i2c debug, =

and would report what it is going on.
Just it is too late yesterday, I have no time to report that.
>
> In the thread you pointed to I also did not see any dt-maintainer involve=
ment
> pointing one way or another, but spinics is often not easy to navigate
> threads, so I may have missed that.
>
>
>>> Another option could be to just make of_i2c_register_device silent if
>>> of_modalias_node returns -ENODEV?
>
>
> Heiko
>
>>>> Signed-off-by: Tomeu Vizoso <tomeu.vizoso-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
>>>> Cc: Randy Li <randy.li-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
>>>> Cc: Jon Hunter <jonathanh-DDmLM1+adcrQT0dZR+AlfA@public.gmane.org>
>>>> ---
>>>>
>>>>  arch/arm/boot/dts/rk3288.dtsi | 5 +++++
>>>>  1 file changed, 5 insertions(+)
>>>>
>>>> diff --git a/arch/arm/boot/dts/rk3288.dtsi
>>>> b/arch/arm/boot/dts/rk3288.dtsi
>>>> index 2f814ffeb605..94f4b7eecca2 100644
>>>> --- a/arch/arm/boot/dts/rk3288.dtsi
>>>> +++ b/arch/arm/boot/dts/rk3288.dtsi
>>>> @@ -1075,6 +1075,11 @@
>>>>
>>>>  				};
>>>>  			=

>>>>  			};
>>>>  		=

>>>>  		};
>>>>
>>>> +
>>>> +		i2c-bus {
>>>> +			#address-cells =3D <1>;
>>>> +			#size-cells =3D <0>;
>>>> +		};
>>>>
>>>>  	};
>>>>  	=

>>>>  	hdmi: hdmi@ff980000 {
>
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
>

-- =

Randy Li
The third produce department
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
This email message, including any attachments, is for the sole
use of the intended recipient(s) and may contain confidential and
privileged information. Any unauthorized review, use, disclosure or
distribution is prohibited. If you are not the intended recipient, please
contact the sender by reply e-mail and destroy all copies of the original
message. [Fuzhou Rockchip Electronics, INC. China mainland]
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
