Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38F82C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Apr 2022 14:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BDHYYpjwDNUS4kcy7GLQ7kVR/SURM/4lH8yONc5FVJc=; b=GSGBuCfPJh0WbX
	Wqg/etGrhxdoPYkNvD7DprvQMuo4QNpSwMxaZAZDFAdD2/DVgCVguJByyjjvzomUV28oYConQ5cba
	32b7UMOW0lBJXzKd3CjyGKOgk46y8FMb/tL9EtZKxN5wTMaU/6/y2VTdJ5ua0KLcpPVvReh6Hu5gY
	coyLCUeIhJyDTsqtz8vCBZUHP8fDmh5feId9ntBF5gbgfrGQwGEG2JCPsvJdTGIEZebMFUg8ghOO7
	E4Rg9EQVQ70vINdXgqEOv9KvoqTedycg3Ud89OZRWut1hNyw1vQLayNRDjAUVgvgokTgeHAEnSlQw
	PM5z4xh8Ay7e9q5I0UFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nc73d-006gIF-Sr; Wed, 06 Apr 2022 14:54:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nc73F-006g5v-S0
 for linux-rockchip@lists.infradead.org; Wed, 06 Apr 2022 14:54:33 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nc739-0000f6-NQ; Wed, 06 Apr 2022 16:54:23 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nc737-0006AJ-9q; Wed, 06 Apr 2022 16:54:21 +0200
Date: Wed, 6 Apr 2022 16:54:21 +0200
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
 Peter Geis <pgwipeout@gmail.com>, Kever Yang <Kever.yang@rock-chips.com>
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
Message-ID: <20220406145421.GW4012@pengutronix.de>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220401125205.GL4012@pengutronix.de>
 <1c0fbf4f-2e17-29f9-5c69-c80b53ff3d2f@rock-chips.com>
 <20220405093700.GQ4012@pengutronix.de>
 <12a8c0ef-90ee-cf7e-50a0-e00add8af147@rock-chips.com>
 <20220406081333.GU4012@pengutronix.de>
 <a5e070ae-d9e1-e5ee-0871-2cdf58958203@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a5e070ae-d9e1-e5ee-0871-2cdf58958203@rock-chips.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 16:05:52 up 7 days, 2:35, 73 users, load average: 0.24, 0.24, 0.22
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220406_075429_953987_39C8DE9F 
X-CRM114-Status: GOOD (  50.00  )
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

On Wed, Apr 06, 2022 at 04:36:42PM +0800, Andy Yan wrote:
> Hi:
> =

> On 4/6/22 16:13, Sascha Hauer wrote:
> > On Wed, Apr 06, 2022 at 10:02:59AM +0800, Andy Yan wrote:
> > > Hi:
> > > =

> > > On 4/5/22 17:37, Sascha Hauer wrote:
> > > > On Sat, Apr 02, 2022 at 09:37:17AM +0800, Andy Yan wrote:
> > > > > Hi Sacha:
> > > > > =

> > > > > On 4/1/22 20:52, Sascha Hauer wrote:
> > > > > > -- =

> > > > > > >From cbc03073623a7180243331ac24c3afaf9dec7522 Mon Sep 17 00:00=
:00 2001
> > > > > > From: Sascha Hauer<s.hauer@pengutronix.de>
> > > > > > Date: Fri, 1 Apr 2022 14:48:49 +0200
> > > > > > Subject: [PATCH] fixup! drm: rockchip: Add VOP2 driver
> > > > > > =

> > > > > > ---
> > > > > >     drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 14 +++++++++=
+++++
> > > > > >     1 file changed, 14 insertions(+)
> > > > > > =

> > > > > > diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/dri=
vers/gpu/drm/rockchip/rockchip_drm_vop2.c
> > > > > > index 7dba7b9b63dc6..1421bf2f133f1 100644
> > > > > > --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> > > > > > +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> > > > > > @@ -2287,6 +2287,20 @@ static int vop2_create_crtc(struct vop2 =
*vop2)
> > > > > >     			}
> > > > > >     		}
> > > > > > +		if (vop2->data->soc_id =3D=3D 3566) {
> > > > > > +			/*
> > > > > > +			 * On RK3566 these windows don't have an independent
> > > > > > +			 * framebuffer. They share the framebuffer with smart0,
> > > > > > +			 * esmart0 and cluster0 respectively.
> > > > > > +			 */
> > > > > > +			switch (win->data->phys_id) {
> > > > > > +			case ROCKCHIP_VOP2_SMART1:
> > > > > > +			case ROCKCHIP_VOP2_ESMART1:
> > > > > > +			case ROCKCHIP_VOP2_CLUSTER1:
> > > > > > +				continue;
> > > > > > +			}
> > > > > Think about this , there maybe other upcoming vop2 base soc, they=
 may only
> > > > > have
> > > > > =

> > > > > mirror window Smart1 Esmart1, or Smart1, Esmart1, Esmart2, Cluste=
r1.
> > > > > =

> > > > > I think this should add WIN_FEATURE at the platform description f=
ile
> > > > > rockchip_vop2_reg.c, then
> > > > > =

> > > > > check the FEATURE to decide whether the driver should give this w=
indow a
> > > > > special treatment.
> > > > > =

> > > > > this can make one code run for different soc with different platf=
orm
> > > > > description. or we should add
> > > > > =

> > > > > the same code logic for different soc again and again.
> > > > You mean like done in the downstream Kernel? Here indeed we have a
> > > > WIN_FEATURE_MIRROR flag added to the platform description. This is =
then
> > > > evaluated with:
> > > > =

> > > > static bool vop2_is_mirror_win(struct vop2_win *win)
> > > > {
> > > >           return soc_is_rk3566() && (win->feature & WIN_FEATURE_MIR=
ROR);
> > > > }
> > > > =

> > > > So a flag is added and afterwards its evaluation is SoC specific. T=
hat
> > > > doesn't help at all and only obfuscates things.
> > > > =

> > > > Besides, experience shows that you can't predict a good abstraction=
 for
> > > This is not a=A0 predict,=A0 this is an IP feature, so it will appear=
ed on
> > > upcoming SOC.
> > > =

> > > We have rk3588 with 8 windows(4 Cluster + 4 Esmart, no Smart window),=
 and
> > > =

> > > also have a entry level soc which only have 4 windows, they both have=
 this
> > > feature.
> > Same as with the other discussion: Please let's solve this once we are
> > there.
> =

> =

> I am not sure if this is the suitable way for upstream, this sound like
> =

> just solve the issue appeared at the front of eyes and not think any
> =

> thing about make this driver easy to support new hardware in the future.

Oh come on, we are not talking about any major design decisions here,
this is merely a small implementation detail that can be refactored
anytime.

I would change it when all it takes is to add a feature (or better:
nonfeature) flag to the window data, but the combination of the flag
*and* testing on which SoC the flag shall be honoured makes me feel
that the feature flag is still not the best abstraction.

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
