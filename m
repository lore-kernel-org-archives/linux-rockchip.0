From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v2] rockchip: Fix spl mmc boot device ofpath
Date: Mon, 25 May 2020 10:49:53 +0800
Message-ID: <b7748fd2-3963-75d8-081c-fe4457f6e3a7@rock-chips.com>
References: <20200524145618.78951-1-jagan@amarulasolutions.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200524145618.78951-1-jagan@amarulasolutions.com>
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
Cc: sunil@amarulasolutions.com, u-boot@lists.denx.de, linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com
List-Id: linux-rockchip.vger.kernel.org


On 2020/5/24 下午10:56, Jagan Teki wrote:
> Linux v5.7-rc1 dts(i) sync has changed the sdmmc node from
> dwmmc@fe320000 to mmc@fe320000 and this ofpath is being
> used in rockchip spl bootdevice code.
>
> So, update the ofpath with a new node name and prefix "same-as-spl"
> to missing u-boot,spl-boot-order.
>
> Bug log:
> U-Boot SPL 2020.07-rc2-00256-g9c5fef5774 (May 24 2020 - 20:20:43 +0530)
> Trying to boot from MMC2
> mmc_load_image_raw_sector: mmc block read error
> Trying to boot from MMC1
> mmc_load_image_raw_sector: mmc block read error
> SPL: failed to boot from all boot devices
>
> Fixes: 167efc2c7a46 ("arm64: dts: rk3399: Sync v5.7-rc1 from Linux"
> Signed-off-by: Suniel Mahesh <sunil@amarulasolutions.com>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
> Changes for v2:
> - prefix "same-as-spl" to missing u-boot,spl-boot-order
>
>   arch/arm/dts/rk3399-evb-u-boot.dtsi               | 2 +-
>   arch/arm/dts/rk3399-ficus-u-boot.dtsi             | 2 +-
>   arch/arm/dts/rk3399-rock960-u-boot.dtsi           | 2 +-
>   arch/arm/mach-rockchip/rk3399/rk3399.c            | 4 ++--
>   board/theobroma-systems/puma_rk3399/puma-rk3399.c | 4 ++--
>   5 files changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/arch/arm/dts/rk3399-evb-u-boot.dtsi b/arch/arm/dts/rk3399-evb-u-boot.dtsi
> index e5659d7999..0bb50b01da 100644
> --- a/arch/arm/dts/rk3399-evb-u-boot.dtsi
> +++ b/arch/arm/dts/rk3399-evb-u-boot.dtsi
> @@ -8,7 +8,7 @@
>   
>   / {
>   	chosen {
> -		u-boot,spl-boot-order = &sdhci, &sdmmc;
> +		u-boot,spl-boot-order = "same-as-spl", &sdhci, &sdmmc;
>   	};
>   };
>   
> diff --git a/arch/arm/dts/rk3399-ficus-u-boot.dtsi b/arch/arm/dts/rk3399-ficus-u-boot.dtsi
> index f3f7aa7c45..38e0897db9 100644
> --- a/arch/arm/dts/rk3399-ficus-u-boot.dtsi
> +++ b/arch/arm/dts/rk3399-ficus-u-boot.dtsi
> @@ -8,6 +8,6 @@
>   
>   / {
>   	chosen {
> -		u-boot,spl-boot-order = &sdhci, &sdmmc;
> +		u-boot,spl-boot-order = "same-as-spl", &sdhci, &sdmmc;
>   	};
>   };
> diff --git a/arch/arm/dts/rk3399-rock960-u-boot.dtsi b/arch/arm/dts/rk3399-rock960-u-boot.dtsi
> index 82f2c311af..c190089e26 100644
> --- a/arch/arm/dts/rk3399-rock960-u-boot.dtsi
> +++ b/arch/arm/dts/rk3399-rock960-u-boot.dtsi
> @@ -8,7 +8,7 @@
>   
>   / {
>   	chosen {
> -		u-boot,spl-boot-order = &sdhci, &sdmmc;
> +		u-boot,spl-boot-order = "same-as-spl", &sdhci, &sdmmc;
>   	};
>   
>   	vdd_log: vdd-log {
> diff --git a/arch/arm/mach-rockchip/rk3399/rk3399.c b/arch/arm/mach-rockchip/rk3399/rk3399.c
> index 09b0d6ebe8..4fda93b152 100644
> --- a/arch/arm/mach-rockchip/rk3399/rk3399.c
> +++ b/arch/arm/mach-rockchip/rk3399/rk3399.c
> @@ -28,7 +28,7 @@ DECLARE_GLOBAL_DATA_PTR;
>   const char * const boot_devices[BROM_LAST_BOOTSOURCE + 1] = {
>   	[BROM_BOOTSOURCE_EMMC] = "/sdhci@fe330000",
>   	[BROM_BOOTSOURCE_SPINOR] = "/spi@ff1d0000",
> -	[BROM_BOOTSOURCE_SD] = "/dwmmc@fe320000",
> +	[BROM_BOOTSOURCE_SD] = "/mmc@fe320000",
>   };
>   
>   static struct mm_region rk3399_mem_map[] = {
> @@ -176,7 +176,7 @@ const char *spl_decode_boot_device(u32 boot_device)
>   		u32 boot_device;
>   		const char *ofpath;
>   	} spl_boot_devices_tbl[] = {
> -		{ BOOT_DEVICE_MMC1, "/dwmmc@fe320000" },
> +		{ BOOT_DEVICE_MMC1, "/mmc@fe320000" },
>   		{ BOOT_DEVICE_MMC2, "/sdhci@fe330000" },
>   		{ BOOT_DEVICE_SPI, "/spi@ff1d0000" },
>   	};
> diff --git a/board/theobroma-systems/puma_rk3399/puma-rk3399.c b/board/theobroma-systems/puma_rk3399/puma-rk3399.c
> index 561579d056..f7f08ae617 100644
> --- a/board/theobroma-systems/puma_rk3399/puma-rk3399.c
> +++ b/board/theobroma-systems/puma_rk3399/puma-rk3399.c
> @@ -77,7 +77,7 @@ static int setup_boottargets(void)
>   	}
>   
>   	/*
> -	 * Only run, if booting from mmc1 (i.e. /dwmmc@fe320000) and
> +	 * Only run, if booting from mmc1 (i.e. /mmc@fe320000) and
>   	 * only consider cases where the default boot-order first
>   	 * tries to boot from mmc0 (eMMC) and then from mmc1
>   	 * (i.e. external SD).
> @@ -85,7 +85,7 @@ static int setup_boottargets(void)
>   	 * In other words: the SD card will be moved to earlier in the
>   	 * order, if U-Boot was also loaded from the SD-card.
>   	 */
> -	if (!strcmp(boot_device, "/dwmmc@fe320000")) {
> +	if (!strcmp(boot_device, "/mmc@fe320000")) {
>   		char *mmc0, *mmc1;
>   
>   		debug("%s: booted from SD-Card\n", __func__);
