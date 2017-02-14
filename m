From: Guenter Roeck <groeck@google.com>
Subject: Re: [PATCH] drm/rockchip: add extcon dependency for DP
Date: Tue, 14 Feb 2017 14:06:33 -0800
Message-ID: <CABXOdTfebR3aA-txoAzLh=U30uLGWe=Lrz4EF8VYhR6bSJEwww@mail.gmail.com>
References: <20170214213215.2888509-1-arnd@arndb.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20170214213215.2888509-1-arnd@arndb.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Arnd Bergmann <arnd@arndb.de>
Cc: Mark Yao <mark.yao@rock-chips.com>, David Airlie <airlied@linux.ie>, Sean Paul <seanpaul@chromium.org>, Guenter Roeck <groeck@chromium.org>, Heiko Stuebner <heiko@sntech.de>, Daniel Vetter <daniel.vetter@ffwll.ch>, Yakir Yang <ykk@rock-chips.com>, Philipp Zabel <p.zabel@pengutronix.de>, Chris Zhong <zyw@rock-chips.com>, Tobias Jakobi <tjakobi@math.uni-bielefeld.de>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-kernel <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Tue, Feb 14, 2017 at 1:31 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> The newly added DP driver links against the extcon core, which fails when
> extcon is a module and this driver is not:
>
> drivers/gpu/drm/rockchip/cdn-dp-core.o: In function `cdn_dp_get_port_lanes':
> cdn-dp-core.c:(.text.cdn_dp_get_port_lanes+0x24): undefined reference to `extcon_get_state'
> cdn-dp-core.c:(.text.cdn_dp_get_port_lanes+0x44): undefined reference to `extcon_get_property'
>
> Let's make Kconfig enforce correct behavior with a dependency.
>
> Fixes: 1a0f7ed3abe2 ("drm/rockchip: cdn-dp: add cdn DP support for rk3399")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Guenter Roeck <groeck@chromium.org>

> ---
>  drivers/gpu/drm/rockchip/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
> index ad31b3eb408f..0e4eb845cbb0 100644
> --- a/drivers/gpu/drm/rockchip/Kconfig
> +++ b/drivers/gpu/drm/rockchip/Kconfig
> @@ -24,6 +24,7 @@ config ROCKCHIP_ANALOGIX_DP
>  config ROCKCHIP_CDN_DP
>          tristate "Rockchip cdn DP"
>          depends on DRM_ROCKCHIP
> +       depends on EXTCON
>         select SND_SOC_HDMI_CODEC if SND_SOC
>          help
>           This selects support for Rockchip SoC specific extensions
> --
> 2.9.0
>
