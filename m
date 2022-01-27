Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB1D7C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jan 2022 11:06:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=04Wj5D4XyR60sPG4sDoywiKpCss4zB4Cgva1PAnTz2U=; b=p2MeL60XacRKk9
	NAfRxzQu25UybOhO/M0Vpp8ipel3U8f56WYv/Rpf6FAbEUr8bWtawsLls8zm/4Ly/CvIDYXdIr8GZ
	zW1UopOHLwHzg7goWlzTgInebhP86RSntu7SsZswu5fGsunjlGcsLBoA2FM+8Iy4KyVbqdcGylxWP
	HUNZ0g5XO5gkOEZaJExj70JwRaVLFB2C58pn7QvRJ364b/8N9HUiHrIwlRa+o/tOs6uPLCBeQJId+
	B8XP02HZChwv4V27cNWRtI9jbQ/IE9PrTcGGt8f1/lbmRf33wozzDQN6NrpN6p+BtkbmpkmXVdqrc
	PiIiFEVvi+xXk8XQq+Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nD2bV-00FJ7G-6e; Thu, 27 Jan 2022 11:06:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nD2bS-00FJ5Q-2G
 for linux-rockchip@lists.infradead.org; Thu, 27 Jan 2022 11:06:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nD2bL-0002DW-0e; Thu, 27 Jan 2022 12:06:03 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nD2bK-0006qj-BK; Thu, 27 Jan 2022 12:06:02 +0100
Date: Thu, 27 Jan 2022 12:06:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Doug Anderson <dianders@chromium.org>
Cc: dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sascha Hauer <kernel@pengutronix.de>,
 Yakir Yang <ykk@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 09/27] drm/rockchip: dw_hdmi: Set cur_ctr to 0 always
Message-ID: <20220127110602.GL23490@pengutronix.de>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
 <20220126145549.617165-10-s.hauer@pengutronix.de>
 <CAD=FV=VCWW4c3iqfzezU5=KKVFNP+EhPGTBZ7uZdQ=bSCJHQVA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=VCWW4c3iqfzezU5=KKVFNP+EhPGTBZ7uZdQ=bSCJHQVA@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:01:27 up 47 days, 19:47, 83 users,  load average: 0.69, 0.35, 0.27
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220127_030610_124763_F567AF30 
X-CRM114-Status: GOOD (  31.99  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Jan 26, 2022 at 07:42:48AM -0800, Doug Anderson wrote:
> Hi,
> 
> On Wed, Jan 26, 2022 at 6:58 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > From: Douglas Anderson <dianders@chromium.org>
> >
> > Jitter was improved by lowering the MPLL bandwidth to account for high
> > frequency noise in the rk3288 PLL.  In each case MPLL bandwidth was
> > lowered only enough to get us a comfortable margin.  We believe that
> > lowering the bandwidth like this is safe given sufficient testing.
> >
> > Changes since v3:
> > - new patch
> >
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > Signed-off-by: Yakir Yang <ykk@rock-chips.com>
> > (am from https://patchwork.kernel.org/patch/9223301/)
> 
> Probably remove the "am from" line? It's not standard in upstream and
> that link doesn't seem to go anywhere anymore...
> 
> 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 16 ++--------------
> >  1 file changed, 2 insertions(+), 14 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> > index c44eb4d2e2d5..77f82a4fd027 100644
> > --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> > +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> > @@ -176,20 +176,8 @@ static const struct dw_hdmi_mpll_config rockchip_mpll_cfg[] = {
> >  static const struct dw_hdmi_curr_ctrl rockchip_cur_ctr[] = {
> >         /*      pixelclk    bpp8    bpp10   bpp12 */
> >         {
> > -               40000000,  { 0x0018, 0x0018, 0x0018 },
> > -       }, {
> > -               65000000,  { 0x0028, 0x0028, 0x0028 },
> > -       }, {
> > -               66000000,  { 0x0038, 0x0038, 0x0038 },
> > -       }, {
> > -               74250000,  { 0x0028, 0x0038, 0x0038 },
> > -       }, {
> > -               83500000,  { 0x0028, 0x0038, 0x0038 },
> > -       }, {
> > -               146250000, { 0x0038, 0x0038, 0x0038 },
> > -       }, {
> > -               148500000, { 0x0000, 0x0038, 0x0038 },
> > -       }, {
> > +               600000000, { 0x0000, 0x0000, 0x0000 },
> > +       },  {
> 
> This is what we did for rk3288. I can't personally vouch for the
> effects on other SoCs.

Fair enough. Rockchip has this patch in their downstream Kernel, so I am
confident it works on SoCs newer as the rk3288 as well. I don't know how
much they care about the older SoCs, but it seems there is only the
rk3228 that is older than the rk3288 that is supported by this driver.

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
