From: Alex Bee <knaerzche@gmail.com>
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_2/5=5d_drm=3a_rockchip=3a_add_missing_regi?=
 =?UTF-8?B?c3RlcnMgZm9yIFJLMzE4OOOAkOivt+azqOaEj++8jOmCruS7tueUsWxpbnV4LXJv?=
 =?UTF-8?Q?ckchip-bounces+andy=2eyan=3drock-chips=2ecom=40lists=2einfradead?=
 =?UTF-8?B?Lm9yZ+S7o+WPkeOAkQ==?=
Date: Tue, 21 Jul 2020 04:46:45 +0200
Message-ID: <3a8f02db-93f3-1414-fea9-007dee55ec54@gmail.com>
References: <20200718200323.3559-1-knaerzche@gmail.com>
 <20200718200323.3559-3-knaerzche@gmail.com>
 <871ce1ac-2d5b-c0a2-60a6-6aba0f296c18@rock-chips.com>
 <12296860-d6ed-5135-7c4e-545362829051@gmail.com>
 <c53a4909-03ff-7477-fb71-1418cf97634b@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <c53a4909-03ff-7477-fb71-1418cf97634b@rock-chips.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Andy Yan <andy.yan@rock-chips.com>, Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
Cc: David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Andy,

Am 21.07.20 um 03:17 schrieb Andy Yan:
> Hi Alex:
>
> On 7/20/20 10:46 PM, Alex Bee wrote:
>> Hi Andy,
>>
>> Am 20.07.20 um 10:22 schrieb Andy Yan:
>>> Hi Alex:
>>>
>>> On 7/19/20 4:03 AM, Alex Bee wrote:
>>>> This patch adds dither_up, dsp_lut_en, data_blank and dsp_data_swap
>>>> registers to enable their respective functionality for RK3188's VOP.
>>>>
>>>> Signed-off-by: Alex Bee <knaerzche@gmail.com>
>>>> ---
>>>>   drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 4 ++++
>>>>   1 file changed, 4 insertions(+)
>>>>
>>>> diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c 
>>>> b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
>>>> index b046910129fb..971a6bda7458 100644
>>>> --- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
>>>> +++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
>>>> @@ -512,6 +512,10 @@ static const struct vop_common rk3188_common = {
>>>>       .dither_down_en = VOP_REG(RK3188_DSP_CTRL0, 0x1, 11),
>>>>       .dither_down_mode = VOP_REG(RK3188_DSP_CTRL0, 0x1, 10),
>>>>       .dsp_blank = VOP_REG(RK3188_DSP_CTRL1, 0x3, 24),
>>>> +    .dither_up = VOP_REG(RK3188_DSP_CTRL0, 0x1, 9),
>>>> +    .dsp_lut_en = VOP_REG(RK3188_SYS_CTRL, 0x1, 28),
>>>> +    .data_blank = VOP_REG(RK3188_DSP_CTRL1, 0x1, 25),
>>>> +    .dsp_data_swap = VOP_REG(RK3188_DSP_CTRL1, 0x1f, 26),
>>>
>>>
>>>
>>> I can't find the definition of dsp_data_swap, or I missed something?
>>>
>> Note that .dsp_data_swap is not defined with that name in TRM (as it 
>> is not in RK3288/RK3328), since potentially more the one bit would 
>> have to be set for this (currently only RB_SWAP (0x2) is implemented 
>> in the VOP driver).
>>
>
> I mean I didn't find the definition of dsp_data_swap  in struct 
> vop_comm, I even search drm-misc-next tree.
>
Sorry, misunderstanding. You're right: I had something which isn't 
upstreamed/merged yet in my tree. I'll remove this reg in V2.
>
>> To be some kind of future proof (if BG_SWAP, RG_SWAP, DELTA_SWAP or 
>> DUMMY_SWAP ever get implemented) it should be aligned with what is 
>> defined for RK3288/RK3328 now to automatically benefit from that 
>> additions. And it would, since RK3288_DSP_CTRL0 BIT12, BIT13, BIT14, 
>> BIT15, BIT16 exactly matches with RK3188_DSP_CTRL1 BIT26, BIT27, 
>> BIT28, BIT29, BIT30.
>>
>> Current implementation sets BIT13 for RK3288 and with this patch 
>> BIT27 for RK3188 to enable RB_SWAP.
>>
>>>
>>>
>>>>   };
>>>>     static const struct vop_win_data rk3188_vop_win_data[] = {
>>>
>>>
>> Regards,
>>
>> Alex
>>
>>
>>
>
>
