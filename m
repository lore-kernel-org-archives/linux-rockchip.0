Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D730CFA464
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Oct 2024 20:11:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EQcW7eaV2tfGFpBrqDya8kpLGaRWpczWqLXKOi/Ktes=; b=ukPvwvZ2rFZ6kW
	t9zXEZOnP4n88BWXHMJTE7nqhvi7HwaqVASDd12UZU3DhjU9iBHyT50UWuytDBeF7EbZygXuRU3+Z
	zpqxNv3jm0b7LKhUsVc8GAcDVmJyVX8vBw4nXFfS7uVxeDBZs3ILhoB306dwHLYd8w6zPWIvEJxZH
	/EBGQBRVWwS6I+5BIYrurAVZluMkG2HnCUrefnSW9lEslEhqKRuTcSZJWN11H1Qt79EJV3RYddD+h
	m+BQ/wxrsvtDeC58r8KhGvT2u8m1HPrhwI9V96f6CIbfcQ56j+SwTnAc0wVNxbfxWdAsULeWLoHOa
	J8rOkacau8VDulf4fllA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3hh8-0000000Fmjp-1XPC;
	Wed, 23 Oct 2024 20:11:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3hGt-0000000FitQ-45TF
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Oct 2024 19:43:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=JWKBCrheMnDwDxxa6Xpd5V/N96xN2BH0moUZB4LkXaI=; b=I1wYRPVSEd0WFKjzgZCgMdJV2p
	+uEZJDMsRrZsLt1KIRx4JLJZqZB7DwmX7UAlxasxvfWM1Fv1P7/I+g2cpG5zZd6F6YmRFGGgMtlHk
	KpE81dHu5w5tT/zQUZC3cmqQxJB3G0PmHhNzIQS1yKsGM0g4z3wi90gjamjJ51blxm2dBDpgcUW6d
	cXx7sQjuexahECDWhpyv+Bh8njQV297aQ4NRfaYEbaZaN2SGBXFJOtymzeUnnM5da0JEZlej9N5so
	ZOeEvyQO7UIJDa9BkIYx3kbW1qUWqo/fWP7x0JEOzLYFsFsDf2PQ6BldDMKMtaJnxc1sDQkK3hhwP
	j4jM0xuw==;
Received: from i53875b34.versanet.de ([83.135.91.52] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t3hGs-0002eH-38; Wed, 23 Oct 2024 21:43:54 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Chris Morgan <macroalpha82@gmail.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 robh@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Enable HDMI0 and GPU on Indiedroid Nova
Date: Wed, 23 Oct 2024 21:43:54 +0200
Message-ID: <46754280.fMDQidcC6G@diego>
In-Reply-To: <20241023164104.66282-3-macroalpha82@gmail.com>
References: <20241023164104.66282-1-macroalpha82@gmail.com>
 <20241023164104.66282-3-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241023_124356_072917_FF8EB9A0 
X-CRM114-Status: GOOD (  17.70  )
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

Am Mittwoch, 23. Oktober 2024, 18:41:04 CEST schrieb Chris Morgan:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Enable the HDMI0 and GPU for the Indiedroid Nova.

in general please notice the "and" in your commit message. This generally
indicates a situation that wants to be more than one patch.

With the gpu + hdmi being close cousins and the gpu actually tiny,
there is not a big reason to resend this series though.

So I would've preferred 2 patches, but it'll do this time ;-)


Heiko

> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 56 +++++++++++++++++++
>  1 file changed, 56 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
> index a4b930f6987f..547b3ca881e0 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
> @@ -5,6 +5,7 @@
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/linux-event-codes.h>
>  #include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/soc/rockchip,vop2.h>
>  #include <dt-bindings/usb/pd.h>
>  #include "rk3588s.dtsi"
>  
> @@ -50,6 +51,17 @@ chosen {
>  		stdout-path = "serial2:1500000n8";
>  	};
>  
> +	hdmi0-con {
> +		compatible = "hdmi-connector";
> +		type = "c";
> +
> +		port {
> +			hdmi0_con_in: endpoint {
> +				remote-endpoint = <&hdmi0_out_con>;
> +			};
> +		};
> +	};
> +
>  	sdio_pwrseq: sdio-pwrseq {
>  		compatible = "mmc-pwrseq-simple";
>  		clock-names = "ext_clock";
> @@ -242,6 +254,35 @@ &gpio4 {
>  			  "", "", "", "";
>  };
>  
> +&gpu {
> +	mali-supply = <&vdd_gpu_s0>;
> +	status = "okay";
> +};
> +
> +&hdmi0 {
> +	pinctrl-0 = <&hdmim0_rx_hpdin>, <&hdmim0_tx0_scl>,
> +		    <&hdmim0_tx0_sda>, <&hdmim0_tx0_hpd>,
> +		    <&hdmim0_tx0_cec>;
> +	pinctrl-names = "default";
> +	status = "okay";
> +};
> +
> +&hdmi0_in {
> +	hdmi0_in_vp0: endpoint {
> +		remote-endpoint = <&vp0_out_hdmi0>;
> +	};
> +};
> +
> +&hdmi0_out {
> +	hdmi0_out_con: endpoint {
> +		remote-endpoint = <&hdmi0_con_in>;
> +	};
> +};
> +
> +&hdptxphy_hdmi0 {
> +	status = "okay";
> +};
> +
>  &i2c0 {
>  	pinctrl-0 = <&i2c0m2_xfer>;
>  	pinctrl-names = "default";
> @@ -919,3 +960,18 @@ usbdp_phy0_dp_altmode_mux: endpoint@1 {
>  		};
>  	};
>  };
> +
> +&vop {
> +	status = "okay";
> +};
> +
> +&vop_mmu {
> +	status = "okay";
> +};
> +
> +&vp0 {
> +	vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
> +		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
> +		remote-endpoint = <&hdmi0_in_vp0>;
> +	};
> +};
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
