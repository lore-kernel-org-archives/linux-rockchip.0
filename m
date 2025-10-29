Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5038ACCF9EE
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Oct 2025 14:01:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L0wAHM4cUu98uJg/a2IbD1GvuAl+zRwGv+VT6g5sQZY=; b=MImkd2b8Grpivu
	tyXhOCCMYpQkhgROkqoM5w7ABi79j4mia6z8VvOjcVI9zdqptk8WAkqS+sOhsstQWC+QnbkrO2gBB
	OqoCr5J121sqOeUBUxLX7GHrqu1WIyL4gugV6R8oYvvyZ9fRjmw2BYqxxhngTEmEJjjTbvcisG140
	PqBr2Go0rWm3/27rXUbj24pX6Ss6KEQmIWAv/2nkKN+QZwL0qrzQSjNtC361E9zZtvP8BSk1E79PU
	Mc0xiJOViFqV0mUU4siSlzI4S9PYHce6oQUdDUDY/CCyGrL4j6Zh4+WfsKEJ7NSby/lAKqeyfiqc7
	S9bgs2uKDSce8WBFpFNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE6jM-00000001UMd-1NPR;
	Wed, 29 Oct 2025 14:00:52 +0000
Received: from mail-m49197.qiye.163.com ([45.254.49.197])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE6jI-00000001UJg-0SMT;
	Wed, 29 Oct 2025 14:00:50 +0000
Received: from localhost.localdomain (unknown [58.61.140.134])
	by smtp.qiye.163.com (Hmail) with ESMTP id 27a69f6db;
	Wed, 29 Oct 2025 22:00:37 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: i@chainsx.cn
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: [PATCH v4 2/2] arm64: dts: rockchip: add DTs for 100ASK DShanPi A1
Date: Wed, 29 Oct 2025 22:00:26 +0800
Message-Id: <20251029140026.867458-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <77BB123A1F1E3D11+20251014021623.286121-3-i@chainsx.cn>
References: <77BB123A1F1E3D11+20251014021623.286121-3-i@chainsx.cn>
MIME-Version: 1.0
X-HM-Tid: 0a9a304543c703a2kunm624f917d129bff
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCGkJJVkpIHRhIGUkaSBhOSFYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlOQ1VNSlVKT0tVSkhPWVdZFhoPEhUdFFlBWU9LSFVKS0lCTUtKVUpLS1VLWQ
	Y+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_070048_308717_275B45D2 
X-CRM114-Status: GOOD (  10.77  )
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

Hi,

From the schematic, DT still has some things wrong:
https://dl.100ask.net/Hardware/MPU/RK3576-DshanPi-A1/DshanPi-A1-RK3576-SCH_V1.1.pdf

Do you want to resend the whole patch or I send some patches fixing them?

> +	vcc_1v2_ufs_vccq_s0: regulator-vcc-1v2-ufs-vccq-s0 {
> +	vcc_1v8_ufs_vccq2_s0: regulator-vcc-1v8-ufs-vccq2-s0 {
> +	vcc_3v3_rtc_s5: regulator-vcc-3v3-rtc-s5 {
> +	vcc_3v3_ufs_s0: regulator-vcc-ufs-s0 {

These ufs and rtc regulators do not actually exist.

> +	vcc_5v0_typec0: regulator-vcc-5v0-typec0 {
> +		regulator-name = "vcc_5v0_typec0";

The name on the schematic is vbus5v0_typec.

> +&gmac1 {
> +	clock_in_out = "output";
> +	phy-mode = "rgmii-id";
> +	phy-handle = <&rgmii_phy1>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&eth1m0_miim
> +		     &eth1m0_tx_bus2
> +		     &eth1m0_rx_bus2
> +		     &eth1m0_rgmii_clk
> +		     &eth1m0_rgmii_bus
> +		     &ethm0_clk1_25m_out>;

This should be ethm1_clk0_25m_out.
It seems that the 25m clock is not used.

> +&i2c4 {
> +	status = "okay";
> +
> +	es8388: audio-codec@10 {
> +		compatible = "everest,es8388", "everest,es8328";
> +		reg = <0x10>;

i2cdetect reports that its address is 0x11

> +		clocks = <&cru CLK_SAI1_MCLKOUT_TO_IO>;
> +		AVDD-supply = <&vcca_3v3_s0>;
> +		DVDD-supply = <&vcc_3v3_s0>;
> +		HPVDD-supply = <&vcca_3v3_s0>;
> +		PVDD-supply = <&vcc_3v3_s0>;

These are all from VCC3P3 (VCC3V3_S0).

> +		assigned-clocks = <&cru CLK_SAI1_MCLKOUT_TO_IO>;
> +		assigned-clock-rates = <12288000>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&sai1m0_mclk>;

In fact, this is connected to sai2.
The schematic is quite misleading here:
RK3576 - SAI2_xxx - SAI1_xxx - ES8388

> +		#sound-dai-cells = <0>;
> +	};
> +};

> +&mdio0 {
> +	rgmii_phy0: phy@1 {
> +		compatible = "ethernet-phy-ieee802.3-c22";
> +		reg = <0x1>;

The phy address configured in the schematic is 0,
which is also the case in practice.

> +		clocks = <&cru REFCLKO25M_GMAC0_OUT>;

This 25m clock is not used.

> +&mdio1 {
> +	rgmii_phy1: phy@1 {
> +		compatible = "ethernet-phy-ieee802.3-c22";
> +		reg = <0x1>;

The phy address is 0.

> +		clocks = <&cru REFCLKO25M_GMAC1_OUT>;

This 25m clock is not used.

> +	headphone {
> +		hp_det: hp-det {
> +			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_up>;

According to the schematic, this should be GPIO0_A2?

> +		};
> +	};

> +&sdhci {
> +	bus-width = <8>;
> +	full-pwr-cycle-in-suspend;
> +	max-frequency = <200000000>;

max-frequency is already defined in dtsi

> +&sdmmc {
> +	bus-width = <4>;
> +	cap-mmc-highspeed;
> +	cap-sd-highspeed;
> +	disable-wp;
> +	max-frequency = <200000000>;

max-frequency is already defined in dtsi

> +	sd-uhs-sdr104;
> +	vmmc-supply = <&vcc_3v3_s3>;

This comes from VCC3P3 (VCC3V3_S0).

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
