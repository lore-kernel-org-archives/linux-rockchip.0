Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6708C61DA4
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Feb 2023 15:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9/R9jB5zpMQBlTSM2/Wsop0oeEZhdg5K/8bitAcy4Pg=; b=juXqnfvImEsPvR
	If1PbQTK7LWXmGWZfAsCo3Q7UPn9Pg91g7ax/dXOvPJc6bDbQx+G8uYEEkWeDAlWyg48dEYCjTk8j
	/a7WCsQOVO7HEK9BakORmN0R6x+8py6a8iKc/Nr9QIsoZ/Z0U9oPIMhJHuNjSewtSh91iQ3nsN1Vd
	iwcYK6LIiBSS1V5w8lRn4KUN2E3cl5BQK2OQjb1gPk2VPTj7h8dVon0YH8yRpX6CVEfU7BXuyb9Ke
	1p21fU+ieKSL8TjBc152+odk79W5ohkKfLGjj+seNYcCFYDEe1KaQqdT8Ymjey42P9o0pOJ/dzz3x
	lUPGGb4jOv8Ly5ed08vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRxSm-002eOw-Tw; Tue, 14 Feb 2023 15:43:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRxSk-002eNQ-3H
	for linux-rockchip@lists.infradead.org; Tue, 14 Feb 2023 15:43:23 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pRxSZ-0001Sy-7o; Tue, 14 Feb 2023 16:43:11 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pRxSS-0008FL-NN; Tue, 14 Feb 2023 16:43:04 +0100
Date: Tue, 14 Feb 2023 16:43:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	Michael Riesch <michael.riesch@wolfvision.net>,
	kernel@pengutronix.de, Robin Murphy <robin.murphy@arm.com>,
	Dan Johansen <strit@manjaro.org>,
	Daniel Stone <daniel@fooishbar.org>
Subject: Re: [PATCH v5 0/4] drm/rockchip: dw_hdmi: Add 4k@30 support
Message-ID: <20230214154304.GK10447@pengutronix.de>
References: <20230208090816.3810589-1-s.hauer@pengutronix.de>
 <43BFE269C2D3B94A+72719122-bfdd-8e99-9176-a6f5e30abfb2@radxa.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <43BFE269C2D3B94A+72719122-bfdd-8e99-9176-a6f5e30abfb2@radxa.com>
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
X-CRM114-CacheID: sfid-20230214_074322_145385_682C961F 
X-CRM114-Status: GOOD (  28.62  )
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

On Mon, Feb 13, 2023 at 04:11:46PM +0900, FUKAUMI Naoki wrote:
> hi,
> 
> on my rk3399 boards(ROCK Pi 4B+ and ROCK 4C+), fb0 is configured as
> 1920x1080, and nothing is displayed... "no signal" on display.

I can confirm this.

First of all there is a stupid bug in my patch:

> +       if (vop->data->max_output.width && mode->hdisplay > vop->data->max_output.height)
> +               return MODE_BAD_HVALUE;

The comparison should be against the width here of course, not against
the height. Fixing this should at least allow you to display something
when a 1080p display is connected.

The other problem comes with the legacy fbdev emulation. I think failure
is pretty much expected here. The fbdev emulation happens to use the
VOPL to display a 4k picture, but the VOPL can only do up to 2560x1600
and so the mode is denied in vop_crtc_mode_valid(). Quoting Daniel Stone
on this topic:

> You've done the right thing. Userspace should detect this and try with
> alternative CRTC routing. The kernel shouldn't be trying to solve this
> problem.

Trying an alternative CRTC routing is exactly what the fbdev emulation
doesn't do. Now my "userspace" is in kernel and the kernel shouldn't try
to solve this problem. We're trapped :-/

Sascha

> 
> --
> FUKAUMI Naoki
> 
> On 2/8/23 18:08, Sascha Hauer wrote:
> > Some more small changes to this series, see changelog.
> > 
> > Sascha
> > 
> > Changes since v4:
> > - Use struct vop_reg to store resolutions
> > - Only check for valid clock rates when clock != NULL
> > 
> > Changes since v3
> > - Add patch to limit VOP resolutions to hardware capabilitie
> > 
> > Changes since v2:
> > - Use correct register values for mpll_cfg
> > - Add patch to discard modes we cannot achieve
> > 
> > Changes since v1:
> > - Allow non standard clock rates only on Synopsys phy as suggested by
> >    Robin Murphy
> > 
> > Sascha Hauer (4):
> >    drm/rockchip: vop: limit maximium resolution to hardware capabilities
> >    drm/rockchip: dw_hdmi: relax mode_valid hook
> >    drm/rockchip: dw_hdmi: Add support for 4k@30 resolution
> >    drm/rockchip: dw_hdmi: discard modes with unachievable pixelclocks
> > 
> >   drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c  | 41 ++++++++++++++++----
> >   drivers/gpu/drm/rockchip/rockchip_drm_vop.c  | 15 +++++++
> >   drivers/gpu/drm/rockchip/rockchip_drm_vop.h  |  6 +++
> >   drivers/gpu/drm/rockchip/rockchip_drm_vop2.h |  5 ---
> >   drivers/gpu/drm/rockchip/rockchip_vop_reg.c  | 18 +++++++++
> >   5 files changed, 73 insertions(+), 12 deletions(-)
> > 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
