Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91E02C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Feb 2022 10:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=knkVByK0vGHtVXbapTaiqCw+pO5jE4y0dUMoIYusXl4=; b=jpQ8QsWAD2GbC5
	+xz0ve0Wxd7KUoNsJfZ+BfUQN4Y/FIc2joGbl6aePnCdI22vYSlSL/5UbfUVWShnmN20fFzhl0Yr+
	/x61zbtPOAKpgEAECgU0YUzSZvopyq7qJuT5V7U9JHEcMjQIcEVPIuEO9bI74SziLDvZhjXtYxYyr
	9iFed6Z425VB0PWEKu47xhgK/HyrhZJcZrTXv2n7YmdvB/LMOSQIKmp6WLEYUh716EZHEaggu6cc9
	CeSse52YEv2gv2ZpfEPhpYEieFYtNwQVFRf0xHWYIqlImO6uIbxdwWeAJZTmztiQWCKe2Y5aa6qCb
	s2LwW5aSykHgdTKe/VVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNYF2-004YbP-LS; Fri, 25 Feb 2022 10:54:28 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNYEG-004YFK-Hb; Fri, 25 Feb 2022 10:53:42 +0000
Received: by mail-ej1-x630.google.com with SMTP id r13so10057863ejd.5;
 Fri, 25 Feb 2022 02:53:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=h/VZhFSee9mby4Ks5QygzWK3m4ma36DDzYBH8cRSTg0=;
 b=GZfzCCgfBL2/cDdgRS599HRF7Vb27NDzxhC13Y62NhZecbpSIgfw6+ck6mVJyMf8nR
 URiPWRVb7GUBXE+i0J0XeXb3Lsjk/CJitki8vj6Lj58paq4edRxugt9F0ueyOhHGMd8M
 Dtt5OE7AHbE+nzXK+9IMAPURTDT+l8ia8DMMLen+YJq4CEu2BFfsnbIUXW/eIUKn07hy
 e/YEENu+dqkFeT9WmoNdzN7noA6tKvlJptd6OdcLpksLAURTPeeA6gaBxbmi7dptm6fj
 W/mAf2LSNTx13hDZ9ZeOU3nb5U1O6+rj7OTcFr7JvBruYAjgCgA7m3ItgkUw6M8WDa71
 SdEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=h/VZhFSee9mby4Ks5QygzWK3m4ma36DDzYBH8cRSTg0=;
 b=pzDX1ulrj/Ccsk+nB+bblgDVK3MfKPIDFNKfObas3mX1pDtt3ZaGMOwEWxNS3Mywal
 F9ky4ow4X8x3NSNFyqri+psUOFIxC1r+rpAYtDntGHrH8OmvqMZLwMf9I4FGXZVX7104
 yjl/z4+wJgC8OSCtvjqwWWAHrE4I58uGRhaq35St9Pb/Jk1662HfWGMpleOYrIqXd+ZF
 QUSmJUJyCiBLu/xu1RIw6hlZ2zPU/hwUt+DZEM9dp+hhm0fyT4Skpo5vH/DVraSBn1ip
 nviiZ9ZNhj73BblE07bd7BsMEnhYKhC5dIrHcsQLqkft0fexEbUdzsPoiRx2tGaDDcgA
 +CWA==
X-Gm-Message-State: AOAM532D8HnuPK8mxD0XopCNuMlJm20rgnyZ+7WpoW2iT6C42TACyRTU
 JTSVRPJAbhLYGXDPYd4xHtQ=
X-Google-Smtp-Source: ABdhPJzokaQUIJjp3/0KAXV1pCNfs8zYTdoTpw2qYxda0pYYtBz7Cj7MKeszPpFl+5iO7sm+nNcgsg==
X-Received: by 2002:a17:907:8a04:b0:6b4:e098:741a with SMTP id
 sc4-20020a1709078a0400b006b4e098741amr5615965ejc.550.1645786416760; 
 Fri, 25 Feb 2022 02:53:36 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 b15-20020a50cccf000000b0040f74c6abedsm1188548edj.77.2022.02.25.02.53.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Feb 2022 02:53:36 -0800 (PST)
