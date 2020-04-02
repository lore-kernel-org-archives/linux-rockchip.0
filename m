From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v3 5/5] video: rockchip: Support 4K resolution for rk3399,
 HDMI
Date: Thu, 2 Apr 2020 20:48:58 +0800
Message-ID: <d53471a2-80ee-7154-337d-da9b04d89732@rock-chips.com>
References: <20200402114125.2501-1-jagan@amarulasolutions.com>
 <20200402114125.2501-6-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200402114125.2501-6-jagan@amarulasolutions.com>
Content-Language: en-US
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>, Anatolij Gustschin <agust@denx.de>
Cc: Mark Kettenis <mark.kettenis@xs4all.nl>, sunil@amarulasolutions.com, u-boot@lists.denx.de, linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com
List-Id: linux-rockchip.vger.kernel.org


On 2020/4/2 下午7:41, Jagan Teki wrote:
> The default resolution for rockchip display is 1920x1080
> which failed to work on 4K HDMI out displays on rk3399.
>
> So, mark the default resolution as 3480x2160 for rk3399
> HDMI out.
>
> This would work all the hdmi display resolutions till
> 4K.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>



Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
> Changes for v3:
> - new patch
>
>   drivers/video/rockchip/Kconfig | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/drivers/video/rockchip/Kconfig b/drivers/video/rockchip/Kconfig
> index 10182d0b66..cfd774ead6 100644
> --- a/drivers/video/rockchip/Kconfig
> +++ b/drivers/video/rockchip/Kconfig
> @@ -22,6 +22,7 @@ menuconfig VIDEO_ROCKCHIP
>   config VIDEO_ROCKCHIP_MAX_XRES
>           int "Maximum horizontal resolution (for memory allocation purposes)"
>   	depends on VIDEO_ROCKCHIP
> +	default 3480 if ROCKCHIP_RK3399 && DISPLAY_ROCKCHIP_HDMI
>   	default 1920
>   	help
>   	  The maximum horizontal resolution to support for the framebuffer.
> @@ -31,6 +32,7 @@ config VIDEO_ROCKCHIP_MAX_XRES
>   config VIDEO_ROCKCHIP_MAX_YRES
>           int "Maximum vertical resolution (for memory allocation purposes)"
>   	depends on VIDEO_ROCKCHIP
> +	default 2160 if ROCKCHIP_RK3399 && DISPLAY_ROCKCHIP_HDMI
>   	default 1080
>   	help
>   	  The maximum vertical resolution to support for the framebuffer.
