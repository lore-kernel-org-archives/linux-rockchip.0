Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B725C4345F
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 May 2024 12:56:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BHX/dNsq3bt7ZxYCbGDj3vTnJZLtdIttv5QZkJxVeio=; b=AJIqCe/JIBkrDI
	FreLqbocacA1DVIXqEgm7z6yuovagAWHpmpuTvVaWW5e3m/P0/kteEUCa7m/dVwqfwFoOv0E8A1Xj
	4rz3Ix1qLoT6WW5AQSY6Xr0knHBcdie1XnPBe5p4vdVt4digSbiW52g/WD6UGusMk66DonB2Arpng
	t/xf3u1QXXTJCIYjdWveM75Ctt9XSmbWgJxWXosCwaSAn9EQRMh7N8DbTtLzpJWr8/XJYF1kguNk3
	pG6cBJiPRy4DcP43XK3f2DXtSgk8kVXEJ3wHlydzvOBxNIxiSPqoJ0zzIs/OeHUnj6raw+4IWSR7L
	HwKjUHj8p9YXrFO5MJNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2Vyv-0000000CiY9-4Aif;
	Thu, 02 May 2024 12:56:13 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2Vyo-0000000CiWG-3K8w
	for linux-rockchip@lists.infradead.org;
	Thu, 02 May 2024 12:56:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1714654564;
 bh=ZheNXb4kFiyFslkWqYIOhADWuSoeRFTlaYHNccaMueg=;
 b=pZE+GLa3dRahzDY9N2VRRd+/1/UJLQdIxlkwumNfh+qi23IKCdK7ANSH/KGQvgEzzZPnOnn/m
 4L8rwA1ZlBAWo9GcbA/4PgiPKU8ZOuwPxhgs/BvAkY2ENH78JPSxZ22fptA/d3+tamH6ZkzpEgg
 xP3nLAky0jLptFzWgF3jRxJDq0aNAe2VWEM1FHneo7G06aGG8zQYtmUNVRh2sxakpCDlx14P/Q7
 kr8FAdDdHXDzP9yRayZOTUDrBW4lqK1/AwfUR3lH9x+GQPmqoIS9bltnV6Np2uLUgj7J4qUy/aF
 EP9iRACeHS589mrhM0kAJ1HjMhCiHYS22kCt+ls6vXxQ==
Message-ID: <75cc31d9-beb2-456b-a9e8-8f7ec4711029@kwiboo.se>
Date: Thu, 2 May 2024 14:45:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Radxa ROCK3 Model C
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, heiko@sntech.de,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh@kernel.org
References: <d7de2213-8dd2-42ec-9a30-a569ac71be3e@kwiboo.se>
 <20240417133016.62753-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20240417133016.62753-1-amadeus@jmu.edu.cn>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 66338ae5f48eecfc8b9e844c
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240502_055607_207664_B566C1F7 
X-CRM114-Status: GOOD (  35.18  )
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

Sorry for late reply, I will test and review your v2 later today :-)

