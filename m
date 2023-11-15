Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BBD9C07548
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Nov 2023 08:25:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3FdPkjIYVexU1gLYt7PZ8S+GXHCY8gInTV6Mo9BnlF8=; b=OfLhDcy3vEvsoi
	zfbl8XLljFiB6u+v19uvICpaCcgxM0fLt+FHppp9MrE2mUuMNPjyR0+Linqr3N0DpMYCzWeaaWtQb
	5Un7bgIM0UjJFDUGxz1tpc2nFSOGB2zPHgZlFGIuj5rkaO0LdtGb1myQf5yVuvixqEs8pNN+ek4/+
	XcHCZt0c9NTu066yy1Nz8KoEbwq5c2ppnqgblS504ruZseWYTS0bxdXoUNWa/EaX1hhlpgbMwVnjL
	z3cQFpUcEtgjVy4HDUI2GfxBN/qAntlBfm6Eh+w2D/v9FoEmts7oz8LK9mvgc6uqU3Hm2K4PPD4mu
	5PcNdWCgn/dTiXNd8jNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3BCz-000E8F-03;
	Wed, 15 Nov 2023 08:25:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3BCw-000E6v-0B
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Nov 2023 08:25:11 +0000
Received: from i5e861935.versanet.de ([94.134.25.53] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r3BCi-0003VS-FZ; Wed, 15 Nov 2023 09:24:56 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>, Andy Yan <andy.yan@rock-chips.com>
Cc: hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, chris.obbard@collabora.com, s.hauer@pengutronix.de
Subject: Re: [PATCH 09/11] drm/rockchip: vop2: Add support for rk3588
Date: Wed, 15 Nov 2023 09:24:55 +0100
Message-ID: <4720010.k3LOHGUjKi@diego>
In-Reply-To: <b8605ecb-0244-4ff7-8338-759011dee1b3@rock-chips.com>
References: <20231114112534.1770731-1-andyshrk@163.com> <7034316.0VBMTVartN@diego>
 <b8605ecb-0244-4ff7-8338-759011dee1b3@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231115_002510_094641_5F1F5D5B 
X-CRM114-Status: GOOD (  25.89  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Mittwoch, 15. November 2023, 03:02:42 CET schrieb Andy Yan:
> Hi Heiko:
> =

> On 11/15/23 07:34, Heiko St=FCbner wrote:
> > Hi Andy,
> >
> > Am Dienstag, 14. November 2023, 12:28:55 CET schrieb Andy Yan:
> >> From: Andy Yan <andy.yan@rock-chips.com>
> >>
> >> VOP2 on rk3588:
> >>
> >> Four video ports:
> >> VP0 Max 4096x2160
> >> VP1 Max 4096x2160
> >> VP2 Max 4096x2160
> >> VP3 Max 2048x1080
> >>
> >> 4 4K Cluster windows with AFBC/line RGB and AFBC-only YUV support
> >> 4 4K Esmart windows with line RGB/YUV support
> >>
> >> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> > not a review yet, but when testing and the display sets a mode,
> > I always get a bunch of
> >
> > 	rockchip-drm display-subsystem: [drm] *ERROR* POST_BUF_EMPTY irq err a=
t vp0
> >
> > messages in the log (initial mode to console, starting glmark2 from con=
sole,
> > stopping glmark2 to the console).
> >
> > I'm not sure what is up with that, have you seen these messages as well
> > at some point?
> =

> Yes, it will raise POST_BUF_EMPTY when set a mode,  it needs some fix =

> like [0]:
> =

> =

> I still trying to find a appropriate way to do it with the upstream =

> code, as it doesn't affect the
> =

> real display function(I must admit that the POST_BUF_EMPTY irq is very =

> annoying), so l let  it as
> =

> it is in the current version.

okay, so this is a known thing. So no worries and I'm confident that
you'll figure out a way to do this :-)


> By the way, can you see the glmark2 rending on your HDMI monitor now?

Yes :-D . I do have glmark2 (both es2 and full-gl) running with Boris'
panthor patches [0] merged into my dev-kernel and mesa build
from one his branches [1] .

Heiko


[0] https://gitlab.freedesktop.org/bbrezillon/linux/-/tree/panthor-v3
[1] https://gitlab.freedesktop.org/bbrezillon/mesa/-/tree/v10+panthor-v3+32=
b+g310+egl15+afrc+afbc?ref_type=3Dheads



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
