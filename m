Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB1BDC982D8
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Sep 2026 13:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PXvlXXInn9VzQg2NOBJh5sIcyjqmA4ZT7tqmH/KaI94=; b=3NVztwsyhrCWBR
	DSqdig2qYrE11pPO2MKRp6dHc7fB9b8YAzWeJPhQIORi4jmqQVxz9xHwaz6oG34dAKXERlkKXnwr+
	B8Q3XstN7gYu4chw1xw/rN0rO6RihG8tuLjrv883D4Y5x7Psgsyn6sMxiGF+czi/BpRbPiS1dm0dH
	rQuVJnZC6HnQyi/PTFcIfnMkJTHg1p/cbFhyKjyt+eIP8TU598npP1BYd4nIBD8GhXwq22sRghHrp
	azcu3p/VjLI1z/fh33UykPjHpjQ0kthpE4ikcQW0/c/bL0Ff8a0tcEMJPI9nQYeXuyehTQkJE9Lee
	PEyNuUYbZ62SwGNw5jGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Yj4-0000000EYtr-3KAF;
	Fri, 18 Sep 2026 13:34:02 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Yig-0000000EYe9-41AP;
	Fri, 18 Sep 2026 13:33:40 +0000
Received: from monstersaurus.ideasonboard.com (cpc89244-aztw30-2-0-cust6594.18-1.cable.virginm.net [86.31.185.195])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 7AD234F05;
	Fri, 18 Sep 2026 15:31:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1789738313;
	bh=82Mn9uZcABYJuJY9Ja/otiQ81SD5L074KXYkhdIuJ6I=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=sSs1i0F90LIHx/AZUsiKA+YnwsGpLmBo4KVoj+4PCYr811SKW5YYmJfzvEQ+leTOG
	 VCaTQT21x5BR83STKDA30U4LByAcaDz/jNhdEjxPUk9zaNjq9ie6lUfcemA34CJvoF
	 NZ/sE+F0CEFUVp37+OhHkPGXGNYIHHWb0YThntK4=
MIME-Version: 1.0
In-Reply-To: <20260918132013.GG59058@killaraus.ideasonboard.com>
References: <20260918-kbingham-orientation-v6-0-5e8b1f01be29@ideasonboard.com> <20260918-kbingham-orientation-v6-2-5e8b1f01be29@ideasonboard.com> <178972979131.1723501.9444120486527129452@ping.linuxembedded.co.uk> <20260918132013.GG59058@killaraus.ideasonboard.com>
Subject: Re: [PATCH v6 2/6] arm64: dts: qcom: Convert to new media orientation definitions
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: Benjamin Mugnier <benjamin.mugnier@foss.st.com>, Bjorn Andersson <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Daniel Scally <dan.scally@ideasonboard.com>, Fabio Estevam <festevam@gmail.com>, Frank Li <Frank.Li@nxp.com>, Geert Uytterhoeven <geert+renesas@glider.be>, Heiko Stuebner <heiko@sntech.de>, Jacopo Mondi <jacopo.mondi@ideasonboard.com>, Jacopo Mondi <jacopo@jmondi.org>, Jimmy Su <jimmy.su@intel.com>, Jonathan Hunter <jonathanh@nvidia.com>, Konrad Dybcio <konradybcio@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, Martin Kepplinger <martin.kepplinger@puri.sm>, Matthias Fend <matthias.fend@emfend.at>, Mauro Carvalho Chehab <mchehab@kernel.org>, Michael Riesch <michael.riesch@collabora.com>, Mikhail Rudenko <mike.rudenko@gmail.com>, Paul Elder <paul.elder@ideasonboard.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, Quentin Schulz <quentin.schulz@theobroma-systems.com>, Richard Acayan <mailingradian@gmail.com>, 
 Rob Herring <robh@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, Sascha Hauer <s.hauer@pengutronix.de>, Svyatoslav Ryhel <clamor95@gmail.com>, Sylvain Petinot <sylvain.petinot@foss.st.com>, Thierry Reding <thierry.reding@kernel.org>, Tommaso Merciai <tomm.merciai@gmail.com>, linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux@ew.tq-group.com, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org, Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, David Heidelberg <david@ixit.cz>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Date: Fri, 18 Sep 2026 14:33:34 +0100
Message-ID: <178973841405.1723501.9051265194315500867@ping.linuxembedded.co.uk>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_063339_202717_81AF45DD 
X-CRM114-Status: GOOD (  28.89  )
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

