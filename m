Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 976B1C27C79
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jun 2024 15:01:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BEAcB75OxSu8ZRZxfzbwfy3f6GH4+An95of5j+nJ8uw=; b=rfJ2wyKMdlTdam
	XDcv14gPFUhjErCpJ37KMxKHrkO45MAseVwvxOm8FPM86Y4CoWoOus2ZtJhQ1fT7GzgLHid3/k5e0
	cuZNTtB9WPzI5cClx/7Fr39zXSPoNBNt5BqmrTPJZLjJ9SIhoyWks8nC6zJX/LvmsoZTqFltsLgiv
	4G6FRvDx73/S10tRsgtq0/5AZIK5VmrXLbqCK33K4q9PFRzhdvbFZQFTEhHifgF174z+bR5TwVAQi
	aA9dKfnV8kemzYxmkasgSVkcSr1hwyNhBdYX5Ub0WiXm1T3SKA+2L+/iPix9JYgEI5+sRRY4sA3gf
	CHsWdPc/Uu0K5N+Os/tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKJIB-00000005YtH-2je1;
	Thu, 20 Jun 2024 15:01:39 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKJI8-00000005Yr7-32ln
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Jun 2024 15:01:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1718895660;
 bh=13pdcRskJFNi9XMxOGxfDEs3htWYtGPvGt7ceE5Lg0Y=;
 b=eXIql/8ZTuBT1dxVZxPaSQIqC7kn0zIBK2fXkrirx2CvMvjsNgvuDgVqkBhPjoA5p08Puj2Xb
 BhyQsOePA0/9ugdJNfrRGEROt3KNWkte/ROClbvW1L3myLT44fuY7hz06DaxttH60d3g1a0u/K3
 6gO37Fa2h6Q1Q4E4CJ7KFrFONc4iL6X3f7TASxg4kMSLgDKotZXnfx/b/3TIEYrk3ePB7UR5Y2R
 x5/wgQe3nOhucLMOvVsEoQYfDILDDBP2G37wCWi517YqcK0x3MiX1z7VRZz8J95VHqZAcFdOO2V
 /CS77qgr/4hJaabOg6V+vWY17iDNLhhm2A81Zv4TMRNA==
Message-ID: <311770c3-d3ea-4650-ae11-7c278e043d0a@kwiboo.se>
Date: Thu, 20 Jun 2024 17:00:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] arm64: dts: rockchip: Add rkvdec2 Video Decoder on
 rk3588(s)
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>, Dragan Simic
 <dsimic@manjaro.org>, Diederik de Haas <didi.debian@cknow.org>, Andy Yan
 <andy.yan@rock-chips.com>, Boris Brezillon
 <boris.brezillon@collabora.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Daniel Almeida <daniel.almeida@collabora.com>, Paul Kocialkowski
 <paul.kocialkowski@bootlin.com>, Nicolas Dufresne
 <nicolas.dufresne@collabora.com>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>, Alex Bee <knaerzche@gmail.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-staging@lists.linux.dev
References: <20240620142532.406564-1-detlev.casanova@collabora.com>
 <20240620142532.406564-5-detlev.casanova@collabora.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20240620142532.406564-5-detlev.casanova@collabora.com>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 6674442892323c181dc311b2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_080136_815863_E121E97F 
X-CRM114-Status: GOOD (  16.27  )
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

