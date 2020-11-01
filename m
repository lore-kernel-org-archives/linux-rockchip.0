Return-Path: <SRS0=E6vg=EH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9899DC388F9
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2020 10:55:26 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E586C20791
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2020 10:55:25 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="MTw89+ND"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E586C20791
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7zXQM1BAdyJrNib1r858Q5MpKizojSOgGC9LX+AYeEs=; b=MTw89+NDo4VVZ6qJkeCH/A1tL
	QbWT1bzUao2cbJwCqAObdNpgbNPNKLKGpWS3u4RtlZlhtXeM6OjwQRxos29luPYP6v8rDH6Ds8Tw6
	cJc9oSo7FXRvGsUtnmgS/wYd5mSW4jWtk2sfIa809zaz3648kr7oTbFbWzimtMNvIJDSGoVBFavlu
	A6FnmN4wx+5GLUrTc5Fl4PKL9xQSvhvmSJ4wN6nvBcmGX55pbPc7OTo4I71cTHNEdN9IAiR4OBe17
	ptzO9vaH5yFMvdC99ekNh8So5jxJdQjvfutaNYRM6pa0xe43X1eGhM32I0UnAnhNraEqNuzqB4B5q
	fZ8vP/2Tg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kZB16-0005B5-1r; Sun, 01 Nov 2020 10:55:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZB13-0005AG-Vr
 for linux-rockchip@lists.infradead.org; Sun, 01 Nov 2020 10:55:18 +0000
Received: from p57b773f8.dip0.t-ipconnect.de ([87.183.115.248]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kZB13-00032r-5V; Sun, 01 Nov 2020 11:55:17 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-media@vger.kernel.org, Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v6 9/9] arm64: dts: rockchip: add isp and sensors for
 Scarlet
Date: Sun, 01 Nov 2020 11:55:16 +0100
Message-ID: <14722083.QWuEjnDerj@phil>
In-Reply-To: <20201020193850.1460644-10-helen.koike@collabora.com>
References: <20201020193850.1460644-1-helen.koike@collabora.com>
 <20201020193850.1460644-10-helen.koike@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201101_055518_065779_F65EB775 
X-CRM114-Status: GOOD (  16.67  )
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 eddie.cai.linux@gmail.com, dafna.hirschfeld@collabora.com,
 robin.murphy@arm.com, linux-kernel@vger.kernel.org, karthik.poduval@gmail.com,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 hverkuil-cisco@xs4all.nl, mark.rutland@arm.com, kernel@collabora.com,
 zhengsq@rock-chips.com, jbx6244@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Dienstag, 20. Oktober 2020, 21:38:50 CET schrieb Helen Koike:
> From: Eddie Cai <eddie.cai.linux@gmail.com>
> 
> Enable ISP and camera sensor ov2685 and ov5695 for Scarlet Chromebook
> 
> Verified with:
>     make ARCH=arm64 dtbs_check
> 
> Signed-off-by: Shunqian Zheng <zhengsq@rock-chips.com>
> Signed-off-by: Eddie Cai <eddie.cai.linux@gmail.com>
> Signed-off-by: Tomasz Figa <tfiga@chromium.org>
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> Reviewed-by: Tomasz Figa <tfiga@chromium.org>


looks good, and I'd like to apply this one after the drivers/media-patches
of this series got applied.


Thanks
Heiko

> ---
>  .../boot/dts/rockchip/rk3399-gru-scarlet.dtsi | 74 +++++++++++++++++++
>  1 file changed, 74 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
> index 60cd1c18cd4e0..beee5fbb34437 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
> @@ -296,6 +296,52 @@ camera: &i2c7 {
>  
>  	/* 24M mclk is shared between world and user cameras */
>  	pinctrl-0 = <&i2c7_xfer &test_clkout1>;
> +
> +	/* Rear-facing camera */
> +	wcam: camera@36 {
> +		compatible = "ovti,ov5695";
> +		reg = <0x36>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wcam_rst>;
> +
> +		clocks = <&cru SCLK_TESTCLKOUT1>;
> +		clock-names = "xvclk";
> +
> +		avdd-supply = <&pp2800_cam>;
> +		dvdd-supply = <&pp1250_cam>;
> +		dovdd-supply = <&pp1800_s0>;
> +		reset-gpios = <&gpio2 5 GPIO_ACTIVE_LOW>;
> +
> +		port {
> +			wcam_out: endpoint {
> +				remote-endpoint = <&mipi_in_wcam>;
> +				data-lanes = <1 2>;
> +			};
> +		};
> +	};
> +
> +	/* Front-facing camera */
> +	ucam: camera@3c {
> +		compatible = "ovti,ov2685";
> +		reg = <0x3c>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&ucam_rst>;
> +
> +		clocks = <&cru SCLK_TESTCLKOUT1>;
> +		clock-names = "xvclk";
> +
> +		avdd-supply = <&pp2800_cam>;
> +		dovdd-supply = <&pp1800_s0>;
> +		dvdd-supply = <&pp1800_s0>;
> +		reset-gpios = <&gpio2 3 GPIO_ACTIVE_LOW>;
> +
> +		port {
> +			ucam_out: endpoint {
> +				remote-endpoint = <&mipi_in_ucam>;
> +				data-lanes = <1>;
> +			};
> +		};
> +	};
>  };
>  
>  &cdn_dp {
> @@ -353,10 +399,38 @@ &io_domains {
>  	gpio1830-supply = <&pp1800_s0>;		/* APIO4_VDD;  4c 4d */
>  };
>  
> +&isp0 {
> +	status = "okay";
> +
> +	ports {
> +		port@0 {
> +			mipi_in_wcam: endpoint@0 {
> +				reg = <0>;
> +				remote-endpoint = <&wcam_out>;
> +				data-lanes = <1 2>;
> +			};
> +
> +			mipi_in_ucam: endpoint@1 {
> +				reg = <1>;
> +				remote-endpoint = <&ucam_out>;
> +				data-lanes = <1>;
> +			};
> +		};
> +	};
> +};
> +
> +&isp0_mmu {
> +	status = "okay";
> +};
> +
>  &max98357a {
>  	sdmode-gpios = <&gpio0 2 GPIO_ACTIVE_HIGH>;
>  };
>  
> +&mipi_dphy_rx0 {
> +	status = "okay";
> +};
> +
>  &mipi_dsi {
>  	status = "okay";
>  	clock-master;
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
