From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 3/4] rk3288: tinker: Enable HDMI output
Date: Thu, 30 Jan 2020 11:56:08 +0800
Message-ID: <29d683ef-fb02-9d1a-a4ef-9a34146f0012@rock-chips.com>
References: <20200123141222.486-1-jagan@amarulasolutions.com>
 <20200123141222.486-3-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200123141222.486-3-jagan@amarulasolutions.com>
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
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org


On 2020/1/23 下午10:12, Jagan Teki wrote:
> Enable HDMI output for Tinker RK3288 board.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>   configs/tinker-rk3288_defconfig | 6 ++++++
>   include/configs/tinker_rk3288.h | 6 +++++-
>   2 files changed, 11 insertions(+), 1 deletion(-)
>
> diff --git a/configs/tinker-rk3288_defconfig b/configs/tinker-rk3288_defconfig
> index 894e7d1e12..ecade47e7a 100644
> --- a/configs/tinker-rk3288_defconfig
> +++ b/configs/tinker-rk3288_defconfig
> @@ -83,3 +83,9 @@ CONFIG_USB_ETHER_ASIX=y
>   CONFIG_USB_ETHER_SMSC95XX=y
>   CONFIG_CMD_DHRYSTONE=y
>   CONFIG_ERRNO_STR=y
> +CONFIG_DM_VIDEO=y
> +CONFIG_VIDEO_BPP16=y
> +CONFIG_VIDEO_BPP32=y
> +CONFIG_DISPLAY=y
> +CONFIG_VIDEO_ROCKCHIP=y
> +CONFIG_DISPLAY_ROCKCHIP_HDMI=y
> diff --git a/include/configs/tinker_rk3288.h b/include/configs/tinker_rk3288.h
> index f8a55a2cec..f1095ccd0e 100644
> --- a/include/configs/tinker_rk3288.h
> +++ b/include/configs/tinker_rk3288.h
> @@ -6,7 +6,11 @@
>   #ifndef __CONFIG_H
>   #define __CONFIG_H
>   
> -#define ROCKCHIP_DEVICE_SETTINGS
> +#define ROCKCHIP_DEVICE_SETTINGS \
> +		"stdin=serial,cros-ec-keyb\0" \
> +		"stdout=serial,vidconsole\0" \
> +		"stderr=serial,vidconsole\0"
> +
>   #include <configs/rk3288_common.h>
>   
>   #undef BOOT_TARGET_DEVICES
