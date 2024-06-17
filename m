Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E67CC27C77
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 08:33:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hRArqsTTq2oEaTUxB3ruP8SdnjSoT+64I3G2QTl5dAU=; b=R8gkiuXgh1F+we
	8c+p4stPDiGapkq3Ins1aaJ/xdDa2oDGAiFtMLz7p//jcsW162MohyvU+EqDXHMBtDV6/9I1qYI8O
	7qrPVKnCOnRjUwNfoylADH+lsIJ8U6+h4DK78n98h5TrcFcfhPM0b49CfHMl+FS0VQSeIXIO44INu
	3vF+AjkRbu0bK5lztGT8A+WK4QOvTR+Kkw//oVUW+G+BnIYOw5X3GPBAZyX8HUDyDdpXTLpHk8D12
	NUHG28wRatFQCUqx85mGv/ubBLHUIbfHSjgE5DSvMfbyeT7DdOukpHf4PoxaxG4Qpwc8HDA4I1oXa
	uEaiTQ/nWiBMDGCu/lvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ7nt-00000009s6X-2l08;
	Mon, 17 Jun 2024 08:33:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ7np-00000009s5P-2X73;
	Mon, 17 Jun 2024 08:33:26 +0000
Received: from i5e8616c2.versanet.de ([94.134.22.194] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sJ7nY-0007XR-Me; Mon, 17 Jun 2024 10:33:08 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 Jacobe Zang <jacobe.zang@wesion.com>
Cc: nick@khadas.com, efectn@protonmail.com, jagan@edgeble.ai,
 dsimic@manjaro.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jacobe Zang <jacobe.zang@wesion.com>
Subject: Re: [PATCH v2 5/5] arm64: dts: rockchip: Add cpufreq support to Khadas Edge2
Date: Mon, 17 Jun 2024 10:33:07 +0200
Message-ID: <5475817.tWeucmBOSa@diego>
In-Reply-To: <20240617071112.3133101-6-jacobe.zang@wesion.com>
References: <20240617071112.3133101-1-jacobe.zang@wesion.com>
 <20240617071112.3133101-6-jacobe.zang@wesion.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_013325_780635_4A263D7C 
X-CRM114-Status: GOOD (  16.14  )
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

Hi Jacobe Zang,

Am Montag, 17. Juni 2024, 09:11:12 CEST schrieb Jacobe Zang:
> This adjust CPU nodes on Khadas Edge2.
> 
> Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
> ---
>  .../arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
> index 7d7cc3e76838c..5fb15d3dc23e9 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
> @@ -160,34 +160,42 @@ vdd_3v3_sd: vdd-3v3-sd-regulator {
>  
>  &cpu_b0 {
>  	cpu-supply = <&vdd_cpu_big0_s0>;
> +	mem-supply = <&vdd_cpu_big0_mem_s0>;

as far as I remember there has not been any binding merged that declares
this supply. Thankfully following the double phandle below, the Edge2 is
designed to use the same regulator for the mem-supply, so special handling
isn't even needed.


Heiko


>  };
>  
>  &cpu_b1 {
>  	cpu-supply = <&vdd_cpu_big0_s0>;
> +	mem-supply = <&vdd_cpu_big0_mem_s0>;
>  };
>  
>  &cpu_b2 {
>  	cpu-supply = <&vdd_cpu_big1_s0>;
> +	mem-supply = <&vdd_cpu_big1_mem_s0>;
>  };
>  
>  &cpu_b3 {
>  	cpu-supply = <&vdd_cpu_big1_s0>;
> +	mem-supply = <&vdd_cpu_big1_mem_s0>;
>  };
>  
>  &cpu_l0 {
>  	cpu-supply = <&vdd_cpu_lit_s0>;
> +	mem-supply = <&vdd_cpu_lit_mem_s0>;
>  };
>  
>  &cpu_l1 {
>  	cpu-supply = <&vdd_cpu_lit_s0>;
> +	mem-supply = <&vdd_cpu_lit_mem_s0>;
>  };
>  
>  &cpu_l2 {
>  	cpu-supply = <&vdd_cpu_lit_s0>;
> +	mem-supply = <&vdd_cpu_lit_mem_s0>;
>  };
>  
>  &cpu_l3 {
>  	cpu-supply = <&vdd_cpu_lit_s0>;
> +	mem-supply = <&vdd_cpu_lit_mem_s0>;
>  };
>  
>  &combphy0_ps {
> @@ -208,7 +216,7 @@ &i2c0 {
>  	pinctrl-0 = <&i2c0m2_xfer>;
>  	status = "okay";
>  
> -	vdd_cpu_big0_s0: regulator@42 {
> +	vdd_cpu_big0_s0: vdd_cpu_big0_mem_s0: regulator@42 {
>  		compatible = "rockchip,rk8602";
>  		reg = <0x42>;
>  		fcs,suspend-voltage-selector = <1>;
> @@ -225,7 +233,7 @@ regulator-state-mem {
>  		};
>  	};
>  
> -	vdd_cpu_big1_s0: regulator@43 {
> +	vdd_cpu_big1_s0: vdd_cpu_big1_mem_s0: regulator@43 {
>  		compatible = "rockchip,rk8603", "rockchip,rk8602";
>  		reg = <0x43>;
>  		fcs,suspend-voltage-selector = <1>;
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
