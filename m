From: Archit Taneja <architt@codeaurora.org>
Subject: Re: [PATCH] drm/bridge/synopsys: dsi: use adjusted_mode in mode_set
Date: Mon, 29 Jan 2018 09:44:21 +0530
Message-ID: <075514d0-ff00-606e-4616-e2db4fb75d0d@codeaurora.org>
References: <20180125155504.8611-1-philippe.cornu@st.com>
 <CA+ASDXOLYaL1zT-K0FvVTFGQ2BA12eHkrZw_mau50aUBdy=vhA@mail.gmail.com>
 <5f9d5de7-4597-b9e9-64fe-666230b12bce@st.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <5f9d5de7-4597-b9e9-64fe-666230b12bce@st.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Philippe CORNU <philippe.cornu@st.com>, Brian Norris <briannorris@chromium.org>
Cc: "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Heiko Stubner <heiko@sntech.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, David Airlie <airlied@linux.ie>, Linux Kernel <linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, Sandy Huang <hjc@rock-chips.com>, Yannick FERTRE <yannick.fertre@st.com>, Andrzej Hajda <a.hajda@samsung.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Ludovic BARRE <ludovic.barre@st.com>, Mickael REULIER <mickael.reulier@st.com>, Vincent ABRIOU <vincent.abriou@st.com>, Bhumika Goyal <bhumirks@gmail.com>, Alexandre
List-Id: linux-rockchip.vger.kernel.org



On 01/26/2018 03:24 PM, Philippe CORNU wrote:
> Hi Brian,
> And a big thanks for your Tested-by
> 
> On 01/25/2018 11:47 PM, Brian Norris wrote:
>> On Thu, Jan 25, 2018 at 7:55 AM, Philippe Cornu <philippe.cornu@st.com> wrote:
>>> The "adjusted_mode" clock value (ie the real pixel clock) is more
>>> accurate than "mode" clock value (ie the panel/bridge requested
>>> clock value). It offers a better preciseness for timing
>>> computations and allows to reduce the extra dsi bandwidth in
>>> burst mode (from ~20% to ~10-12%, hw platform dependant).
>>>
>>> Signed-off-by: Philippe Cornu <philippe.cornu@st.com>
>>> ---
>>> Note: This patch replaces "drm/bridge/synopsys: dsi: add optional pixel clock"
>>
>> These two appear to be the same for my cases, but at least nothing breaks:
>>
> 
> In drivers/gpu/drm/rockchip/rockchip_drm_vop.c function
> vop_crtc_mode_fixup(), the adjusted_mode->clock (ie. vop px clk output =
> dw dsi px clk input) is updated according to rockchip hw pll/dividers...
> 
> So you "may" have a different value in adjusted_mode->clock compare to
> mode->clock. Maybe there is no difference for the panel you are using
> because its px clock matches perfectly with rockchip hw pll/dividers...
> or has been set to match with ;-)
> 
> I did a similar patch (see [1]) and it works "fine" on stm, the only
> difference with the rockchip vop is that clk_round_rate() returns odd
> values on stm so I used set/get_rate instead.
> 
> So now, both rockchip & stm crtc have an "adjusted_mode->clock" so it
> makes sense to use it in dw dsi :)

Could you get the patch [1] queued on drm-misc-next? I can queue this patch
after it.

Thanks,
Archit

> 
> Philippe :-)
> 
> [1] https://patchwork.freedesktop.org/patch/200720/
> "[PATCH] drm/stm: ltdc: use crtc_mode_fixup to update adjusted_mode clock"
> 
> 
>> Tested-by: Brian Norris <briannorris@chromium.org>
>>
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project
