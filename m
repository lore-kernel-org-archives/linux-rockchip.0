Return-Path: <SRS0=Z0ts=IY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72B75C433DB
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 14:37:36 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1C0EC61A05
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 14:37:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1C0EC61A05
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uLXyViuChxdL071M78yIIw6UzB0lNILCj5ztJFIlU1g=; b=EFTQSaHpHSrPM/HiAisTPvNbB
	+F7wzyD23U+dcn2hSIgOqs9ITA5Cm9z8Df0ZAeRCv95scFSSOZ7xuyxZdKozxCACxh79zel3WjwXv
	OEoiEvrlmhdHo2pihZCpz1LzILSiQA9HE/odvZqGQHQd/oyfE097xr+KgeeatNetnFSPPLyfAhXCB
	+9Lj4L8fQyWx5HwdAq7b3g9LuGnhBM1cXvCJiX8r9v/HdAladW+0JPcNXshO3EAnVjVw79MDcQPgp
	sy536z1ljFn747G6h01dsrR6ZmkJ+MT9KK7kbdeUozXke6lqoO2hSGSaIVJJ8gnnSYbVLrI+PSzlH
	KbdFtgK0w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPnac-003nh5-6p; Fri, 26 Mar 2021 14:37:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPnaY-003nfg-Rv
 for linux-rockchip@lists.infradead.org; Fri, 26 Mar 2021 14:37:28 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <pza@pengutronix.de>)
 id 1lPnaQ-0001Ln-5z; Fri, 26 Mar 2021 15:37:18 +0100
Received: from pza by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <pza@pengutronix.de>)
 id 1lPnaO-0007mU-JM; Fri, 26 Mar 2021 15:37:16 +0100
Date: Fri, 26 Mar 2021 15:37:16 +0100
From: Philipp Zabel <pza@pengutronix.de>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: ezequiel@collabora.com, mchehab@kernel.org, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
 lee.jones@linaro.org, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@siol.net, hverkuil-cisco@xs4all.nl,
 emil.l.velikov@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org,
 kernel@collabora.com
Subject: Re: [PATCH v6 02/13] dt-bindings: media: nxp,imx8mq-vpu: Update the
 bindings for G2 support
Message-ID: <20210326143716.GA27823@pengutronix.de>
References: <20210318082046.51546-1-benjamin.gaignard@collabora.com>
 <20210318082046.51546-3-benjamin.gaignard@collabora.com>
 <20210326141156.GA8441@pengutronix.de>
 <3c23bfb0-eed4-63ad-be70-58aa129b0e35@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3c23bfb0-eed4-63ad-be70-58aa129b0e35@collabora.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:29:00 up 36 days, 17:52, 99 users,  load average: 0.78, 0.37, 0.20
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: pza@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210326_143727_005471_AB30217E 
X-CRM114-Status: GOOD (  30.81  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, Mar 26, 2021 at 03:26:15PM +0100, Benjamin Gaignard wrote:
> =

> Le 26/03/2021 =E0 15:11, Philipp Zabel a =E9crit=A0:
> > On Thu, Mar 18, 2021 at 09:20:35AM +0100, Benjamin Gaignard wrote:
> > > Introducing G2 hevc video decoder lead to modify the bindings to allow
> > > to get one node per VPUs.
> > > VPUs share one hardware control block which is provided as a phandle =
on
> > > an syscon.
> > > Each node got now one reg and one interrupt.
> > > Add a compatible for G2 hardware block: nxp,imx8mq-vpu-g2.
> > > =

> > > To be compatible with older DT the driver is still capable to use 'ct=
rl'
> > > reg-name even if it is deprecated now.
> > > =

> > > Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> > > ---
> > > version 5:
> > > - This version doesn't break the backward compatibilty between kernel
> > >    and DT.
> > > =

> > >   .../bindings/media/nxp,imx8mq-vpu.yaml        | 53 ++++++++++++----=
---
> > >   1 file changed, 34 insertions(+), 19 deletions(-)
> > > =

> > > diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.y=
aml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> > > index 762be3f96ce9..79502fc8bde5 100644
> > > --- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> > > +++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> > > @@ -15,22 +15,18 @@ description:
> > >   properties:
> > >     compatible:
> > > -    const: nxp,imx8mq-vpu
> > > +    oneOf:
> > > +      - const: nxp,imx8mq-vpu
> > > +      - const: nxp,imx8mq-vpu-g2
> > >     reg:
> > > -    maxItems: 3
> > > -
> > > -  reg-names:
> > > -    items:
> > > -      - const: g1
> > > -      - const: g2
> > > -      - const: ctrl
> > > +    maxItems: 1
> > >     interrupts:
> > > -    maxItems: 2
> > > +    maxItems: 1
> > >     interrupt-names:
> > > -    items:
> > > +    oneOf:
> > >         - const: g1
> > >         - const: g2
> > > @@ -46,14 +42,18 @@ properties:
> > >     power-domains:
> > >       maxItems: 1
> > > +  nxp,imx8mq-vpu-ctrl:
> > > +    description: Specifies a phandle to syscon VPU hardware control =
block
> > > +    $ref: "/schemas/types.yaml#/definitions/phandle"
> > > +
> > Should we drop the 'q' here, i.e. nxp,imx8m-vpu-ctrl so we can use the =
same
> > binding for i.MX8MM later?
> =

> I don't know if the control block is the same or not on IMX8MM, so I have=
 only
> put a compatible targeting IMX8MQ.

Oh, the compatible property of the control handle node can be different.
I'm just suggesting that this phandle property be called the same.
Otherwise we'd have to add another nxp,imx8mm-vpu-ctrl property and then
mark either of the two as required, depending on the compatible.

> > =

> > >   required:
> > >     - compatible
> > >     - reg
> > > -  - reg-names
> > >     - interrupts
> > >     - interrupt-names
> > >     - clocks
> > >     - clock-names
> > > +  - nxp,imx8mq-vpu-ctrl
> > >   additionalProperties: false
> > > @@ -62,18 +62,33 @@ examples:
> > >           #include <dt-bindings/clock/imx8mq-clock.h>
> > >           #include <dt-bindings/interrupt-controller/arm-gic.h>
> > > -        vpu: video-codec@38300000 {
> > > +        vpu_ctrl: syscon@38320000 {
> > > +                 compatible =3D "nxp,imx8mq-vpu-ctrl", "syscon";
> > > +                 reg =3D <0x38320000 0x10000>;
> > > +        };
> > > +
> > > +        vpu_g1: video-codec@38300000 {
> > >                   compatible =3D "nxp,imx8mq-vpu";
> > > -                reg =3D <0x38300000 0x10000>,
> > > -                      <0x38310000 0x10000>,
> > > -                      <0x38320000 0x10000>;
> > > -                reg-names =3D "g1", "g2", "ctrl";
> > > -                interrupts =3D <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>,
> > > -                             <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
> > > -                interrupt-names =3D "g1", "g2";
> > > +                reg =3D <0x38300000 0x10000>;
> > > +                interrupts =3D <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
> > > +                interrupt-names =3D "g1";
> > > +                clocks =3D <&clk IMX8MQ_CLK_VPU_G1_ROOT>,
> > > +                         <&clk IMX8MQ_CLK_VPU_G2_ROOT>,
> > Does the G1 VPU require the G2 clock and vice versa?
> =

> Yes either the control hardware block won't work.

Ok.

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
