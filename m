From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: Re: [V2 1/1 PATCH] arm64: dts: rockchip: add ROCK Pi S DTS support
Date: Tue, 17 Dec 2019 12:48:49 +0100
Message-ID: <80ca8b77-6a55-ef33-b772-eccaad8871e6@gmail.com>
References: <20191217080014.11756-1-akash@openedev.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191217080014.11756-1-akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Akash,

My commit for the second time! Reply!

Question for Heiko:
Should bus-width be defined all in the rk3308 core dtsi or
move them to dts like the rest?

> +&emmc {
> +	bus-width = <4>;

Is this value correct for emmc?
bus-width = <8> is already defined in rk3308.dtsi,
so remove or change value.

> +	cap-mmc-highspeed;
> +	mmc-hs200-1_8v;

> +	supports-sd;

supports-sd is not mentioned in mmc-controller.yaml

> +	disable-wp;

The mmc.txt didn't explicitly say disable-wp is for SD card slot only,
but that is what it was designed for in the first place.
Remove all disable-wp from emmc or sdio controllers.

> +	non-removable;
> +	num-slots = <1>;
> +	vin-supply = <&vcc_io>;
> +	status = "okay";
> +};

> +&sdmmc {
> +	bus-width = <4>;

bus-width = <4> is already defined in rk3308.dtsi,
so remove or change value.

> +	cap-mmc-highspeed;
> +	cap-sd-highspeed;

> +	max-frequeency = <150000000>;

replace max-frequeency by max-frequency
max-frequency = <150000000> is already defined in rk3308.dtsi,
so remove or change value.

> +	supports-sd;

supports-sd is not mentioned in mmc-controller.yaml

> +	disable-wp;
> +	num-slots = <1>;
> +	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_det &sdmmc_bus4>;
> +	card-detect-delay = <800>;

Why is this value set to 800? All other dts use 200.
What changed in the specifications?

> +	status = "okay";
> +};

> +&sdio {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	bus-width = <4>;

bus-width = <4> is already defined in rk3308.dtsi,
so remove or change value.

> +	max-frequency = <1000000>;
> +	cap-sd-highspeed;
> +	cap-sdio-irq;

> +	supports-sdio;

supports-sdio is not mentioned in mmc-controller.yaml

> +	keep-power-in-suspend;
> +	mmc-pwrseq = <&sdio_pwrseq>;
> +	non-removable;
> +	sd-uhs-sdr104;
> +	status = "okay";
> +};

From rk3308.dtsi:

	emmc: dwmmc@ff490000 {
		compatible = "rockchip,rk3308-dw-mshc", "rockchip,rk3288-dw-mshc";
		reg = <0x0 0xff490000 0x0 0x4000>;
		interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>;
		bus-width = <8>;
		clocks = <&cru HCLK_EMMC>, <&cru SCLK_EMMC>,
			 <&cru SCLK_EMMC_DRV>, <&cru SCLK_EMMC_SAMPLE>;
		clock-names = "biu", "ciu", "ciu-drv", "ciu-sample";
		fifo-depth = <0x100>;
		max-frequency = <150000000>;
		status = "disabled";
	};

	sdmmc: dwmmc@ff480000 {
		compatible = "rockchip,rk3308-dw-mshc", "rockchip,rk3288-dw-mshc";
		reg = <0x0 0xff480000 0x0 0x4000>;
		interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>;
		bus-width = <4>;
		clocks = <&cru HCLK_SDMMC>, <&cru SCLK_SDMMC>,
			 <&cru SCLK_SDMMC_DRV>, <&cru SCLK_SDMMC_SAMPLE>;
		clock-names = "biu", "ciu", "ciu-drv", "ciu-sample";
		fifo-depth = <0x100>;
		max-frequency = <150000000>;
		pinctrl-names = "default";
		pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_det &sdmmc_bus4>;
		status = "disabled";
	};

	sdio: dwmmc@ff4a0000 {
		compatible = "rockchip,rk3308-dw-mshc", "rockchip,rk3288-dw-mshc";
		reg = <0x0 0xff4a0000 0x0 0x4000>;
		interrupts = <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
		bus-width = <4>;
		clocks = <&cru HCLK_SDIO>, <&cru SCLK_SDIO>,
			 <&cru SCLK_SDIO_DRV>, <&cru SCLK_SDIO_SAMPLE>;
		clock-names = "biu", "ciu", "ciu-drv", "ciu-sample";
		fifo-depth = <0x100>;
		max-frequency = <150000000>;
		pinctrl-names = "default";
		pinctrl-0 = <&sdio_bus4 &sdio_cmd &sdio_clk>;
		status = "disabled";
	};

