Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17343C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 May 2022 09:58:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mJYsiETaqyAU6/PyxnrbWNcjJ7eaqt6l3tf1UPyN540=; b=3BYYzcyIFjhzDn
	LM81d9GZXHa/zaxRD4R1LE/6YyFDg18nJek3qZL/JtxTe5PA/7bQiPS/CNcebOH2cV+E9eXQEVuaV
	HTvUHn2TUPrHXEC30bDFb7GUacT70rQSs9M1YiaFPIzxTRlL8tfjRIKpimFbY+B/8W9HthU1WuP7A
	9ccdZdAFeezzXklFLWeYK0NGaGfHn2St3a/8XpsdxVPq1JIwbl6HjcJXaijSR2w0AmtNaWxztYMW2
	zuYSakPcv5z6W0ZDTslWYdJGnTw48cSLaJFADAKQraAUc0DeOl07JNnVmWRnB5o65eob5BzjkkTnb
	1XvDhxuDNDeGiW9Yo3Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1no09x-00Dctk-Ld; Mon, 09 May 2022 09:58:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1no07X-00DbnR-I4
 for linux-rockchip@lists.infradead.org; Mon, 09 May 2022 09:56:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1no07U-0002C4-DF; Mon, 09 May 2022 11:56:00 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1no07T-00082L-QN; Mon, 09 May 2022 11:55:59 +0200
Date: Mon, 9 May 2022 11:55:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH v12 0/3] drm/rockchip: RK356x VOP2 support last fixups
Message-ID: <20220509095559.GC4012@pengutronix.de>
References: <20220509083738.1246866-1-s.hauer@pengutronix.de>
 <5819111.lOV4Wx5bFT@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5819111.lOV4Wx5bFT@diego>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:54:31 up 39 days, 22:24, 93 users,  load average: 0.10, 0.08, 0.12
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220509_025603_638621_17033828 
X-CRM114-Status: GOOD (  30.53  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, May 09, 2022 at 10:44:17AM +0200, Heiko St=FCbner wrote:
> Hi Sascha,
> =

> Am Montag, 9. Mai 2022, 10:37:35 CEST schrieb Sascha Hauer:
> > This is not the full series, if you want that, look for v11.
> > =

> > This series merely has a last-minute change: The VOP2 driver used
> > platform_get_resource_byname() to get its registers, but the reg-names
> > property hasn't been documented in the binding. This series adds the
> > missing documentation and along the way renames the generic "regs"
> > name to "vop" and "gamma_lut" to "gamma-lut".
> =

> we need a fixup-series though. Both the original binding + vop2 driver
> already made it into drm-misc [0]. As this is a shared tree, this can't be
> changed anymore ;-) .
> =

> (Just ignore that the vop2-header moved to the driver-patch, I'll
> fix that up when applying to not cause conflicts)

Ok, I just sent the series as a fixup series. After I've hit the send
button I am not quite sure if that's what you want, you probably want
the patches with proper patch description rather than just --fixup
patches :(

Sascha

> =

> =

> Heiko
> =

> [0] https://cgit.freedesktop.org/drm/drm-misc/commit/?id=3D604be85547ce4d=
61b89292d2f9a78c721b778c16
>     https://cgit.freedesktop.org/drm/drm-misc/commit/?id=3D74015e2650bad6=
41a02100cdf0ac23a96c1a2553
> =

> =

> > Andy Yan (1):
> >   drm: rockchip: Add VOP2 driver
> > =

> > Sascha Hauer (2):
> >   arm64: dts: rockchip: rk356x: Add VOP2 nodes
> >   dt-bindings: display: rockchip: Add binding for VOP2
> > =

> >  .../display/rockchip/rockchip-vop2.yaml       |  146 +
> >  arch/arm64/boot/dts/rockchip/rk3566.dtsi      |    4 +
> >  arch/arm64/boot/dts/rockchip/rk3568.dtsi      |    4 +
> >  arch/arm64/boot/dts/rockchip/rk356x.dtsi      |   51 +
> >  drivers/gpu/drm/rockchip/Kconfig              |    6 +
> >  drivers/gpu/drm/rockchip/Makefile             |    1 +
> >  drivers/gpu/drm/rockchip/rockchip_drm_drv.c   |    1 +
> >  drivers/gpu/drm/rockchip/rockchip_drm_drv.h   |    6 +-
> >  drivers/gpu/drm/rockchip/rockchip_drm_fb.c    |    2 +
> >  drivers/gpu/drm/rockchip/rockchip_drm_vop.h   |   15 +
> >  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c  | 2706 +++++++++++++++++
> >  drivers/gpu/drm/rockchip/rockchip_drm_vop2.h  |  477 +++
> >  drivers/gpu/drm/rockchip/rockchip_vop2_reg.c  |  281 ++
> >  include/dt-bindings/soc/rockchip,vop2.h       |   14 +
> >  14 files changed, 3713 insertions(+), 1 deletion(-)
> >  create mode 100644 Documentation/devicetree/bindings/display/rockchip/=
rockchip-vop2.yaml
> >  create mode 100644 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> >  create mode 100644 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
> >  create mode 100644 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
> >  create mode 100644 include/dt-bindings/soc/rockchip,vop2.h
> > =

> > =

> =

> =

> =

> =

> =


-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
