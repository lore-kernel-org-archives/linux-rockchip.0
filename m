Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7685C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Feb 2022 17:50:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VxGUAMh2+NVN4Os7xL+1DlJpMZ19cjjtyPgDNb3xs0w=; b=qT9NXCfiLPTksw
	TYswjKW0eByaKmFs/R814a2XG0xWaLsixG6KMVLkUf9TTNQrZx95PG4cEFTLsMg+I5cB2LoPmI3/i
	03aMT24cBWbdxJ23AlU183kNTrUuoB8ITbwZOaydxFVvVTrzl7AvxzapcgFbWjk5CcXopJl/kBraD
	UbM6+uSoIJmQe55VhuPJiKDca6R0xw9QFYmbp1oB1qB6m2muWYVxZKlDG8jMXdvLA/HUC2InKw/+N
	7FGRsYFLxle6rzE74sLnoXP6dC+/Hs2+ty3R3CVxPcjlOTsu4ynYO2R0tccOOiN+sx9UZM4QDDL5N
	SrVRPELgJVN+DWDDUXOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nONgw-009stn-Fd; Sun, 27 Feb 2022 17:50:42 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nONgu-009st3-6R; Sun, 27 Feb 2022 17:50:41 +0000
Received: by mail-ed1-x532.google.com with SMTP id cm8so14479593edb.3;
 Sun, 27 Feb 2022 09:50:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=6fQlqoO+oGr4+WusT747tAtiTGYFGKirj0tZQ8ZySRs=;
 b=eRtNNeiLpw9SEksUxP6FC0b4W73NJdHOFUA2tOzglyNEVKL+R3xBGFWajkq9YYHScs
 45x10ov9KEFHRecqvJhISA+AJmHylyqjhTm+j7ff+AVGgCnDCRr433qr9kFZ2ztJcNlu
 VmedHA47nRtPijwhHOYkehFgWWVRGWndGf9aqYa0C/FDEGxjAZqq42lGnjAyV197x+Y0
 213taRggz+pIx+xPZI8GLeGNdBAeEOmjOl97zXpTb29lT8MTcrwcShDOkRKqAe2CEPN3
 0D7FUMwSMcqXTsWh4/PcPg/Zi8hoxC9qSsEcLRT2WoHgEcRd+r2a/DHumL0YQ1UbGGju
 HUyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=6fQlqoO+oGr4+WusT747tAtiTGYFGKirj0tZQ8ZySRs=;
 b=Iepxed6BXUHX5ETjqPY4HgrN9ihvmmRhYLyY7O5Dcw1McZsmZfUgTge/+wbsTwLEqC
 a4ewcZp3P2MZqaoaQbYOgIzE3hcs18Vk22+thAFKr+6YQ+aSgQODAtv0pApJPDMeTsQR
 LiEKR1taSbajOQN85YaQrYVVWViYsNLbaxwSKzeuhQHJjc5a7fHmRbhEWs2Q1cA5c9uL
 nmqdUJyE9jMMycznCdXDaI8+PX4AObbXKoahScj432U9ZUz3oJAkzSuS0xwXL6o9TUC+
 rRijrhY/aMT7JQxevJuYTHCuU6v4sCM6z1qrC/b9TwX7CWmLeuTOxEeHu4Bhr6NeQat3
 uTww==
X-Gm-Message-State: AOAM532w1i4KUDT2y2VHIg78jK/w2g63BCV/ZZwF2DPtNxUOo0uX9Q8f
 TJ7+3o59WB/f3AHdZF1RwCQ=
X-Google-Smtp-Source: ABdhPJyVHvjhFYnWTgyVC5w07SKobhLC6lklAAnZEXrx/5b0sBKDQ/QqPTcQ8ygmfU6BvEZqCUDrKw==
X-Received: by 2002:a05:6402:190b:b0:412:8cfc:c266 with SMTP id
 e11-20020a056402190b00b004128cfcc266mr16204469edz.274.1645984238568; 
 Sun, 27 Feb 2022 09:50:38 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 q7-20020a170906940700b006b86e95dc1fsm3595926ejx.41.2022.02.27.09.50.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 27 Feb 2022 09:50:38 -0800 (PST)
Message-ID: <7b20fccd-4394-da3c-6556-4732d67cde3d@gmail.com>
Date: Sun, 27 Feb 2022 18:50:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3 5/7] arm64: dts: rockchip: add rk356x dwc3 usb3 nodes
Content-Language: en-US
To: Peter Geis <pgwipeout@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, michael.riesch@wolfvision.net,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220227153016.950473-1-pgwipeout@gmail.com>
 <20220227153016.950473-6-pgwipeout@gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20220227153016.950473-6-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220227_095040_278763_C8C9EB5A 
