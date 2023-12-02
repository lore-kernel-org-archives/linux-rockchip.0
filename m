Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1FEBC4167B
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Dec 2023 15:52:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ncVnGAtZ0cbRFVi4TEtERaVHhGwzzrpcNvvGZIKg9yA=; b=dUJ7YrNJYgoka5
	DHJjMARrWZke1JK83ucN3r9VhY1NgnTyhSHjeZdIfrHrwpnxszgyokNM/zPhFWoi8PT9n01qOR2mW
	eNmVuJ/dvCfA+IirFLxsZbvoeHQj2o9jXzsDhMWvP2BYAokFCDrYL4D2qfA23zV0egegfc5LC3wPz
	ILOvBgOa26nUhsYijDit2v2/629klK2cRDdAH6uD15dYFOMCGsReJe1iPoqgtnxGRmNShlBJKMnwc
	HHXvR2Wec1FuFSL0XjPJQsFgG77FBUbQjPCuo8miyKd7t3uaV3SEpOWU46GrwzQFrcnPZO9kjd911
	Flyeh4LZiip6Zq6syFxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9SI0-00Fs22-1z;
	Sat, 02 Dec 2023 15:52:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9SHx-00Frzg-0B;
	Sat, 02 Dec 2023 15:52:18 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r9SHd-0002AT-MB; Sat, 02 Dec 2023 16:51:57 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Alex Bee <knaerzche@gmail.com>
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org,
 Alex Bee <knaerzche@gmail.com>
Subject: Re: [PATCH v2 2/5] ARM: dts: rockchip: Add power-controller for RK3128
Date: Sat, 02 Dec 2023 16:51:56 +0100
Message-ID: <6926340.F8r316W7xa@diego>
In-Reply-To: <20231202125144.66052-3-knaerzche@gmail.com>
References: <20231202125144.66052-1-knaerzche@gmail.com>
 <20231202125144.66052-3-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231202_075217_090965_6F82D045 
X-CRM114-Status: GOOD (  20.28  )
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

Hi Alex,

Am Samstag, 2. Dezember 2023, 13:51:41 CET schrieb Alex Bee:
> Add power controller and qos nodes for RK3128 in order to use
> them as powerdomains.

does the power-domain controller work with the incomplete set of
pm-domains too?

What I have in mind is
- adding the power-controller node with the existing set of power-domains
- the gpu pm-domain is in there
- adding the gpu parts


And a second series with
- patch1 from here
- a dts patch adding the additional pm-domains to rk3128.dtsi
- I guess patch1 also should be split into a patch adding the binding-ids
  and a separate patch for the code addition.


Heiko

> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> ---
>  arch/arm/boot/dts/rockchip/rk3128.dtsi | 101 +++++++++++++++++++++++++
>  1 file changed, 101 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
> index 4e8b38604ecd..b72905db04f7 100644
> --- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
> +++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
> @@ -8,6 +8,7 @@
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/power/rk3128-power.h>
>  
>  / {
>  	compatible = "rockchip,rk3128";
> @@ -133,6 +134,106 @@ smp-sram@0 {
>  	pmu: syscon@100a0000 {
>  		compatible = "rockchip,rk3128-pmu", "syscon", "simple-mfd";
>  		reg = <0x100a0000 0x1000>;
> +
> +		power: power-controller {
> +			compatible = "rockchip,rk3128-power-controller";
> +			#power-domain-cells = <1>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			power-domain@RK3128_PD_VIO {
> +				reg = <RK3128_PD_VIO>;
> +				clocks = <&cru ACLK_CIF>,
> +					 <&cru HCLK_CIF>,
> +					 <&cru DCLK_EBC>,
> +					 <&cru HCLK_EBC>,
> +					 <&cru ACLK_IEP>,
> +					 <&cru HCLK_IEP>,
> +					 <&cru ACLK_LCDC0>,
> +					 <&cru HCLK_LCDC0>,
> +					 <&cru PCLK_MIPI>,
> +					 <&cru ACLK_RGA>,
> +					 <&cru HCLK_RGA>,
> +					 <&cru ACLK_VIO0>,
> +					 <&cru ACLK_VIO1>,
> +					 <&cru HCLK_VIO>,
> +					 <&cru HCLK_VIO_H2P>,
> +					 <&cru DCLK_VOP>,
> +					 <&cru SCLK_VOP>;
> +				pm_qos = <&qos_ebc>,
> +					 <&qos_iep>,
> +					 <&qos_lcdc>,
> +					 <&qos_rga>,
> +					 <&qos_vip>;
> +				#power-domain-cells = <0>;
> +			};
> +
> +			power-domain@RK3128_PD_VIDEO {
> +				reg = <RK3128_PD_VIDEO>;
> +				clocks = <&cru ACLK_VDPU>,
> +					 <&cru HCLK_VDPU>,
> +					 <&cru ACLK_VEPU>,
> +					 <&cru HCLK_VEPU>,
> +					 <&cru SCLK_HEVC_CORE>;
> +				pm_qos = <&qos_vpu>;
> +				#power-domain-cells = <0>;
> +			};
> +
> +			power-domain@RK3128_PD_GPU {
> +				reg = <RK3128_PD_GPU>;
> +				clocks = <&cru ACLK_GPU>;
> +				pm_qos = <&qos_gpu>;
> +				#power-domain-cells = <0>;
> +			};
> +
> +			power-domain@RK3128_PD_CRYPTO {
> +				reg = <RK3128_PD_CRYPTO>;
> +				clocks = <&cru HCLK_CRYPTO>,
> +					 <&cru SCLK_CRYPTO>;
> +				pm_qos = <&qos_crypto>;
> +				#power-domain-cells = <0>;
> +			};
> +		};
> +	};
> +
> +	qos_crypto: qos@10128080 {
> +		compatible = "rockchip,rk3128-qos", "syscon";
> +		reg = <0x10128080 0x20>;
> +	};
> +
> +	qos_gpu: qos@1012d000 {
> +		compatible = "rockchip,rk3128-qos", "syscon";
> +		reg = <0x1012d000 0x20>;
> +	};
> +
> +	qos_vpu: qos@1012e000 {
> +		compatible = "rockchip,rk3128-qos", "syscon";
> +		reg = <0x1012e000 0x20>;
> +	};
> +
> +	qos_rga: qos@1012f000 {
> +		compatible = "rockchip,rk3128-qos", "syscon";
> +		reg = <0x1012f000 0x20>;
> +	};
> +
> +	qos_ebc: qos@1012f080 {
> +		compatible = "rockchip,rk3128-qos", "syscon";
> +		reg = <0x1012f080 0x20>;
> +	};
> +
> +	qos_iep: qos@1012f100 {
> +		compatible = "rockchip,rk3128-qos", "syscon";
> +		reg = <0x1012f100 0x20>;
> +	};
> +
> +	qos_lcdc: qos@1012f180 {
> +		compatible = "rockchip,rk3128-qos", "syscon";
> +		reg = <0x1012f180 0x20>;
> +	};
> +
> +	qos_vip: qos@1012f200 {
> +		compatible = "rockchip,rk3128-qos", "syscon";
> +		reg = <0x1012f200 0x20>;
>  	};
>  
>  	gic: interrupt-controller@10139000 {
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
