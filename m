From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 02/11] distro_bootcmd: Add SF support
Date: Mon, 30 Dec 2019 11:07:48 +0800
Message-ID: <6aa9aecb-11fb-087e-b140-d26ee76b4f08@rock-chips.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-3-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20191221075440.6944-3-jagan@amarulasolutions.com>
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
Cc: u-boot@lists.denx.de, linux-amarula <linux-amarula@amarulasolutions.com>, Tom Rini <trini@konsulko.com>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org


On 2019/12/21 下午3:54, Jagan Teki wrote:
> Add distro boot command support for SPI flash.
>
> This distro boot will read the boot script at specific
> location at the flash and start sourcing the same.
>
> The common macro like BOOTENV_SHARED_FLASH would help
> to extend the support for nand flash in future.
>
> Cc: Tom Rini <trini@konsulko.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>   include/config_distro_bootcmd.h | 35 +++++++++++++++++++++++++++++++++
>   1 file changed, 35 insertions(+)
>
> diff --git a/include/config_distro_bootcmd.h b/include/config_distro_bootcmd.h
> index fc0935fa21..d68b79e290 100644
> --- a/include/config_distro_bootcmd.h
> +++ b/include/config_distro_bootcmd.h
> @@ -43,6 +43,22 @@
>   #define BOOTENV_DEV_NAME_BLKDEV(devtypeu, devtypel, instance) \
>   	#devtypel #instance " "
>   
> +#define BOOTENV_SHARED_SF_BODY(devtypel) \
> +		"if " #devtypel " probe ${devnum}; then " \
> +			"devtype=" #devtypel "; "	  \
> +			"run scan_flash_for_scripts; "	  \
> +		"fi\0"
> +
> +#define BOOTENV_SHARED_FLASH(devtypel) \
> +	#devtypel "_boot=" \
> +	BOOTENV_SHARED_SF_BODY(devtypel)
> +
> +#define BOOTENV_DEV_FLASH(devtypeu, devtypel, instance) \
> +	BOOTENV_DEV_BLKDEV(devtypeu, devtypel, instance)
> +
> +#define BOOTENV_DEV_NAME_FLASH(devtypeu, devtypel, instance) \
> +	BOOTENV_DEV_NAME_BLKDEV(devtypeu, devtypel, instance)
> +
>   #ifdef CONFIG_SANDBOX
>   #define BOOTENV_SHARED_HOST	BOOTENV_SHARED_BLKDEV(host)
>   #define BOOTENV_DEV_HOST	BOOTENV_DEV_BLKDEV
> @@ -398,6 +414,18 @@
>   	BOOT_TARGET_DEVICES_references_PXE_without_CONFIG_CMD_DHCP_or_PXE
>   #endif
>   
> +#if defined(CONFIG_CMD_SF)
> +#define BOOTENV_SHARED_SF	BOOTENV_SHARED_FLASH(sf)
> +#define BOOTENV_DEV_SF		BOOTENV_DEV_FLASH
> +#define BOOTENV_DEV_NAME_SF	BOOTENV_DEV_NAME_FLASH
> +#else
> +#define BOOTENV_SHARED_SF
> +#define BOOTENV_DEV_SF \
> +	BOOT_TARGET_DEVICES_references_SF_without_CONFIG_CMD_SF
> +#define BOOTENV_DEV_NAME_SF \
> +	BOOT_TARGET_DEVICES_references_SF_without_CONFIG_CMD_SF
> +#endif
> +
>   #define BOOTENV_DEV_NAME(devtypeu, devtypel, instance) \
>   	BOOTENV_DEV_NAME_##devtypeu(devtypeu, devtypel, instance)
>   #define BOOTENV_BOOT_TARGETS \
> @@ -412,6 +440,7 @@
>   	BOOTENV_SHARED_USB \
>   	BOOTENV_SHARED_SATA \
>   	BOOTENV_SHARED_SCSI \
> +	BOOTENV_SHARED_SF \
>   	BOOTENV_SHARED_NVME \
>   	BOOTENV_SHARED_IDE \
>   	BOOTENV_SHARED_UBIFS \
> @@ -436,6 +465,12 @@
>   			"echo SCRIPT FAILED: continuing...; "             \
>   		"fi\0"                                                    \
>   	\
> +	"scan_flash_for_scripts="                                         \
> +		"${devtype} read ${scriptaddr} "                          \
> +			"${script_offset_f} ${script_size_f}; "		  \
> +		"source ${scriptaddr}; "				  \
> +		"echo SCRIPT FAILED: continuing...\0"			  \
> +	\
>   	"boot_a_script="                                                  \
>   		"load ${devtype} ${devnum}:${distro_bootpart} "           \
>   			"${scriptaddr} ${prefix}${script}; "              \
