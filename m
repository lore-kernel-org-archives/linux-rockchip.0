From: Wambui Karuga <wambui@karuga.xyz>
Subject: Re: [PATCH] drm/rockchip: use DRM_DEV_ERROR for log output
Date: Fri, 8 Nov 2019 23:07:44 +0300 (EAT)
Message-ID: <alpine.LNX.2.21.99999.375.1911082306460.13123@wambui>
References: <20191107092945.15513-1-wambui.karugax@gmail.com> <20191107133851.GF63329@art_vandelay> <20191108124630.GA10207@wambui> <4996186.DxzAFJqeGu@diego> <20191108160602.GG63329@art_vandelay>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1284482943-1573243675=:13123"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191108160602.GG63329@art_vandelay>
Sender: linux-kernel-owner@vger.kernel.org
To: Sean Paul <sean@poorly.run>
Cc: =?ISO-8859-15?Q?Heiko_St=FCbner?= <heiko@sntech.de>, Wambui Karuga <wambui.karugax@gmail.com>, hjc@rock-chips.com, airlied@linux.ie, daniel@ffwll.ch, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1284482943-1573243675=:13123
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Transfer-Encoding: 8BIT



On Fri, 8 Nov 2019, Sean Paul wrote:

> On Fri, Nov 08, 2019 at 03:06:44PM +0100, Heiko Stübner wrote:
>> Hi,
>>
>> [it seems your Reply-To mail header is set strangely as
>> Reply-To: 20191107133851.GF63329@art_vandelay
>> which confuses my MTA]
>>
>> Am Freitag, 8. November 2019, 13:46:30 CET schrieb Wambui Karuga:
>>> On Thu, Nov 07, 2019 at 08:38:51AM -0500, Sean Paul wrote:
>>>> On Thu, Nov 07, 2019 at 01:54:22AM -0800, Joe Perches wrote:
>>>>> On Thu, 2019-11-07 at 12:29 +0300, Wambui Karuga wrote:
>>>>>> Replace the use of the dev_err macro with the DRM_DEV_ERROR
>>>>>> DRM helper macro.
>>>>>
>>>>> The commit message should show the reason _why_ you are doing
>>>>> this instead of just stating that you are doing this.
>>>>>
>>>>> It's not that dev_err is uncommon in drivers/gpu/drm.
>>>>>
>>>>
>>>> It is uncommon (this is the sole instance) in rockchip, however. So it makes
>>>> sense to convert the dev_* prints in rockchip to DRM_DEV for consistency.
>>>>
>>>> Wambui, could you also please convert the dev_warn instance as well?
>>>>
>>> Hey, Sean.
>>> Trying to convert this dev_warn instance, but the corresponding DRM_WARN
>>> macro does not take the dev parameter which seems to be useful in the
>>> original output.
>>> Should I still convert it to DRM_WARN without the hdmi->dev parameter?
>>
>> There exists DRM_DEV_ERROR, DRM_DEV_INFO and DRM_DEV_DEBUG to
>> handle actual devices. Interestingly there is no DRM_DEV_WARN though.
>>
>> So depending on what Sean suggest another option would be to add the
>> missing DRM_DEV_WARN and then use it to replace the dev_warn.
>
> Yep, this sounds good to me me.
>
> Sean
>
Okay, I can add DRM_DEV_WARN and replace it there.

wambui
>>
>>
>> Heiko
>>
>>
>>
>>>
>>> Thanks,
>>> wambui
>>>> I'll apply this to drm-misc-next and expand on the commit message a bit.
>>>>
>>>> Thanks,
>>>>
>>>> Sean
>>>>
>>>>> $ git grep -w dev_err drivers/gpu/drm | wc -l
>>>>> 1950
>>>>> $ git grep -w DRM_DEV_ERROR drivers/gpu/drm | wc -l
>>>>> 756
>>>>>
>>>>>> diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
>>>>> []
>>>>>> @@ -916,7 +916,7 @@ static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
>>>>>>  	}
>>>>>>
>>>>>>  	if (!dsi->cdata) {
>>>>>> -		dev_err(dev, "no dsi-config for %s node\n", np->name);
>>>>>> +		DRM_DEV_ERROR(dev, "no dsi-config for %s node\n", np->name);
>>>>>>  		return -EINVAL;
>>>>>>  	}
>>>>>
>>>>>
>>>>>
>>>>> _______________________________________________
>>>>> dri-devel mailing list
>>>>> dri-devel@lists.freedesktop.org
>>>>> https://lists.freedesktop.org/mailman/listinfo/dri-devel
>>>>
>>>
>>
>>
>>
>>
>
> -- 
> Sean Paul, Software Engineer, Google / Chromium OS
>
--8323329-1284482943-1573243675=:13123--