X-CRM114-Status: GOOD (  16.56  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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



On 2/27/22 16:30, Peter Geis wrote:
> Add the dwc3 device nodes to the rk356x device trees.
> The rk3566 has one usb2 capable dwc3 otg controller and one usb3 capable
> dwc3 host controller.
> The rk3568 has one usb3 capable dwc3 otg controller and one usb3 capable
> dwc3 host controller.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3566.dtsi | 11 ++++++++
>  arch/arm64/boot/dts/rockchip/rk3568.dtsi |  9 ++++++
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 35 +++++++++++++++++++++++-
>  3 files changed, 54 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566.dtsi b/arch/arm64/boot/dts/rockchip/rk3566.dtsi
> index 3839eef5e4f7..0b957068ff89 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566.dtsi
> @@ -6,6 +6,10 @@ / {
>  	compatible = "rockchip,rk3566";
>  };
>  
> +&pipegrf {
> +	compatible = "rockchip,rk3566-pipe-grf", "syscon";
> +};
> +
>  &power {
>  	power-domain@RK3568_PD_PIPE {
>  		reg = <RK3568_PD_PIPE>;
> @@ -18,3 +22,10 @@ power-domain@RK3568_PD_PIPE {
>  		#power-domain-cells = <0>;
>  	};
>  };
> +
> +&usb_host0_xhci {
> +	phys = <&usb2phy0_otg>;
> +	phy-names = "usb2-phy";
> +	extcon = <&usb2phy0>;
> +	maximum-speed = "high-speed";
> +};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> index 5b0f528d6818..8ba9334f9753 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> @@ -99,6 +99,10 @@ opp-1992000000 {
>  	};
>  };
>  
> +&pipegrf {
> +	compatible = "rockchip,rk3568-pipe-grf", "syscon";
> +};
> +
>  &power {
>  	power-domain@RK3568_PD_PIPE {
>  		reg = <RK3568_PD_PIPE>;
> @@ -114,3 +118,8 @@ power-domain@RK3568_PD_PIPE {
>  		#power-domain-cells = <0>;
>  	};
>  };
> +
> +&usb_host0_xhci {
> +	phys = <&usb2phy0_otg>, <&combphy0 PHY_TYPE_USB3>;
> +	phy-names = "usb2-phy", "usb3-phy";
> +};
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index 7cdef800cb3c..072bb9080cd6 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -230,6 +230,40 @@ scmi_shmem: sram@0 {
>  		};
>  	};
>  
> +	usb_host0_xhci: usb@fcc00000 {

> +		compatible = "snps,dwc3";

compatible = "rockchip,rk3568-dwc3", "snps,dwc3";

compatible strings must be SoC orientated.
Add binding like you did before.

> +		reg = <0x0 0xfcc00000 0x0 0x400000>;
> +		interrupts = <GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru CLK_USB3OTG0_REF>, <&cru CLK_USB3OTG0_SUSPEND>,
> +			 <&cru ACLK_USB3OTG0>;
> +		clock-names = "ref_clk", "suspend_clk",
> +			      "bus_clk";
> +		dr_mode = "host";
> +		phy_type = "utmi_wide";
> +		power-domains = <&power RK3568_PD_PIPE>;
> +		resets = <&cru SRST_USB3OTG0>;
> +		snps,dis_u2_susphy_quirk;
> +		status = "disabled";
> +	};
> +
> +	usb_host1_xhci: usb@fd000000 {

> +		compatible = "snps,dwc3";

compatible = "rockchip,rk3568-dwc3", "snps,dwc3";

> +		reg = <0x0 0xfd000000 0x0 0x400000>;
> +		interrupts = <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru CLK_USB3OTG1_REF>, <&cru CLK_USB3OTG1_SUSPEND>,
> +			 <&cru ACLK_USB3OTG1>;
> +		clock-names = "ref_clk", "suspend_clk",
> +			      "bus_clk";
> +		dr_mode = "host";
> +		phys = <&usb2phy0_host>, <&combphy1 PHY_TYPE_USB3>;
> +		phy-names = "usb2-phy", "usb3-phy";
> +		phy_type = "utmi_wide";
> +		power-domains = <&power RK3568_PD_PIPE>;
> +		resets = <&cru SRST_USB3OTG1>;
> +		snps,dis_u2_susphy_quirk;
> +		status = "disabled";
> +	};
> +
>  	gic: interrupt-controller@fd400000 {
>  		compatible = "arm,gic-v3";
>  		reg = <0x0 0xfd400000 0 0x10000>, /* GICD */
> @@ -297,7 +331,6 @@ pmu_io_domains: io-domains {
>  	};
>  
>  	pipegrf: syscon@fdc50000 {
> -		compatible = "rockchip,rk3568-pipe-grf", "syscon";
>  		reg = <0x0 0xfdc50000 0x0 0x1000>;
>  	};
>  

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
