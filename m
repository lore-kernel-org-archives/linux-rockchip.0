Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D4D5C77B70
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Apr 2023 09:45:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AK2JlCvd0usxx3wpzERxOBaiKHu6jebM9a8O2saSWMY=; b=nNd/17N2ZqNrn0
	7yftxMJHi66ngISN45EPdFXy4YHV9GjtJhsd32ceizg5h1F6ciZki9LENFC+GZ1m1AhjjcFUiqBe0
	5RKZwU3ISvCZvJWvgp4oTAqQ4C3nI1k/4jVy+CWlLHVfo+bXaiuvNtfUcqUNk2swoKOf9KTFJYCK4
	Q8XCBaP0CX8AwHGbR7s3LgnRuTpok57tFoLimc57tma9S6E5Uztln8dna9NblMPTo+CzEh78wUdXK
	YkxP1tFDB8JOD6PrfB6H7ePQDVcLe3IZZ5sIZx7QtvsKubD/IIdtyRwRHWu7eOTZkrgZcAhulXH2w
	IaFCuUS8j9dYJvdi1AHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poLQM-00FcTv-0P;
	Mon, 17 Apr 2023 09:45:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poLQH-00FcSr-0n
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Apr 2023 09:45:25 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1poLQC-0005sy-RR; Mon, 17 Apr 2023 11:45:16 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1poLQC-00080t-D4; Mon, 17 Apr 2023 11:45:16 +0200
Date: Mon, 17 Apr 2023 11:45:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Cc: Chris Morgan <macroalpha82@gmail.com>,
	=?iso-8859-15?Q?K=F6ry?= Maincent <kory.maincent@bootlin.com>,
	Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	Michael Riesch <michael.riesch@wolfvision.net>,
	kernel@pengutronix.de, stable@vger.kernel.org
Subject: Re: [PATCH] drm/rockchip: vop2: fix suspend/resume
Message-ID: <20230417094516.GM15436@pengutronix.de>
References: <20230413144347.3506023-1-s.hauer@pengutronix.de>
 <64381f5b.050a0220.1533e.41e2@mx.google.com>
 <ZDlhGv0seSoxFlJ5@aptenodytes>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZDlhGv0seSoxFlJ5@aptenodytes>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_024521_284422_8147C9B8 
X-CRM114-Status: GOOD (  33.87  )
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

On Fri, Apr 14, 2023 at 04:20:10PM +0200, Paul Kocialkowski wrote:
> Hi,
> 
> On Thu 13 Apr 23, 10:27, Chris Morgan wrote:
> > On Thu, Apr 13, 2023 at 04:43:47PM +0200, Sascha Hauer wrote:
> > > During a suspend/resume cycle the VO power domain will be disabled and
> > > the VOP2 registers will reset to their default values. After that the
> > > cached register values will be out of sync and the read/modify/write
> > > operations we do on the window registers will result in bogus values
> > > written. Fix this by re-initializing the register cache each time we
> > > enable the VOP2. With this the VOP2 will show a picture after a
> > > suspend/resume cycle whereas without this the screen stays dark.
> 
> I was actually tracking the very same bug this week!
> 
> Thanks a lot for fixing this, it would certainly have taken me a while to
> think about regmap cache maintenance. Good thinking :)
> 
> Your patch fixes the issue on my side but I have a suggestion below:
> 
> > > Fixes: 604be85547ce4 ("drm/rockchip: Add VOP2 driver")
> > > Cc: stable@vger.kernel.org
> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > ---
> > >  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 8 ++++++++
> > >  1 file changed, 8 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> > > index ba3b817895091..d9daa686b014d 100644
> > > --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> > > +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> > > @@ -215,6 +215,8 @@ struct vop2 {
> > >  	struct vop2_win win[];
> > >  };
> > >  
> > > +static const struct regmap_config vop2_regmap_config;
> > > +
> > >  static struct vop2_video_port *to_vop2_video_port(struct drm_crtc *crtc)
> > >  {
> > >  	return container_of(crtc, struct vop2_video_port, crtc);
> > > @@ -839,6 +841,12 @@ static void vop2_enable(struct vop2 *vop2)
> > >  		return;
> > >  	}
> > >  
> > > +	ret = regmap_reinit_cache(vop2->map, &vop2_regmap_config);
> > > +	if (ret) {
> > > +		drm_err(vop2->drm, "failed to reinit cache: %d\n", ret);
> > > +		return;
> > > +	}
> 
> It seems that regmap has regcache_mark_dirty() for this purpose, which is
> perhaps more adapted than reinitializing cache (unless I'm missing something).
> Note that I haven't tested it at this point.

I wasn't aware of this function. regcache_mark_dirty() alone is not
enough, we need regcache_sync() as well. This looks better, I just sent
a v2.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
