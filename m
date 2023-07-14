Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50806EB64DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jul 2023 16:25:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:From:References:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jfq0n1kHUE/s416KANK6D73X65F3laM+5vK3aJZ/bcA=; b=zfknKQ0xpOvO6O
	WeJPz2lfxsxMpCvnaMOsHqmtE1D3pkREWR2k+y8zz4C6stXu+SPAvDoc7xM+rXHgX0aDTz/E6De2O
	CCy7YX7uPwdmXdnpKLl9qswzgUQPifKolw2P79m3UDqNyyu9BbA9VZr260eznmbp54WChy0mPDOb0
	QKLdM3JFE8QUTakjYvYifPFnrquFwZnNUP4pt+pBzgVwY5iyMxs1cAT5OlWV/IDI2Hc1NgBbPz6iT
	QFBIca8SLDdpkblZzIEd7bqMYJkjWmskNj2ZkAT/ZVB+2pyXyWx5o2F6z/DywRVd6FvYNhTtvCFF0
	FtRhNg3MKSNQy7lTT8Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qKLbA-006dms-2F;
	Fri, 14 Jul 2023 16:24:52 +0000
Received: from s.wrqvwxzv.outbound-mail.sendgrid.net ([149.72.154.232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qKLb6-006dm8-2n
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Jul 2023 16:24:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=mime-version:subject:references:from:in-reply-to:to:cc:content-type:
	content-transfer-encoding:cc:content-type:from:subject:to;
	s=s1; bh=Hb5ChZ4kEazTpAqrO+QXguApNUoinj7R+L8w4Fk+mko=;
	b=INaPuhFlNru4NLyZ0lF+xPpswpzxQpKon81kUqXtIpb+i9Hes1LTmKi/ylhCHzU+azYJ
	os0s8TwYaOxVjO3t2HyqYIGufU4BS2cDG8HKiTn1liHdF2N8+dg2/NJw0SpY3DUj6Wlpge
	0MnzGDGdFCGJFg5tyc2NsAxp+5zReF/thNsq4LUacMr0s+5PTUz8T1KR9yxlajdJ69mU1H
	dvxB4uT7gnEU6dyp+RXAD/AY2zlqAnswSx+IZt0rWGiksq+NEfa1leR+o71bgkw55YxBLW
	sy9ghIZafa3Rn12yfx/Bb+O9mcAKJPaKBMBqCrtwAq9KJH+zMN+37TbeagvCiVlg==
Received: by filterdrecv-65f68489c8-lsfh9 with SMTP id filterdrecv-65f68489c8-lsfh9-1-64B176CB-35
        2023-07-14 16:24:43.61623401 +0000 UTC m=+5590124.448335550
Received: from [192.168.1.50] (unknown)
	by geopod-ismtpd-6 (SG) with ESMTP
	id _IeqcTtIRWW3h0cEdtyhQg
	Fri, 14 Jul 2023 16:24:43.293 +0000 (UTC)
Message-ID: <3e4a649c-a8fe-ff84-3beb-c56be1afff9b@kwiboo.se>
Date: Fri, 14 Jul 2023 16:24:43 +0000 (UTC)
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] arm64: dts: rockchip: rock-3a: make ethernet work
Content-Language: en-US
References: <20230714063027.74489-1-naoki@radxa.com>
 <25008843.6Emhk5qWAg@phil>
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <25008843.6Emhk5qWAg@phil>
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0hxfOHhG583jNTdYRo?=
 =?us-ascii?Q?T5ulYwXLWZT84Nlo87GhWr3uPzZyI9TjV4FVPCa?=
 =?us-ascii?Q?83=2F103AjKbencF8jUQWEW1e3ZuRRlNKr+8AuQ8k?=
 =?us-ascii?Q?yQZs0GZ7Oq9YtUOartk1NWo7+beRfzAkwF4hyqx?=
 =?us-ascii?Q?nk7fVO9eZCGmOsBQv3FjF+IGXs3BzmwcKgwVgL9?=
 =?us-ascii?Q?hY3EgNgnd7cnt17QY3A0Q=3D=3D?=
To: Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>,
	michael.riesch@wolfvision.net, Anand Moon <linux.amoon@gmail.com>
Cc: linux-rockchip@lists.infradead.org
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230714_092449_594888_3CAA62FD 
X-CRM114-Status: GOOD (  23.73  )
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

On 2023-07-14 17:46, Heiko Stuebner wrote:
> Am Freitag, 14. Juli 2023, 08:30:27 CEST schrieb FUKAUMI Naoki:
>> ethernet on Radxa ROCK 3A is not working by following error:
>>
>>  rk_gmac-dwmac fe010000.ethernet eth0: no phy at addr -1
>>  rk_gmac-dwmac fe010000.ethernet eth0: stmmac_open: Cannot attach to PHY (error: -19)
>>
>> to fix this problem, align related properties with vendor kernel
>>  https://github.com/radxa/kernel/blob/linux-5.10-gen-rkr4.1/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>>
>> Fixes: 22a442e6586c ("arm64: dts: rockchip: add basic dts for the radxa rock3 model a")
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> 
> There also is a second patch in the mix adding the gmac1_clkin
> ef9f4b4a5020 ("arm64: dts: rockchip: Add support of external clock to ethernet node on Rock 3A SBC")
> 
> And this patch does the exact opposite as the original nodes.
> Can someone please mention board versions? Or did the gmac1 never
> really work in the first place?

Ethernet have worked and probably still works booting with vendor U-Boot.

However, when booting using mainline U-Boot the ethernet PHY is never
initialized or reset due to lack of a ethernet gmac driver for rk35xx.

With an early work-in-progress gmac driver the ethernet PHY is working
same as with vendor U-Boot, and the ethernet PHY is identified.

This revert from using reset-gpios to using the deprecated
snps,reset-gpio is probably the wrong way forward.

I suspect there is a bug in net/phy/mdio_device.c on how reset-gpios
is asserted/deasserted, it works differently than how I would expect it
to work, and also differs in how U-Boot handles reset-gpios.

Some earlier findings regarding this reset issue:
https://github.com/Kwiboo/linux-rockchip/compare/rk3568-eth-phy-reset~2...rk3568-eth-phy-reset

Will try to get a proper patch/rfc out later this weekend or early next
week after re-testing that on latest kernel.

Regards,
Jonas

> 
> 
> Thanks
> Heiko
> 
>> ---
>>  .../boot/dts/rockchip/rk3568-rock-3a.dts      | 32 ++++++-------------
>>  1 file changed, 10 insertions(+), 22 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>> index 917f5b2b8aab..f9381ab9629b 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>> @@ -32,13 +32,6 @@ hdmi_con_in: endpoint {
>>  		};
>>  	};
>>  
>> -	gmac1_clkin: external-gmac1-clock {
>> -		compatible = "fixed-clock";
>> -		clock-frequency = <125000000>;
>> -		clock-output-names = "gmac1_clkin";
>> -		#clock-cells = <0>;
>> -	};
>> -
>>  	leds {
>>  		compatible = "gpio-leds";
>>  
>> @@ -256,18 +249,24 @@ &cpu3 {
>>  
>>  &gmac1 {
>>  	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
>> -	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&gmac1_clkin>;
>> -	clock_in_out = "input";
>> +	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>;
>> +	assigned-clock-rates = <0>, <125000000>;
>> +	clock_in_out = "output";
>>  	phy-handle = <&rgmii_phy1>;
>> -	phy-mode = "rgmii-id";
>> +	phy-mode = "rgmii";
>>  	phy-supply = <&vcc_3v3>;
>>  	pinctrl-names = "default";
>>  	pinctrl-0 = <&gmac1m1_miim
>>  		     &gmac1m1_tx_bus2
>>  		     &gmac1m1_rx_bus2
>>  		     &gmac1m1_rgmii_clk
>> -		     &gmac1m1_clkinout
>>  		     &gmac1m1_rgmii_bus>;
>> +	snps,reset-gpio = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
>> +	snps,reset-active-low;
>> +	/* Reset time is 20ms, 100ms for rtl8211f */
>> +	snps,reset-delays-us = <0 20000 100000>;
>> +	tx_delay = <0x42>;
>> +	rx_delay = <0x28>;
>>  	status = "okay";
>>  };
>>  
>> @@ -588,11 +587,6 @@ &mdio1 {
>>  	rgmii_phy1: ethernet-phy@0 {
>>  		compatible = "ethernet-phy-ieee802.3-c22";
>>  		reg = <0x0>;
>> -		pinctrl-names = "default";
>> -		pinctrl-0 = <&eth_phy_rst>;
>> -		reset-assert-us = <20000>;
>> -		reset-deassert-us = <100000>;
>> -		reset-gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
>>  	};
>>  };
>>  
>> @@ -630,12 +624,6 @@ vcc_mipi_en: vcc_mipi_en {
>>  		};
>>  	};
>>  
>> -	ethernet {
>> -		eth_phy_rst: eth_phy_rst {
>> -			rockchip,pins = <3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
>> -		};
>> -	};
>> -
>>  	hym8563 {
>>  		hym8563_int: hym8563-int {
>>  			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_up>;
>>
> 
> 
> 
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
