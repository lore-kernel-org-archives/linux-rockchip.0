From: Nickey Yang <nickey.yang@rock-chips.com>
Subject: Re: [PATCH v4 1/3] drm/bridge/synopsys: dsi: stop clobbering drvdata
Date: Wed, 6 Dec 2017 15:16:28 +0800
Message-ID: <f1bd1246-98d1-3d48-ae9f-657eff39d3a2@rock-chips.com>
References: <1512100685-4015-1-git-send-email-nickey.yang@rock-chips.com>
 <1512100685-4015-2-git-send-email-nickey.yang@rock-chips.com>
 <5605c3c2-56ad-2289-c3c0-78cde1152123@st.com>
 <c6a53132-1ee3-00be-d52d-218560c07975@rock-chips.com>
 <1700743e-04b0-90ea-d393-dbfebf93742f@st.com>
 <206b071f-2b57-c4a2-31b3-2f469091e5e2@rock-chips.com>
 <20171205185651.GA136446@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20171205185651.GA136446@google.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Brian Norris <briannorris@chromium.org>
Cc: Philippe CORNU <philippe.cornu@st.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>, "heiko@sntech.de" <heiko@sntech.de>, "mark.rutland@arm.com" <mark.rutland@arm.com>, "airlied@linux.ie" <airlied@linux.ie>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "laurent.pinchart@ideasonboard.com" <laurent.pinchart@ideasonboard.com>, "seanpaul@chromium.org" <seanpaul@chromium.org>, "mka@chromium.org" <mka@chromium.org>, "hoegsberg@gmail.com" <hoegsberg@gmail.com>, "architt@codeaurora.org" <architt@codeaurora.org>, Yannick FERTRE <yannick.fertre@st.com>, "hl@rock-chips.com" <hl@rock-chips.com>, zyw@ro
List-Id: linux-rockchip.vger.kernel.org

Hi Brian,


On 2017年12月06日 02:56, Brian Norris wrote:
> Hi Nickey,
>
> On Tue, Dec 05, 2017 at 05:14:11PM +0800, Nickey Yang wrote:
>> On 2017年12月01日 18:07, Philippe CORNU wrote:
>>> On 12/01/2017 10:11 AM, Nickey Yang wrote:
>>>> On 2017年12月01日 16:32, Philippe CORNU wrote:
>>>>> I am sorry to say that but you can not add my "Acked-by" to this patch
>>>>> because this code is different from the "original" one from Brian (which
>>>>> got my "Acked-by").
>>>> I'm sorry I didn't think much about it, Thank you for correcting me.
>>>>> Sometimes it is not an issue because differences are not important but
>>>>> in this particular case, the code is really different: you have remove
>>>>> platform_set_drvdata() & platform_get_drvdata() in the stm part.
>>>>>
>>>>> Could you please go back to the original code or propose me an updated
>>>>> version of this code.
>>>> Could you help update new version of this code(stm part) and then test on
>>>> stm platform?
>>> I think you can simply goes back to the original version from Brian (see
>>> the discussion thread in https://patchwork.kernel.org/patch/10078493/)
>>> unless you have specific/good reasons for modifying the code as you did.
>> mmm,I'm sorry, I feel a little puzzled. Do you means we should abandon
>> Brian's patch (https://patchwork.kernel.org/patch/10078493/)?
>> I think we need to adjust stm part because  dw_mipi_dsi_stm.c calls
>> bridge's drivers if we want merge Brian's patch.
> It's really simple. Your code is different from the patch I sent, and in
> a way that Philippe did not like. I'll highlight it again below:
>
>>>>>> diff --git a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
>>>>>> index e5b6310..80f9950 100644
>>>>>> --- a/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
>>>>>> +++ b/drivers/gpu/drm/stm/dw_mipi_dsi-stm.c
>>>>>> @@ -66,6 +66,7 @@ enum dsi_color {
>>>>>>     struct dw_mipi_dsi_stm {
>>>>>>     	void __iomem *base;
>>>>>>     	struct clk *pllref_clk;
>>>>>> +	struct dw_mipi_dsi *dmd;
>>>>>>     };
>>>>>>     static inline void dsi_write(struct dw_mipi_dsi_stm *dsi, u32 reg, u32 val)
>>>>>> @@ -318,10 +319,11 @@ static int dw_mipi_dsi_stm_probe(struct platform_device *pdev)
>>>>>>     	dw_mipi_dsi_stm_plat_data.base = dsi->base;
>>>>>>     	dw_mipi_dsi_stm_plat_data.priv_data = dsi;
>>>>>> -	ret = dw_mipi_dsi_probe(pdev, &dw_mipi_dsi_stm_plat_data);
>>>>>> -	if (ret) {
>>>>>> +	dsi->dmd = dw_mipi_dsi_probe(pdev, &dw_mipi_dsi_stm_plat_data);
>>>>>> +	if (IS_ERR(dsi->dmd)) {
>>>>>>     		DRM_ERROR("Failed to initialize mipi dsi host\n");
>>>>>>     		clk_disable_unprepare(dsi->pllref_clk);
>>>>>> +		return PTR_ERR(dsi->dmd);
>>>>>>     	}
>>>>>>     	return ret;
>>>>>> @@ -332,7 +334,7 @@ static int dw_mipi_dsi_stm_remove(struct platform_device *pdev)
>>>>>>     	struct dw_mipi_dsi_stm *dsi = dw_mipi_dsi_stm_plat_data.priv_data;
>>>>>>     	clk_disable_unprepare(dsi->pllref_clk);
>>>>>> -	dw_mipi_dsi_remove(pdev);
>>>>>> +	dw_mipi_dsi_remove(dsi->dmd);
>>>>>>     	return 0;
>>>>>>     }
>   
> Above is your diff for dw_mipi_dsi-stm.c. Particularly, notice that
> remove() is directly referencing the static dw_mipi_dsi_stm_plat_data
> struct.
>
> If you look back at my patch [1] you'll see that you're missing hunks
> like this:
>
Thank you for pointing out my mistake.
I will fix this in next version.

Nickey.
>   static int dw_mipi_dsi_stm_remove(struct platform_device *pdev)
>   {
> -	struct dw_mipi_dsi_stm *dsi = dw_mipi_dsi_stm_plat_data.priv_data;
> +	struct dw_mipi_dsi_stm *dsi = platform_get_drvdata(pdev);
>   
>   	clk_disable_unprepare(dsi->pllref_clk);
> [...]
>
> Brian
>
> [1] https://patchwork.kernel.org/patch/10078493/
>
>
>
