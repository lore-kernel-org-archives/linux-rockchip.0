Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60B67C021A0
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Feb 2025 16:01:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lk6c4e/gjRmyjCuBX0Or+i1gyg6JMe+9TL1OIG6pIlo=; b=tdx/RRY13wKz25
	wo2GUKkJmrO02WvEmF/T4Taw+6JvRxcs+aeczrl+tgsy+LRTAP5NLEcxxY0PHU+PhKI5tKts7yq3H
	bCOlQt76u0NSQBC0DE4CniC40qfaMgN3lJNinm6Nob8oVlpp0R2s3DjU5TA4yeet4eq+KC8E/k45p
	UCtw3X1G8taoE7A0rnb4L3hEnu+hFmD264h322/sIHFeuvp+MYXQHzjDk8WFnHB8+mUpA9k30yVoW
	mhrHAQuZofJXVccF6IqKp9YEA0GPCAvptxSRnNoyQL2vCkEqAtlUnbBY6Gsl2RV4uX0RYBykX3zPq
	E4p8fn3cEPnRQewbb7Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tibee-0000000Bf6S-2oQP;
	Thu, 13 Feb 2025 16:01:32 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tibSE-0000000BcD4-04AR
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Feb 2025 15:48:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1739461719;
 bh=OSqEFJEPXbKrFf4UCRw4Rj9UNsiFiIqusumOACEFv68=;
 b=qCks0rqWXqq7S8CWwKJQS1u/SkL4gvsgOysaDHTxzRLN+wYib36rYT5twLdUC1lkGUfTCzQ7R
 EcqvT2OlzchDVOu6PRtcJ3H33J14mS9MlAJ+7PStONOx30NcRujc5mZXlk/vKU4fvEttgcsEv/R
 9OZOAch8m5tseNruRmuejtMy+KuIx5glttD20dcEmgNpdo7402MqFQsu/MJG6mGbHrxgZuD2XIf
 67WLYPiHwRS6pyHxAK53hqJymsX1vmT7amASc19G7mAzAyOTAeXhEomzLowA1Cs+k6JJx2E7sFM
 DFTES00oYLc4QsqRyaFBvzto58Ryyz0BYySP+YbpDolg==
X-Forward-Email-ID: 67ae1441eeea92be259cebf3
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <b5977d21-aa39-4e91-863b-cc7f9dc6938c@kwiboo.se>
Date: Thu, 13 Feb 2025 16:48:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add Radxa ROCK 4D device
 tree
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Dragan Simic <dsimic@manjaro.org>, Chris Morgan <macromorgan@hotmail.com>,
 Kever Yang <kever.yang@rock-chips.com>, Tim Lunn <tim@feathertop.org>,
 FUKAUMI Naoki <naoki@radxa.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Weizhao Ouyang <weizhao.ouyang@arm.com>, Elon Zhang
 <zhangzj@rock-chips.com>, Alexey Charkov <alchark@gmail.com>,
 Stephen Chen <stephen@radxa.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com
References: <20250213145921.133412-1-detlev.casanova@collabora.com>
 <20250213145921.133412-3-detlev.casanova@collabora.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250213145921.133412-3-detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250213_074842_397630_5462B945 
X-CRM114-Status: GOOD (  19.01  )
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

Hi Detlev,

On 2025-02-13 15:57, Detlev Casanova wrote:
> From: Stephen Chen <stephen@radxa.com>
> 
> The Radxa ROCK 4D board is based on the Rockchip rk3576 SoC.
> 
> The device tree adds support for basic devices:
>  - UART
>  - SD Card
>  - Ethernet
>  - USB
>  - RTC
> 
> It has 4 USB ports but only 3 are usable as the top left one is used
> for maskrom.
> 
> It has a USB-C port that is only used for powering the board.
> 
> Signed-off-by: Stephen Chen <stephen@radxa.com>
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3576-rock-4d.dts      | 651 ++++++++++++++++++
>  2 files changed, 652 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index def1222c1907e..a112aeb37948a 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -132,6 +132,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-display-vz.dtbo
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-io-expander.dtbo
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-armsom-sige5.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-evb1-v10.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-rock-4d.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3582-radxa-e52c.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-armsom-sige7.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-armsom-w3.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
> new file mode 100644
> index 0000000000000..f356742f9d643
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
> @@ -0,0 +1,651 @@

[snip]

> +&gmac0 {
> +	phy-mode = "rgmii-id";
> +	clock_in_out = "output";
> +
> +	snps,reset-gpio = <&gpio2 RK_PB5 GPIO_ACTIVE_LOW>;
> +	snps,reset-active-low;
> +	snps,reset-delays-us = <0 20000 100000>;

The snps,reset- props are deprecated and should be changed to reset-
props in the phy node.

> +
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&eth0m0_miim
> +		     &eth0m0_tx_bus2
> +		     &eth0m0_rx_bus2
> +		     &eth0m0_rgmii_clk
> +		     &eth0m0_rgmii_bus
> +		     &ethm0_clk0_25m_out>;
> +
> +	phy-handle = <&rgmii_phy0>;
> +	status = "okay";
> +};

[snip]

> +&mdio0 {
> +	rgmii_phy0: phy@1 {

Maybe ethernet-phy@1 ?

> +		compatible = "ethernet-phy-ieee802.3-c22";
> +		reg = <0x1>;
> +		clocks = <&cru REFCLKO25M_GMAC0_OUT>;

Please add reset- props here.

Changing to use reset- props may cause issue if a RTL8211F PHY is used
on the board. Use a ethernet-phy-id compatible or mainline U-Boot to
ensure the Ethernet PHY can be discovered during probe.

Regards,
Jonas

> +	};
> +};
> +

[snip]

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
