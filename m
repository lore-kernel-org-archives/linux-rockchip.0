Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9271AC4345F
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Apr 2024 13:31:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a2aEB5FDRkIHxyDWWUxow7nFh7mjYIW29WtcPZ/tXE8=; b=DFOgwoA+MEIzAQ
	BD/GjvvNMfljhRxWC9k8ItXTZfDi5PiRbCDrPitAM+lz0ecoqIwQlBxAYKxQqIokEe2oRHbOwXkL+
	nH7Tr1EgVeQcJxjkmTg/RGgfOqWHi85Ufc6eRkTRPovHqa8kfGQXfvkX/MgF1mgOjObaKSKp2IS6y
	GylUDgpjGOKbUmaihscANnVmutoDMUDha40zCNsMfJ/MS7c/8JIjJVBUWl+CaCpbvKzI9zQfX9FgX
	KJeDWknmxbPytwm1n7iQg/Vxijo1u9AbXzQheedCr3t91AQ6W1R41FzY+NYBYCCbbzVqFJ08z+Nbm
	05oH3Hwn+9WZQS9hnQCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rx5NI-0000000G9wf-2ONW;
	Wed, 17 Apr 2024 13:30:56 +0000
Received: from mail-m49197.qiye.163.com ([45.254.49.197])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rx5NE-0000000G9tT-38MC;
	Wed, 17 Apr 2024 13:30:55 +0000
Received: from amadeus-Vostro-3710.lan (unknown [58.61.140.80])
	by smtp.qiye.163.com (Hmail) with ESMTPA id F21EA7E0125;
	Wed, 17 Apr 2024 21:30:20 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: jonas@kwiboo.se
Cc: amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Radxa ROCK3 Model C
Date: Wed, 17 Apr 2024 21:30:16 +0800
Message-Id: <20240417133016.62753-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <d7de2213-8dd2-42ec-9a30-a569ac71be3e@kwiboo.se>
References: <d7de2213-8dd2-42ec-9a30-a569ac71be3e@kwiboo.se>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZH09NVklOSBgZGEofQhoYTVUTARMWGhIXJBQOD1
	lXWRgSC1lBWU5DVU1KVUpPS1VDS1lXWRYaDxIVHRRZQVlPS0hVSkpLSEpDVUpLS1VLWQY+
X-HM-Tid: 0a8eec404ea403a2kunmf21ea7e0125
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6KzY6KTo4QzMQFQFWPjwCCC46
	SyJPCShVSlVKTEpISE1LTUlKTUJLVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWU5D
	VU1KVUpPS1VDS1lXWQgBWUFPT0xINwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240417_063053_133533_13522BBE 
X-CRM114-Status: GOOD (  21.94  )
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

Hi Jonas,
>> +	model = "Radxa ROCK3 Model C";
>
> The marketing name seems to be "Radxa ROCK 3C" according to the product
> page at [1].
>
> [1] https://radxa.com/products/rock3/3c

According to https://wiki.radxa.com/Rock3/3c , it should be called
"Radxa ROCK 3 Model C". I copied rock3a here without paying attention.

>> +	compatible = "radxa,rock3c", "rockchip,rk3566";
>
> A personal preference would be to match the product name and the dtb
> filename, e.g. "radxa,rock-3c".

I thought so too, here is also copied from rock3a.
I think rock3a needs fixing too?

>> +		led_user: led-0 {
> This is called user_led2 in the schematic, in case we want the symbol
> to match the schematic.

>> +		regulator-name = "vcc5v0_usb_host";
> This regulator is named vcc5v0_usb30_host in schematic.

Thanks, I will fix it.

>> +		#clock-cells = <1>;
>> +		clock-names = "mclk";
>> +		clocks = <&cru I2S1_MCLKOUT_TX>;
>
> I think clock-output-names may be missing? Something like:
>
>  clock-output-names = "rk809-clkout1", "rk809-clkout2";

Thanks, I'll add it in the next patch.

>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&pmic_int_l>, <&i2s1m0_mclk>;
>> +		rockchip,system-power-controller;

> I think this prop is deprecated and system-power-controller
> should be used instead.

>> +				regulator-state-mem {
>> +					regulator-on-in-suspend;
>> +					regulator-suspend-microvolt = <900000>;

> Not sure we need this in suspend to ram and this can probably use:
>
>  regulator-off-in-suspend
>
> That is also what vendor kernel does.

Will be corrected in the next patch.

>> +			vcc3v3_sd: SWITCH_REG2 {
>> +				regulator-name = "vcc3v3_sd";
>> +				regulator-always-on;
>> +				regulator-boot-on;
>
> If I am reading the schematic correctly this is not connected.

Yes, I didn't notice it was NC, thanks.

>> +&sdhci {
>> +	bus-width = <8>;
>> +	max-frequency = <200000000>;
> This board support HS200, please add:
>
>  mmc-hs200-1_8v

Will be added in the next patch.

>> +&sdmmc0 {
>> +	bus-width = <4>;
>> +	cap-sd-highspeed;
>> +	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
>
> Please drop the cd-gpios prop, sdmmc0_det is used below and
> works fine on this board.

Do other rk356x boards also need this change?

>> +	sd-uhs-sdr50;
>
> Why limit to sdr50? and not use sd-uhs-sdr104?

The sdr104 mode is not stable on the rk356x platform.
This problem has been reported on both rock3a and e25 boards.

>> +	vmmc-supply = <&vcc3v3_sd>;
>
> If I read the scematics correctly this is using the
> vcc3v3_sys regulator and not the vcc3v3_sd.

Yes, you are right. I didn't notice it, thanks.

>> +&sfc {
>
> This is missing pinctrl:
>
>  pinctrl-names = "default";
>  pinctrl-0 = <&fspi_pins>;

This is already defined on rk356x.dtsi:

	sfc: spi@fe300000 {
		compatible = "rockchip,sfc";
		......
		pinctrl-0 = <&fspi_pins>;
		pinctrl-names = "default";
		status = "disabled";
	};

>> +		spi-max-frequency = <104000000>;
>
> My board is using a GD25LQ128EWIGR same as mentioned in the schematic,
> and datasheet for this flash chip menion 120 mhz and not 104 mhz.

Will be corrected in the next patch, thanks.

Thanks,
Chukun

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
