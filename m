Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C255FCD4848
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Sep 2024 03:40:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q6Xt3C5EtUOZ5IBvXyoYbbyonSjeMhxCwCzSodpE7Gk=; b=aqitBASvaJfVAf
	E0RGP2giWGM8YMoq7ZKKhuHlJDH1DvhDZKs5n8BDlwBJVKghyc2/4+8iylSopss/wT8cLdvgtp6LQ
	nIR5thH+JHJGsJTHW82kN2Ny86iIUeHoH01mFx8gDr0H3uONktaMU9J+xyVtSKpcIPvSG1TNJyepH
	BG1qSmMkvVE7mHEadD8y1MCAiidc9eINGI3cpGLW78h2f+7lh45FjZyWC2GYRtlTR0LZ2mUTVDtHC
	EfvKwuM2ZeFrNxRp3XZFHXcGk5CMHwVLsvgrpsLjwfvOO8Yzw5DKdExNDtfZHaDWK+PzPjgR1U740
	2gLKradUAB8PeuJ76PFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sm3MW-00000006qKL-1syN;
	Thu, 05 Sep 2024 03:40:48 +0000
Received: from mail-m25499.xmail.ntesmail.com ([103.129.254.99])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sm3MR-00000006qJG-2WRv;
	Thu, 05 Sep 2024 03:40:46 +0000
Received: from amadeus-Vostro-3710.lan (unknown [119.122.212.181])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 1A1F47E018A;
	Thu,  5 Sep 2024 11:40:12 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: bigfoot@classfun.cn
Cc: amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dsimic@manjaro.org,
	heiko@sntech.de,
	jonas@kwiboo.se,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: add dts for Ariaboard Photonicat RK3568
Date: Thu,  5 Sep 2024 11:40:09 +0800
Message-Id: <20240905034009.28124-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240904111456.87089-4-bigfoot@classfun.cn>
References: <20240904111456.87089-4-bigfoot@classfun.cn>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDSk0ZVkseH04dTRpISUkdTFYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKSVVKQ0pZV1kWGg8SFR0UWUFZT0tIVUpLSEpMTElVSktLVU
	pCS0tZBg++
X-HM-Tid: 0a91c044aed003a2kunm1a1f47e018a
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6KxQ6Myo6PjIzOEI4AhkqUSwY
	IQxPCzNVSlVKTElOTktMTUpJQ0tDVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUpK
	QlVKSUlVSUpJVUpDSllXWQgBWUFPTExJNwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_204043_884983_3B6C958A 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Junhao,

> ...
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-ariaboard-photonicat.dts

This should be 'rk3568-photonicat.dts',
e.g. "Radxa ROCK 3A" -> rk3568-rock-3a.dts

> ...
> +	model = "Ariaboard Photonicat RK3568";
> +	compatible = "ariaboard,photonicat", "rockchip,rk3568";

The official model name does not include 'RK3568'.

> ...
> +	firmware {
> +		optee: optee {
> +			compatible = "linaro,optee-tz";
> +			method = "smc";
> +		};
> +	};
> +
> ...
> +	reserved-memory {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		ramoops: ramoops@110000 {
> +			compatible = "ramoops";
> +			reg = <0 0x110000 0 0xf0000>;
> +			console-size = <0x80000>;
> +			ftrace-size = <0x00000>;
> +			pmsg-size = <0x50000>;
> +			record-size = <0x20000>;
> +		};
> +	};

Maybe these can be moved to rk356x.dtsi?

> ...
> +	vcca1v8: regulator-1v8-vcca {

schematics: VCCA_1V8

> ...
+	vcc3v3_pcie: regulator-3v3-vcc-pcie {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pcie_enable_h>;

schematics: pcie_pwren_h
vcc_syson -> vcc3v3_pi6c
vcc_syson -> vcc3v3_pcie

> +		regulator-always-on;
> +		regulator-boot-on;

No need.

> ...
> +	vcc5v0_sys: regulator-5v0-vcc-sys {

There is no vcc5v0_sys, but vcc_syson.

vcc_syson (5v) -> vcc3v3_sys
vcc_sysin (5v) - (mcu) -> vcc_syson
vccin_5v -> vcc_sysin

> ...
> +	vcc5v0_usb_host: regulator-5v0-vcc-usb-host {

schematics: VCC5V0_USB30_OTG0 and usb_host_pwren_h
It's a little weird, but that's what they're calling it.
Also: VCCIN_5V -> VCC5V0_USB30_OTG0

> ...
> +	vcc5v0_usb_modem: regulator-5v0-vcc-usb-modem {

Are you sure this regulator is 5v?

> ...
> +	vdda0v9: regulator-0v9-vdda {

schematics: VDDA_0V9

> +	wifi_pwrseq: wifi-pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wifi_enable_h>;

schematics: wifi_reg_on_h
Also you need to enable the clk:

		clocks = <&pmucru CLK_RTC_32K>;
		clock-names = "ext_clock";
		pinctrl-names = "default";
		pinctrl-0 = <&wifi_reg_on_h &clk32k_out1>;

> +		post-power-on-delay-ms = <200>;
> +		reset-gpios = <&gpio2 RK_PB1 GPIO_ACTIVE_LOW>;
> +	};

> ...
> +&pcie30phy {
> +	phy-supply = <&vcc3v3_pcie>;

phy-supply = <&vcc3v3_pi6c>;

> ...
> +&pcie3x2 {
> +	max-link-speed = <1>;
> +	num-lanes = <1>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie30x2m1_pins>;

These are actually pcie30x1m0_pins.

> ...
> +&pmugrf {
> +	reboot-mode {

Maybe these can be moved to rk356x.dtsi?

> ...
> +&sdhci {

Missing mmc-hs200-1_8v;

> ...
> +&sdmmc0 {
> +	bus-width = <4>;
> +	cap-mmc-highspeed;

Why does sdcard need cap-mmc-highspeed?

> +	max-frequency = <150000000>;
> +	sd-uhs-sdr104;

The sdcard does not have 1.8v io voltage,
so this is wrong, please add no-1-8-v;

> +&sdmmc1 {
> +	bus-width = <4>;
> +	cap-sd-highspeed;
> +	cap-sdio-irq;
> +	disable-wp;

sdio wifi does not need disable-wp.

> +	qca_wifi: qca-wifi@1 {
> +		compatible = "qcom,ath10k";

ath10k does not need compatible.

> ...
> +&uart1 {
> ...
> +		clocks = <&pmucru CLK_RTC_32K>;
> +		enable-gpios = <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&bt_enable_h>;

schematics: bt_reg_on_h
Missing clock-names = "lpo";

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