Message-ID: <3e3d0e25-cea4-5b1a-e181-15e793ecba91@gmail.com>
Date: Fri, 25 Feb 2022 11:53:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: add the usb3 nodes to rk356x
Content-Language: en-US
To: Michael Riesch <michael.riesch@wolfvision.net>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, Liang Chen <cl@rock-chips.com>,
 Peter Geis <pgwipeout@gmail.com>, Simon Xue <xxm@rock-chips.com>,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
References: <20220225100943.2115933-1-michael.riesch@wolfvision.net>
 <20220225100943.2115933-2-michael.riesch@wolfvision.net>
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20220225100943.2115933-2-michael.riesch@wolfvision.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_025340_646199_B432FFF7 
X-CRM114-Status: GOOD (  16.61  )
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

Hi Michael,

On 2/25/22 11:09, Michael Riesch wrote:
> The Rockchip RK3566 and RK3568 feature two USB 3.0 xHCI controllers,
> one of them with Dual Role Device (DRD) capability.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  arch/arm64/boot/dts/rockchip/rk3568.dtsi |  5 ++
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 58 ++++++++++++++++++++++++
>  2 files changed, 63 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> index 91a0b798b857..0cd4ef36066a 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> @@ -116,3 +116,8 @@ power-domain@RK3568_PD_PIPE {
>  		#power-domain-cells = <0>;
>  	};
>  };
> +
> +&usb_host0_dwc3 {
> +	phys = <&usb2phy0_otg>, <&combphy0 PHY_TYPE_USB3>;
> +	phy-names = "usb2-phy", "usb3-phy";
> +};
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index 8b9fae3d348a..b46794486037 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -230,6 +230,64 @@ scmi_shmem: sram@0 {
>  		};
>  	};
>  
> +	usb_host0_xhci: usb@fcc00000 {

> +		compatible = "rockchip,rk3399-dwc3";

Add string to rockchip,dwc3.yaml
and check with dtsb_check

compatible = "rockchip,rk3399-dwc3", "snps,dwc3";

> +		#address-cells = <2>;

remove

> +		clocks = <&cru CLK_USB3OTG0_REF>, <&cru CLK_USB3OTG0_SUSPEND>,

> +			 <&cru ACLK_USB3OTG0>, <&cru PCLK_PIPE>;

PCLK_PIPE part of an other node, probably only to enable PD_PIPE.

	combphy1: phy@fe830000 {
		compatible = "rockchip,rk3568-naneng-combphy";
		reg = <0x0 0xfe830000 0x0 0x100>;
		clocks = <&pmucru CLK_PCIEPHY1_REF>,
			 <&cru PCLK_PIPEPHY1>,
			 <&cru PCLK_PIPE>;
		clock-names = "ref", "apb", "pipe";
		assigned-clocks = <&pmucru CLK_PCIEPHY1_REF>;
		assigned-clock-rates = <100000000>;
		resets = <&cru SRST_PIPEPHY1>;
		rockchip,pipe-grf = <&pipegrf>;
		rockchip,pipe-phy-grf = <&pipe_phy_grf1>;
		#phy-cells = <1>;
		status = "disabled";
	};

Rockchip RK3568 TRM Part1 V1.0-20210111.pdf
page 475

PD_PIPE:

BIU_PIPE
USB3OTG
PCIE20
PCIE30
SATA
XPCS

PCIE, SATA USB clocks are child of aclk_pipe
Yet PCLK_PIPE is the only clock that enables RK3568_PD_PIPE.


	COMPOSITE_NOMUX(PCLK_PIPE, "pclk_pipe", "aclk_pipe", 0,
			RK3568_CLKSEL_CON(29), 4, 4, DFLAGS,
			RK3568_CLKGATE_CON(10), 1, GFLAGS),

&power {
	power-domain@RK3568_PD_PIPE {
		reg = <RK3568_PD_PIPE>;

		clocks = <&cru PCLK_PIPE>;

Do we need more clocks here for USB for example?

		pm_qos = <&qos_pcie2x1>,
			 <&qos_pcie3x1>,
			 <&qos_pcie3x2>,
			 <&qos_sata0>,
			 <&qos_sata1>,
			 <&qos_sata2>,
			 <&qos_usb3_0>,
			 <&qos_usb3_1>;
		#power-domain-cells = <0>;
	};
};

> +		clock-names = "ref_clk", "suspend_clk", "bus_clk", "grf_clk";

grf_clk only related to rk3399 ACLK_USB3_GRF and not to PCLK_PIPE.

> +		ranges;
> +		#size-cells = <2>;

remove

> +		status = "disabled";
> +
> +		usb_host0_dwc3: usb@fcc00000 {

No subnode for "snps,dwc3"
No more subdriver like rk3399.
Use dwc core only and fix things/quirks there.

> +			compatible = "snps,dwc3";
> +			reg = <0x0 0xfcc00000 0x0 0x400000>;
> +			interrupts = <GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>;
> +			dr_mode = "otg";
> +			phy_type = "utmi_wide";
> +			power-domains = <&power RK3568_PD_PIPE>;
> +			resets = <&cru SRST_USB3OTG0>;
> +			reset-names = "usb3-otg";
> +			snps,dis-del-phy-power-chg-quirk;
> +			snps,dis_enblslpm_quirk;
> +			snps,dis_rxdet_inp3_quirk;
> +			snps,dis-tx-ipgap-linecheck-quirk;
> +			snps,dis-u2-freeclk-exists-quirk;

> +			snps,xhci-trb-ent-quirk;

Not in mainline.
See snps,dwc3.yaml

> +		};
> +	};
> +
> +	usb_host1_xhci: usb@fd000000 {
> +		compatible = "rockchip,rk3399-dwc3";
> +		#address-cells = <2>;
> +		clocks = <&cru CLK_USB3OTG1_REF>, <&cru CLK_USB3OTG1_SUSPEND>,
> +			 <&cru ACLK_USB3OTG1>, <&cru PCLK_PIPE>;
> +		clock-names = "ref_clk", "suspend_clk", "bus_clk", "grf_clk";
> +		ranges;
> +		#size-cells = <2>;
> +		status = "disabled";
> +
> +		usb_host1_dwc3: usb@fd000000 {
> +			compatible = "snps,dwc3";
> +			reg = <0x0 0xfd000000 0x0 0x400000>;
> +			interrupts = <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>;
> +			dr_mode = "host";
> +			phy_type = "utmi_wide";
> +			phys = <&usb2phy0_host>, <&combphy1 PHY_TYPE_USB3>;
> +			phy-names = "usb2-phy", "usb3-phy";
> +			power-domains = <&power RK3568_PD_PIPE>;
> +			resets = <&cru SRST_USB3OTG1>;

> +			reset-names = "usb3-host";

  reset-names:
    const: usb3-otg

Fix binding or DT ??

> +			snps,dis-del-phy-power-chg-quirk;
> +			snps,dis_enblslpm_quirk;
> +			snps,dis_rxdet_inp3_quirk;
> +			snps,dis-tx-ipgap-linecheck-quirk;
> +			snps,dis-u2-freeclk-exists-quirk;

> +			snps,xhci-trb-ent-quirk;

Not in mainline ??

> +		};
> +	};
> +


	usbdrd3_1: usb@fd000000 {
		compatible = "rockchip,rk3399-dwc3", "snps,dwc3";
		reg = <0x0 0xfd000000 0x0 0x400000>;
		interrupts = <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>;
		clocks = <&cru CLK_USB3OTG1_REF>,
			 <&cru CLK_USB3OTG1_SUSPEND>,
			 <&cru ACLK_USB3OTG1>;
		clock-names = "ref_clk", "suspend_clk", "bus_clk";
		dr_mode = "host";
		phy_type = "utmi_wide";
		phys = <&usb2phy0_host>, <&combphy1 PHY_TYPE_USB3>;
		phy-names = "usb2-phy", "usb3-phy";
		power-domains = <&power RK3568_PD_PIPE>;
		resets = <&cru SRST_USB3OTG1>;
		reset-names = "usb3-otg";
		snps,dis-del-phy-power-chg-quirk;
		snps,dis_enblslpm_quirk;
		snps,dis_rxdet_inp3_quirk;
		snps,dis-tx-ipgap-linecheck-quirk;
		snps,dis-u2-freeclk-exists-quirk;
		status = "disabled";
	};


>  	gic: interrupt-controller@fd400000 {
>  		compatible = "arm,gic-v3";
>  		reg = <0x0 0xfd400000 0 0x10000>, /* GICD */

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
