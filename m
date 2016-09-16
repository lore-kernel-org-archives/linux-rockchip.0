From: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Subject: Re: [PATCH v5 3/3] usb: dwc2: Properly account for the force mode
 delays
Date: Thu, 15 Sep 2016 19:16:29 -0700
Message-ID: <e454dc40-abae-6641-5d94-d42187d14c93@synopsys.com>
References: <cover.1473302184.git.johnyoun@synopsys.com>
 <2928813.DT7ys6u6xZ@diego>
 <97a3539d-7176-086f-71f9-371d8d4b016c@synopsys.com>
 <6145714.tWcMvDakYx@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <6145714.tWcMvDakYx@diego>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Cc: Stefan Wahren <stefan.wahren-eS4NqCHxEME@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "linux-rpi-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rpi-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Felipe Balbi <balbi-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On 9/14/2016 7:05 AM, Heiko Stübner wrote:
> Am Dienstag, 13. September 2016, 12:04:12 schrieb John Youn:
>> On 9/13/2016 11:39 AM, Heiko Stübner wrote:
>>> Am Dienstag, 13. September 2016, 20:07:25 schrieb Stefan Wahren:
>>>> Hi Heiko,
>>>>
>>>>> Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org> hat am 12. September 2016 um 13:05
>>>>> geschrieben:
>>>>>
>>>>>
>>>>> Hi Stefan,
>>>>>
>>>>> Am Montag, 12. September 2016, 07:20:44 CEST schrieb Stefan Wahren:
>>>>>>> Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org> hat am 11. September 2016 um 23:19
>>>>>>> geschrieben:
>>>>>>>
>>>>>>> Am Mittwoch, 7. September 2016, 19:39:43 CEST schrieb John Youn:
>>>>>>>> When a force mode bit is set and the IDDIG debounce filter is
>>>>>>>> enabled,
>>>>>>>> there is a delay for the forced mode to take effect. This delay is
>>>>>>>> due
>>>>>>>> to the IDDIG debounce filter and is variable depending on the
>>>>>>>> platform's
>>>>>>>> PHY clock speed. To account for this delay we can poll for the
>>>>>>>> expected
>>>>>>>> mode.
>>>>>>>>
>>>>>>>> On a clear force mode, since we don't know what mode to poll for,
>>>>>>>> delay
>>>>>>>> for a fixed 100 ms. This is the maximum delay based on the slowest
>>>>>>>> PHY
>>>>>>>> clock speed.
>>>>>>>>
>>>>>>>> Tested-by: Stefan Wahren <stefan.wahren-eS4NqCHxEME@public.gmane.org>
>>>>>>>> Signed-off-by: John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
>>>>>>>> ---
>>>>>>>
>>>>>>> [...]
>>>>>>>
>>>>>>>> @@ -475,12 +478,6 @@ void dwc2_force_dr_mode(struct dwc2_hsotg
>>>>>>>> *hsotg)
>>>>>>>>
>>>>>>>>  			 __func__, hsotg->dr_mode);
>>>>>>>>  		
>>>>>>>>  		break;
>>>>>>>>  	
>>>>>>>>  	}
>>>>>>>>
>>>>>>>> -
>>>>>>>> -	/*
>>>>>>>> -	 * NOTE: This is required for some rockchip soc based
>>>>>>>> -	 * platforms.
>>>>>>>> -	 */
>>>>>>>> -	msleep(50);
>>>>>>>>
>>>>>>>>  }
>>>>>>>
>>>>>>> sorry for not finding the time to test your subsequent versions, but
>>>>>>> this
>>>>>>> still
>>>>>>> acts up on my Rockchip boards, as I'm still running into errors like
>>>>>>>
>>>>>>> 	[    4.875570] usb usb2-port1: connect-debounce failed
>>>>>>
>>>>>> could you please name the relevant DTS file of the affected boards?
>>>>>
>>>>> So far I've been able to see that on
>>>>>
>>>>> rk3188-radxarock
>>>>> rk3036-kylin
>>>>>
>>>>> both on host-only dwc2 controllers.
>>>>
>>>> thanks, does patch 1 & 2 already have a negative effect on these
>>>> controllers?
>>>
>>> nope, patches 1+2 alone are ok and only the msleep(50) going away causes
>>> problems. I'm back home now, so I'll hopefully have time to check
>>> host-only
>>> vs. otg dwc2 controllers tomorrow as well.
>>
>> Ok, thanks for testing Heiko.
>>
>> Given that, let's try to fix this in the next -rc (or before) because
>> I think the Raspberry Pi needs the other parts of that last patch. We
>> can just revert the msleep(50) if needed.
> 
> I could nicely confirm, that only the host-only controller seems affected by
> this. Same kernel image that fails on the host-only one with the "connect-
> debounce failed" message seems to work once I switch that over to the  otg
> controller and the system comes up nicely again.
> 
> So if we don't find the root cause in the short term, maybe we could at least
> limit the delay for host-only variants, like
> 
> ---------------------- 8< -------------------
> diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
> index fa9b26b..4c0fa0b 100644
> --- a/drivers/usb/dwc2/core.c
> +++ b/drivers/usb/dwc2/core.c
> @@ -463,9 +463,18 @@ static void dwc2_clear_force_mode(struct dwc2_hsotg *hsotg)
>   */
>  void dwc2_force_dr_mode(struct dwc2_hsotg *hsotg)
>  {
> +	bool ret;
> +
>  	switch (hsotg->dr_mode) {
>  	case USB_DR_MODE_HOST:
> -		dwc2_force_mode(hsotg, true);
> +		ret = dwc2_force_mode(hsotg, true);
> +		/*
> +		 * NOTE: This is required for some rockchip soc based
> +		 * platforms on their host-only dwc2.
> +		 */
> +		if (!ret)
> +			msleep(50);
> +
>  		break;
>  	case USB_DR_MODE_PERIPHERAL:
>  		dwc2_force_mode(hsotg, false);
> ---------------------- 8< -------------------
> 
> I've been running with that change for some time now on both the
> rk3036-kylin and rk3188-radxarock. Plugged and unplugged different
> combinations of usb-devices on the usb otg and host ports, so far
> seems to work.
> 
> 

Hi Heiko,

Let's add the delay just as you have it here.

I'm not sure how the delay comes into play in host-only hardware
though. I will see if the RTL engineers know why that might be needed.

Regards,
John


--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
