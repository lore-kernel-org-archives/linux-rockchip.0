Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80DC5C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jan 2024 12:08:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=50XoCsdtW8fjaSKqJvBqAOP6yRMLqeJ6C1RFZWJgoJo=; b=y43xzDcsbLy45Y
	mbyVkg33bSjSPsdZKAhOyvrn04pq56N/R5WaPzb/X/E5BlaGZ6RsFPm4qyC7ArQQWmmjMzmmxeuMx
	nZuz7S54HGYzD9zTr/nHS0Gi1HT2Jw/Q+odI70PLNCbPygoF6JRaskjDKq/OdvqSSUp+AN8rZYSgD
	VZDEYMu3b3cS5oqtNlFK8xiqeN1k/iNiaetNm9765QBcWvM14DC9slp49F4QiCxs3jc5ZfgVA/lF9
	dszVQflAamAR4yXym3KidKgJaHX3eTFYiJrw3L1eJxuBrYc8LVslS5N6FJ+r5UKMv92UXN5NbVYQJ
	X3Cma390QH96BfRpjZig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLizO-00GpMk-09;
	Fri, 05 Jan 2024 12:07:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLizK-00GpLb-2w;
	Fri, 05 Jan 2024 12:07:48 +0000
Received: from i53875a56.versanet.de ([83.135.90.86] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rLizA-0003eS-Qv; Fri, 05 Jan 2024 13:07:36 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jagan Teki <jagan@edgeble.ai>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Add Radxa ROCK 4C+ DSI DT-overlay
Date: Fri, 05 Jan 2024 13:07:35 +0100
Message-ID: <4304443.fW5hKsROvD@diego>
In-Reply-To: <CA+VMnFwGe6c4e2wucEUNmr8RDjv=DSnZ1UrDHiLdnNq5a9-3XQ@mail.gmail.com>
References: <20230731200559.635629-1-jagan@edgeble.ai> <2194166.1BCLMh4Saa@diego>
 <CA+VMnFwGe6c4e2wucEUNmr8RDjv=DSnZ1UrDHiLdnNq5a9-3XQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240105_040746_952768_08F6ED74 
X-CRM114-Status: GOOD (  26.97  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Jagan,

Am Montag, 13. November 2023, 16:15:34 CET schrieb Jagan Teki:
> On Thu, 5 Oct 2023 at 06:07, Heiko St=FCbner <heiko@sntech.de> wrote:
> >
> > Am Montag, 31. Juli 2023, 22:05:57 CEST schrieb Jagan Teki:
> > > Add DSI pipeline for Radxa ROCK 4C+ board via DT-overlay.
> > >
> > > The DSI connector in Radxa ROCK 4C+ board support different
> > > resolution panels and those compatible is added in another
> > > DT-overlay.
> > >
> > > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> > > ---
> > >  arch/arm64/boot/dts/rockchip/Makefile         |  1 +
> > >  .../rk3399-rock-4c-plus-mipi-dsi.dtso         | 69 +++++++++++++++++=
++
> > >  2 files changed, 70 insertions(+)
> > >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus-=
mipi-dsi.dtso
> > >
> > > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/=
dts/rockchip/Makefile
> > > index 1ebbb3e9c2f9..3a4c4cd769eb 100644
> > > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > > @@ -58,6 +58,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-roc-pc.dtb
> > >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-roc-pc-mezzanine.dtb
> > >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-roc-pc-plus.dtb
> > >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rock-4c-plus.dtb
> > > +dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rock-4c-plus-mipi-dsi.dtbo
> > >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rock-4se.dtb
> > >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rock-pi-4a.dtb
> > >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-rock-pi-4a-plus.dtb
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus-mipi-ds=
i.dtso b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus-mipi-dsi.dtso
> > > new file mode 100644
> > > index 000000000000..271717040b6c
> > > --- /dev/null
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus-mipi-dsi.dtso
> > > @@ -0,0 +1,69 @@
> > > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > > +/*
> > > + * Copyright (c) 2023 Radxa Computer Co., Ltd.
> > > + * Copyright (c) 2023 Edgeble AI Technologies Pvt. Ltd.
> > > + *
> > > + * DT-overlay for Radxa ROCK 4C+ DSI Connector.
> > > + */
> > > +
> > > +/dts-v1/;
> > > +/plugin/;
> > > +
> > > +#include <dt-bindings/gpio/gpio.h>
> > > +#include <dt-bindings/pinctrl/rockchip.h>
> > > +
> > > +&{/} {
> > > +     backlight: backlight {
> > > +             compatible =3D "pwm-backlight";
> > > +             pwms =3D <&pwm2 0 25000 0>;
> > > +     };
> > > +};
> > > +
> > > +&mipi_dsi {
> > > +     clock-master;
> > > +     #address-cells =3D <1>;
> > > +     #size-cells =3D <0>;
> > > +     status =3D "okay";
> > > +
> > > +     ports {
> > > +             #address-cells =3D <1>;
> > > +             #size-cells =3D <0>;
> > > +
> > > +             mipi_out: port@1 {
> > > +                     reg =3D <1>;
> > > +
> > > +                     mipi_out_panel: endpoint {
> > > +                             remote-endpoint =3D <&mipi_in_panel>;
> > > +                     };
> > > +             };
> > > +     };
> > > +
> > > +     panel: panel@0 {
> > > +             /* different resolution panels are used, compatibles ar=
e in DTO */
> >
> > then I guess, the panel node should get a disabled here (and the mipi_d=
si
> > should stay disabled at this point) and both should get enabled in the =
final
> > dtbo where the compatible lives?
> =

> Do you mean dsi also needs to be disabled here and enabled in dtbo? if
> so why? if panel disabled then dsi won't probe even if it enabled.

I'm not sure how dtbo's are loaded nowadays, but if by some form of
accident only this dtbo gets loaded without a panel compatible you've
essentially broken the whole display output, as the dsi will defer
indefinitly.

Also, in more general thinking, the savings in terms of node duplication is
quite minimal with this setup. Can't you just have the tiny dsi+backlight
nodes in each panel dtbo?


Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
