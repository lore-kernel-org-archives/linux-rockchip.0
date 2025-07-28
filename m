Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E270C83F17
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Jul 2025 17:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oZCBshYHnIuPqqpX2Dp+BGEwmTX0ksAsdhmk62H93kE=; b=rbMguX43at62BT
	DF7gldqrr+4tCfblUNu4Z4TXW1ElMqN1M9Xj43rILmVf5oxG9nBUAb8jV2MVVlIQz0rowOQ92nHmp
	LSrAA2SEPO/i5bfeSrm9rCCqnFPBGzxlkjs8BpIo/rjkmXJyuSdHeBnRfxtCypUsjUgFy6CQYBcq8
	N+NK55Pc3SYC1I3PPTCNi3+oX1vc6BA4lWonmsay5PE/FqadcdBzHkRFhwsq0+D7tmjEOJJVwqILL
	cMkkLL+KEqrse0llOri6QZxBjNLjm3iRZ01bnu++CrjoArjjZQlsfUNraq6/AaIzfbW7ysSpFwkTk
	QnpkDsYpPFHw2iNAvR5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugRkh-0000000F7BQ-2xCn;
	Mon, 28 Jul 2025 17:35:07 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugRM5-0000000F4PW-3C2N
	for linux-rockchip@lists.infradead.org;
	Mon, 28 Jul 2025 17:09:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1753722580;
 bh=o1SAkKfZM3NhF3wZAPT2jfOda4w4lWqHgHvXSycv5Gc=;
 b=apYcas1zRvWrusiROXe1jSQkmSJA5WYX12wDbJ5QxExI3w/CDIgBbp/Pu9MscBV9Y4HtVV7My
 Uwz/+//yfpq5I0Etpl4q+3fpE2ZpvyNuuVnX/VTCnaqKHOmYN49XrHCaXEDYeNWTm/+NIGBad1N
 2lM6IMe+eWbjMHKZYbmctoBzOimZRKSyuLUVYSNkIYjJsKU5eG0RlIaEAxQCt3AceGHnRumoO9H
 LoL07U4xuP8ShO+pp4WLlBeu4G+kVUcjCQru7E6bGvGrqvbSoBRtvjI7/v8p5nGATGHo9Np+XVd
 B9BLIazpP6cVTe3lHFeFJlNY4YzhxiXR/MxOrIU/1ApQ==
X-Forward-Email-ID: 6887aebc351ec66b15a29e9b
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 1.1.8
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <e2fd11db-543a-43eb-b118-9f246ff149b5@kwiboo.se>
Date: Mon, 28 Jul 2025 19:09:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add Radxa E24C
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, heiko@sntech.de,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh@kernel.org, ziyao@disroot.org
References: <20250727144409.327740-4-jonas@kwiboo.se>
 <20250728125015.988357-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250728125015.988357-1-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250728_100941_900848_EDA0AACB 
X-CRM114-Status: GOOD (  25.03  )
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

On 7/28/2025 2:50 PM, Chukun Pan wrote:
> Hi,
> 
>> +	avddl_1v1: avddh_3v3: avdd_rtl8367rb: regulator-avdd-rtl8367rb {
>> +		compatible = "regulator-fixed";
>> +		enable-active-high;
>> +		gpios = <&gpio1 RK_PC3 GPIO_ACTIVE_HIGH>;
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&gpio_8367_en>;
>> +		regulator-name = "avdd_rtl8367rb";
> 
> I don't see the avdd_rtl8367rb regulator in the schematics. It looks like
> DVDDIO (RTL8367RB power) is connected to AVDDH_3V3 via a magnetic bead.

Both avddl_1v1 and avddh_3v3 are controlled by the same gpio, I do not
remember if using two regulators with same gpios is supported, can only
remember it being an issue in the past, so I opted to just describe it
as a single regulator and gave it a new name and added labels for the
name used in schematic.

Would calling it vdd_8367 (after gpio_8367_en) be better or do you have
any other suggestion on how to describe these?

I will at least add a comment related to this regulator for v2.

> 
>> +&gmac1 {
>> +	clock_in_out = "output";
>> +	phy-mode = "rgmii-id";
>> +	phy-supply = <&avdd_rtl8367rb>;
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&rgmii_miim>, <&rgmii_tx_bus2>, <&rgmii_rx_bus2>,
>> +		    <&rgmii_rgmii_clk>, <&rgmii_rgmii_bus>, <&gmac1_rstn_l>;
> 
> Should the pinctrl of gmac1_rstn_l be written together with the
> reset-gpios of the rtl8367rb switch?

When defining pinctrl to the mdio1 node they are not applied, and there
was issues probing the switch when using reset-gpios of the switch.
So I opted to describe the switch reset as the mdio bus reset.

I guess we should describe the HW and not work around SW issues, will
change in v2.

> 
> ```
> reset-gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_LOW>;
> pinctrl-0 = <&gmac1_rstn_l>;
> ```
> 
>> +&i2c0 {
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&i2c0m0_xfer>;
>> +	status = "okay";
>> +
>> +	rk805: pmic@18 {
>> +		compatible = "rockchip,rk805";
>> +		reg = <0x18>;
>> +		interrupt-parent = <&gpio4>;
>> +		interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
>> +		#clock-cells = <1>;
>> +		clock-output-names = "rk805-clkout1", "rk805-clkout2";
> 
> The clkout pin is not connected, but the dt-bindings require it.
> Maybe clock-output-names could be made optional?

Seem the using just #clock-cells = <0> is valid without
clock-output-names, will use that in v2, thanks.

> 
> +&mdio1 {
> +	reset-delay-us = <25000>;
> +	reset-gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_LOW>;
> +	reset-post-delay-us = <100000>;
> +};
> 
> I don't think this is correct, reset-gpios should be written on the
> rtl8365mb switch node. The switch driver has defined the reset time.

See above, I had issues using the reset-gpios of the switch, because the
switch was probed twice, once deferred by gmac, and by the second probe
failed with -BUSY because of the reset-gpios still being claimd by the
first probe.

I can change to describe the reset pin in the switch, however that will
likely mean Ethernet is unusable until the issue in devres/gpiolib is
tracked down and fixed by someone.

> 
> ```
> &mdio1 {
> 	switch@29 {
> 		compatible = "realtek,rtl8365mb";
> 		reg = <29>;
> 		reset-gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_LOW>;
> ```

As mentioned above, this caused probe issues and an unusable switch.
I would rather skip describing this reset pin as it does not seem to be
needed it self reset when the regulator is powered on.

Any thoughts on what is better of the two? Skip describing the reset pin
or describe it and leave the switch possible unusable? Probing gmac
before the switch should leave it in a working state.

Regards,
Jonas

> 
> Thanks,
> Chukun
> 
> --
> 2.25.1
> 
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
