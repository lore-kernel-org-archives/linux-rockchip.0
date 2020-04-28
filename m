From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v3] rockchip: Enable SF distro bootcmd
Date: Tue, 28 Apr 2020 22:15:03 +0800
Message-ID: <085b994f-7cc3-036b-c3d1-8c908c1a525a@rock-chips.com>
References: <20200428100428.19739-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200428100428.19739-1-jagan@amarulasolutions.com>
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
To: Jagan Teki <jagan@amarulasolutions.com>, Tom Rini <trini@konsulko.com>, Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Cc: sunil@amarulasolutions.com, u-boot@lists.denx.de, linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com
List-Id: linux-rockchip.vger.kernel.org


On 2020/4/28 下午6:04, Jagan Teki wrote:
> Enable SPI flash(SF) distro boot command in Rockchip.
>
> This distro boot will read the boot script at specific
> location at the flash and start sourcing the same.
>
> Included the SF device at the last of the target devices
> list since all the rest of the devices on the list have
> more possibility to boot the distribution due to the
> size of the SPI flash is concern.
>
> Cc: Tom Rini <trini@konsulko.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>


Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
> Changes for v3:
> - Don't use SF distro px30
>
>   include/configs/rk3399_common.h   |  1 +
>   include/configs/rockchip-common.h | 15 +++++++++++++++
>   2 files changed, 16 insertions(+)
>
> diff --git a/include/configs/rk3399_common.h b/include/configs/rk3399_common.h
> index 01a9174bd2..f0ae6e67a7 100644
> --- a/include/configs/rk3399_common.h
> +++ b/include/configs/rk3399_common.h
> @@ -60,6 +60,7 @@
>   #endif
>   
>   #include <config_distro_bootcmd.h>
> +#include <environment/distro/sf.h>
>   #define CONFIG_EXTRA_ENV_SETTINGS \
>   	ENV_MEM_LAYOUT_SETTINGS \
>   	"fdtfile=" CONFIG_DEFAULT_FDT_FILE "\0" \
> diff --git a/include/configs/rockchip-common.h b/include/configs/rockchip-common.h
> index b55e09a9ca..2d5d29849d 100644
> --- a/include/configs/rockchip-common.h
> +++ b/include/configs/rockchip-common.h
> @@ -41,11 +41,26 @@
>   	#define BOOT_TARGET_DHCP(func)
>   #endif
>   
> +#if CONFIG_IS_ENABLED(CMD_SF)
> +	#define BOOT_TARGET_SF(func)	func(SF, sf, 0)
> +#else
> +	#define BOOT_TARGET_SF(func)
> +#endif
> +
> +#ifndef CONFIG_ROCKCHIP_PX30
> +#define BOOT_TARGET_DEVICES(func) \
> +	BOOT_TARGET_MMC(func) \
> +	BOOT_TARGET_USB(func) \
> +	BOOT_TARGET_PXE(func) \
> +	BOOT_TARGET_DHCP(func) \
> +	BOOT_TARGET_SF(func)
> +#else
>   #define BOOT_TARGET_DEVICES(func) \
>   	BOOT_TARGET_MMC(func) \
>   	BOOT_TARGET_USB(func) \
>   	BOOT_TARGET_PXE(func) \
>   	BOOT_TARGET_DHCP(func)
> +#endif
>   
>   #ifdef CONFIG_ARM64
>   #define ROOT_UUID "B921B045-1DF0-41C3-AF44-4C6F280D3FAE;\0"
