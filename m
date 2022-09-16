Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 230F8ECAAD8
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Sep 2022 13:18:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5PlYGYgbfOhnfdtH613RevNxuJhMqHDKOCUj6Em1aC8=; b=ncGU1RnCV5RcGQ
	HrbSo1Zwwih1bvMwg3hKb/GqVL2LD8TnIppp6EZxdGVwbTCxlGk+v4YUomxhGsYA4+9Ok1dmxo2Iv
	vLKy0TRDGyVX5KCY1reWREMwnPvnSPofCylMdMVga6uXCYHrD+D0WBTfZmJI00DLWEa2waFEDtw/m
	9dch/+NdxPtqWO2qvK3vfrPtgvBP5iVHpsfN9FjVsydaEEI5gN+BKxCkQvPrrEbo0NDprUwmpjWI1
	cshO/n7aDPDlp8nz/113BbxiPK8BDF+jKuIGND9PW7Gl5pRB8pG/rQKnHL1zO+h6FqpfKLJc23eHG
	ex/UHYqzyNL7I2a9279g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZBEL-00DZLs-Lr; Fri, 16 Sep 2022 13:18:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZBE8-00DZH5-44; Fri, 16 Sep 2022 13:17:53 +0000
Received: from [89.101.193.70] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oZBE5-000384-PT; Fri, 16 Sep 2022 15:17:49 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Alessandro Carminati <alessandro.carminati@gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: rockchip: k3566-quartz64-a: fix names entries, refactor
Date: Fri, 16 Sep 2022 15:17:48 +0200
Message-ID: <1916265.yKVeVyVuyW@phil>
In-Reply-To: <YyRxp7pDCyikNLGc@lab.hqhome163.com>
References: <YyRxp7pDCyikNLGc@lab.hqhome163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_061752_204467_48502C0F 
X-CRM114-Status: GOOD (  19.36  )
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

Hi Alessandro,

Am Freitag, 16. September 2022, 14:52:55 CEST schrieb Alessandro Carminati:
> Fix esisting "No underscores in node names" general rule, and prepare for
> new board versions.

if there is an "and" in your patch message, this always is a strong
indication that things want to be multiple patches, doing things separately.

- regulator node names
- and the separation + move

at least.


> Signed-off-by: Alessandro Carminati <alessandro.carminati@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |  2 +-
>  ...-quartz64-a.dts => rk3566-quartz64-a.dtsi} | 27 ++++++++-----------
>  .../dts/rockchip/rk3566-quartz64-a.usb3.dts   |  9 +++++++
>  3 files changed, 21 insertions(+), 17 deletions(-)
>  rename arch/arm64/boot/dts/rockchip/{rk3566-quartz64-a.dts => rk3566-quartz64-a.dtsi} (97%)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.usb3.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index ef79a672804a..97ec6c156346 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -59,7 +59,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire-excavator.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399pro-rock-pi-n10.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.2.dtb
> -dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a.usb3.dtb

I don't think we're using dots to denote separation.
Just use another dash ("-").

>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-b.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-roc-pc.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-soquartz-cm4.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dtsi
> similarity index 97%
> rename from arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> rename to arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dtsi
> index d943559b157c..ac3da5b2c1b2 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dtsi
> @@ -28,7 +28,7 @@ gmac1_clkin: external-gmac1-clock {
>  		#clock-cells = <0>;
>  	};
>  
> -	fan: gpio_fan {
> +	fan: fan {

I do think "gpio-fan" with a dash might be nicer, as we don't
have an address that indicates which fan it is.

>  		compatible = "gpio-fan";
>  		gpios = <&gpio0 RK_PD5 GPIO_ACTIVE_HIGH>;
>  		gpio-fan,speed-map = <0    0
> @@ -38,7 +38,7 @@ fan: gpio_fan {
>  		#cooling-cells = <2>;
>  	};
>  
> -	hdmi-con {
> +	hdmi-connector {
>  		compatible = "hdmi-connector";
>  		type = "a";
>  
> @@ -116,7 +116,7 @@ simple-audio-card,codec {
>  		};
>  	};
>  
> -	vcc12v_dcin: vcc12v_dcin {
> +	vcc12v_dcin: vcc12v-dcin {

The newly agreed on scheme is to have  "-regulator" at the end

	vcc12v_dcin: vcc12v-dcin-regulator {

would be the new name.

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
