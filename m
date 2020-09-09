Return-Path: <SRS0=OTpZ=CS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA63BC433E2
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Sep 2020 08:34:49 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8906A21532
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Sep 2020 08:34:49 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="pe5p9Hxh"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8906A21532
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=71lBI0hqB3eUjtU0hOTSGrmODofGNC0pxMC6lj3svv8=; b=pe5p9HxhKY47yY7WRnGb9Q1X/s
	0qAwaUeZwc/+b4JhWS0tqwd0HelYD0TUVHtyCu5H05zY/tCY/pdPtXWEDvXr+u9qFcxWZmzc8jxCF
	wHW0IRmOSuVy6Yi5ImEg2TFkTkMS5eDYQteZEoCntFdwEsdMQ+pA4P8n7kTwxpwDrIRidXh+2lijH
	6GgJaStEOnQcAkWhmkCvflOKbCTGG2IYd/X27dUIJ0j7FxYor4H/kSzq+o9RHak0x9ufNnrqC+i3m
	PEShHKnBvrAq136+/adVEP97BIxhh1jq0S8hif0cHFdDLdYmCwr5iOsQsbIoGDF7zGV5NuqUNrzlP
	nk63o5LQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kFvYy-0005us-5l; Wed, 09 Sep 2020 08:34:44 +0000
Received: from mail-ej1-f66.google.com ([209.85.218.66])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kFvYt-0005ti-OQ; Wed, 09 Sep 2020 08:34:40 +0000
Received: by mail-ej1-f66.google.com with SMTP id r7so2289060ejs.11;
 Wed, 09 Sep 2020 01:34:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vsALB+bxuuEP7Stns5jLN4qt786xLJXYhZvHFA9movY=;
 b=TZR+ru75FR+SZ9syy3zfd0K2m0H1MfqVnkkj/N6oTRhhZkwIf5lDWdOQvFJ0zXQIZM
 O71PaP8xyxKnmp0kZu8351V2xdaNoexw6o660eriRHB4ItPmH47F9vuXQCLANYxvVShs
 QuLqHmhpC4PqBzx4gcxTIq1ZQrUnqLvBCe3TY6gmR9fWC2pUXJwXAo+5Z2oZ5pCZhD2c
 2iohN8KRC19msUJu9TrFMno6DaQfmNJBKfZccCmpCGFVJ1FJclfBhgBNFGcB7HCklyxA
 e1a+SVtjbPTlguPtHe9S4LLtKhzqigKppNsrGB4EkragEn/Rg1ph+EYDFKYh9UqyA8q3
 lfYQ==
X-Gm-Message-State: AOAM531FQBJtMJEPtHD5RSCnsxEPd7TbnPYKEHJfIs+NHsPbaF6oAXGe
 gdJ2FWc8sEZy88L+OhLUV/4nogybylY=
X-Google-Smtp-Source: ABdhPJzNWdfEaEJMrGWJQ6SgVZ2LZkowL8XUPe1AidTLBAqeR320x6AIAcMg2mNv6uF3Dy3F+cwHGw==
X-Received: by 2002:a17:906:1b55:: with SMTP id
 p21mr2628419ejg.457.1599640477647; 
 Wed, 09 Sep 2020 01:34:37 -0700 (PDT)
Received: from kozik-lap ([194.230.155.174])
 by smtp.googlemail.com with ESMTPSA id b13sm1320130edf.89.2020.09.09.01.34.35
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 09 Sep 2020 01:34:36 -0700 (PDT)
Date: Wed, 9 Sep 2020 10:34:34 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Heiko Stuebner <heiko@sntech.de>, Michal Simek <michal.simek@xilinx.com>,
 Adam Ford <aford173@gmail.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Robin Gong <yibin.gong@nxp.com>,
 Alifer Moraes <alifer.wsdm@gmail.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "Angus Ainslie (Purism)" <angus@akkea.ca>,
 Vitor Massaru Iha <vitor@massaru.org>,
 Kever Yang <kever.yang@rock-chips.com>, Rajan Vaja <rajan.vaja@xilinx.com>,
 Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 3/8] arm64: dts: imx8mm: Correct interrupt flags in
 examples
Message-ID: <20200909083434.GB11775@kozik-lap>
References: <20200908150241.5771-1-krzk@kernel.org>
 <20200908150241.5771-3-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200908150241.5771-3-krzk@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200909_043439_810675_FD1A4A6D 
X-CRM114-Status: GOOD (  19.59  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Tue, Sep 08, 2020 at 05:02:36PM +0200, Krzysztof Kozlowski wrote:
> GPIO_ACTIVE_x flags are not correct in the context of interrupt flags.
> These are simple defines so they could be used in DTS but they will not
> have the same meaning:
> 1. GPIO_ACTIVE_HIGH = 0 = IRQ_TYPE_NONE
> 2. GPIO_ACTIVE_LOW  = 1 = IRQ_TYPE_EDGE_RISING
> 
> Correct the interrupt flags, assuming the author of the code wanted some
> logical behavior behind the name "ACTIVE_xxx", this is:
>   ACTIVE_LOW  => IRQ_TYPE_LEVEL_LOW
>   ACTIVE_HIGH => IRQ_TYPE_LEVEL_HIGH
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  arch/arm64/boot/dts/freescale/imx8mm-beacon-som.dtsi      | 2 +-
>  arch/arm64/boot/dts/freescale/imx8mm-evk.dts              | 2 +-
>  arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts | 2 +-
>  arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi         | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-beacon-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-beacon-som.dtsi
> index 620a124dfb5f..fdce665d7ac4 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-beacon-som.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-beacon-som.dtsi
> @@ -74,7 +74,7 @@
>  		reg = <0x4b>;
>  		pinctrl-0 = <&pinctrl_pmic>;
>  		interrupt-parent = <&gpio1>;
> -		interrupts = <3 GPIO_ACTIVE_LOW>;
> +		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;

All rohm,bd71847 PMIC interrupts should be rather EDGE_FALLING.  Some of
the boards do not have external pull ups and most of the boards do not
configure internal pull up.  Level low would cause the interrupt line to
stay low all the time.

Best regards,
Krzysztof

>  		rohm,reset-snvs-powered;
>  
>  		regulators {
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> index 38134d201eef..609d73e19fee 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> @@ -166,7 +166,7 @@
>  		reg = <0x4b>;
>  		pinctrl-0 = <&pinctrl_pmic>;
>  		interrupt-parent = <&gpio1>;
> -		interrupts = <3 GPIO_ACTIVE_LOW>;
> +		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
>  		rohm,reset-snvs-powered;
>  
>  		regulators {
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
> index 0bca737964d5..b84d94e10c26 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
> @@ -133,7 +133,7 @@
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pinctrl_captouch>;
>  		interrupt-parent = <&gpio5>;
> -		interrupts = <4 GPIO_ACTIVE_HIGH>;
> +		interrupts = <4 IRQ_TYPE_LEVEL_HIGH>;
>  
>  		touchscreen-size-x = <800>;
>  		touchscreen-size-y = <480>;
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
> index c371cb34b3f7..49743d2f60c1 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
> @@ -137,7 +137,7 @@
>  		reg = <0x4b>;
>  		pinctrl-0 = <&pinctrl_pmic>;
>  		interrupt-parent = <&gpio2>;
> -		interrupts = <8 GPIO_ACTIVE_LOW>;
> +		interrupts = <8 IRQ_TYPE_LEVEL_LOW>;
>  		rohm,reset-snvs-powered;
>  
>  		regulators {
> -- 
> 2.17.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
