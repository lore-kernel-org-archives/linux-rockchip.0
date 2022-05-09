Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60F4DC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 May 2022 10:05:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/D9H8hV9Cwzs1MkFygR6QDBFbi5KZ/+yjqRLNzFQr8o=; b=M4BOf/NjiW1g8A
	yODMZGZrEB8kwb8SA6KiZOmbL3mZCk9cRMEP8lv3MIXtsrErvpKAepK8fPGKZKnibta4EDmGkhjm5
	0/JeJmhYy6DQzNqBkqoU8/UForARxrhAAUuNSO9/92eD50SOlmHCJdgwKBWGsGrMuxRZ8M8mfpngM
	qC+J4o03ENi+w6cmJBqFF68D67QWMra475oYSAhDCM3CbehYpA49cO8rYt3tDU8/Xxj9fXIqwCfKn
	I901rMriMd7jJDgfMkaKEfdA3v/JUbHqW6lSZqDSda32h6Z9fhte4fLHEYiEW6nkgINweatw5oqUK
	jftCJaR0eaGlNitjMTHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1no0Gj-00DffG-KF; Mon, 09 May 2022 10:05:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1no0GM-00DfUE-Kh; Mon, 09 May 2022 10:05:12 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1no0GE-0005IK-KZ; Mon, 09 May 2022 12:05:02 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH v12 0/3] drm/rockchip: RK356x VOP2 support last fixups
Date: Mon, 09 May 2022 12:05:01 +0200
Message-ID: <2101133.irdbgypaU6@diego>
In-Reply-To: <20220509095559.GC4012@pengutronix.de>
References: <20220509083738.1246866-1-s.hauer@pengutronix.de>
 <5819111.lOV4Wx5bFT@diego> <20220509095559.GC4012@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220509_030510_710504_6F295B34 
X-CRM114-Status: GOOD (  30.11  )
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

Am Montag, 9. Mai 2022, 11:55:59 CEST schrieb Sascha Hauer:
> On Mon, May 09, 2022 at 10:44:17AM +0200, Heiko St=FCbner wrote:
> > Hi Sascha,
> > =

> > Am Montag, 9. Mai 2022, 10:37:35 CEST schrieb Sascha Hauer:
> > > This is not the full series, if you want that, look for v11.
> > > =

> > > This series merely has a last-minute change: The VOP2 driver used
> > > platform_get_resource_byname() to get its registers, but the reg-names
> > > property hasn't been documented in the binding. This series adds the
> > > missing documentation and along the way renames the generic "regs"
> > > name to "vop" and "gamma_lut" to "gamma-lut".
> > =

> > we need a fixup-series though. Both the original binding + vop2 driver
> > already made it into drm-misc [0]. As this is a shared tree, this can't=
 be
> > changed anymore ;-) .
> > =

> > (Just ignore that the vop2-header moved to the driver-patch, I'll
> > fix that up when applying to not cause conflicts)
> =

> Ok, I just sent the series as a fixup series. After I've hit the send
> button I am not quite sure if that's what you want, you probably want
> the patches with proper patch description rather than just --fixup
> patches :(

from the sound of it that was probably the wrong approach :-)
I.e. drm-misc is a shared tree (with a plethora of people),
so there is always only a way forward, so fixing things is always
adding new things on top - like Dan's error handling as well as
the spelling and coci patches I applied yesterday.

So yes, we need proper patches on top of the drm-misc-next
branch for the VOP2 + binding changes.


Heiko


> > =

> > =

> > Heiko
> > =

> > [0] https://cgit.freedesktop.org/drm/drm-misc/commit/?id=3D604be85547ce=
4d61b89292d2f9a78c721b778c16
> >     https://cgit.freedesktop.org/drm/drm-misc/commit/?id=3D74015e2650ba=
d641a02100cdf0ac23a96c1a2553
> > =

> > =

> > > Andy Yan (1):
> > >   drm: rockchip: Add VOP2 driver
> > > =

> > > Sascha Hauer (2):
> > >   arm64: dts: rockchip: rk356x: Add VOP2 nodes
> > >   dt-bindings: display: rockchip: Add binding for VOP2
> > > =

> > >  .../display/rockchip/rockchip-vop2.yaml       |  146 +
> > >  arch/arm64/boot/dts/rockchip/rk3566.dtsi      |    4 +
> > >  arch/arm64/boot/dts/rockchip/rk3568.dtsi      |    4 +
> > >  arch/arm64/boot/dts/rockchip/rk356x.dtsi      |   51 +
> > >  drivers/gpu/drm/rockchip/Kconfig              |    6 +
> > >  drivers/gpu/drm/rockchip/Makefile             |    1 +
> > >  drivers/gpu/drm/rockchip/rockchip_drm_drv.c   |    1 +
> > >  drivers/gpu/drm/rockchip/rockchip_drm_drv.h   |    6 +-
> > >  drivers/gpu/drm/rockchip/rockchip_drm_fb.c    |    2 +
> > >  drivers/gpu/drm/rockchip/rockchip_drm_vop.h   |   15 +
> > >  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c  | 2706 +++++++++++++++=
++
> > >  drivers/gpu/drm/rockchip/rockchip_drm_vop2.h  |  477 +++
> > >  drivers/gpu/drm/rockchip/rockchip_vop2_reg.c  |  281 ++
> > >  include/dt-bindings/soc/rockchip,vop2.h       |   14 +
> > >  14 files changed, 3713 insertions(+), 1 deletion(-)
> > >  create mode 100644 Documentation/devicetree/bindings/display/rockchi=
p/rockchip-vop2.yaml
> > >  create mode 100644 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> > >  create mode 100644 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
> > >  create mode 100644 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> > >  create mode 100644 include/dt-bindings/soc/rockchip,vop2.h
> > > =

> > > =

> > =

> > =

> > =

> > =

> > =

> =

> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
