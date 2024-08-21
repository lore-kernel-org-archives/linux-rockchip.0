Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58A44C52D7C
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Aug 2024 08:58:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wrX9BDHXiz5L7/aRBy9Ym8pHwyFr2uI23oMYcKGN0xA=; b=chCIZCmgzGHaDg
	6zH7Gwjtw11wJO4GIBwr+Rj1qCA24yfpGofpOr9/oxgitXqESVlcZc1S21TnZDdui4JUS/27BZ4Iu
	wNB7ZGq2uymg6dtP53BZ0Fc02xz2sLXlTYQ2/f8w4caBlwfFGemZZAxxX9Wp3i4o9WcX3A9FwOhQT
	JN5NRLcbYjiSJF872jn+EJNgzWc62Mz70taBJIIhWQZsm0jYMVc/GdaVoq9ySJOMJnxMYHYWL51L3
	P1iXzeilDaGTXSLkncWNM99ueI5873fnp1x9UyryLpgkGzjYHfnBk6U4R2xUjD0WFIKyd8zi8RXa8
	I5LkZq0hSDaD1Lgdga/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sghAb-00000008Avd-3612;
	Wed, 21 Aug 2024 08:58:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sghAZ-00000008Aup-0N2X
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Aug 2024 08:58:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=g3iW1tvpeGCL/WKsMXSYH3kZ7s0SznwWV0YLqqC2ruU=; b=TWXjf4U/k/JVAzjwWeYGDdxjPQ
	lR5/wIWsOJTq017gxlKsC6llYp0Tcmutz8WDnISHrFV8IXhm7qFUpoL1+5f19y+bYbjYBTGz/TjWC
	GpUSSr6B2rODLS4AsLipobOKDRy5jP9eU5KSd2CqtuCsBn/AOyGCI0iNTEq3lIH35dKN1rpgU6hvA
	XNN+rcGFOenzNdnyMmUK7HtCe05tFJaXTNLJUskuCw4/C0SrMyfOjTA3t4wTyPzGxik7IC3iZ5nEd
	mkmTkME3M10EpqV5QhcH/pGtGd0UaQ//Tu7qVUhDNCC3Yl4Ab5lf1K4rnItdFcALDxS268QXauaNt
	FYl4HW3Q==;
Received: from i53875aca.versanet.de ([83.135.90.202] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sghAX-00052t-Fr; Wed, 21 Aug 2024 10:58:17 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Cc: linux-rockchip@lists.infradead.org,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Subject: Re: [PATCH v2 1/6] arm64: dts: rockchip: enable USB 2.0 on NanoPC-T6 LTS
Date: Wed, 21 Aug 2024 10:58:45 +0200
Message-ID: <1975383.fIoEIV5pvu@diego>
In-Reply-To: <20240821-friendlyelec-nanopc-t6-lts-v2-1-e0138bb10042@linaro.org>
References: <20240821-friendlyelec-nanopc-t6-lts-v2-0-e0138bb10042@linaro.org>
 <20240821-friendlyelec-nanopc-t6-lts-v2-1-e0138bb10042@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_015819_161552_F86C5619 
X-CRM114-Status: GOOD (  18.66  )
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

Am Mittwoch, 21. August 2024, 10:25:30 CEST schrieb Marcin Juszkiewicz:
> FriendlyELEC introduced new version of NanoPC-T6 SBC.

If this change is specific to the new "LTS" board variant, why is it in
the main board dts now?

I.e. with this change you enable it on _all_ NanoPC-T6 boards, even the
ones without those components?


Heiko


> MiniPCIe slot got removed and USB 2.0 configuration has changed.
> There are two external accessible ports and two ports on internal
> header.
> 
> There is on-board USB hub which provides:
> - one external connector (bottom one)
> - two internal ports on pin header
> - m.2 E port
> 
> Top USB 2.0 connector comes directly from SoC.
> 
> Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts | 35 +++++++++++++++++++++++
>  1 file changed, 35 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
> index ad8e36a339dc..bf2c4427ad74 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
> @@ -182,6 +182,20 @@ vdd_4g_3v3: vdd-4g-3v3-regulator {
>  		regulator-max-microvolt = <3300000>;
>  		vin-supply = <&vcc5v0_sys>;
>  	};
> +
> +	vcc5v0_usb20_host: vcc5v0-usb20-host-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio1 RK_PA4 GPIO_ACTIVE_HIGH>;
> +		pinctrl-0 = <&usb20_host_pwren>;
> +		pinctrl-names = "default";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-name = "vcc5v0_usb20_host";
> +		vin-supply = <&vcc5v0_sys>;
> +	};
>  };
>  
>  &combphy0_ps {
> @@ -535,6 +549,10 @@ typec5v_pwren: typec5v-pwren {
>  			rockchip,pins = <1 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
>  		};
>  
> +		usb20_host_pwren: usb20-host-pwren {
> +			rockchip,pins = <1 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
>  		usbc0_int: usbc0-int {
>  			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_up>;
>  		};
> @@ -911,6 +929,14 @@ &uart2 {
>  	status = "okay";
>  };
>  
> +&u2phy1 {
> +	status = "okay";
> +};
> +
> +&u2phy1_otg {
> +	status = "okay";
> +};
> +
>  &u2phy2_host {
>  	phy-supply = <&vdd_4g_3v3>;
>  	status = "okay";
> @@ -928,6 +954,10 @@ &u2phy3 {
>  	status = "okay";
>  };
>  
> +&usbdp_phy1 {
> +	status = "okay";
> +};
> +
>  &usb_host0_ehci {
>  	status = "okay";
>  };
> @@ -943,3 +973,8 @@ &usb_host1_ehci {
>  &usb_host1_ohci {
>  	status = "okay";
>  };
> +
> +&usb_host1_xhci {
> +	dr_mode = "host";
> +	status = "okay";
> +};
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
