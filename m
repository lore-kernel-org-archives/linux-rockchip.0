Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E31FAC04FF6
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Apr 2024 08:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5jJXsV7xjsNwyR2Z60InpDpMDTp5k5lcBah5TBFOzT4=; b=JYSdtAzLlFNGX4
	0gWtyIFcm5sgV+tFLUM+8tg2eATsPJMgK6LH63Fkoyhxc7D2Ca6LYWM7nH/As8BynKxV5tXV3cnoM
	t321sCeHatf2AcS7u5DcisHhrNE4bvlt3JvlIMGPopoRylMj8MDwQcB+1hBaV2w2S80siOUWKcH8q
	Jl0tUKKhMcsFkgeDqDOZO3HxGYomG6gulzWIpW3iP79lWoAke7HRXhqYiJ5u+ibfnuXMhXh65p01l
	ZOl5U2or9jFeWEvs/TW1QnExDvf4IoDLxrBTsnCQReG7jnnu17jbtfohij0BfiGZKHJ/dp8yWo7nF
	N2EUfC+8rPkOyzDht4lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwdoz-0000000BN4k-40kS;
	Tue, 16 Apr 2024 08:05:41 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwdoq-0000000BN1m-1r5N
	for linux-rockchip@lists.infradead.org;
	Tue, 16 Apr 2024 08:05:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1713254714;
 bh=9v28hOIUE9GkM0a76qA4AwgtWDjyV1OaSvUjBLLAPY8=;
 b=HWK+CtFdqlfcCh0mmfXdyKbDIxtifX9DA2Yz5T+Gtbu9xskeu/1MKoki1WMnCWovx89Vt4HDm
 wJcO+eEraJWf65BgmA+UAqFk16FkoQpAgMRIQ3CNrH/waHhO9vmO1deULXy7FLvBCnkxMCn/sFK
 KvXQn0su+k89Y9o+Rf6egTtIwREkdfRsCp7QvOjO0qyiKHlb5G4fxUaRZb+f52APvzs3e/Ob9On
 wrorhEaE7dKDxBlB/oW354NUEIFhE11JDrhzPQcM3Zq5zrvOrZcZevy55MyMYww3UMG85+iZCxG
 L/quX65XN8qTqznAw9W5c2StwlhAWjjY7z8+WLT8sLLw==
Message-ID: <f5a9e7c0-1d8c-462b-bf7a-d6aa73f63afa@kwiboo.se>
Date: Tue, 16 Apr 2024 10:05:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: rockchip: Add Radxa ZERO 3W/3E
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240415150349.2207075-1-jonas@kwiboo.se>
 <20240415150349.2207075-3-jonas@kwiboo.se>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20240415150349.2207075-3-jonas@kwiboo.se>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 661e313a0360d053efe603b4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_010532_868392_C774D118 
X-CRM114-Status: GOOD (  16.54  )
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

On 2024-04-15 17:03, Jonas Karlman wrote:
> The Radxa ZERO 3W/3E is an ultra-small, high-performance single board
> computer based on the Rockchip RK3566, with a compact form factor and
> rich interfaces.
> 
> The ZERO 3W and ZERO 3E are basically the same size and model, but
> differ only in storage and network interfaces.
> 
> - eMMC (3W)
> - SD-card (both)
> - Ethernet (3E)
> - WiFi/BT (3W)
> 
> This adds initial support for eMMC, SD-card, Ethernet, HDMI and USB.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---
> v2: Add to Makefile
> v3: Sort hdmi-con and leds nodes alphabetically
> v3: Sort pmic@20 and regulator@40 nodes by reg
> v3: Change to regulator-off-in-suspend for vdd_logic
> 
> Following issue is reported by dtbs_check and is fixed by patch at [1]:
> 
>   hdmi@fe0a0000: Unevaluated properties are not allowed ('#sound-dai-cells' was unexpected)
>   from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-hdmi.yaml#
> 
> [1] https://lore.kernel.org/linux-rockchip/3a035c16-75b5-471d-aa9d-e91c2bb9f8d0@gmail.com/
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   2 +
>  .../dts/rockchip/rk3566-radxa-zero-3e.dts     |  41 ++
>  .../dts/rockchip/rk3566-radxa-zero-3w.dts     |  26 +
>  .../boot/dts/rockchip/rk3566-radxa-zero3.dtsi | 443 ++++++++++++++++++
>  4 files changed, 512 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3e.dts
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero3.dtsi
> 

[snip]

> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero3.dtsi
> new file mode 100644
> index 000000000000..ea8ade3a4c99
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero3.dtsi

[snip]

> +
> +&i2c0 {
> +	status = "okay";
> +

[snip]

> +	vdd_cpu: regulator@40 {
> +		compatible = "silergy,syr827";

After checking once more on schematic and inspecting the board this is
actually a RK860-0 regulator and should use following:

  compatible = "rockchip,rk8600";

Will send a v4 with this change later this week.

Regards,
Jonas

> +		reg = <0x40>;
> +		fcs,suspend-voltage-selector = <1>;
> +		regulator-name = "vdd_cpu";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <712500>;
> +		regulator-max-microvolt = <1390000>;
> +		regulator-ramp-delay = <2300>;
> +		vin-supply = <&vcc_sys>;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +};

[snip]

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
