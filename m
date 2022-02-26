Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FA31C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Feb 2022 23:01:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B6AHBDXlKFAPL7RMbbrkJXJbTDziLtqVOS4NyEYnH8E=; b=S7og/xq+lioLuq
	10Je733Bew1wZQjh1lBDn2alIQUxQ/n7WbtMg4q8QzOwgD3G+7aS/zpIdBDbngqE7cLHYwe3wX5r+
	m+Z/DCvqES4Eu//+pv8AsvFyecHuLLO94ly/TPmjpama1KRPhDC/7RN/LtLO21wZPVubO+mQmQPOD
	0qgH1XUzpWebxNekbEuZHU9++SlWOFOr/EwY1gtlTx0JqKqsgAWjJIQT8KyrcYQ9k7uR0iJLKy4Mh
	jbT6Q4yRFDczo0zEeulkjfB4UhAHNvNPiCCxdHWp93JNTcXrq07zvmdZLUmw3RjlGNSwPlGH+aopn
	17R2vJ8fgoJWz/BQzA1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nO64J-008dCZ-25; Sat, 26 Feb 2022 23:01:39 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nO64F-008dC9-K7; Sat, 26 Feb 2022 23:01:37 +0000
Received: by mail-ed1-x52a.google.com with SMTP id s1so12256108edd.13;
 Sat, 26 Feb 2022 15:01:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=R4So/PECm61OZ01mIF7ODeZeqiQRsFB7JUYw8mQwSPY=;
 b=XSHSQZMIFy1PCnsKBq0jl90+qILq33ht8tz/Xdre/EaWzq/p6mn+6/gyRHpAA5cGaR
 V24tIgF8qYFvjC+GAGARLcawNs5kyk56EOOuviFaXza16oNVONmQGwZweOF2567rPw1A
 iTv/ROBiOgMntrxiQ08zK2WtUqoWayu86nQmOZfkaVNl0OqP42zbQfbyzflCgnFPWKOb
 /Gcp2jO2m5E8gLxGmrBeX8BqdwDjU3EvHcf2hzVyZwKJtFE3iTKNyWhhDYPTORlWyP1C
 k4+lLT1SgnfzPyxOsx6zm6p2zCI9X0Je8vRgD9bUxaV3njkDLtkipZ5gnppMvAz96+6c
 0GdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=R4So/PECm61OZ01mIF7ODeZeqiQRsFB7JUYw8mQwSPY=;
 b=wz3hksUfe1TLxohqwRorVw4To3QsZb9MqyyMcYhfIlM2cZc9jrSyUxjqzolHXjlmzG
 koVC2wQJdD4VO2OpY/MmeTjzOr7VkridZmVtXS3bRy1LM2W56S6axz4Jg8drz9G+XajF
 3Z5KJYGmR2+sxTjgnFaGAME03PacxZGUcGFjipyadnqiOxcCOKjTI5KB1MRMmd+yan9O
 fNrCnvtQdxqGjdp1lEIBc4Ls1YJTih13MZZawTpr47+VoxhSjeKwhHm/z0fa/feI5GsC
 A9QzMN6Y3YMSVoKX7S+J7p0BoTojEjZtooZS2p27LbYHsG1O9+N51Ud5JOHhnbTq34FF
 /bOw==
X-Gm-Message-State: AOAM530G6erxXgpH/z6UZZtwZwfZGU5e+9BoaYGLRby7JUbsRv3meOsb
 5pzewZx9+DOflm3vSRppfTk=
X-Google-Smtp-Source: ABdhPJxNtOrcCupBKrlUQxBLUlOCFMWX+7jjUerqu/yUw4JMGzDwaCsVaaZx5RdKNh1zrG+bzUTHGw==
X-Received: by 2002:a05:6402:d6:b0:413:b81:6695 with SMTP id
 i22-20020a05640200d600b004130b816695mr13185716edu.176.1645916494025; 
 Sat, 26 Feb 2022 15:01:34 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 j21-20020aa7c415000000b004127ac9ddc3sm3460151edq.50.2022.02.26.15.01.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 26 Feb 2022 15:01:33 -0800 (PST)
