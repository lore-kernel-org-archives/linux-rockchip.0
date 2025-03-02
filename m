Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9305C282C6
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Mar 2025 11:57:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=89jvRq6oSq4e/GadFyzSEBMOobOpUAsdESn6j/RY6PQ=; b=dhT7ySZkFegVhl
	VH/hpwDtSYuqDWnz78l4btLzegGrjoJPxoe4DXiQ5uvXF7MoAlYVebxR6zwWWfRGkRmh7lMsyOEPb
	iu/rawmTdMzV96DZTRz9SMtnO+346ESEadedgLBrwrkBssSu4YH5mbeSPOAYnabRLSK6HMDUeIxmx
	BPfO+Ol9qDIY/ZpxcCPGtbwC1Z7KCLVIiSGK0QkA/pnzxUNVEHov1wUWQzy5/zMP+jC8ghX82s0HJ
	63NNqMS6FBltHmxyB939H8IlqTv0DQeGzPSHhcxSqohAq/itnKgYyyBV5YNakJQ8UB6gRmW9Cu48G
	hxmLGfuAhlMd1W5yiQpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tohwH-0000000Fwqs-3wai;
	Sun, 02 Mar 2025 11:56:58 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tohwF-0000000FwqC-0TVk
	for linux-rockchip@lists.infradead.org;
	Sun, 02 Mar 2025 11:56:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1740916614;
 bh=29q7YvoaMhP8FsAjh3s2NLiuI28mnOHAXYyx1jVG3xA=;
 b=MWseXxnTgZPvjssrl/epLKqDMxXTIfTvxed+P8/txtiRY0q+PimHnux8Caxgv7y4A9GyUTw6d
 lFKjwBBfq0l+2gsIBuWvi4OPWapCh+sNLi7rW1FwgdC1JIeImvn5rW2rxMDWIdcFcXwt0YW32O+
 3N9RH45452wSbDIrtdH17w2aYUykqB6hqAZnsLN4ALSatnzDMCSZ9t2pgICeVeYCq+dsHjrTH1X
 i/nD1KiWtYiaJuwe6G0lZE2Gd7fv/TercDK9XSIcC60P0dxEg83FXrZlpOQREVbVTGJeFIXHgts
 rfEVEd8y7JJLoZEl8M/AmwP3Dqik/Xtw5VJebXIpbpcw==
X-Forward-Email-ID: 67c447804a29b97c03d4e25b
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <d6928adc-1df2-494f-a3d3-7b028c220547@kwiboo.se>
Date: Sun, 2 Mar 2025 12:56:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/8] arm64: dts: rockchip: Enable SD-card interface on
 Radxa E20C
To: Yao Zi <ziyao@disroot.org>, FUKAUMI Naoki <naoki@radxa.com>
References: <20250301104250.36295-1-ziyao@disroot.org>
 <20250301104835.36439-1-ziyao@disroot.org>
 <0aefd292-7980-434d-9c18-4ab9f6a0b40e@kwiboo.se> <Z8MklJfFz2EA6oNS@pie.lan>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <Z8MklJfFz2EA6oNS@pie.lan>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250302_035655_254408_97D7F4BD 
