Return-Path: <SRS0=3Vai=NZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2318C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Sep 2021 13:13:58 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 534C460FC0
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Sep 2021 13:13:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 534C460FC0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RR3R/leEJEZAdrji0w1aRTRtQRkc+1dcGo4EMe6sG2A=; b=CnZESOeDwTvU/e
	nyRbVRuwuFUUByyfVupDysJiYSer4imwPDiXPNistVFFUUgg+cZkkMVr5lWv0bC5/9Gf3HYkR8L6y
	bj/+UGvTG1lfRalxDKT6BX6mtSf7InuTimlXtQjvM37KHgvZizmrYio1cqyMr3OlpZI8wX68UaKaU
	5kt6zc5Tt6wuX+oRqw3We87o/fe8vnXj2896ZSra0iY2G5qrcaZhUDi2kCBfPMiHwwOq1vVrASF0/
	L+4JnnMfawLJig2H6R98LbI/jGEAEM48jHGcQnfwER69hdns/4rwnbyi5+3856xsXBLXlMXMVj3yb
	Lk9AhOySIqqKeYSVFeJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mM90z-00C1M0-Qj; Fri, 03 Sep 2021 13:13:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mM90u-00C1JP-Mx; Fri, 03 Sep 2021 13:13:52 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mM90r-0005M9-6l; Fri, 03 Sep 2021 15:13:45 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 jacopo@jmondi.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: hook up camera on px30-evb
Date: Fri, 03 Sep 2021 15:13:44 +0200
Message-ID: <2431927.xZuKtqe2JJ@diego>
In-Reply-To: <20210830141318.66744-2-heiko@sntech.de>
References: <20210830141318.66744-1-heiko@sntech.de>
 <20210830141318.66744-2-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210903_061348_898547_D615C671 
X-CRM114-Status: GOOD (  16.08  )
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

Am Montag, 30. August 2021, 16:13:18 CEST schrieb Heiko Stuebner:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

Note to self: missing patch description, make it something like:

Enable the isp and csi phy on px30-evb and connect it to the board's
ov5695 camera.


> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
>  arch/arm64/boot/dts/rockchip/px30-evb.dts | 52 +++++++++++++++++++++++
>  1 file changed, 52 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/px30-evb.dts b/arch/arm64/boot/dts/rockchip/px30-evb.dts
> index c1ce9c295e5b..848bc39cf86a 100644
> --- a/arch/arm64/boot/dts/rockchip/px30-evb.dts
> +++ b/arch/arm64/boot/dts/rockchip/px30-evb.dts
> @@ -114,6 +114,10 @@ &cpu3 {
>  	cpu-supply = <&vdd_arm>;
>  };
>  
> +&csi_dphy {
> +	status = "okay";
> +};
> +
>  &display_subsystem {
>  	status = "okay";
>  };
> @@ -428,6 +432,36 @@ sensor@4c {
>  	};
>  };
>  
> +&i2c2 {
> +	status = "okay";
> +
> +	clock-frequency = <100000>;
> +
> +	/* These are relatively safe rise/fall times; TODO: measure */
> +	i2c-scl-falling-time-ns = <50>;
> +	i2c-scl-rising-time-ns = <300>;
> +
> +	ov5695: ov5695@36 {
> +		compatible = "ovti,ov5695";
> +		reg = <0x36>;
> +		avdd-supply = <&vcc2v8_dvp>;
> +		clocks = <&cru SCLK_CIF_OUT>;
> +		clock-names = "xvclk";
> +		dvdd-supply = <&vcc1v5_dvp>;
> +		dovdd-supply = <&vcc1v8_dvp>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&cif_clkout_m0>;
> +		reset-gpios = <&gpio2 14 GPIO_ACTIVE_LOW>;
> +
> +		port {
> +			ucam_out: endpoint {
> +				remote-endpoint = <&mipi_in_ucam>;
> +				data-lanes = <1 2>;
> +			};
> +		};
> +	};
> +};
> +
>  &i2s1_2ch {
>  	status = "okay";
>  };
> @@ -443,6 +477,24 @@ &io_domains {
>  	vccio6-supply = <&vccio_flash>;
>  };
>  
> +&isp {
> +	status = "okay";
> +
> +	ports {
> +		port@0 {
> +			mipi_in_ucam: endpoint@0 {
> +				reg = <0>;
> +				data-lanes = <1 2>;
> +				remote-endpoint = <&ucam_out>;
> +			};
> +		};
> +	};
> +};
> +
> +&isp_mmu {
> +	status = "okay";
> +};
> +
>  &pinctrl {
>  	headphone {
>  		hp_det: hp-det {
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
