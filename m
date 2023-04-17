Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80F42C77B72
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Apr 2023 12:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=friOC0cZ3jDcqGNBbUy9FSgamgRXXmjE3cAezXBqHxg=; b=OZ1nROacj84NS2
	TIXhOf0MMCQaPxdFzz6qbIWjMsUuD3BdaffdcP8BzmqHcL2QqjcoKIPTrmpso9s4v/YmyALb8B13o
	1j8wUZErac+A4lkjRXujMMfgfhj6IEM81UF/2JSY/EokPxYtVK21IWclebEr2N1Muv6E2npLLhAK3
	rD1MCqAVXx85iXjgabhs4omHr7cBidYDdgY8mEMisy6/6a3LJWHUs72uemnNCWJ+Yt2yLPZmS/PHd
	jGko3i/BP9eYtTpQCb2R0LAnPnyjhg/MNvsXH2rmAceUtS/Gd6lPvZgPA3Y4SzmFrxJPJcydgeS1u
	KqOXWSzKXs1dOhlTOg4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poO8E-00GAIn-2E;
	Mon, 17 Apr 2023 12:38:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poO8B-00GAHr-2C
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Apr 2023 12:38:53 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1poO88-0006IW-KR; Mon, 17 Apr 2023 14:38:48 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1poO88-0001gy-2e; Mon, 17 Apr 2023 14:38:48 +0200
Date: Mon, 17 Apr 2023 14:38:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>
Cc: dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
	linux-rockchip@lists.infradead.org, kernel@pengutronix.de,
	Chris Morgan <macroalpha82@gmail.com>,
	=?iso-8859-15?Q?K=F6ry?= Maincent <kory.maincent@bootlin.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
	stable@vger.kernel.org
Subject: Re: [PATCH] drm/rockchip: vop2: fix suspend/resume
Message-ID: <20230417123848.GN15436@pengutronix.de>
References: <20230417094215.2049231-1-s.hauer@pengutronix.de>
 <7404631.18pcnM708K@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7404631.18pcnM708K@diego>
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
X-CRM114-CacheID: sfid-20230417_053851_721616_0837A4C1 
X-CRM114-Status: GOOD (  20.94  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Apr 17, 2023 at 12:46:05PM +0200, Heiko St=FCbner wrote:
> Hi Sascha,
> =

> Am Montag, 17. April 2023, 11:42:15 CEST schrieb Sascha Hauer:
> > During a suspend/resume cycle the VO power domain will be disabled and
> > the VOP2 registers will reset to their default values. After that the
> > cached register values will be out of sync and the read/modify/write
> > operations we do on the window registers will result in bogus values
> > written. Fix this by marking the regcache as dirty each time we disable
> > the VOP2 and call regcache_sync() each time we enable it again. With
> > this the VOP2 will show a picture after a suspend/resume cycle whereas
> > without this the screen stays dark.
> > =

> > Fixes: 604be85547ce4 ("drm/rockchip: Add VOP2 driver")
> > Cc: stable@vger.kernel.org
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> =

> somehow we overlapped with this v2 and me applying the original one [0]
> to drm-misc. With drm-misc being a shared tree there is also no way back.
> =

> So if this v2 is better suited, could do a follow-up patch instead - on
> top of your original one?

Alright, just did that. You should find it in your inbox.

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
