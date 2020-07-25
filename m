From: Paolo Sabatino <paolo.sabatino@gmail.com>
Subject: Re: [PATCH 5/5] drm: rockchip: use overlay windows as such
Date: Sat, 25 Jul 2020 11:08:43 +0200
Message-ID: <3a420557-8f49-02bf-e5d8-94c69534b2ca@gmail.com>
References: <20200718200323.3559-1-knaerzche@gmail.com>
 <20200718200323.3559-6-knaerzche@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200718200323.3559-6-knaerzche@gmail.com>
Content-Language: it-IT
Sender: linux-kernel-owner@vger.kernel.org
To: Alex Bee <knaerzche@gmail.com>, Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
Cc: David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 18/07/20 22:03, Alex Bee wrote:
>   static const int rk3188_vop_intrs[] = {
> @@ -980,7 +980,7 @@ static const struct vop_win_data rk3228_vop_win_data[] = {
>   	{ .base = 0x00, .phy = &rk3288_win01_data,
>   	  .type = DRM_PLANE_TYPE_PRIMARY },
>   	{ .base = 0x40, .phy = &rk3288_win01_data,
> -	  .type = DRM_PLANE_TYPE_CURSOR },
> +	  .type = DRM_PLANE_TYPE_OVERLAY },
>   };
>   
>   static const struct vop_data rk3228_vop = {

Tried on several rk322x boards, it worked fine.

Tested-by: Paolo Sabatino <paolo.sabatino@gmail.com>
