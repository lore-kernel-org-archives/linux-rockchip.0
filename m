Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5410EC001E0
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Aug 2023 22:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hEp0kSJ9Zyhb+SwEVPL/JhJQrQiZSBaqY2nwuLZS/ck=; b=4kFexGIH5tfwZs
	fd2gPE7Gih2SSTsOXJYXK+zvSezzUi6UZb0Lzh37ICpDJ2Osefq56TB82Oz8EBycZs56lDL17IAkV
	ETRnmCCJRRKvjz2xEPEHuoSuUrHCTI2iQQIkbj1bj7hCuFxUMoVak4bC3UrqXs2xIdZI05tVwZGFM
	E6yRrT7PDNxw6KrxNOMe+GcLI+yWSFqH2lHFOBY8demiABc1DzAjMCxU+v5sy0upXl4g7DQK4F9PS
	XLot6DAJYBT6sxDMUOG5pZYos5BJFJIYG+dxit5bxW8vIqDWEwQ1R9lZn3p6grfHMtVj9ZB5rNbyS
	5q6/NfbmtAKxXwqlZ34Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUxBD-00E7ms-0n;
	Sat, 12 Aug 2023 22:33:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUxBA-00E7mS-0u;
	Sat, 12 Aug 2023 22:33:53 +0000
Received: from i53875bbf.versanet.de ([83.135.91.191] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qUxB1-0002Ra-IZ; Sun, 13 Aug 2023 00:33:43 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Jonas Karlman <jonas@kwiboo.se>
Cc: Mark Yao <markyao0591@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Andy Yan <andy.yan@rock-chips.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/5] drm/rockchip: Fix crtc duplicate state and crtc reset
 funcs
Date: Sun, 13 Aug 2023 00:33:42 +0200
Message-ID: <2475986.usQuhbGJ8B@diego>
In-Reply-To: <17046b61-5188-28e3-41fc-dad36d76584f@kwiboo.se>
References: <20230621223311.2239547-1-jonas@kwiboo.se>
 <17046b61-5188-28e3-41fc-dad36d76584f@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230812_153352_321547_0786C3BF 
X-CRM114-Status: GOOD (  21.58  )
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

Hi Jonas,

Am Samstag, 12. August 2023, 16:18:05 CEST schrieb Jonas Karlman:
> Please consider reviewing and merging this series [2], and also [3].

during the last months my testfarm aquired some issues, I'm still
working on fixing, so my testing is way limited right now.

> drm/rockchip: Fix crtc duplicate state and crtc reset funcs
> [2] https://lore.kernel.org/all/20230621223311.2239547-1-jonas@kwiboo.se/

Though this one looked easy and when going through the code looked
quite right.


> drm/rockchip: vop: Add NV15, NV20 and NV30 support
> [3] https://lore.kernel.org/all/20230618220122.3911297-1-jonas@kwiboo.se/

I guess I need to track down someone on IRC to tell me if these new NVxx
types look correct, because I don't have too much clue about those drm-formats
yet. Hopefully I'll get to that on monday.


Heiko


> On 2023-06-22 00:33, Jonas Karlman wrote:
> > This series fixes a reset of state in duplicate state crtc funcs for VOP
> > driver, a possible crash and ensure crtc reset helper is called in VOP2
> > driver.
> > 
> > Patch 1 use kmemdup instead of kzalloc to duplicate the crtc state.
> > Patch 2 change to use crtc and plane cleanup helpers directly.
> > Patch 3 adds a null guard for allocation failure.
> > Patch 4 adds a crash guard for empty crtc state.
> > Patch 5 adds a missing call to crtc reset helper.
> > 
> > This is the next part of an ongoing effort to upstream HDMI 2.0 support
> > used in LibreELEC for the past 3+ years.
> > 
> > Changes in v2:
> > - Handle possible allocation failure in crtc reset funcs
> > - Collect r-b tags
> > 
> > This series is also available at [1].
> > 
> > [1] https://github.com/Kwiboo/linux-rockchip/commits/next-20230621-duplicate-state
> > 
> > Jonas Karlman (5):
> >   drm/rockchip: vop: Fix reset of state in duplicate state crtc funcs
> >   drm/rockchip: vop: Use cleanup helper directly as destroy funcs
> >   drm/rockchip: vop: Fix call to crtc reset helper
> >   drm/rockchip: vop2: Don't crash for invalid duplicate_state
> >   drm/rockchip: vop2: Add missing call to crtc reset helper
> > 
> >  drivers/gpu/drm/rockchip/rockchip_drm_vop.c  | 24 +++++-------
> >  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 39 ++++++++++----------
> >  2 files changed, 28 insertions(+), 35 deletions(-)
> > 
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
