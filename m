Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C714CA0FED
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Sep 2025 17:21:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8L57Rf3yJ0lnDqR/jXJkVDKcbZAOlvbwA/oPzl4poPc=; b=5Dj26Po1SS/ob4
	Z1kKLG3FTzNh9V6/x2WYeokMo5CFekOmIY+Su0DvCRW/+sZ/h4wt7JrTvX2E3F5DSwR6/VHD+4Pjk
	KtdfHWS52vU6UnYHbAK0jdacUlLJ3cTlwi9906Fhvo2e48iLmxaeVz47I8mDCrwR9FpDmSp+0HzhY
	PDl6kcNSM/nUi493UdfC8HWgdks2EY8O/CGgx65mCWQXwAlwqF1lJxN+Vrn8MbDbvUCbh87e0jkV8
	/PBGxs9SsPRR/HAHRD/x6w8uhhElXOqeqP5X6GOdM3+6t1Vekrkm4ho0s5DearvRLDTuP64eCY59B
	t+NfbyWXZ36+R5nbg8Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw220-00000008xsm-3sp5;
	Tue, 09 Sep 2025 17:21:24 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvze8-00000007qhP-3sTG
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Sep 2025 14:48:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1757429315;
 bh=n77eKdHmtRFhvCg5KGI+mU9uC0njog5zrjYXHjKe4bc=;
 b=PCwmCMC/0U5vPcfCf2Hpk9ZcKRtETlcYpM33uzLOHF73clp9zNhNzEtzDB8T+UBgZMXxjWiP9
 7SQiHm/pWDAqPrzkInnTMx85DjwVIhxZEbsn0im5CW2bfxRwwohSaBaAF80hcYDXZ1paw3GfCiZ
 ZkMfmunqCao8O7ZmxIXzmNzUJ7vm8Fi/YA6ErfN7OXFcEFcd2FPWq0aeu077b2+k7fpS6fld6YX
 HdUlvO2F5D2qLLmHN/tZik96iavynIQu6KpKeYfwCtq2116wTnj6U8P2QJKohofOc6qtIG0hc3Q
 bfTPkUmZV+/HPQFbnQwesoAaRhqO5h/TkXI7mIH+b7Sw==
X-Forward-Email-ID: 68c03e3e13ca9ca995732310
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 1.2.14
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <7d3c3b29-f89f-4801-8fd7-d6d0645095af@kwiboo.se>
Date: Tue, 9 Sep 2025 16:48:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add Radxa E24C
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Yao Zi <ziyao@disroot.org>,
 Chukun Pan <amadeus@jmu.edu.cn>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250727144409.327740-1-jonas@kwiboo.se>
 <20250727144409.327740-4-jonas@kwiboo.se>
 <B055BC95C67D129C+d7a2ff39-8367-48cf-8697-f12fd9f885a4@radxa.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <B055BC95C67D129C+d7a2ff39-8367-48cf-8697-f12fd9f885a4@radxa.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_074837_359817_9A67B420 
X-CRM114-Status: GOOD (  16.80  )
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

On 9/9/2025 2:28 PM, FUKAUMI Naoki wrote:
> Hi Jonas,
> 
> On 7/27/25 23:44, Jonas Karlman wrote:
>> The Radxa E24C is a compact, high-performance network computer
>> developed by Radxa, based on the Rockchip RK3528A SoC.
>>
>> Add initial device tree for the Radxa E24C.
>>
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
>> ---
>> Schematics: https://dl.radxa.com/e/e24c/docs/radxa_e24c_v1200_schematic.pdf
>> ---
>>   arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>>   .../boot/dts/rockchip/rk3528-radxa-e24c.dts   | 519 ++++++++++++++++++
>>   2 files changed, 520 insertions(+)
>>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3528-radxa-e24c.dts
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
>> index 0662fcf00628..dc62fd5305be 100644
>> --- a/arch/arm64/boot/dts/rockchip/Makefile
>> +++ b/arch/arm64/boot/dts/rockchip/Makefile
>> @@ -92,6 +92,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399pro-rock-pi-n10.dtb
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3528-armsom-sige1.dtb
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3528-nanopi-zero2.dtb
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3528-radxa-e20c.dtb
>> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3528-radxa-e24c.dtb
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3528-rock-2a.dtb
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3528-rock-2f.dtb
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3562-evb2-v10.dtb
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e24c.dts b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e24c.dts
>> new file mode 100644
>> index 000000000000..225f2b0c5339
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e24c.dts
>> @@ -0,0 +1,519 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +
>> +/dts-v1/;
>> +
>> +#include <dt-bindings/input/input.h>
>> +#include <dt-bindings/leds/common.h>
>> +#include "rk3528.dtsi"
>> +
>> +/ {
>> +	model = "Radxa E24C";
>> +	compatible = "radxa,e24c", "rockchip,rk3528";
>> +
>> +	aliases {
>> +		ethernet0 = &gmac1;
>> +		i2c0 = &i2c0;
>> +		i2c1 = &i2c1;
>> +		i2c5 = &i2c5;
>> +		mmc0 = &sdhci;
>> +		mmc1 = &sdmmc;
>> +		rtc0 = &hym8563;
>> +		rtc1 = &rk805;
>> +		serial0 = &uart0;
>> +	};
>> +
>> +	chosen {
>> +		stdout-path = "serial0:1500000n8";
>> +	};
>> +
>> +	adc-keys {
>> +		compatible = "adc-keys";
>> +		io-channels = <&saradc 0>;
>> +		io-channel-names = "buttons";
>> +		keyup-threshold-microvolt = <1800000>;
>> +		poll-interval = <100>;
>> +
>> +		button-maskrom {
>> +			label = "MASKROM";
>> +			linux,code = <KEY_SETUP>;
>> +			press-threshold-microvolt = <0>;
>> +		};
>> +	};
>> +
>> +	gpio-keys {
>> +		compatible = "gpio-keys";
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&gpio0_a0_user>;
>> +
>> +		button-user {
>> +			gpios = <&gpio0 RK_PA0 GPIO_ACTIVE_LOW>;
>> +			label = "USER";
>> +			linux,code = <BTN_1>;
> 
> I prefer to assign BTN_0 to the 1st button :)

The E20C (and other RK boards) already use BTN_1 for user button, it
only seem to be the recently added E54C that is using BTN_0.

For consistency I suggest we keep using BTN_1 for this user button and
possible fixup E54C, if you want to use same button for all variants.

Regards,
Jonas

> 
> Best regards,
> 
> --
> FUKAUMI Naoki
> Radxa Computer (Shenzhen) Co., Ltd.
> 
>> +			wakeup-source;
>> +		};
>> +	};

[snip]

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
