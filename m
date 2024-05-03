Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE4AAC4345F
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 May 2024 21:46:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZLdQMzSZgJ1XrfIJ+H6b42wLPswQzFlqjzSgv2f7rOw=; b=JPoOzXPqqG4lMf
	kCw2qwO6lChECIoKhUXA8x2vyqkduRTyqTh5y7L8z3CDNuiXAouek2rpT/nYy/vAz5TTpkOJLGwfD
	QEUg3860f1kAfhoFB43WgCpS1y+UC0VtavlgT7mOcCq220j9B2YCgzZhpryvFY4X4MODgMpJ4ZR5W
	xQRt3WCetHwWgM42eNw6rsYH40uC3Oosf+H4kzTigJsYT2nytk/uYKxp1p/YheijHLZHXMW99Ceps
	YiEq3SLHfb3UP/8UY2oTBlT+1pylc8ljYINV+zuqF+XyetRxGPHyE5WP94JiMsnJ79393mvHsMptd
	k6KAJtlBld0GGSa7M+6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s30ji-00000000UpM-256H;
	Fri, 03 May 2024 21:46:34 +0000
Received: from smtp.forwardemail.net ([167.172.40.54])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s30je-00000000Unh-3lHF
	for linux-rockchip@lists.infradead.org;
	Fri, 03 May 2024 21:46:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1714772772;
 bh=yJluxrbqMAEdPs4Fo4cA70yAXpw93jOBKBZ/ta4Y4TQ=;
 b=ai5UqITRcaaBjabCnd1fzYfTiHFXQkY6itWKCk3KXZzdR51JrmNnb+8mcHfInc7J3tk3zjocR
 6WG8ELeCdTHEzBu1iqg4dhIOz5gwhAKTYTsMf+hif3E053p0PRrn50BDK+oIaUOJf0SjXFHGTUj
 VSuEviCRVwErU5SBjCpZDbIBp6tX9IC9FXsmVW9ue2jvIMYg/3r8J+AVE33S1sdu71FX29pZefD
 AMoxC+jaVBsNMtbow5py60GZyHxe/Bs1Pd13KReKOHbH1zcSBuc7WmMYBwEqjQX5bNB/JzVSxCK
 u3LMoIdEB8YZ2NQsZIxPIz/g2g1Ztx93OAv9p+/Z79Ow==
Message-ID: <d613aa4d-8c87-4735-8209-00510d5097fb@kwiboo.se>
Date: Fri, 3 May 2024 23:46:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add Radxa ROCK 3C
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20240428123618.72170-1-amadeus@jmu.edu.cn>
 <20240428123618.72170-3-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20240428123618.72170-3-amadeus@jmu.edu.cn>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 66355b2215cb5945d1c987e2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_144631_286594_FC9EBB9E 
X-CRM114-Status: GOOD (  11.11  )
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

Hi Chukun,

On 2024-04-28 14:36, Chukun Pan wrote:
> The Radxa ROCK 3C is a development board with the
> Rockchip RK3566 SoC. It has the following features:
> 
> - 1/2/4GB LPDDR4
> - 1x HDMI Type A
> - 1x PCIE 2.0 slot
> - 1x FAN connector
> - 3.5mm jack with mic
> - 1GbE RTL8211F Ethernet
> - 1x USB 3.0, 3x USB 2.0
> - 40-pin expansion header
> - MicroSD card/eMMC socket
> - 16MB SPI NOR (gd25lq128d)
> - AP6256 or AIC8800 WiFi/BT
> 
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3566-rock-3c.dts      | 750 ++++++++++++++++++
>  2 files changed, 751 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts
> 

[snip]