Quoting Laurent Pinchart (2026-09-18 14:20:13)
> On Fri, Sep 18, 2026 at 12:09:51PM +0100, Kieran Bingham wrote:
> > Quoting Kieran Bingham (2026-09-18 11:44:14)
> > > From: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
> > > 
> > > The orientation property for video interface devices now has definitions
> > > to prevent hardcoded integer values for the enum options.
> > > 
> > > Update the users throughout the qualcomm device trees to use the new
> > > definitions.
> > > 
> > > Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > > Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> > > Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> > > Reviewed-by: David Heidelberg <david@ixit.cz>
> > 
> > Sashiko has noted that there is another new dts added in dts/qcom since
> > I wrote this patch.
> > 
> > I don't want to invalidate the above reviews by adding another change,
> > so I will send the single update to the new file separately as the core
> > definitions are already accepted now.
> > 
> > If someone /really/ wants me to add the change to
> > arch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-common.dtsi in this patch,
> > please let me know.
> > 
> > it looks like this:
> > 
> > ----------- arch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-common.dtsi -----------
> > index 945127dacc82..f86d3e0d51a6 100644
> > @@ -3,10 +3,11 @@
> >   * Copyright (c) 2022-2024 Jianhua Lu <lujianhua000@gmail.com>
> >   */
> > 
> >  #include <dt-bindings/arm/qcom,ids.h>
> >  #include <dt-bindings/media/video-interfaces.h>
> > +#include <dt-bindings/media/video-interface-devices.h>
> >  #include <dt-bindings/phy/phy.h>
> >  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> >  #include <dt-bindings/usb/pd.h>
> >  #include "sm8250.dtsi"
> >  #include "pm8150.dtsi"
> > @@ -571,11 +572,11 @@ camera_front: camera@10 {
> >               reset-gpios = <&tlmm 109 GPIO_ACTIVE_LOW>;
> > 
> >               pinctrl-0 = <&cam_mclk3_default &camera_front_active>;
> >               pinctrl-names = "default";
> > 
> > -             orientation = <0>; /* Front facing */
> > +             orientation = <MEDIA_ORIENTATION_FRONT>;
> >               rotation = <270>;
> > 
> >               port {
> >                       ov8856_front_ep: endpoint {
> >                               data-lanes = <1 2>;
> 
> I don't mind either way, and I think you can keep the existing R-b tags
> if you add that hunk.

As noticed by Thierry, it will also impact things depending on who
applies this patch and where.

It seems like the headers used appear in linux-next already now that
Sakari has merged them, but this hunk won't apply on
media-committers/next ... so I'll keep it separate until we can let the
dust settle.

--
Kieran

> 
> > > Signed-off-by: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
> > > ---
> > >  arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts         | 3 ++-
> > >  arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts | 3 ++-
> > >  arch/arm64/boot/dts/qcom/sdm670-google-common.dtsi         | 3 ++-
> > >  3 files changed, 6 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
> > > index f41ad446a39e..e2b7f1bd05ab 100644
> > > --- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
> > > +++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
> > > @@ -13,6 +13,7 @@
> > >  #include <dt-bindings/iio/qcom,spmi-adc7-pmk8350.h>
> > >  #include <dt-bindings/leds/common.h>
> > >  #include <dt-bindings/media/video-interfaces.h>
> > > +#include <dt-bindings/media/video-interface-devices.h>
> > >  #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
> > >  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> > >  #include <dt-bindings/sound/qcom,q6asm.h>
> > > @@ -701,7 +702,7 @@ camera@10 {
> > >                 pinctrl-0 = <&cam_mclk3_default>;
> > >                 pinctrl-names = "default";
> > >  
> > > -               orientation = <0>; /* Front facing */
> > > +               orientation = <MEDIA_ORIENTATION_FRONT>;
> > >                 rotation = <270>;
> > >  
> > >                 port {
> > > diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> > > index 218573a97785..3b5f6a29e969 100644
> > > --- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> > > +++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> > > @@ -11,6 +11,7 @@
> > >  #include <dt-bindings/input/gpio-keys.h>
> > >  #include <dt-bindings/input/input.h>
> > >  #include <dt-bindings/leds/common.h>
> > > +#include <dt-bindings/media/video-interface-devices.h>
> > >  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> > >  
> > >  #include "sc8280xp.dtsi"
> > > @@ -683,7 +684,7 @@ camera@10 {
> > >  
> > >                 clocks = <&camcc CAMCC_MCLK3_CLK>;
> > >  
> > > -               orientation = <0>;      /* Front facing */
> > > +               orientation = <MEDIA_ORIENTATION_FRONT>;
> > >  
> > >                 avdd-supply = <&vreg_l6q>;
> > >                 dvdd-supply = <&vreg_l2q>;
> > > diff --git a/arch/arm64/boot/dts/qcom/sdm670-google-common.dtsi b/arch/arm64/boot/dts/qcom/sdm670-google-common.dtsi
> > > index b4854801a5f5..7880d85b52fe 100644
> > > --- a/arch/arm64/boot/dts/qcom/sdm670-google-common.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/sdm670-google-common.dtsi
> > > @@ -9,6 +9,7 @@
> > >  #include <dt-bindings/gpio/gpio.h>
> > >  #include <dt-bindings/input/input.h>
> > >  #include <dt-bindings/leds/common.h>
> > > +#include <dt-bindings/media/video-interface-devices.h>
> > >  #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
> > >  #include <dt-bindings/power/qcom-rpmpd.h>
> > >  #include "sdm670.dtsi"
> > > @@ -460,7 +461,7 @@ camera@1a {
> > >                 pinctrl-names = "default";
> > >  
> > >                 rotation = <270>;
> > > -               orientation = <0>;
> > > +               orientation = <MEDIA_ORIENTATION_FRONT>;
> > >  
> > >                 port {
> > >                         cam_front_endpoint: endpoint {
> > > 
> 
> -- 
> Regards,
> 
> Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
