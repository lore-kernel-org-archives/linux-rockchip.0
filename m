From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH V3, 1/1] arm64: dts: rockchip: add ROCK Pi S DTS support
Date: Mon, 06 Jan 2020 15:21:12 +0100
Message-ID: <14039094.HKn2KS7fIZ@diego>
References: <20191230145008.5899-1-akash@openedev.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20191230145008.5899-1-akash@openedev.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Akash Gajjar <akash@openedev.com>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, tom@radxa.com, Robin Murphy <robin.murphy@arm.com>, Douglas Anderson <dianders@chromium.org>, Kever Yang <kever.yang@rock-chips.com>, Markus Reichl <m.reichl@fivetechno.de>, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>, Nick Xie <nick@khadas.com>, Andy Yan <andy.yan@rock-chips.com>, jagan@openedev.com, Matthias Kaehlcke <mka@chromium.org>, Vivek Unune <npcomplete13@gmail.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Akash,

Am Montag, 30. Dezember 2019, 15:49:32 CET schrieb Akash Gajjar:
> ROCK Pi S is RK3308 based SBC from radxa.com. ROCK Pi S has a,
> - 256MB/512MB DDR3 RAM
> - SD, NAND flash (optional on board 1/2/4/8Gb)
> - 100MB ethernet, PoE (optional)
> - Onboard 802.11 b/g/n wifi + Bluetooth 4.0 Module
> - USB2.0 Type-A HOST x1
> - USB3.0 Type-C OTG x1
> - 26-pin expansion header
> - USB Type-C DC 5V Power Supply
> 
> This patch enables
> - Console
> - NAND Flash
> - SD Card
> 
> Signed-off-by: Akash Gajjar <akash@openedev.com>

> +&emmc {
> +	bus-width = <4>;
> +	cap-mmc-highspeed;
> +	mmc-hs200-1_8v;
> +	supports-sd;

supports-sd is not a property

> +	disable-wp;
> +	non-removable;
> +	num-slots = <1>;

nums-slots was removed very long ago

> +	vin-supply = <&vcc_io>;

please provide actual vmmc and vqmmc supplies
vin is not a valid supply for emmcs

> +	status = "okay";
> +};
> +
> +&i2c1 {
> +	status = "okay";
> +};
> +
> +&sdmmc {
> +	bus-width = <4>;
> +	cap-mmc-highspeed;
> +	cap-sd-highspeed;
> +	max-frequeency = <150000000>;
> +	supports-sd;

supports-sd is not a valid property

> +	disable-wp;
> +	num-slots = <1>;

again, obsolete num-slots

> +	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_det &sdmmc_bus4>;
> +	card-detect-delay = <800>;
> +	status = "okay";
> +};
> +
> +&spi2 {
> +	status = "okay";
> +	max-freq = <10000000>;
> +};
> +
> +&pinctrl {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&rtc_32k>;
> +
> +	leds {
> +		green_led_gio: green-led-gpio {
> +			rockchip,pins = <0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		heartbeat_led_gpio: heartbeat-led-gpio {
> +			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	usb {
> +		otg_vbus_drv: otg-vbus-drv {
> +			rockchip,pins = <0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	sdio-pwrseq {
> +		wifi_enable_h: wifi-enable-h {
> +			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		wifi_host_wake: wifi-host-wake {
> +			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_down>;
> +		};
> +	};
> +};
> +
> +&pwm0 {
> +	status = "okay";
> +	pinctrl-0 = <&pwm0_pin_pull_down>;
> +};
> +
> +&saradc {
> +	vref-supply = <&vcc_1v8>;
> +	status = "okay";
> +};
> +
> +&sdio {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	bus-width = <4>;
> +	max-frequency = <1000000>;
> +	cap-sd-highspeed;
> +	cap-sdio-irq;
> +	supports-sdio;

not a valid property

> +	keep-power-in-suspend;
> +	mmc-pwrseq = <&sdio_pwrseq>;
> +	non-removable;
> +	sd-uhs-sdr104;
> +	status = "okay";
> +};

Heiko