On 2024-04-17 15:30, Chukun Pan wrote:
> Hi Jonas,
>>> +	model = "Radxa ROCK3 Model C";
>>
>> The marketing name seems to be "Radxa ROCK 3C" according to the product
>> page at [1].
>>
>> [1] https://radxa.com/products/rock3/3c
> 
> According to https://wiki.radxa.com/Rock3/3c , it should be called
> "Radxa ROCK 3 Model C". I copied rock3a here without paying attention.
> 
>>> +	compatible = "radxa,rock3c", "rockchip,rk3566";
>>
>> A personal preference would be to match the product name and the dtb
>> filename, e.g. "radxa,rock-3c".
> 
> I thought so too, here is also copied from rock3a.
> I think rock3a needs fixing too?
> 
>>> +		led_user: led-0 {
>> This is called user_led2 in the schematic, in case we want the symbol
>> to match the schematic.
> 
>>> +		regulator-name = "vcc5v0_usb_host";
>> This regulator is named vcc5v0_usb30_host in schematic.
> 
> Thanks, I will fix it.
> 
>>> +		#clock-cells = <1>;
>>> +		clock-names = "mclk";
>>> +		clocks = <&cru I2S1_MCLKOUT_TX>;
>>
>> I think clock-output-names may be missing? Something like:
>>
>>  clock-output-names = "rk809-clkout1", "rk809-clkout2";
> 
> Thanks, I'll add it in the next patch.
> 
>>> +		pinctrl-names = "default";
>>> +		pinctrl-0 = <&pmic_int_l>, <&i2s1m0_mclk>;
>>> +		rockchip,system-power-controller;
> 
>> I think this prop is deprecated and system-power-controller
>> should be used instead.
> 
>>> +				regulator-state-mem {
>>> +					regulator-on-in-suspend;
>>> +					regulator-suspend-microvolt = <900000>;
> 
>> Not sure we need this in suspend to ram and this can probably use:
>>
>>  regulator-off-in-suspend
>>
>> That is also what vendor kernel does.
> 
> Will be corrected in the next patch.
> 
>>> +			vcc3v3_sd: SWITCH_REG2 {
>>> +				regulator-name = "vcc3v3_sd";
>>> +				regulator-always-on;
>>> +				regulator-boot-on;
>>
>> If I am reading the schematic correctly this is not connected.
> 
> Yes, I didn't notice it was NC, thanks.
> 
>>> +&sdhci {
>>> +	bus-width = <8>;
>>> +	max-frequency = <200000000>;
>> This board support HS200, please add:
>>
>>  mmc-hs200-1_8v
> 
> Will be added in the next patch.
> 
>>> +&sdmmc0 {
>>> +	bus-width = <4>;
>>> +	cap-sd-highspeed;
>>> +	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
>>
>> Please drop the cd-gpios prop, sdmmc0_det is used below and
>> works fine on this board.
> 
> Do other rk356x boards also need this change?

Yes, I think in general on Rockchip platform it is preferred to
configure the pin for sd-card detect function instead of using the
cd-gpios prop (pin configured to use gpio function) when the default
pin is used and correctly wired to sd-slot.

The RK3566 HW design guide also mention following:

"""
RK3566 reuses JTAG function and SDMMC function together to reduce IO pin
count and take into account the convenience of the complete machine
debugging. The SDMMC0_DET pin is used to switch the output function.
Therefore, this pin must be configured before power-on. Otherwise, the
debugging during the boot period will be affected if JTAG has no output,
and SDMMC0 has no output will affects SDMMC boot.
- SDMMC0_DET pin detects that the level is high, the IO switches to the
  JTAG function;
- SDMMC0_DET detects that the level is low (normal state of SD card
  insertion, and the PIN is pulled down by SD card slot), the IO
  function is switched to SDMMC;
"""

And similar was changed on RK3588 boards in:

arm64: dts: rockchip: rk3588: remove redundant cd-gpios in sdmmc node
https://lore.kernel.org/linux-rockchip/20240201034621.1970279-1-kever.yang@rock-chips.com/

> 
>>> +	sd-uhs-sdr50;
>>
>> Why limit to sdr50? and not use sd-uhs-sdr104?
> 
> The sdr104 mode is not stable on the rk356x platform.
> This problem has been reported on both rock3a and e25 boards.

Do you have any references for these issues?

When I tested on Radxa ZERO 3W/3E there was an issue executing tuning
that resulted in a not working sdr104 mode. However, after the card is
removed and re-inserted the tuning works and the card can use sdr104
mode.

That issue seems to be related to the io-domain driver not being notified
about the voltage change when mmc driver is probed during boot. When the
card is removed and re-inserted the io-domain driver gets notified and
re-configure the io-domain.

Testing on a RK3328 board (Rock64) the io-domain driver gets notified
about the voltage change during boot and the tuning is successful for
sdr104 mode.

Will re-run tests on my ROCK 3C boards to validate is that is the same
issue, guessing it may affect multiple RK356x boards.

Regards,
Jonas

> 
>>> +	vmmc-supply = <&vcc3v3_sd>;
>>
>> If I read the scematics correctly this is using the
>> vcc3v3_sys regulator and not the vcc3v3_sd.
> 
> Yes, you are right. I didn't notice it, thanks.
> 
>>> +&sfc {
>>
>> This is missing pinctrl:
>>
>>  pinctrl-names = "default";
>>  pinctrl-0 = <&fspi_pins>;
> 
> This is already defined on rk356x.dtsi:
> 
> 	sfc: spi@fe300000 {
> 		compatible = "rockchip,sfc";
> 		......
> 		pinctrl-0 = <&fspi_pins>;
> 		pinctrl-names = "default";
> 		status = "disabled";
> 	};
> 
>>> +		spi-max-frequency = <104000000>;
>>
>> My board is using a GD25LQ128EWIGR same as mentioned in the schematic,
>> and datasheet for this flash chip menion 120 mhz and not 104 mhz.
> 
> Will be corrected in the next patch, thanks.
> 
> Thanks,
> Chukun


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
