From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add on-board WiFi/BT support for
 Rock960 boards
Date: Fri, 15 Feb 2019 10:39:06 +0100
Message-ID: <1797728.tnt5FPHN1h@diego>
References: <20190215045648.26380-1-manivannan.sadhasivam@linaro.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20190215045648.26380-1-manivannan.sadhasivam@linaro.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: tom@vamrs.com, mani@kernel.org, linux-kernel@vger.kernel.org, dev@vamrs.com, linux-rockchip@lists.infradead.org, pbrobinson@gmail.com, ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 15. Februar 2019, 05:56:48 CET schrieb Manivannan Sadhasivam:
> Add on-board WiFi/BT support for Rock960 boards such as Rock960 based
> on AP6356S and Ficus based on AP6354 wireless modules.
> 
> Firmwares for the respective boards are available here:
> 
> http://people.linaro.org/~manivannan.sadhasivam/rock960_wifi/
> http://people.linaro.org/~manivannan.sadhasivam/ficus_wifi/
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>


> +&sdio0 {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	clock-frequency = <50000000>;
> +	bus-width = <4>;
> +	cap-sdio-irq;
> +	cap-sd-highspeed;
> +	no-emmc;
> +	keep-power-in-suspend;
> +	mmc-pwrseq = <&sdio_pwrseq>;
> +	non-removable;
> +	num-slots = <1>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
> +	sd-uhs-sdr104;

I've dropped the no-emmc and num-slots properties and applied
the result for 5.1

Thanks
Heiko