X-CRM114-Status: GOOD (  27.56  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Detlev Casanova <detlev.casanova@collabora.com>, Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>, linux-mmc@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>, linux-kernel@vger.kernel.org, Frank Wang <frank.wang@rock-chips.com>, devicetree@vger.kernel.org, Shresth Prasad <shresthprasad7@gmail.com>, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Yao Zi,

On 2025-03-01 16:15, Yao Zi wrote:
> On Sat, Mar 01, 2025 at 02:01:05PM +0100, Jonas Karlman wrote:
>> Hi,
>>
>> On 2025-03-01 11:48, Yao Zi wrote:
>>> SD-card is available on Radxa E20C board.
>>>
>>> Signed-off-by: Yao Zi <ziyao@disroot.org>
>>> ---
>>>  arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts | 14 ++++++++++++++
>>>  1 file changed, 14 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
>>> index d2cdb63d4a9d..473065aa4228 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
>>> @@ -12,6 +12,10 @@ / {
>>>  	model = "Radxa E20C";
>>>  	compatible = "radxa,e20c", "rockchip,rk3528";
>>>  
>>> +	aliases {
>>> +		mmc0 = &sdmmc;
>>
>> Suggest using mmc1 for sd-card because the e20c typically have onboard
>> emmc, compared to removable sd-card.
> 
> My board doesn't have an eMMC: it's optional as well, but all variants
> of Radxa E20C come with an SD-card interface. The vendor devicetree sets
> sdmmc as mmc0 as well[1].

This is strange as Radxa typically want to align with mmc0=emmc and
mmc1=sd-card, as seen in [3] and [4].

  Align with other Radxa products.
  - mmc0 is eMMC
  - mmc1 is microSD

Also mainline U-Boot for Rockchip SoCs typically always treat mmc0 as
emmc and mmc1 as sd-card, and for most SoCs it will even override the
board aliases to have some predictability across boards.

> 
> I won't insist on it and am willing to take the change if you still
> consider mmc0 is better.

Yes, my position is that we should use following:

  mmc0 = &sdhci;
  mmc1 = &sdmmc;

I will send out a short sdhci series based on top of v2 of this series.
Driver changes was not needed to get basic sdhci working on RK3528 and
is only required to get HS400 modes working.

[3] https://lore.kernel.org/r/20240620224435.2752-1-naoki@radxa.com
[4] https://lore.kernel.org/r/20240619050047.1217-2-naoki@radxa.com

> 
>>> +	};
>>> +
>>>  	chosen {
>>>  		stdout-path = "serial0:1500000n8";
>>>  	};
>>> @@ -20,3 +24,13 @@ chosen {
>>>  &uart0 {
>>>  	status = "okay";
>>>  };
>>> +
>>> +&sdmmc {

This node should be placed above &uart0 to be in alphabetical order.

>>> +	bus-width = <4>;
>>> +	cap-mmc-highspeed;
>>> +	cap-sd-highspeed;
>>> +	disable-wp;
>>> +	rockchip,default-sample-phase = <90>;
>>> +	sd-uhs-sdr104;
>>
>> Are you sure uhs-sdr104 works as is should?
> 
> In fact yes, tuning succeeds at 148.5MHz and results in 66MB/s reading
> speed.
> 
>> Vendor kernel use a different "v2" tuning
> 
> This isn't a problem. IMHO V2 tuning is more like a quick path, which
> tries inheritting the phase from firmware and then re-tunes roughly.
> Fine tunning is still a fallback here in case of failure, see the commit
> message in the downstream kernel[2]. And testing proves it's okay for
> RK3528 to issue fine-tuning always.

Thanks for this information, I did not inspect exactly what the v2
tuning meant, only observed that vendor kernel (incorrectly) used a DT
prop to indicate when v2 tuning should be used.

> 
>> and this is also missing the vccio_sd vqmmc-supply to switch between
>> 3v3 and 1v8.
> 
> But this is a problem, thanks for catching it! Somehow my card managed
> to run at 148.5MHz with 3v3 voltage level, but it's definitely a
> compatiblity issue. I'm surprised that the driver doesn't complain when
> switching to SDR modes without a regulator configured.
> 
>> You could add following regulator for sdmmc:
>>
>> 	vccio_sd: regulator-vccio-sd {
>> 		compatible = "regulator-gpio";
>> 		gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
>> 		pinctrl-names = "default";
>> 		pinctrl-0 = <&sdmmc_vol_ctrl_h>;
>> 		regulator-name = "vccio_sd";
>> 		regulator-min-microvolt = <1800000>;
>> 		regulator-max-microvolt = <3300000>;
>> 		states = <1800000 0x0>, <3300000 0x1>;

This should also have something like:

  vin-supply = <&vcc5v0_sys>;

>> 	};
>>
>> and following pinctrl:
>>
>> 	sdmmc {
>> 		sdmmc_vol_ctrl_h: sdmmc-vol-ctrl-h {
>> 			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
>> 		};
>> 	};
>>
>> add then the power supplies to the sdmmc node:
>>
>> 	vmmc-supply = <&vcc_3v3>;
>> 	vqmmc-supply = <&vccio_sd>;
>>
>> That matches the schematics for e20c, and works when testing non-uhs modes.
> 
> Thanks for the hints. Will rebase on your pinctrl series and get
> regulators and pinctrl settings applied in the next version.

Thanks :-)

Regards,
Jonas

> 
>> Regards,
>> Jonas
>>
>>> +	status = "okay";
>>> +};
>>
> 
> Cheers,
> Yao Zi
> 
> [1]: https://github.com/radxa/kernel/blob/2b0c8de7dc4c68947cda206dcc2e457e9677e426/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts#L22-L26
> [2]: https://github.com/rockchip-linux/kernel/commit/795e052cc8610aa59a64b104f975cc4a45493d5d


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
