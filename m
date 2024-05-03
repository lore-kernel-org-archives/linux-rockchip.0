Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 368F9C25B5C
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 May 2024 13:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2/MdDfDDEA0HWc/oV5D8cEcCyWJPC9uWIyBYvjiSd2A=; b=v4O7eUhuUqvc36
	OL05n1VWKDBLHbRfvIp4Av8nW6wdIx8QJmj2u5NjHWN3WnpjNe52YPz3DpyBZj45R6ituzF8aCg+1
	fvgP5ydvwXDuG+CLX1CGA8jjf4C/ozFd2EyQNo9pCamD7/vL39iZytQvi3oWyCeofWO4W9cO37bjg
	AeBQCXV5Q4ezUUdU1Ga2vcEyjCS4nak2epdCAanG4oj8v3orTdcNV0+arKd7yLELmVKI5J/2aGW9W
	VYan0Zhsy4ZAhf2BN4P9d3F4jtbFT2xDYAf1E0wdR+91/k4+xHKfbFvuBMHIoHdRhfvmi6mKm+aGs
	JCO3sXyYPU5TQjcQ0WbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2sYF-0000000GX39-2fVQ;
	Fri, 03 May 2024 13:02:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2sY9-0000000GWvw-3EDZ;
	Fri, 03 May 2024 13:02:07 +0000
Received: from i53875b01.versanet.de ([83.135.91.1] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1s2sY6-0000wj-1A; Fri, 03 May 2024 15:02:02 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: hjc@rock-chips.com, andy.yan@rock-chips.com,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH 2/2] drm/rockchip: vop2: configure layers for vp3 on rk3588
Date: Fri, 03 May 2024 15:02:01 +0200
Message-ID: <9626238.rMLUfLXkoz@diego>
In-Reply-To: <062d86ab-1518-4160-870c-3cd36228d055@cherry.de>
References: <20240425195506.2935955-1-heiko@sntech.de>
 <20240425195506.2935955-3-heiko@sntech.de>
 <062d86ab-1518-4160-870c-3cd36228d055@cherry.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_060205_989361_694ACFD1 
X-CRM114-Status: GOOD (  31.99  )
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

Am Freitag, 3. Mai 2024, 14:57:03 CEST schrieb Quentin Schulz:
> Hi Heiko,
> 
> On 4/25/24 9:55 PM, Heiko Stuebner wrote:
> > From: Heiko Stuebner <heiko.stuebner@cherry.de>
> > 
> > The rk3588 VOP2 has 4 video-ports, yet the driver currently only
> > configures the first 3, as used on the rk3568.
> > 
> 
> I'm wondering whether we should update the drawing at the top of the 
> driver then?
> 
> > Add another block to configure the vp3 as well, if applicable.
> > 
> > Fixes: 5a028e8f062f ("drm/rockchip: vop2: Add support for rk3588")
> > Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
> > ---
> >   drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 12 ++++++++++++
> >   drivers/gpu/drm/rockchip/rockchip_drm_vop2.h |  1 +
> >   2 files changed, 13 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> > index 523880a4e8e74..1a327a9ed7ee4 100644
> > --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> > +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> > @@ -2303,6 +2303,7 @@ static void vop2_setup_alpha(struct vop2_video_port *vp)
> >   static void vop2_setup_layer_mixer(struct vop2_video_port *vp)
> >   {
> >   	struct vop2 *vop2 = vp->vop2;
> > +	const struct vop2_data *vop2_data = vop2->data;
> >   	struct drm_plane *plane;
> >   	u32 layer_sel = 0;
> >   	u32 port_sel;
> > @@ -2344,6 +2345,17 @@ static void vop2_setup_layer_mixer(struct vop2_video_port *vp)
> >   	else
> >   		port_sel |= FIELD_PREP(RK3568_OVL_PORT_SET__PORT2_MUX, 8);
> >   
> > +	/* configure vp3 */
> > +	if (vop2_data->soc_id == 3588) {
> 
> I think it'd be smarter to check against vop2->data->nr_vps >= 4; so 
> that we don't need to maintain a list of SoCs that support a specific 
> number of video ports.

probably ;-)

> 
> > +		struct vop2_video_port *vp3 = &vop2->vps[3];
> 
> This is always possible because vps is statically allocated for 4 items, 
> c.f. struct vop2_video_port vps[ROCKCHIP_MAX_CRTC]; so we don't 
> necessarily need it in this specific location and can group it with the 
> others. Cosmetic suggestion though.
> 
> Otherwise, the change itself makes sense to me, so:
> 
> Reviewed-by: Quentin Schulz <quentin.schulz@cherry.de>

though comments from Andy from Rockchip in another thread suggest that
this is not necessary at all, as the "last" vp somehow has a hardware lock
to take the remaining layers or so.

And while tracking down dsi issues I had a "binary" state of
"gray display" without this patch and working DSI with it, in the last days
I haven't been able to reproduce this anymore.

So I guess I'll fix up the first patch according to your comment and keep
this change here for later.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
