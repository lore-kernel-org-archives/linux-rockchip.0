Return-Path: <SRS0=cphG=MV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0E86C4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Jul 2021 10:09:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1BBDC61040
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Jul 2021 10:09:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1BBDC61040
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aK6ETvpWP/gUFKHJi7PH0AJN/hhDifs8XjSrtrmt0uc=; b=L1SluI6R8nquDn
	7+AQ8LaWioZxqhT0j+XuD2ZJK5WfYV+eoMN6x32pn8UofXg3CcYv7Vlbieo3GMT7AzXv42XaXG18z
	QvBdTOjjwAs2iWewxQWmFdNDlYgi6vR8BCcftK4aaQlA69RA3PvPlexXJglFLCyqyZQgPvdkSf6aN
	h6nzs2YnB3pcUpCJqwIh3a9DT8ifzdN6uHH95QopDn9HQ/wRj0QbiT59AwtsvTmAJwnv+/qk31UWT
	x93z9G+sCAuCPiiM+3q9cntbXjoM5yzaT6Qt0FpU4UDdLSqrIX6KPMy2Hp2GwZslHhXLsM35P40dY
	QjjkT8WLSXY3h8BkQG0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m92yG-003nWY-JB; Thu, 29 Jul 2021 10:08:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m92yE-003nVs-2b
 for linux-rockchip@lists.infradead.org; Thu, 29 Jul 2021 10:08:55 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m92y9-0002Wv-5c; Thu, 29 Jul 2021 12:08:49 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
 Ezequiel Garcia <ezequiel@collabora.com>
Cc: Peter Geis <pgwipeout@gmail.com>, Kever Yang <kever.yang@rock-chips.com>,
 Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: add GPU node for rk3568
Date: Thu, 29 Jul 2021 12:08:48 +0200
Message-ID: <2147216.TLkxdtWsSY@diego>
In-Reply-To: <20210719224946.25359-1-ezequiel@collabora.com>
References: <20210719224946.25359-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210729_030854_170968_5DDCEC74 
X-CRM114-Status: GOOD (  16.47  )
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

Am Dienstag, 20. Juli 2021, 00:49:45 CEST schrieb Ezequiel Garcia:
> Rockchip SoCs RK3566 and RK3568 have a Mali Gondul core
> which is based on the Bifrost architecture. It has
> one shader core and two execution engines.
> 
> Quoting the datasheet:
> 
> Mali-G52 1-Core-2EE
> * Support 1600Mpix/s fill rate when 800MHz clock frequency
> * Support 38.4GLOPs when 800MHz clock frequency
> 
> Mesa side: https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/10771

missing an addition to 
	Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml

Thanks
Heiko

> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3568.dtsi | 47 ++++++++++++++++++++++++
>  1 file changed, 47 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> index 618849186c39..59844dfaeb86 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> @@ -128,6 +128,35 @@ opp-1992000000 {
>  		};
>  	};
>  
> +	gpu_opp_table: opp-table2 {
> +		compatible = "operating-points-v2";
> +
> +		opp-200000000 {
> +			opp-hz = /bits/ 64 <200000000>;
> +			opp-microvolt = <825000>;
> +		};
> +		opp-300000000 {
> +			opp-hz = /bits/ 64 <300000000>;
> +			opp-microvolt = <825000>;
> +		};
> +		opp-400000000 {
> +			opp-hz = /bits/ 64 <400000000>;
> +			opp-microvolt = <825000>;
> +		};
> +		opp-600000000 {
> +			opp-hz = /bits/ 64 <600000000>;
> +			opp-microvolt = <825000>;
> +		};
> +		opp-700000000 {
> +			opp-hz = /bits/ 64 <700000000>;
> +			opp-microvolt = <900000>;
> +		};
> +		opp-800000000 {
> +			opp-hz = /bits/ 64 <800000000>;
> +			opp-microvolt = <1000000>;
> +		};
> +	};
> +
>  	firmware {
>  		scmi: scmi {
>  			compatible = "arm,scmi-smc";
> @@ -351,6 +380,24 @@ power-domain@RK3568_PD_PIPE {
>  		};
>  	};
>  
> +	gpu: gpu@fde60000 {
> +		compatible = "rockchip,rk3568-mali", "arm,mali-bifrost";
> +		reg = <0x0 0xfde60000 0x0 0x4000>;
> +
> +		interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "job", "mmu", "gpu";
> +
> +		clocks = <&scmi_clk 1>, <&cru CLK_GPU>;
> +		clock-names = "clk_mali", "bus";
> +		operating-points-v2 = <&gpu_opp_table>;
> +
> +		#cooling-cells = <2>;
> +		power-domains = <&power RK3568_PD_GPU>;
> +		status = "disabled";
> +	};
> +
>  	sdmmc2: mmc@fe000000 {
>  		compatible = "rockchip,rk3568-dw-mshc", "rockchip,rk3288-dw-mshc";
>  		reg = <0x0 0xfe000000 0x0 0x4000>;
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
