Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03FF4C2BD09
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jun 2024 10:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=74ug2cCzcCRc8HdWfhdAjfO/LEOnKPwRjr70bT4K0Xg=; b=SiJjQbHzUYAUou
	AYKklaJlTNuE+CZ5LgJZp9pW3AbWuyg9ITSOyOmUV7YPj4f+CzIVMvzcWeM1eCBMcoIJOg9qV5uDV
	W5D/yE8gbEKNf7kFw2UvGWLN8Dk6X+xKgwq9syBnDEph7gDT+3rpZvCsNcNgr5ogjIoHNLSgV/1Mi
	6RGeI5V7asofy2jTARWKjg7u6vQAko5rsOdg68NajCOm7W1dqcoIYQx6cFSfcrYC4I1/DyN0oVRCZ
	49yHwEiNpEFrOg2uRw4IVA+lNWQJsU2FtRDYZ0OYPoQl9AmmK4irgjcCT0ITAUOSyJYA8A5gU+LEJ
	sYVmi5aCjiwvtpThrihw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMmLm-00000009w4N-0A34;
	Thu, 27 Jun 2024 10:27:34 +0000
Received: from smtp.forwardemail.net ([167.172.40.54])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMmLJ-00000009vri-0Jer
	for linux-rockchip@lists.infradead.org;
	Thu, 27 Jun 2024 10:27:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1719483960;
 bh=TWiLySO7b3v99TTKx2kmRds/R3UK6iiDnVWH7RwG6BY=;
 b=sOQNER4X/NOVN8zr2BOJM2/pj3ShiaN1dTBG1B5oazg8inZhTsURxynpvCv4WGsKG6innSDLN
 JWInwSCw9lHVVnszI9R3q+biNcuVTq9RIz/z1xV35Uw8RW/gcA6gsC29pVh/a5e3BMI+eyZFsue
 HQhGVJrEWRsufC7nx0B6D1jZ/WhmyHnZh9wF8Xl47j+DEkB3n2PguSV2a1nrSbJrEPYKBW8U8nz
 ISrXiVmUVDqtO6Ht+K8kbTBIdgJt0drP89tERK7sHWBQN5keHHhHT0z2JmPsOs1UxjH4Yh+fc6o
 n4K66vezVNmnWF0hLIpOyb/fYYZcmPt0OcDNPBmmFqYA==
Message-ID: <c67f6ada-3a64-4453-a739-583bbdee4185@kwiboo.se>
Date: Thu, 27 Jun 2024 12:25:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add Radxa ROCK 3B
To: FUKAUMI Naoki <naoki@radxa.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240626201502.1384123-1-jonas@kwiboo.se>
 <20240626201502.1384123-3-jonas@kwiboo.se>
 <7F75D4B7290C2A91+8b029861-21dc-4f52-acbc-89087b4c0f0d@radxa.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <7F75D4B7290C2A91+8b029861-21dc-4f52-acbc-89087b4c0f0d@radxa.com>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 667d3e35392543b4ce9a5535
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240627_032705_467737_EA141260 
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

Hi,

On 2024-06-27 00:29, FUKAUMI Naoki wrote:
> Hi,
> 
> thank you very much for your effort!
> 
> On 6/27/24 05:14, Jonas Karlman wrote:
>> The Radxa ROCK 3B is a single-board computer based on the Pico-ITX form
>> factor (100mm x 75mm). Two versions of the ROCK 3B exists, a community
>> version based on the RK3568 SoC and an industrial version based on the
>> RK3568J SoC.
>>
>> Add initial support for eMMC, SD-card, Ethernet, HDMI, PCIe and USB.
>>
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>> ---
>> v2:
>> - Use regulator-.* nodename for fixed regulators
>> - Drop rockchip,mic-in-differential prop
>> - Shorten Ethernet phy reset-deassert-us to 50 ms
>> - Fix pcie pinctrl
>> - Add keep-power-in-suspend to sdmmc2
>>
>> Following issue is reported by dtbs_check and is fixed by series at [1]:
>>
>>    pmic@20: '#sound-dai-cells', 'assigned-clock-parents', 'assigned-clocks', 'clock-names', 'clocks'
>>      do not match any of the regexes: 'pinctrl-[0-9]+'
>>    from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#
>>
>> [1] https://lore.kernel.org/all/20240622-rk809-fixes-v2-0-c0db420d3639@collabora.com/
>> ---
>>   arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>>   .../boot/dts/rockchip/rk3568-rock-3b.dts      | 780 ++++++++++++++++++
>>   2 files changed, 781 insertions(+)
>>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
>> index 90f5172f37e6..ae0ae02f51e9 100644
>> --- a/arch/arm64/boot/dts/rockchip/Makefile
>> +++ b/arch/arm64/boot/dts/rockchip/Makefile
>> @@ -114,6 +114,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-qnap-ts433.dtb
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-radxa-e25.dtb
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-roc-pc.dtb
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
>> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3b.dtb
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5.dtb
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-display-vz.dtbo
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-io-expander.dtbo
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
>> new file mode 100644
>> index 000000000000..46c959f1c6ad
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
>> @@ -0,0 +1,780 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +
>> +/dts-v1/;
>> +
>> +#include <dt-bindings/gpio/gpio.h>
>> +#include <dt-bindings/leds/common.h>
>> +#include <dt-bindings/pinctrl/rockchip.h>
>> +#include <dt-bindings/soc/rockchip,vop2.h>
>> +#include "rk3568.dtsi"
>> +
>> +/ {
>> +	model = "Radxa ROCK 3B";
>> +	compatible = "radxa,rock-3b", "rockchip,rk3568";
>> +
>> +	aliases {
>> +		ethernet0 = &gmac0;
>> +		ethernet1 = &gmac1;
>> +		mmc0 = &sdhci;
>> +		mmc1 = &sdmmc0;
>> +		mmc2 = &sdmmc2;
>> +	};
>> +
>> +	chosen {
>> +		stdout-path = "serial2:1500000n8";
>> +	};
>> +
>> +	hdmi-con {
>> +		compatible = "hdmi-connector";
>> +		type = "a";
>> +
>> +		port {
>> +			hdmi_con_in: endpoint {
>> +				remote-endpoint = <&hdmi_out_con>;
>> +			};
>> +		};
>> +	};
>> +
>> +	ir-receiver {
>> +		compatible = "gpio-ir-receiver";
>> +		gpios = <&gpio0 RK_PC2 GPIO_ACTIVE_LOW>;
>> +		pinctrl-names = "default";
>> +		pinctrl-0 = <&pwm3_ir>;
>> +	};
>> +
>> +	leds {
>> +		compatible = "gpio-leds";
>> +
>> +		led-green {
> 
> led-0 or just led (leds-gpio.yaml)

Thanks, I will fix in v3.

Regards,
Jonas

> 
> Best regards,
> 
> --
> FUKAUMI Naoki
> Radxa Computer (Shenzhen) Co., Ltd.
> 

[snip]

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
