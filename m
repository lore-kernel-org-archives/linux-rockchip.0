Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0CF4CF9C5B
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Sep 2024 13:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UhCXkCiDYNLYaL/Daqs2CWIDaFc3obXe1MsfaW4uR7Q=; b=Cin/coIaB6qyVf
	KcFC+nADZh3SwhQfFsUOtLVFjRsn819lkd1YzXkc/8TQcoHAc6BbUJaXfPvkR4sE1hDYWYh6Cfogs
	T88qON9DYBrUK8+S4t96mA8oePMgYnG4gY8ggyD7L7DeHCqtmDDWTDM1EPAzmxQ/CL/zIMnPFhqgq
	+XJ2lgpz9Mf4UtC/iPvda8XukCgyc7rcW2WKVIaln+XA9WqT5vIUfpRd82dkdAj6T/yA83ZvrAne/
	XXw0e+vCR3XAL+ROIsyeEayp7/PKW82uNiRVRmlDXudT45l5E638mSIY1Y4f9YRr9hri/sr0gEekk
	V7m5R93wJPzGmtjQzPuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ss0AN-0000000DkUM-1TXG;
	Sat, 21 Sep 2024 13:28:51 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ss09E-0000000DkQ7-28LA;
	Sat, 21 Sep 2024 13:27:42 +0000
Received: from [192.168.0.160] (unknown [120.40.111.43])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 331577890F;
	Sat, 21 Sep 2024 21:27:35 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 331577890F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1726925256;
	bh=gXttLbForN4sVPU1L8p0lWk2b2Cu1E5xBRiFWAjrSCw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=qCNPPIGkqjsqQ8WpcTW6usy/avVL9dLJdtKu5geOUfRC7n9rpqXcB0apjOc/po0R7
	 FLzzEHJVOEflnHJTh4qektJP45K9fYv9N++FSZxiyyrirxToLaIzwQeArg6BrEc/jV
	 il1Ad1aO/lc0S2Y7vyZIckzhJfTP+dl5STCCU2mk=
Message-ID: <ea7da1f8-5a0e-45ea-a1bb-977a19f8b8b7@classfun.cn>
Date: Sat, 21 Sep 2024 21:27:35 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/3] arm64: dts: rockchip: add dts for Ariaboard
 Photonicat RK3568
To: Jonas Karlman <jonas@kwiboo.se>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Chukun Pan <amadeus@jmu.edu.cn>, FUKAUMI Naoki <naoki@radxa.com>,
 Dragan Simic <dsimic@manjaro.org>, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Junhao Xie <bigfoot@classfun.cn>
References: <20240914145549.879936-1-bigfoot@classfun.cn>
 <20240914145549.879936-4-bigfoot@classfun.cn>
 <8c86229a-8cec-4d65-8194-ee8cdc6931dd@kwiboo.se>
Content-Language: en-US
From: Junhao Xie <bigfoot@classfun.cn>
In-Reply-To: <8c86229a-8cec-4d65-8194-ee8cdc6931dd@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240921_062741_019065_469B5474 
X-CRM114-Status: GOOD (  16.08  )
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

On 2024/9/19 22:52, Jonas Karlman wrote:
> Hi Junhao,
>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-orangepi-5-plus.dtb
>> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-photonicat.dtb
> 
> This should probably be added where the rest of rk3568 dtb is located,
> not with the rk3588 ones.

Thanks for your reminder, I made a mistake in the order when renaming dts, I will fix it

>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-quartzpro64.dtb
>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5-itx.dtb
>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b.dtb
[...]
>> +
>> +&gmac0 {
>> +	status = "disabled";
>> +	/* Motorcomm YT8521SC LAN port (require SGMII) */
> 
> nit: Please be consistent where comments is added, for recgulators above
> the comments is above the node, suggest you move the comment above the
> "&gmac0 {" line, and same for similar comments.

I will edit it. This looks better:

/* Motorcomm YT8521SC LAN port (require SGMII) */
&gmac0 {
	status = "disabled";
};

>> +};
>> +
>> +&gmac1 {
>> +	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
>> +	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>;
>> +	assigned-clock-rates = <0>, <125000000>;
>> +	clock_in_out = "output";
>> +	phy-handle = <&rgmii_phy1>;
>> +	phy-mode = "rgmii-id";
>> +	phy-supply = <&vcc_3v3>;
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&gmac1m1_miim
>> +		     &gmac1m1_tx_bus2
>> +		     &gmac1m1_rx_bus2
>> +		     &gmac1m1_rgmii_clk
>> +		     &gmac1m1_rgmii_bus>;
>> +	snps,reset-gpio = <&gpio4 RK_PC0 GPIO_ACTIVE_LOW>;
>> +	snps,reset-active-low;
>> +	snps,reset-delays-us = <0 20000 100000>;
> 
> The snps,reset props is deprecated use resets props in phy node instad.

I edited it and it works fine, is the following correct to write?

/* Motorcomm YT8521SC WAN port */
&gmac1 {
	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>;
	assigned-clock-rates = <0>, <125000000>;
	clock_in_out = "output";
	phy-handle = <&rgmii_phy1>;
	phy-mode = "rgmii-id";
	phy-supply = <&vcc_3v3>;
	pinctrl-names = "default";
	pinctrl-0 = <&gmac1m1_miim
		     &gmac1m1_tx_bus2
		     &gmac1m1_rx_bus2
		     &gmac1m1_rgmii_clk
		     &gmac1m1_rgmii_bus>;
	tx_delay = <0>;
	rx_delay = <0>;
	status = "okay";
};

&mdio1 {
	rgmii_phy1: ethernet-phy@0 {
		compatible = "ethernet-phy-ieee802.3-c22";
		reg = <0x0>;
		pinctrl-names = "default";
		pinctrl-0 = <&eth1_phy_rst>;
		reset-assert-us = <20000>;
		reset-deassert-us = <100000>;
		reset-gpios = <&gpio4 RK_PC0 GPIO_ACTIVE_LOW>;
		rx-internal-delay-ps = <1500>;
		tx-internal-delay-ps = <1500>;
	};
};

&pinctrl {
	[...]
	ethernet {
		eth1_phy_rst: eth1_phy_rst {
			rockchip,pins = <4 RK_PC0 RK_FUNC_GPIO &pcfg_pull_none>;
		};
	};
	[...]
};

> 
>> +	status = "okay";
>> +	/* Motorcomm YT8521SC WAN port */
>> +};
[...]
>> +&sdhci {
>> +	bus-width = <8>;
>> +	max-frequency = <200000000>;
> 
> Can be dropped, already in base dtsi.

max-frequency is not in sdhci node of rk356x.dtsi and rk3568.dtsi.
I simply removed the max-frequency and it worked fine.
Can it really be removed?

>> +	mmc-hs200-1_8v;
>> +	non-removable;
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd>;
>> +	vmmc-supply = <&vcc_3v3>;
>> +	vqmmc-supply = <&vcc_1v8>;
>> +	status = "okay";
>> +	/* eMMC */
>> +};

Thanks for your review, I will fix all problems in next version!

Best regards,
Junhao


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