Message-ID: <4a49ba17-436b-c6b3-4a7d-42902781d2f4@gmail.com>
Date: Sun, 27 Feb 2022 00:01:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 09/11] arm64: dts: rockchip: add rk356x dwc3 usb3 nodes
Content-Language: en-US
To: Peter Geis <pgwipeout@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, michael.riesch@wolfvision.net,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220226184147.769964-1-pgwipeout@gmail.com>
 <20220226184147.769964-10-pgwipeout@gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20220226184147.769964-10-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220226_150135_707513_28E5A2EF 
X-CRM114-Status: GOOD (  18.44  )
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



On 2/26/22 19:41, Peter Geis wrote:
> Add the dwc3 device nodes to the rk356x device trees.
> The rk3566 has one usb2 capable dwc3 otg controller and one usb3 capable
> dwc3 host controller.
> The rk3568 has one usb3 capable dwc3 otg controller and one usb3 capable
> dwc3 host controller.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3566.dtsi | 12 +++++++
>  arch/arm64/boot/dts/rockchip/rk3568.dtsi |  9 +++++
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 45 +++++++++++++++++++++++-
>  3 files changed, 65 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566.dtsi b/arch/arm64/boot/dts/rockchip/rk3566.dtsi
> index 3839eef5e4f7..a57eb68faba2 100644
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
> @@ -18,3 +22,11 @@ power-domain@RK3568_PD_PIPE {
>  		#power-domain-cells = <0>;
>  	};
>  };
> +
> +&usb_host0_xhci {
> +	phys = <&usb2phy0_otg>;
> +	phy-names = "usb2-phy";
> +	extcon = <&usb2phy0>;
> +	maximum-speed = "high-speed";
> +	snps,dis_u2_susphy_quirk;
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
> index 7cdef800cb3c..b22e5a514ad7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -230,6 +230,50 @@ scmi_shmem: sram@0 {
>  		};
>  	};
>  
> +	usb_host0_xhci: usb@fcc00000 {
> +		compatible = "rockchip,rk3568-dwc3", "snps,dwc3";
> +		reg = <0x0 0xfcc00000 0x0 0x400000>;
> +		interrupts = <GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru CLK_USB3OTG0_REF>, <&cru CLK_USB3OTG0_SUSPEND>,
> +			 <&cru ACLK_USB3OTG0>;
> +		clock-names = "ref_clk", "suspend_clk",
> +			      "bus_clk";
> +		dr_mode = "host";
> +		phy_type = "utmi_wide";

> +		power-domains = <&power RK3568_PD_PIPE>;

When both usb_host0_xhci and usb_host1_xhci are connected to a usb2phy
and the combphy's disabled there's no PCLK_PIPE enabled.
Fix logic for RK3568_PD_PIPE by adding the USB3 clocks.


> +		resets = <&cru SRST_USB3OTG0>;

> +		reset-names = "usb3-otg";

remove

snps,dwc3.yaml only mentions the "resets" because
devm_reset_control_array_get_optional_shared is used.
reset-names is only a rk3399 legacy that I included due to the YAML
conversion.
With unevaluatedProperties now working "resets" also could be removed
from rockchip,dwc3.yaml I think.

https://github.com/torvalds/linux/commit/2f8e928408885dad5d8d6afefacb82100b6b62c7
Added properties for rk3399 are:
  power-domains
  resets
  reset-names

> +		snps,dis_enblslpm_quirk;
> +		snps,dis-u2-freeclk-exists-quirk;
> +		snps,dis-del-phy-power-chg-quirk;
> +		snps,dis-tx-ipgap-linecheck-quirk;

sort

> +		snps,xhci-trb-ent-quirk;

???

check snps,dwc3.yaml

> +		status = "disabled";
> +	};
> +
> +	usb_host1_xhci: usb@fd000000 {
> +		compatible = "rockchip,rk3568-dwc3", "snps,dwc3";
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

dito

> +		resets = <&cru SRST_USB3OTG1>;

> +		reset-names = "usb3-otg";

remove

> +		snps,dis_enblslpm_quirk;
> +		snps,dis-u2-freeclk-exists-quirk;
> +		snps,dis_u2_susphy_quirk;
> +		snps,dis-del-phy-power-chg-quirk;
> +		snps,dis-tx-ipgap-linecheck-quirk;

sort

> +		status = "disabled";
> +	};
> +
>  	gic: interrupt-controller@fd400000 {
>  		compatible = "arm,gic-v3";
>  		reg = <0x0 0xfd400000 0 0x10000>, /* GICD */
> @@ -297,7 +341,6 @@ pmu_io_domains: io-domains {
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
