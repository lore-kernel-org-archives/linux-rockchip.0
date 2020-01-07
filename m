From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 03/11] rockchip: Include SF on distrocmd devices
Date: Tue, 7 Jan 2020 16:44:27 +0800
Message-ID: <6c3629a1-6870-4313-3bd2-c307946dab68@rock-chips.com>
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-4-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20191221075440.6944-4-jagan@amarulasolutions.com>
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
Cc: u-boot@lists.denx.de, linux-amarula <linux-amarula@amarulasolutions.com>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org


On 2019/12/21 下午3:54, Jagan Teki wrote:
> Include the SPI flash device on distro boot targets.
>
> Included at the beginning of the target devices list
> since the rockchip platform has a boot order start
> from SPI Flash.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>   include/configs/rockchip-common.h | 7 +++++++
>   1 file changed, 7 insertions(+)
>
> diff --git a/include/configs/rockchip-common.h b/include/configs/rockchip-common.h
> index 68e1105a4b..4e6d6e98d9 100644
> --- a/include/configs/rockchip-common.h
> +++ b/include/configs/rockchip-common.h
> @@ -11,6 +11,12 @@
>   
>   #ifndef CONFIG_SPL_BUILD
>   
> +#if CONFIG_IS_ENABLED(CMD_SF)
> +# define BOOT_TARGET_SF(func) func(SF, sf, 0)
> +#else
> +# define BOOT_TARGET_SF(func)
> +#endif
> +
>   /* First try to boot from SD (index 0), then eMMC (index 1) */
>   #if CONFIG_IS_ENABLED(CMD_MMC)
>   	#define BOOT_TARGET_MMC(func) \
> @@ -39,6 +45,7 @@
>   #endif
>   
>   #define BOOT_TARGET_DEVICES(func) \
> +	BOOT_TARGET_SF(func) \
>   	BOOT_TARGET_MMC(func) \
>   	BOOT_TARGET_USB(func) \
>   	BOOT_TARGET_PXE(func) \
