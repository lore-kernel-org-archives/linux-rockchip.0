Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB75CC001CC
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Apr 2024 21:09:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NRl+Uu2/ffpUwBDxS91lMwPGSQ22NlY3bwDkdiqrITM=; b=NxGS/Z78/WCKKP
	jVDjhoR7gzUi02+nYFOCDR9lpMrDOMODMXCfjM1sEFboEiNRSFYBYKvvqPa4zWnnZrfCgx981QE2D
	/2XmgDNnjgZnM/E91rlW7bbLozHharg5STCGIvdkzAgcMs84YUuqLDzPspHU3+qwfwPHeV7WWj0m6
	8QzGgEtNnfy1xEQTYdvsvrBG9FYmTthDIzw6qld4hx6zyV2vDn4PquDVokKb0IVKt/48ipLh9AqyP
	Wd1XQL2/LPqdBK51qUeeKYCSS6KuSMbKnzVl/MSeuxVcJyErJ5wZKn1GkUD8Ri8VewySBPnXvITz0
	Asp2NgdJmvJ0UdxO5Nsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxCWv-000000001qx-0m4Q;
	Wed, 17 Apr 2024 21:09:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxCWp-000000001q8-3KgY;
	Wed, 17 Apr 2024 21:09:19 +0000
Received: from i5e861917.versanet.de ([94.134.25.23] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rxCWm-0007Pi-B4; Wed, 17 Apr 2024 23:09:12 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Jimmy Hon <honyuenkwun@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: rk3588s-orangepi-5: add USB-C support
Date: Wed, 17 Apr 2024 23:09:11 +0200
Message-ID: <7652632.EvYhyI6sBW@diego>
In-Reply-To: <20240415170331.1587-1-honyuenkwun@gmail.com>
References: <20240415170331.1587-1-honyuenkwun@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240417_140915_871958_590A4866 
X-CRM114-Status: GOOD (  15.18  )
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

Hi Jimmy,

Am Montag, 15. April 2024, 19:03:31 CEST schrieb Jimmy Hon:
> Add support for using the Orange Pi 5 USB-C port for USB in OHCI, EHCI
> or XHCI mode. Displayport AltMode is not yet supported.
> 
> Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>

[...]

> +	usbc0: usb-typec@22 {
> +		compatible = "fcs,fusb302";
> +		reg = <0x22>;
> +		interrupt-parent = <&gpio0>;
> +		interrupts = <RK_PD3 IRQ_TYPE_LEVEL_LOW>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&usbc0_int>;
> +		vbus-supply = <&vbus_typec>;
> +		status = "okay";
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +
> +				usbc0_role_sw: endpoint@0 {
> +					remote-endpoint = <&dwc3_0_role_switch>;
> +				};
> +			};
> +		};

as you already saw from the mail of Rob's bot, this does not belong here
in the mainline kernel.


> +		usb_con: connector {
> +			compatible = "usb-c-connector";
> +			label = "USB-C";
> +			data-role = "dual";
> +			op-sink-microwatt = <1000000>;
> +			power-role = "dual";
> +			sink-pdos =
> +				<PDO_FIXED(5000, 1000, PDO_FIXED_USB_COMM)>;
> +			source-pdos =
> +				<PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
> +			try-power-role = "source";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +
> +					usbc0_orien_sw: endpoint {
> +						remote-endpoint = <&usbdp_phy0_orientation_switch>;
> +					};
> +				};
> +
> +				port@1 {
> +					reg = <1>;
> +
> +					dp_altmode_mux: endpoint {
> +						remote-endpoint = <&usbdp_phy0_dp_altmode_mux>;
> +					};
> +				};

these ports also look like they do not follow the binding.
The type-c-connector binding specifies the ports as
- port@1: High Speed (HS) data bus to the connector
- port@2: Siper Speed (SS) data bus to the connector
- port@3: Sideband Use (SBU) - the alternate mode


> +			};
> +		};
> +	};
> +
>  	hym8563: rtc@51 {
>  		compatible = "haoyu,hym8563";
>  		reg = <0x51>;
> @@ -625,6 +684,14 @@ &tsadc {
>  	status = "okay";
>  };
>  
> +&u2phy0 {
> +	status = "okay";
> +};
> +
> +&u2phy0_otg {
> +	status = "okay";
> +};
> +
>  &u2phy2 {
>  	status = "okay";
>  };
> @@ -646,6 +713,29 @@ &uart2 {
>  	status = "okay";
>  };
>  
> +&usbdp_phy0 {
> +	mode-switch;
> +	orientation-switch;
> +	sbu1-dc-gpios = <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>;
> +	sbu2-dc-gpios = <&gpio4 RK_PA7 GPIO_ACTIVE_HIGH>;
> +	status = "okay";
> +
> +	port {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		usbdp_phy0_orientation_switch: endpoint@0 {
> +			reg = <0>;
> +			remote-endpoint = <&usbc0_orien_sw>;
> +		};
> +
> +		usbdp_phy0_dp_altmode_mux: endpoint@1 {
> +			reg = <1>;
> +			remote-endpoint = <&dp_altmode_mux>;
> +		};
> +	};
> +};
> +
>  &usb_host0_ehci {
>  	status = "okay";
>  };
> @@ -654,6 +744,22 @@ &usb_host0_ohci {
>  	status = "okay";
>  };
>  
> +&usb_host0_xhci {
> +	dr_mode = "otg";
> +	usb-role-switch;
> +	status = "okay";
> +
> +	port {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		dwc3_0_role_switch: endpoint@0 {
> +			reg = <0>;

this only has one endpoint, so you should be able to live without the @0
and the reg and could also drop the #address-cells + #size-cells above?

> +			remote-endpoint = <&usbc0_role_sw>;
> +		};
> +	};
> +};
> +
>  &usb_host1_ehci {
>  	status = "okay";
>  };
> 


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
