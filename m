Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 410B3C6FA82
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Sep 2022 12:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kRM0y8+kCkIyMNoFPjz/DwfX5H0t3bqUD1lnenLrm94=; b=gRwl0A0fNjfgzw
	KVN0VWsr4x38LZtSwjBgq9/IRXA8fPrRR+ZtivJo5JnI63lS4JdWDadSRAGAN5gn7NjgL22bN2z6C
	f6qmv0A5qGKXSXoMixpfJ2y+cc/6xD3GwrIdAna1UokdGBVJLzbD90HY9/m36/eFjNlDTyDqcL3YX
	nC9Ks3LnhESy5d7wn+VBpHrOkxVhk5UbKuUok2aL0UDkXKtvx74aGbeMSfsvPBVp5UV2Q+kXFNtzA
	3Z1nKEY/jSq5oj+g1hjqzOeNcXx8yvY9swtdiXyTT0Y+MKfsqfrxE8A19gz7Tzcf/bSKq6VTDvKTt
	eOcNZt1QXmsYI9bXai3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY4kJ-009kdc-JS; Tue, 13 Sep 2022 12:10:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY4kF-009kVV-T9
	for linux-rockchip@lists.infradead.org; Tue, 13 Sep 2022 12:10:30 +0000
Received: from [185.122.133.20] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oY4kE-0004hC-9w; Tue, 13 Sep 2022 14:10:26 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Furkan Kardame <f.kardame@manjaro.org>
Cc: pgwipeout@gmail.com, linux-rockchip@lists.infradead.org, Furkan Kardame <f.kardame@manjaro.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable video output on Station M2
Date: Tue, 13 Sep 2022 14:10:25 +0200
Message-ID: <1736540.VLH7GnMWUR@phil>
In-Reply-To: <20220627202208.45770-1-f.kardame@manjaro.org>
References: <20220627202208.45770-1-f.kardame@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_051028_719848_71F097EA 
X-CRM114-Status: GOOD (  16.79  )
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

Hi,

Am Montag, 27. Juni 2022, 22:22:08 CEST schrieb Furkan Kardame:
> Add the device tree nodes to enable video output on the Station M2.

what is this "Station M2". You're changing the rk3566-roc-pc device,
which I think is "just" an SBC?

Does the rk3566-roc-pc in general have a hdmi port as well?


Heiko

> Enable the GPU and HDMI nodes and fix the GPU regulator range.
> 
> Signed-off-by: Furkan Kardame <f.kardame@manjaro.org>
> ---
>  .../arm64/boot/dts/rockchip/rk3566-roc-pc.dts | 52 +++++++++++++++++++
>  1 file changed, 52 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
> index 57759b66d..dba648c2f 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
> @@ -4,6 +4,7 @@
>  
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/soc/rockchip,vop2.h>
>  #include "rk3566.dtsi"
>  
>  / {
> @@ -27,6 +28,17 @@ gmac1_clkin: external-gmac1-clock {
>  		#clock-cells = <0>;
>  	};
>  
> +	hdmi-con {
> +		compatible = "hdmi-connector";
> +		type = "a";
> +
> +		port {
> +			hdmi_con_in: endpoint {
> +				remote-endpoint = <&hdmi_out_con>;
> +			};
> +		};
> +	};
> +
>  	leds {
>  		compatible = "gpio-leds";
>  
> @@ -149,6 +161,29 @@ &gmac1m0_clkinout
>  	status = "okay";
>  };
>  
> +&gpu {
> +	mali-supply = <&vdd_gpu>;
> +	status = "okay";
> +};
> +
> +&hdmi {
> +	avdd-0v9-supply = <&vdda0v9_image>;
> +	avdd-1v8-supply = <&vcca1v8_image>;
> +	status = "okay";
> +};
> +
> +&hdmi_in {
> +	hdmi_in_vp0: endpoint {
> +		remote-endpoint = <&vp0_out_hdmi>;
> +	};
> +};
> +
> +&hdmi_out {
> +	hdmi_out_con: endpoint {
> +		remote-endpoint = <&hdmi_con_in>;
> +	};
> +};
> +
>  &i2c0 {
>  	status = "okay";
>  
> @@ -577,3 +612,20 @@ &usb_host0_ehci {
>  &usb_host0_ohci {
>  	status = "okay";
>  };
> +
> +&vop {
> +	assigned-clocks = <&cru DCLK_VOP0>, <&cru DCLK_VOP1>;
> +	assigned-clock-parents = <&pmucru PLL_HPLL>, <&cru PLL_VPLL>;
> +	status = "okay";
> +};
> +
> +&vop_mmu {
> +	status = "okay";
> +};
> +
> +&vp0 {
> +	vp0_out_hdmi: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
> +		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
> +		remote-endpoint = <&hdmi_in_vp0>;
> +	};
> +};
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