> +
> +&i2c0 {
> +	status = "okay";
> +
> +	vdd_cpu: regulator@1c {
> +		compatible = "tcs,tcs4525";
> +		reg = <0x1c>;
> +		fcs,suspend-voltage-selector = <1>;
> +		regulator-name = "vdd_cpu";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <800000>;
> +		regulator-max-microvolt = <1150000>;
> +		regulator-ramp-delay = <2300>;
> +		vin-supply = <&vcc5v0_sys>;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +
> +	rk809: pmic@20 {
> +		compatible = "rockchip,rk809";
> +		reg = <0x20>;

[snip]

> +		codec {
> +			mic-in-differential;

This should be rockchip,mic-in-differential or removed.

> +		};
> +	};
> +
> +	eeprom: eeprom@50 {
> +		compatible = "belling,bl24c16a", "atmel,24c16";
> +		reg = <0x50>;
> +		pagesize = <16>;
> +	};
> +};
> +

[snip]

> +
> +&sdmmc0 {
> +	bus-width = <4>;
> +	cap-sd-highspeed;
> +	disable-wp;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
> +	sd-uhs-sdr50;

Do you have any references to issues related to why sd-uhs-sdr104 is not
used here?

My testing shows that io-domain is getting notified and correctly
configured during boot. And card seem to be working correctly.

[    2.162780] mmc_host mmc1: Bus speed (slot 0) = 375000Hz (slot req 400000Hz, actual 375000HZ div = 0)

[    2.229408] rockchip-iodomain fdc20000.syscon:io-domains: Setting to 3300000
[    2.230042] rockchip-iodomain fdc20000.syscon:io-domains: Setting to 3300000 done
[    2.231493] rockchip-iodomain fdc20000.syscon:io-domains: Setting to 1800000
[    2.232121] rockchip-iodomain fdc20000.syscon:io-domains: Setting to 1800000 done
[    2.257294] mmc_host mmc1: Bus speed (slot 0) = 150000000Hz (slot req 150000000Hz, actual 150000000HZ div = 0)
[    2.269482] dwmmc_rockchip fe2b0000.mmc: Successfully tuned phase to 254
[    2.270098] mmc1: new ultra high speed SDR104 SDXC card at address aaaa
[    2.271533] mmcblk1: mmc1:aaaa SD64G 59.5 GiB
[    2.277357]  mmcblk1: p1

Also when the card is later removed/re-inserted:

[   80.181598] mmc1: card aaaa removed
[   83.836785] rockchip-iodomain fdc20000.syscon:io-domains: Setting to 3300000
[   83.837611] rockchip-iodomain fdc20000.syscon:io-domains: Setting to 3300000 done
[   83.839263] rockchip-iodomain fdc20000.syscon:io-domains: Setting to 3300000
[   83.839952] rockchip-iodomain fdc20000.syscon:io-domains: Setting to 3300000 done
[   83.855358] mmc_host mmc1: Bus speed (slot 0) = 375000Hz (slot req 400000Hz, actual 375000HZ div = 0)
[   84.153827] rockchip-iodomain fdc20000.syscon:io-domains: Setting to 3300000
[   84.154524] rockchip-iodomain fdc20000.syscon:io-domains: Setting to 3300000 done
[   84.156149] rockchip-iodomain fdc20000.syscon:io-domains: Setting to 1800000
[   84.156838] rockchip-iodomain fdc20000.syscon:io-domains: Setting to 1800000 done
[   84.183932] mmc_host mmc1: Bus speed (slot 0) = 150000000Hz (slot req 150000000Hz, actual 150000000HZ div = 0)
[   84.202888] dwmmc_rockchip fe2b0000.mmc: Successfully tuned phase to 257
[   84.203574] mmc1: new ultra high speed SDR104 SDXC card at address aaaa
[   84.205537] mmcblk1: mmc1:aaaa SD64G 59.5 GiB
[   84.211434]  mmcblk1: p1

sd-uhs-ddr50 should also work based on my testing.

Regards,
Jonas

> +	vmmc-supply = <&vcc3v3_sys>;
> +	vqmmc-supply = <&vccio_sd>;
> +	status = "okay";
> +};
> +

[snip]

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