On 2024-06-20 16:19, Detlev Casanova wrote:
> Add the rkvdec2 Video Decoder to the RK3588s devicetree.
> 
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 48 +++++++++++++++++++++++
>  1 file changed, 48 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> index 6ac5ac8b48ab..9c44c99125b4 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> @@ -2596,6 +2596,16 @@ system_sram2: sram@ff001000 {
>  		ranges = <0x0 0x0 0xff001000 0xef000>;
>  		#address-cells = <1>;
>  		#size-cells = <1>;
> +
> +		vdec0_sram: rkvdec-sram@0 {
> +			reg = <0x0 0x78000>;
> +			pool;
> +		};
> +
> +		vdec1_sram: rkvdec-sram@1 {
> +			reg = <0x78000 0x77000>;
> +			pool;
> +		};
>  	};
>  
>  	pinctrl: pinctrl {
> @@ -2665,6 +2675,44 @@ gpio4: gpio@fec50000 {
>  			#interrupt-cells = <2>;
>  		};
>  	};
> +
> +	vdec0: video-decoder@fdc38100 {

This and the vdec1 node should probably be added between

  pmu: power-management@fd8d8000

and

  av1d: video-codec@fdc70000

to follow reg order.

Also I am wondering if the nodes should be named

  video-codec@fdc38000

and

  video-codec@fdc40000

to match "1.1 Address Mapping" in TRM and the actual base address for
the VDPU381 IP and video-codec is used for other codec nodes.

> +		compatible = "rockchip,rk3588-vdec";
> +		reg = <0x0 0xfdc38100 0x0 0x500>;

For existing rkvdec1 devices the cache regs is also included in the
range, should cache regs also be included for rkvdec2?, e.g.:

  reg = <0x0 0xfdc38100 0x0 0x600>;

And maybe it also should include the link list regs, e.g.:

  reg = <0x0 0xfdc38000 0x0 0x700>;

or possible:

  reg = <0x0 0xfdc38000 0x0 0x100>,
        <0x0 0xfdc38100 0x0 0x500>,
        <0x0 0xfdc38600 0x0 0x100>;

Something like that may be a better description of the hw.

> +		interrupts = <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH 0>;
> +		clocks = <&cru ACLK_RKVDEC0>, <&cru HCLK_RKVDEC0>, <&cru CLK_RKVDEC0_CA>,
> +			 <&cru CLK_RKVDEC0_CORE>, <&cru CLK_RKVDEC0_HEVC_CA>;
> +		clock-names = "axi", "ahb", "cabac", "core", "hevc_cabac";
> +		assigned-clocks = <&cru ACLK_RKVDEC0>, <&cru CLK_RKVDEC0_CORE>,
> +				  <&cru CLK_RKVDEC0_CA>, <&cru CLK_RKVDEC0_HEVC_CA>;
> +		assigned-clock-rates = <800000000>, <600000000>,
> +				       <600000000>, <1000000000>;
> +		resets = <&cru SRST_A_RKVDEC0>, <&cru SRST_H_RKVDEC0>, <&cru SRST_RKVDEC0_CA>,
> +			 <&cru SRST_RKVDEC0_CORE>, <&cru SRST_RKVDEC0_HEVC_CA>;
> +		reset-names = "rst_axi", "rst_ahb", "rst_cabac",
> +			      "rst_core", "rst_hevc_cabac";

Do we need to include the rst prefix in the reset name?, does not look
like other DT/bindings normally include rst in their name.

> +		power-domains = <&power RK3588_PD_RKVDEC0>;
> +		sram = <&vdec0_sram>;
> +	};
> +
> +	vdec1: video-decoder@fdc40100 {

Same as above.

> +		compatible = "rockchip,rk3588-vdec";
> +		reg = <0x0 0xfdc40100 0x0 0x500>;

Same as above.

Regards,
Jonas

> +		interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH 0>;
> +		clocks = <&cru ACLK_RKVDEC1>, <&cru HCLK_RKVDEC1>, <&cru CLK_RKVDEC1_CA>,
> +			 <&cru CLK_RKVDEC1_CORE>, <&cru CLK_RKVDEC1_HEVC_CA>;
> +		clock-names = "axi", "ahb", "cabac", "core", "hevc_cabac";
> +		assigned-clocks = <&cru ACLK_RKVDEC1>, <&cru CLK_RKVDEC1_CORE>,
> +				  <&cru CLK_RKVDEC1_CA>, <&cru CLK_RKVDEC1_HEVC_CA>;
> +		assigned-clock-rates = <800000000>, <600000000>,
> +				       <600000000>, <1000000000>;
> +		resets = <&cru SRST_A_RKVDEC1>, <&cru SRST_H_RKVDEC1>, <&cru SRST_RKVDEC1_CA>,
> +			 <&cru SRST_RKVDEC1_CORE>, <&cru SRST_RKVDEC1_HEVC_CA>;
> +		reset-names = "rst_axi", "rst_ahb", "rst_cabac",
> +			      "rst_core", "rst_hevc_cabac";
> +		power-domains = <&power RK3588_PD_RKVDEC1>;
> +		sram = <&vdec1_sram>;
> +	};
>  };
>  
>  #include "rk3588s-pinctrl.dtsi"


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