From host.c:

	device_property_read_bool(dev, "non-removable");
	device_property_read_bool(dev, "cd-inverted");
	device_property_read_bool(dev, "broken-cd");
	device_property_read_bool(dev, "wp-inverted");
	device_property_read_bool(dev, "disable-wp");
	device_property_read_u32(dev, "bus-width", &bus_width);
	device_property_read_u32(dev, "max-frequency", &host->f_max);
	if (device_property_read_bool(dev, "cap-sd-highspeed"))
		host->caps |= MMC_CAP_SD_HIGHSPEED;
	if (device_property_read_bool(dev, "cap-mmc-highspeed"))
		host->caps |= MMC_CAP_MMC_HIGHSPEED;
	if (device_property_read_bool(dev, "sd-uhs-sdr12"))
		host->caps |= MMC_CAP_UHS_SDR12;
	if (device_property_read_bool(dev, "sd-uhs-sdr25"))
		host->caps |= MMC_CAP_UHS_SDR25;
	if (device_property_read_bool(dev, "sd-uhs-sdr50"))
		host->caps |= MMC_CAP_UHS_SDR50;
	if (device_property_read_bool(dev, "sd-uhs-sdr104"))
		host->caps |= MMC_CAP_UHS_SDR104;
	if (device_property_read_bool(dev, "sd-uhs-ddr50"))
		host->caps |= MMC_CAP_UHS_DDR50;
	if (device_property_read_bool(dev, "cap-power-off-card"))
		host->caps |= MMC_CAP_POWER_OFF_CARD;
	if (device_property_read_bool(dev, "cap-mmc-hw-reset"))
		host->caps |= MMC_CAP_HW_RESET;
	if (device_property_read_bool(dev, "cap-sdio-irq"))
		host->caps |= MMC_CAP_SDIO_IRQ;
	if (device_property_read_bool(dev, "full-pwr-cycle"))
		host->caps2 |= MMC_CAP2_FULL_PWR_CYCLE;
	if (device_property_read_bool(dev, "keep-power-in-suspend"))
		host->pm_caps |= MMC_PM_KEEP_POWER;
	if (device_property_read_bool(dev, "wakeup-source") ||
	    device_property_read_bool(dev, "enable-sdio-wakeup")) /* legacy */
		host->pm_caps |= MMC_PM_WAKE_SDIO_IRQ;
	if (device_property_read_bool(dev, "mmc-ddr-3_3v"))
		host->caps |= MMC_CAP_3_3V_DDR;
	if (device_property_read_bool(dev, "mmc-ddr-1_8v"))
		host->caps |= MMC_CAP_1_8V_DDR;
	if (device_property_read_bool(dev, "mmc-ddr-1_2v"))
		host->caps |= MMC_CAP_1_2V_DDR;
	if (device_property_read_bool(dev, "mmc-hs200-1_8v"))
		host->caps2 |= MMC_CAP2_HS200_1_8V_SDR;
	if (device_property_read_bool(dev, "mmc-hs200-1_2v"))
		host->caps2 |= MMC_CAP2_HS200_1_2V_SDR;
	if (device_property_read_bool(dev, "mmc-hs400-1_8v"))
		host->caps2 |= MMC_CAP2_HS400_1_8V | MMC_CAP2_HS200_1_8V_SDR;
	if (device_property_read_bool(dev, "mmc-hs400-1_2v"))
		host->caps2 |= MMC_CAP2_HS400_1_2V | MMC_CAP2_HS200_1_2V_SDR;
	if (device_property_read_bool(dev, "mmc-hs400-enhanced-strobe"))
		host->caps2 |= MMC_CAP2_HS400_ES;
	if (device_property_read_bool(dev, "no-sdio"))
		host->caps2 |= MMC_CAP2_NO_SDIO;
	if (device_property_read_bool(dev, "no-sd"))
		host->caps2 |= MMC_CAP2_NO_SD;
	if (device_property_read_bool(dev, "no-mmc"))
		host->caps2 |= MMC_CAP2_NO_MMC;
	device_property_read_u32(dev, "fixed-emmc-driver-type", &drv_type);
	device_property_read_u32(dev, "post-power-on-delay-ms",
				 &host->ios.power_delay_ms);
