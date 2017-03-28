From: Guenter Roeck <groeck-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [PATCH] drm/rockchip: fix Kconfig dependencies
Date: Tue, 28 Mar 2017 09:37:15 -0700
Message-ID: <CABXOdTfAruXx0NPO3v9HA9biDd9gz8bGjQP16s9HP8Q3ihVqwA@mail.gmail.com>
References: <20170328101654.73624-1-arnd@arndb.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20170328101654.73624-1-arnd-r2nGTMty4D4@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Arnd Bergmann <arnd-r2nGTMty4D4@public.gmane.org>
Cc: Stephen Boyd <stephen.boyd-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Tobias Jakobi <tjakobi-o02PS0xoJP9W0yFyLvAVXMxlOr/tl8fh@public.gmane.org>, David Airlie <airlied-cv59FeDIM0c@public.gmane.org>, Daniel Vetter <daniel.vetter-/w4YWyX8dFk@public.gmane.org>, Jeffy Chen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Yakir Yang <ykk-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Guenter Roeck <groeck-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Mark Yao <mark.yao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Tue, Mar 28, 2017 at 3:16 AM, Arnd Bergmann <arnd-r2nGTMty4D4@public.gmane.org> wrote:
> A bug that I had fixed earlier just came back, with CONFIG_EXTCON=m,
> the rockchip drm driver will fail to link:
>
> drivers/gpu/drm/rockchip/cdn-dp-core.o: In function `cdn_dp_get_port_lanes':
> cdn-dp-core.c:(.text.cdn_dp_get_port_lanes+0x30): undefined reference to `extcon_get_state'
> cdn-dp-core.c:(.text.cdn_dp_get_port_lanes+0x6c): undefined reference to `extcon_get_property'
> drivers/gpu/drm/rockchip/cdn-dp-core.o: In function `cdn_dp_check_sink_connection':
> cdn-dp-core.c:(.text.cdn_dp_check_sink_connection+0x80): undefined reference to `extcon_get_state'
> drivers/gpu/drm/rockchip/cdn-dp-core.o: In function `cdn_dp_enable':
> cdn-dp-core.c:(.text.cdn_dp_enable+0x748): undefined reference to `extcon_get_property'
>
> The problem is that that the sub-drivers are now all linked into the
> main rockchip drm module, which breaks all the Kconfig dependencies
> that are specified in the options for those sub-drivers.
>
> This clarifies the dependency to ensure that we can only turn on the DP
> driver when EXTCON is reachable. As the 'select' statements can now
> cause additional options to become built-in when they should be
> loadable modules, I'm moving those into the main driver config option.
> The dependency on DRM_ROCKCHIP can be reduced into a single 'if'
> statement here for brevity, but this has no functional effect.
>
> Fixes: b6705157b2db ("drm/rockchip: add extcon dependency for DP")
> Fixes: 8820b68bd378 ("drm/rockchip: Refactor the component match logic.")
> Signed-off-by: Arnd Bergmann <arnd-r2nGTMty4D4@public.gmane.org>

Acked-by: Guenter Roeck <groeck-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>

> ---
>  drivers/gpu/drm/rockchip/Kconfig | 19 +++++++++----------
>  1 file changed, 9 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
> index 50c41c0a50ef..dcc539ba85d6 100644
> --- a/drivers/gpu/drm/rockchip/Kconfig
> +++ b/drivers/gpu/drm/rockchip/Kconfig
> @@ -5,6 +5,10 @@ config DRM_ROCKCHIP
>         select DRM_KMS_HELPER
>         select DRM_PANEL
>         select VIDEOMODE_HELPERS
> +       select DRM_ANALOGIX_DP if ROCKCHIP_ANALOGIX_DP
> +       select DRM_DW_HDMI if ROCKCHIP_DW_HDMI
> +       select DRM_MIPI_DSI if ROCKCHIP_DW_MIPI_DSI
> +       select SND_SOC_HDMI_CODEC if ROCKCHIP_CDN_DP && SND_SOC
>         help
>           Choose this option if you have a Rockchip soc chipset.
>           This driver provides kernel mode setting and buffer
> @@ -12,10 +16,10 @@ config DRM_ROCKCHIP
>           2D or 3D acceleration; acceleration is performed by other
>           IP found on the SoC.
>
> +if DRM_ROCKCHIP
> +
>  config ROCKCHIP_ANALOGIX_DP
>         bool "Rockchip specific extensions for Analogix DP driver"
> -       depends on DRM_ROCKCHIP
> -       select DRM_ANALOGIX_DP
>         help
>           This selects support for Rockchip SoC specific extensions
>           for the Analogix Core DP driver. If you want to enable DP
> @@ -23,9 +27,7 @@ config ROCKCHIP_ANALOGIX_DP
>
>  config ROCKCHIP_CDN_DP
>          bool "Rockchip cdn DP"
> -        depends on DRM_ROCKCHIP
> -       depends on EXTCON
> -       select SND_SOC_HDMI_CODEC if SND_SOC
> +       depends on EXTCON=y || (EXTCON=m && DRM_ROCKCHIP=m)
>          help
>           This selects support for Rockchip SoC specific extensions
>           for the cdn DP driver. If you want to enable Dp on
> @@ -34,8 +36,6 @@ config ROCKCHIP_CDN_DP
>
>  config ROCKCHIP_DW_HDMI
>          bool "Rockchip specific extensions for Synopsys DW HDMI"
> -        depends on DRM_ROCKCHIP
> -        select DRM_DW_HDMI
>          help
>           This selects support for Rockchip SoC specific extensions
>           for the Synopsys DesignWare HDMI driver. If you want to
> @@ -44,8 +44,6 @@ config ROCKCHIP_DW_HDMI
>
>  config ROCKCHIP_DW_MIPI_DSI
>         bool "Rockchip specific extensions for Synopsys DW MIPI DSI"
> -       depends on DRM_ROCKCHIP
> -       select DRM_MIPI_DSI
>         help
>          This selects support for Rockchip SoC specific extensions
>          for the Synopsys DesignWare HDMI driver. If you want to
> @@ -54,8 +52,9 @@ config ROCKCHIP_DW_MIPI_DSI
>
>  config ROCKCHIP_INNO_HDMI
>         bool "Rockchip specific extensions for Innosilicon HDMI"
> -       depends on DRM_ROCKCHIP
>         help
>           This selects support for Rockchip SoC specific extensions
>           for the Innosilicon HDMI driver. If you want to enable
>           HDMI on RK3036 based SoC, you should select this option.
> +
> +endif
> --
> 2.9.0
>
