From: jeffy <jeffy.chen@rock-chips.com>
Subject: Re: [PATCH v3] drm/rockchip: Refactor the component match logic.
Date: Thu, 16 Mar 2017 10:07:20 +0800
Message-ID: <58C9F358.4020805@rock-chips.com>
References: <1489573247-9628-1-git-send-email-jeffy.chen@rock-chips.com> <19101003.9xjQ92OS5C@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <19101003.9xjQ92OS5C@phil>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: Mark Yao <mark.yao@rock-chips.com>, Andrzej Hajda <a.hajda@samsung.com>, Guenter Roeck <groeck@chromium.org>, Brian Norris <briannorris@chromium.org>, Tomasz Figa <tfiga@chromium.org>, Douglas Anderson <dianders@chromium.org>, Sean Paul <seanpaul@chromium.org>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, David Airlie <airlied@linux.ie>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

On 03/16/2017 01:00 AM, Heiko Stuebner wrote:
> Am Mittwoch, 15. März 2017, 18:20:47 CET schrieb Jeffy Chen:
>> Currently we are adding all components from the dts, if one of their
>> drivers been disabled, we would not be able to bring up others.
>>
>> Refactor component match logic, follow exynos drm.
>>
>> Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
>> Reviewed-by: Andrzej Hajda <a.hajda@samsung.com>
>
> This reliably produces null pointer dereference errors in
> 	__platform_driver_register called from rockchip_drm_init
> on at least rk3036 and rk3288 (probably more) when applied on top of
> Linus' tree from today. Log attached and Rockchip drm compiled as module.
>
> I'm currently dug into other areas, so hadn't have time to investigate further
> yet.
>
>
> Heiko
>
oops, sorry, i'll upload a new version to fix that, thanx.
