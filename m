Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2C15C6FA86
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Sep 2022 09:46:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6oDeIhBQ4J3NaCCX1uZbPZ0LJnxHAUE9GHZdNDQXpFo=; b=VOpuW/YqLn8uxO
	lxLy2RMJkU0iTM3qXBloPqpl1RuF9UUslMxIXS/faLpgtUBccj76tNd9jcryzocuZKXn5FreGuK1y
	mAUaL2Ni7kZQM1IX9XkuKm5DITdSe5O3fXNMF3z/JeZ/PEzn/yijo1C9GHBJWjE24B5hVp5OsAJ8w
	1MmzBTMhauFoS3y2ytQJr0XAtpahQq1ZO9ncvNR/ylaV/PAvHntHxmKf9fuuPiVSstxt+7xcDTMVm
	+Pf6MsSx/wIlqCkMcIm29SdI45EQFoN8LQYkINGURgffykp0LOAeE0+SMyyEh/t0DIco1UJ2+USgi
	YCqF5hZB55oEt8Px7S4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obfGO-003Su8-Jv; Fri, 23 Sep 2022 09:46:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obfFb-003ScT-Ua; Fri, 23 Sep 2022 09:45:43 +0000
Received: from p508fdb48.dip0.t-ipconnect.de ([80.143.219.72] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1obfFV-0005Wv-T2; Fri, 23 Sep 2022 11:45:33 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Dan Johansen <strit@manjaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Enable HDMI and GPU on quartz64-b
Date: Fri, 23 Sep 2022 11:45:33 +0200
Message-ID: <2198677.PYKUYFuaPT@phil>
In-Reply-To: <659fc2fe-f820-04ad-8a4f-224b4d4bd97b@manjaro.org>
References: <20220920143446.633956-1-frattaroli.nicolas@gmail.com> <659fc2fe-f820-04ad-8a4f-224b4d4bd97b@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_024540_036014_8ECA13D4 
X-CRM114-Status: GOOD (  21.58  )
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

Am Donnerstag, 22. September 2022, 23:22:37 CEST schrieb Dan Johansen:
> This seems to be based against linux-next and not mainline. It fails to 
> apply on mainline for me.

I would not expect things any other way though :-) .
I.e. in the current cycle everything new is of course targetting
v6.1 and the Quartz boards already saw some other changes.


> Den 20.09.2022 kl. 16.34 skrev Nicolas Frattaroli:
> > This enables the GPU and HDMI output (including HDMI audio) on
> > the PINE64 Quartz64 Model B single board computer.
> >
> > Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> > ---
> >   .../boot/dts/rockchip/rk3566-quartz64-b.dts   | 60 +++++++++++++++++++
> >   1 file changed, 60 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> > index 0f623198970f..77b179cd20e7 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> > @@ -4,6 +4,7 @@
> >   
> >   #include <dt-bindings/gpio/gpio.h>
> >   #include <dt-bindings/pinctrl/rockchip.h>
> > +#include <dt-bindings/soc/rockchip,vop2.h>
> >   #include "rk3566.dtsi"
> >   
> >   / {
> > @@ -28,6 +29,17 @@ gmac1_clkin: external-gmac1-clock {
> >   		#clock-cells = <0>;
> >   	};
> >   
> > +	hdmi-con {
> > +		compatible = "hdmi-connector";
> > +		type = "a";
> > +
> > +		port {
> > +			hdmi_con_in: endpoint {
> > +				remote-endpoint = <&hdmi_out_con>;
> > +			};
> > +		};
> > +	};
> > +
> >   	leds {
> >   		compatible = "gpio-leds";
> >   
> > @@ -183,6 +195,33 @@ &gmac1m1_clkinout
> >   	status = "okay";
> >   };
> >   
> > +&gpu {
> > +	mali-supply = <&vdd_gpu>;
> > +	status = "okay";
> > +};
> > +
> > +&hdmi {
> > +	avdd-0v9-supply = <&vdda0v9_image>;
> > +	avdd-1v8-supply = <&vcca1v8_image>;
> > +	status = "okay";
> > +};
> > +
> > +&hdmi_in {
> > +	hdmi_in_vp0: endpoint {
> > +		remote-endpoint = <&vp0_out_hdmi>;
> > +	};
> > +};
> > +
> > +&hdmi_out {
> > +	hdmi_out_con: endpoint {
> > +		remote-endpoint = <&hdmi_con_in>;
> > +	};
> > +};
> > +
> > +&hdmi_sound {
> > +	status = "okay";
> > +};
> > +
> >   &i2c0 {
> >   	status = "okay";
> >   
> > @@ -456,6 +495,10 @@ &i2c5 {
> >   	status = "disabled";
> >   };
> >   
> > +&i2s0_8ch {
> > +	status = "okay";
> > +};
> > +
> >   &i2s1_8ch {
> >   	pinctrl-names = "default";
> >   	pinctrl-0 = <&i2s1m0_sclktx
> The above part does not seem to exist in the current mainline (rc6) git 
> repo.

which is of course already in linux-next, so this
patch just applied nicely.


Heiko

> > @@ -677,3 +720,20 @@ &usb_host0_ehci {
> >   &usb_host0_ohci {
> >   	status = "okay";
> >   };
> > +
> > +&vop {
> > +	assigned-clocks = <&cru DCLK_VOP0>, <&cru DCLK_VOP1>;
> > +	assigned-clock-parents = <&pmucru PLL_HPLL>, <&cru PLL_VPLL>;
> > +	status = "okay";
> > +};
> > +
> > +&vop_mmu {
> > +	status = "okay";
> > +};
> > +
> > +&vp0 {
> > +	vp0_out_hdmi: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
> > +		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
> > +		remote-endpoint = <&hdmi_in_vp0>;
> > +	};
> > +};
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
