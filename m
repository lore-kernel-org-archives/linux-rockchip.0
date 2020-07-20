From: Andy Yan <andy.yan@rock-chips.com>
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_2/5=5d_drm=3a_rockchip=3a_add_missing_regi?=
 =?UTF-8?B?c3RlcnMgZm9yIFJLMzE4OOOAkOivt+azqOaEj++8jOmCruS7tueUsWxpbnV4LXJv?=
 =?UTF-8?Q?ckchip-bounces+andy=2eyan=3drock-chips=2ecom=40lists=2einfradead?=
 =?UTF-8?B?Lm9yZ+S7o+WPkeOAkQ==?=
Date: Mon, 20 Jul 2020 16:22:24 +0800
Message-ID: <871ce1ac-2d5b-c0a2-60a6-6aba0f296c18@rock-chips.com>
References: <20200718200323.3559-1-knaerzche@gmail.com>
 <20200718200323.3559-3-knaerzche@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200718200323.3559-3-knaerzche@gmail.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Alex Bee <knaerzche@gmail.com>, Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
Cc: David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Alex:

On 7/19/20 4:03 AM, Alex Bee wrote:
> This patch adds dither_up, dsp_lut_en, data_blank and dsp_data_swap
> registers to enable their respective functionality for RK3188's VOP.
>
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> ---
>   drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 4 ++++
>   1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
> index b046910129fb..971a6bda7458 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
> @@ -512,6 +512,10 @@ static const struct vop_common rk3188_common = {
>   	.dither_down_en = VOP_REG(RK3188_DSP_CTRL0, 0x1, 11),
>   	.dither_down_mode = VOP_REG(RK3188_DSP_CTRL0, 0x1, 10),
>   	.dsp_blank = VOP_REG(RK3188_DSP_CTRL1, 0x3, 24),
> +	.dither_up = VOP_REG(RK3188_DSP_CTRL0, 0x1, 9),
> +	.dsp_lut_en = VOP_REG(RK3188_SYS_CTRL, 0x1, 28),
> +	.data_blank = VOP_REG(RK3188_DSP_CTRL1, 0x1, 25),
> +	.dsp_data_swap = VOP_REG(RK3188_DSP_CTRL1, 0x1f, 26),



I can't find the definition of dsp_data_swap, or I missed something?



>   };
>   
>   static const struct vop_win_data rk3188_vop_win_data[] = {
