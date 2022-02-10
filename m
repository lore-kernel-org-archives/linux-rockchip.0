Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D16AC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Feb 2022 11:52:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NXpUd0Q+USjpruX4A1+9SmPNiy707hdPHr4hwpTK8EU=; b=CR7JpsKmyCLx/l
	jcjuGSTze/3RK1Km7cp7gso1tRU3iEnFWoVHxbmpmxBxX1Miy2tWbjRoA2OXyQ9fM9jewtR5+8gjL
	VgS8+fFO34doSApDoyOYZA4rYmyKWTEjSpIWJT5T5qbnOTL9XViWNl31qf4rRE4Rw7reD1jBTG7Jc
	RQ8Xpx3QA80cWs76NWubt/UsidH07x2ulaDHd1tutD398QrKuaL4/hTQyhzdu/JebrViwKvx9RPhX
	mWqbK4llYKgneW3GiwAmebDTRa3/dj419MSyg21uAcgkiS4+6jEhDa995CptHbOgM51xZKq3C2+Uw
	G78xZS1pR81Kxt0oKf5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nI80L-003f2I-Fv; Thu, 10 Feb 2022 11:52:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nI80B-003ezN-US
 for linux-rockchip@lists.infradead.org; Thu, 10 Feb 2022 11:52:45 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nI802-0006hc-JZ; Thu, 10 Feb 2022 12:52:34 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nI800-0003TL-18; Thu, 10 Feb 2022 12:52:32 +0100
Date: Thu, 10 Feb 2022 12:52:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 01/23] drm/encoder: Add of_graph port to struct
 drm_encoder
Message-ID: <20220210115232.GY18637@pengutronix.de>
References: <20220209095350.2104049-1-s.hauer@pengutronix.de>
 <20220209095350.2104049-2-s.hauer@pengutronix.de>
 <20220209100736.GV18637@pengutronix.de> <87fsospa36.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87fsospa36.fsf@intel.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:47:57 up 61 days, 20:33, 81 users,  load average: 0.17, 0.18, 0.14
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220210_035243_994083_06BB126C 
X-CRM114-Status: GOOD (  31.97  )
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

On Wed, Feb 09, 2022 at 01:12:45PM +0200, Jani Nikula wrote:
> On Wed, 09 Feb 2022, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > David, Daniel,
> >
> > I'll need a word from you regarding this patch. It's needed in patch
> > 22/23 in this series.
> > vop2_crtc_atomic_enable() needs to control the mux which routes the
> > display output to the different encoders. Which encoder is used is
> > described in the of_graph port, so I need a way to identify the encoder
> > in the device tree.
> 
> I think the question is how useful is this going to be in general. IMO
> we should not be adding members that are useful in a single driver only.
> 
> For example i915 wraps encoders with:
> 
> 	struct intel_encoder {
> 		struct drm_encoder base;
> 
> 		/* i915 specific stuff here*/
> 	};
> 
> So that we can add stuff of our own there. Of course, it does mean a
> bunch of overhead for the first time you need to do it. But adding
> driver specific stuff to struct drm_encoder adds overhead for everyone.
> 
> All that said, *I* don't know how useful the port member would be in
> drivers that use device tree. Maybe it's worth it.

I don't know either.

Right now the drm_encoder is directly embedded into the encoder drivers
private data structures, like this:

struct rockchip_hdmi {
        struct drm_encoder encoder;
	...
};

I could change this to:

struct rockchip_encoder {
	struct device_node *port;
	struct drm_encoder encoder;
}

and then

struct rockchip_hdmi {
	struct rockchip_encoder encoder;
	...
};

That would solve the issue without touching generic DRM code if that's
preferred.

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
