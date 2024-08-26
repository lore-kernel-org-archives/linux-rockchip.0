Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD8F8C5472E
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 08:02:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Cc:From:References:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vRlfQ1kWZjSLJxXzWyr+50SiNoYXVJtCk6LFHwemUb4=; b=NRDo6m0AyMw//P
	i6CTJ39/lhnuQkg72F9fV/zF6bBYACsNCO6fMvjh3qZQoY00dboPXjDI5u+2oE1ePq21F/HMCt9pp
	RmeiaVsRhQp0uoF4rI0tyyDUBlE/SV4jf5NkPA0EVFC2ObFoqBdObo/lasFA1XD9+ZoPlxJ+8EkiC
	0887G3yeSokS9wxoJiyqH4W6Tm/a+cUk04/jwLnZ0L18dWp2O6v50xFf7Z0GhlEbXHIB51qMDu5jF
	hu1KJLY0Ez0NzMhzMUo2HRddN2o4AcWalKXh29MjucjwBsn7xp2WJyB4G3UVnUMzq2TkgscC4Y/Nz
	CjT2guI5firQOJCf/RvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siUgU-00000006NoL-2OBx;
	Mon, 26 Aug 2024 08:02:42 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siUfh-00000006Ncj-0KGM;
	Mon, 26 Aug 2024 08:01:54 +0000
Received: from [192.168.0.160] (unknown [14.153.79.170])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 2B0C4789E4;
	Mon, 26 Aug 2024 16:01:50 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 2B0C4789E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1724659310;
	bh=vEQbp8JhlcjDWWseCz9sjPI3YL2zLcYOUsfYIw62S8M=;
	h=Date:Subject:To:References:From:Cc:In-Reply-To:From;
	b=iGxqgMrnw4ByjCHyOS5757fQe+SlPABwwEgFFPOSpcpikJgfMIa+KIqKgMvUS+27J
	 4PgZ+m4qFm57s7lc5X0rw2NppRLvo1agiI/7T074Zv94Ikl2dhbk3VVU1N7SpYxjWP
	 eYqIpjrRnx+DRc/zvzYqf+24BZ2dApnMmqSU2fZI=
Message-ID: <6edb8443-6bb4-4174-8fe0-906208757cef@classfun.cn>
Date: Mon, 26 Aug 2024 16:03:01 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: add dts for LCKFB Taishan Pi
 RK3566
To: Chukun Pan <amadeus@jmu.edu.cn>
References: <20240826044530.726458-4-bigfoot@classfun.cn>
 <20240826070109.55659-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Junhao Xie <bigfoot@classfun.cn>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Chukun Pan <amadeus@jmu.edu.cn>,
 FUKAUMI Naoki <naoki@radxa.com>, Dragan Simic <dsimic@manjaro.org>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Junhao Xie <bigfoot@classfun.cn>
In-Reply-To: <20240826070109.55659-1-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_010153_433614_727DC703 
X-CRM114-Status: GOOD (  17.17  )
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

On 2024/8/26 15:01, Chukun Pan wrote:
> Hi Junhao,
> 
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/rockchip/rk3566-lckfb-tspi.dts
>> ...
>> +	aliases {
>> +		mmc0 = &sdmmc0;
>> +		mmc1 = &sdhci;
>> +		mmc2 = &sdmmc1;
>> +		wifi = &brcmf;
>> +		bluetooth = &bluetooth;
>> +	};
> 
> WiFi and Bluetooth do not need aliases.
> 
>> ...
>> +	vcc5v0_host: vcc5v0-host-regulator {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "vcc5v0_host";
>> +		regulator-boot-on;
>> +		regulator-always-on;
> 
> This regulator does not need always-on and boot-on.
> 

I will remove them.

> 
>> ...
>> +	vccio_flash: vccio-flash {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "vccio_flash";
>> +		regulator-min-microvolt = <1800000>;
>> +		regulator-max-microvolt = <1800000>;
>> +		vin-supply = <&vcc_1v8>;
>> +	};
> 
> Generally speaking, vccio_flash is not a DCDC regulator,
> it is directly connected to vcc_1v8. Maybe you need to
> confirm the schematics.
> 

Yes, vccio_flash and vccio_wl are not DCDC regulator, they are connected to vcc_1v8 and vcc_3v3 through voltage selection resistors.

> 
>> +
>> +	vccio_wl: vccio-wl {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "vccio_wl";
>> +		regulator-min-microvolt = <3300000>;
>> +		regulator-max-microvolt = <3300000>;
>> +		vin-supply = <&vcc_3v3>;
>> +	};
> 
> Same as above, usually like this:
> VCC_1V8 or VCCA1V8_PMU - 0R - VCCIO_WL
> `sd-uhs-sdr104` requires 1.8v io voltage,
> you need to confirm the schematics.
> 

It is actually connected to vcc_1v8, I will fix it.

> 
>> ...
>> +&pinctrl {
>> ...
>> pmic {
>> +	pmic {
>> +		pmic_int: pmic_int {
> 
> Only the pmic_int is needed.
> Also `pmic_int: pmic-int {`
> 
>> ...
>> +&sdhci {
>> +	bus-width = <8>;
>> +	max-frequency = <200000000>;
>> +	non-removable;
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd &emmc_datastrobe &emmc_rstnout>;
>> +	status = "okay";
>> +	vmmc-supply = <&vccio_flash>;
>> +	vqmmc-supply = <&vccio_flash>;
>> +};
> 
> The vmmc requires 3.3V supply (on rk356x).
> 

Yes, the vmmc of eMMC is actually connected to vcc_3v3, I will fix it.

> 
>> ...
>> +&sdmmc1 {
>> ...
>> +	sd-uhs-sdr104;
>> +	vmmc-supply = <&vccio_wl>;
>> +	vqmmc-supply = <&vccio_wl>;
> 
> Same as above.
> 
>> ...
> +&uart1 {
>> ...
> +		vbat-supply = <&vcc3v3_sys>;
> +		vddio-supply = <&vccio_wl>;
> 
> Here corresponds to sdmmc1.
> 
> Thanks,
> Chukun
> 

Thanks for your review, I will fix all problems and post patch v2!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
