Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F287BCF6497
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 08:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3pIqcxWHyHPwAbfpRWVFEmjEkol9if55XmGBO86ToL4=; b=LbQTrAgwWpi5jD
	lAehX/gJRqAGGnbfewPWd2rjTKp11dGuWRn7RkpM5gnL904KLqRSEQElKi6RZdwWUOwpiM6iSGf5e
	lTBUIfMa535hTsMu1JXkYRBfYmxsXJW0EwUozxyrctiqpXQsirMT2sEb/efaniVwthDZaIwmjupZ0
	z9cZHrcPcuHm48GNAdPEBxOAGOsrV97/GHKnKY4LoVK6gfAOgC5xwTwlzf6y+KnWLZMc/esbUv6SA
	ZA5ai8aJg9c+c2KB7fssQyKYkSDDda65eyUA0s3aFQgfggrBEoovvzFwdooAYG0t1XTXTd278MEbv
	aR210U5KI4t4I6JlFiOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svC7I-0000000GOqI-1ZK2;
	Mon, 30 Sep 2024 08:50:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svC6T-0000000GOjo-22C9;
	Mon, 30 Sep 2024 08:50:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=BZhvBdz24UU/9na5K2urGxf2dHFtMLDWkuqh0tEIars=; b=zGAnHetRD6a16YnCi2N/2hdaJU
	EonkVFH9akA6WSXZ1EDQfZeelFXDEKOpFmwx33yf/5aMHMMSqowRVhdcRkYEz/HI3GKMm/krCwNDB
	sIlYA6FzqIsV78RGjLoUbufl4NtJz2jUtaNKFrK++86caCIx9Sl/Pb8+omZgmWLabUOCfSxPLo2/T
	3XnvMh92z9Cl/9C+T5uMQ6QlLWk7ec+/VHu3Nq2kEfI5wodaoNm20gb2Mavc4ETc+9YqVRVyp8TWB
	4nQ1z691ioNDznXSPqMVzez0B85z84dNl6V6uMNwJA0VjIwIr4k6CQ9BOieh9gY4LqKEmcC6U/Zif
	USI+6blg==;
Received: from i5e861925.versanet.de ([94.134.25.37] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svC6H-0003lg-7C; Mon, 30 Sep 2024 10:49:49 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Daniel Semkowicz <dse@thaumatec.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Quentin Schulz <quentin.schulz@cherry.de>
Cc: Dragan Simic <dsimic@manjaro.org>,
 Farouk Bouabid <farouk.bouabid@theobroma-systems.com>,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Vahe Grigoryan <vahe.grigoryan@theobroma-systems.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add power button for RK3399 Puma
Date: Mon, 30 Sep 2024 10:49:48 +0200
Message-ID: <4620941.LvFx2qVVIh@diego>
In-Reply-To: <54c49375-cb2a-40fe-abcd-fc56c04d0c53@cherry.de>
References: <20240925072945.18757-1-dse@thaumatec.com>
 <54c49375-cb2a-40fe-abcd-fc56c04d0c53@cherry.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_015001_568156_048C75CE 
X-CRM114-Status: GOOD (  38.78  )
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

Hey Quentin, Daniel,

Am Donnerstag, 26. September 2024, 14:34:30 CEST schrieb Quentin Schulz:
> On 9/25/24 9:28 AM, Daniel Semkowicz wrote:
> > There is a PWRBTN# input pin exposed on a Q7 connector. The pin
> > is routed to a GPIO0_A1 through a diode. Q7 specification describes
> > the PWRBTN# pin as a Power Button signal.
> > Configure the pin as KEY_POWER, so it can function as power button and
> > trigger device shutdown.
> > Add the pin definition to RK3399 Puma dts, so it can be reused
> > by derived platforms, but keep it disabled by default.
> > 
> > Enable the power button input on Haikou development board.
> > 
> > Signed-off-by: Daniel Semkowicz <dse@thaumatec.com>
> 
> This works, thanks.
> 
> Tested-by: Quentin Schulz <quentin.schulz@cherry.de>
> 
> Now I have some questions I wasn't able to answer myself, maybe someone 
> can provide some feedback on those :)
> 
> We already have a gpio-keys for buttons on Haikou, c.f. 
> https://elixir.bootlin.com/linux/v6.11/source/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts#L22. 
> Those signals are directly routed to the SoM and follow the Qseven standard.
> 
> The same applies to PWRBTN# signal.
> 
> However, here we have one gpio-keys for PWRBTN# in Puma DTSI and one 
> gpio-keys for the buttons and sliders on Haikou devkit in Haikou DTS.
> 
> I'm a bit undecided on where this should go.
> 
> Having all button/slider signals following the Qseven standard in Puma 
> DTSI and enable the gpio-keys only in the devkit would make sense to me, 
> so that other baseboards could easily make use of it. However, things 
> get complicated if the baseboard manufacturer decides to only implement 
> **some** of the signals, for which we then need to remove some nodes 
> from gpio-keys (and pinctrl entries) since gpio-keys doesn't check the 
> "status" property in its child nodes (though that could be fixed). At 
> which point, it's not entirely clear if having it in Puma DTSI is 
> actually beneficial.
> 
> Someone has an opinion/recommendation on that?

