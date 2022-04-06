Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46D85C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Apr 2022 08:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ks3x3NXXoW9QufRDajOKY81VRSHvicbtaTVobdO+0Z8=; b=qWIA/OvqdOQMHF
	uy2YAvfCxS96wiCHs7o1ri8878F0ZNDf2MLJcu6LCj38k/EIS62gWMSIb1kzRiI8SaR8yyS0rWrFB
	EEiamaIBAyz6W+3p/dQnc6mHG9uoPARLIJVH44yaSDIvp4K7LZXQO9lA7n+7gfW/NtfJadR3Oq5/L
	LgleQqkymu5jN86B+f/hGrA8qR5hVgIezuLfN6h8DzMwITXkG65eLwpHyt5y4x3ttt2+gQbeEgr8I
	BlQhxR+uF4rDxpOoI34KIV6iTU8Gr1TnzJDuvwt+HJ71yHfYA0VPCVmdPVLh22uJqw4DsmgmcYv5y
	njxHaxhQGPKxKKeJEpbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nc0nb-004cmo-66; Wed, 06 Apr 2022 08:13:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nc0nN-004cjY-Qh
 for linux-rockchip@lists.infradead.org; Wed, 06 Apr 2022 08:13:45 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nc0nI-00039x-UW; Wed, 06 Apr 2022 10:13:36 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nc0nF-00058m-ND; Wed, 06 Apr 2022 10:13:33 +0200
Date: Wed, 6 Apr 2022 10:13:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Andy Yan <andy.yan@rock-chips.com>
Cc: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
 dri-devel@lists.freedesktop.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de, Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
Message-ID: <20220406081333.GU4012@pengutronix.de>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220401125205.GL4012@pengutronix.de>
 <1c0fbf4f-2e17-29f9-5c69-c80b53ff3d2f@rock-chips.com>
 <20220405093700.GQ4012@pengutronix.de>
 <12a8c0ef-90ee-cf7e-50a0-e00add8af147@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <12a8c0ef-90ee-cf7e-50a0-e00add8af147@rock-chips.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:03:09 up 6 days, 20:32, 65 users, load average: 0.42, 0.38, 0.21
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220406_011341_909675_CEC75094 
X-CRM114-Status: GOOD (  42.76  )
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

On Wed, Apr 06, 2022 at 10:02:59AM +0800, Andy Yan wrote:
> Hi:
> =

> On 4/5/22 17:37, Sascha Hauer wrote:
> > On Sat, Apr 02, 2022 at 09:37:17AM +0800, Andy Yan wrote:
> > > Hi Sacha:
> > > =

> > > On 4/1/22 20:52, Sascha Hauer wrote:
> > > > -- =

> > > > >From cbc03073623a7180243331ac24c3afaf9dec7522 Mon Sep 17 00:00:00 =
2001
> > > > From: Sascha Hauer<s.hauer@pengutronix.de>
> > > > Date: Fri, 1 Apr 2022 14:48:49 +0200
> > > > Subject: [PATCH] fixup! drm: rockchip: Add VOP2 driver
> > > > =

> > > > ---
> > > >    drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 14 ++++++++++++++
> > > >    1 file changed, 14 insertions(+)
> > > > =

> > > > diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers=
/gpu/drm/rockchip/rockchip_drm_vop2.c
> > > > index 7dba7b9b63dc6..1421bf2f133f1 100644
> > > > --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> > > > +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> > > > @@ -2287,6 +2287,20 @@ static int vop2_create_crtc(struct vop2 *vop=
2)
> > > >    			}
> > > >    		}
> > > > +		if (vop2->data->soc_id =3D=3D 3566) {
> > > > +			/*
> > > > +			 * On RK3566 these windows don't have an independent
> > > > +			 * framebuffer. They share the framebuffer with smart0,
> > > > +			 * esmart0 and cluster0 respectively.
> > > > +			 */
> > > > +			switch (win->data->phys_id) {
> > > > +			case ROCKCHIP_VOP2_SMART1:
> > > > +			case ROCKCHIP_VOP2_ESMART1:
> > > > +			case ROCKCHIP_VOP2_CLUSTER1:
> > > > +				continue;
> > > > +			}
> > > =

> > > Think about this , there maybe other upcoming vop2 base soc, they may=
 only
> > > have
> > > =

> > > mirror window Smart1 Esmart1, or Smart1, Esmart1, Esmart2, Cluster1.
> > > =

> > > I think this should add WIN_FEATURE at the platform description file
> > > rockchip_vop2_reg.c, then
> > > =

> > > check the FEATURE to decide whether the driver should give this windo=
w a
> > > special treatment.
> > > =

> > > this can make one code run for different soc with different platform
> > > description. or we should add
> > > =

> > > the same code logic for different soc again and again.
> > You mean like done in the downstream Kernel? Here indeed we have a
> > WIN_FEATURE_MIRROR flag added to the platform description. This is then
> > evaluated with:
> > =

> > static bool vop2_is_mirror_win(struct vop2_win *win)
> > {
> >          return soc_is_rk3566() && (win->feature & WIN_FEATURE_MIRROR);
> > }
> > =

> > So a flag is added and afterwards its evaluation is SoC specific. That
> > doesn't help at all and only obfuscates things.
> > =

> > Besides, experience shows that you can't predict a good abstraction for
> =

> This is not a=A0 predict,=A0 this is an IP feature, so it will appeared on
> upcoming SOC.
> =

> We have rk3588 with 8 windows(4 Cluster + 4 Esmart, no Smart window), and
> =

> also have a entry level soc which only have 4 windows, they both have this
> feature.

Same as with the other discussion: Please let's solve this once we are
there.
For now my addition is the easiest way out. Once other SoCs shall be
supported we can re-evaluate that and find better suitable ways for SoC
abstractions. This may result in just your suggestion (in which case you
can say told-you-so) or completely different.

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