I guess from a platform perspective nobody really cares, so as that is
"your" board, it comes down to a policy decision on your part ;-) .

While pins follow the q7 standard, there may very well be some lax
handling of that standard in some places, and I guess gpio lines could
be re-used for something else if needed, as something like the lid-switch
is probably non-essential.

Also a gpio-key input does not create that much code-overhead if
replicated, so personally I'd just stick the power-button with the other
buttons in the haikou dts.

Which is also a way better thing than having multiple gpio-keys instances
that userspace then has to handle.


Heiko


> > ---
> > 
> >   .../boot/dts/rockchip/rk3399-puma-haikou.dts  |  4 ++++
> >   arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi | 22 +++++++++++++++++++
> >   2 files changed, 26 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
> > index f6f15946579e..0999026b16d0 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
> > @@ -143,6 +143,10 @@ vddd_codec: vddd-codec {
> >   	};
> >   };
> >   
> > +&gpio_key_power {
> > +	status = "okay";
> > +};
> > +
> >   &hdmi {
> >   	ddc-i2c-bus = <&i2c3>;
> >   	status = "okay";
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
> > index 650b1ba9c192..389ffe604e74 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
> > @@ -3,6 +3,7 @@
> >    * Copyright (c) 2017 Theobroma Systems Design und Consulting GmbH
> >    */
> >   
> > +#include <dt-bindings/input/input.h>
> >   #include <dt-bindings/pwm/pwm.h>
> >   #include "rk3399.dtsi"
> >   
> > @@ -39,6 +40,19 @@ clkin_gmac: external-gmac-clock {
> >   		#clock-cells = <0>;
> >   	};
> >   
> > +	gpio_key_power: gpio-key-power {
> > +		compatible = "gpio-keys";
> > +		pinctrl-0 = <&pwrbtn_pin>;
> > +		pinctrl-names = "default";
> > +		status = "disabled";
> > +
> > +		button-pwrbtn-n {
> > +			gpios = <&gpio0 RK_PA1 GPIO_ACTIVE_LOW>;
> > +			label = "PWRBTN#";
> > +			linux,code = <KEY_POWER>;
> > +		};
> > +	};
> > +
> >   	vcc1v2_phy: vcc1v2-phy {
> >   		compatible = "regulator-fixed";
> >   		regulator-name = "vcc1v2_phy";
> > @@ -475,6 +489,14 @@ &pinctrl {
> >   	pinctrl-names = "default";
> >   	pinctrl-0 = <&q7_thermal_pin &bios_disable_override_hog_pin>;
> >   
> > +	buttons {
> > +		pwrbtn_pin: pwrbtn-pin {
> > +			rockchip,pins =
> > +				/* PWRBTN# */
> > +				<0 RK_PA1 RK_FUNC_GPIO &pcfg_pull_up>;
> > +		};
> > +	};
> > +
> >   	gpios {
> >   		bios_disable_override_hog_pin: bios-disable-override-hog-pin {
> >   			rockchip,pins =
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
