Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 434CBC4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Dec 2023 07:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ye7orNxnirqUhSLonky1MnwandWzOqtJAC5xNbGGiFo=; b=4x0vcgLbWfbRtt
	3hWBI1L7IuNdmGMhY9ThYXwQSSxbOopkfUiSTpQEbKsB02VLYwYSuJVWpJLBVLX2BsZzFCiGYReM+
	IceGGQo3+MhBWSpKS3UF5KRjTB8nNs3Q3m1d4L3lE0xxRJ4cMxJxVlc0ZPzwvh1qhqxZVOhq28TZ0
	Ato86IR1is/PrUBGfevB9DV2qmrvUPGKTcckO9QJJiPaNrW9IXy2wgIGgFJXLzJElIrAoP3pVOknA
	F697bnhpHvvlFEg3jlddRFGGyjsMU8JB2Z0+Q1pIPtk/FqnrEDnZhllPQKdsfSO6uZzmC5PhUurFo
	mEJ7zfUzl042xDSy6tgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCb2s-004HWb-0K;
	Mon, 11 Dec 2023 07:49:42 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rCb2o-004HVq-2o
	for linux-rockchip@lists.infradead.org;
	Mon, 11 Dec 2023 07:49:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1702280978; x=1733816978;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=nfzaV3vxtQAyCNR+jzMcM2jLOcbWTkwcukLDVw5CIyg=;
  b=UzdF6SFC9XcupHRB37Wrrv15+vvAKjottFnjG+khlGft8Ivi+bUbRrFj
   JZBYTW8senU0nBXUrHILyaukX3/TzqQ/xShX2qykbVohrf2fj/k41K+Zp
   JTBgX7NgkjS7KuzHuTIOsxscFE5/oLhCmccMCmUJMssHHDzLZwBYvCJJf
   wOeDt+6Xl+RGrjqtQyplWSjcjSm9en4SGskk3rHuxOmqQZ850B2cnYZYi
   45mlD5tby3J9SgKXA2d4YiIngQZA1AWxCmvj/HOc2Q8pdY5D22zgoTBV9
   fZUD4I0DbqW8n7irXiF4tRwPBN7iguHmIHAxJ21Tbdy69bI+xxbbJqABj
   w==;
X-IronPort-AV: E=Sophos;i="6.04,267,1695679200"; 
   d="scan'208";a="34423846"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 11 Dec 2023 08:49:36 +0100
Received: from steina-w.localnet (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 88432280075;
	Mon, 11 Dec 2023 08:49:36 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Paul Elder <paul.elder@ideasonboard.com>
Cc: kieran.bingham@ideasonboard.com, tomi.valkeinen@ideasonboard.com, umang.jain@ideasonboard.com, aford173@gmail.com, Paul Elder <paul.elder@ideasonboard.com>
Subject: Re: [PATCH v4 00/11] media: rkisp1: Add support for i.MX8MP
Date: Mon, 11 Dec 2023 08:49:37 +0100
Message-ID: <5998504.lOV4Wx5bFT@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <5184188.e9J7NaK4W3@steina-w>
References: <20231129092759.242641-1-paul.elder@ideasonboard.com> <5184188.e9J7NaK4W3@steina-w>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231210_234939_302235_056BE025 
X-CRM114-Status: GOOD (  24.82  )
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

Hi,

Am Mittwoch, 29. November 2023, 11:58:39 CET schrieb Alexander Stein:
> Hi Paul,
> =

> thanks for the series.
> =

> Am Mittwoch, 29. November 2023, 10:27:48 CET schrieb Paul Elder:
> > This series extends the rkisp1 driver to support the ISP found in the
> > NXP i.MX8MP SoC.
> > =

> > The ISP IP cores in the Rockchip RK3399 (known as the "Rockchip ISP1")
> > and in the NXP i.MX8MP have the same origin, and have slightly diverged
> > over time as they are now independently developed (afaik) by Rockchip
> > and VeriSilicon. The latter is marketed under the name "ISP8000Nano",
> > and is close enough to the RK3399 ISP that it can easily be supported by
> > the same driver.
> > =

> > The last two patches add support for UYVY output format, which can be
> > implemented on the ISP version in the i.MX8MP but not in the one in the
> > RK3399.
> > =

> > This version of the series specifically has been tested on a Polyhex
> > Debix model A with an imx219 (Raspberry Pi cam v2).
> =

> I've created a setup on TQMa8MPxL/MBa8MPxL and a Sony IMX327 sensor for a
> while now. I can stream 1080p video at 45 FPS to HDMI output without any
> special configuration.

Just for the records. the 45 FPS limit is introduced by (HDMI) output. Usin=
g a =

gstreamer testsink "outpu", I can run at 60 FPS.

Best regards,
Alexander

> Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> =

> > Laurent Pinchart (2):
> >   media: rkisp1: Add and use rkisp1_has_feature() macro
> >   media: rkisp1: Configure gasket on i.MX8MP
> > =

> > Paul Elder (9):
> >   media: rkisp1: Support setting memory stride for main path
> >   media: rkisp1: Support devices lacking self path
> >   media: rkisp1: Support devices lacking dual crop
> >   media: rkisp1: Fix RSZ_CTRL bits for i.MX8MP
> >   dt-bindings: media: rkisp1: Add i.MX8MP ISP to compatible
> >   media: rkisp1: Add match data for i.MX8MP ISP
> >   media: rkisp1: Shift DMA buffer addresses on i.MX8MP
> >   media: rkisp1: Add YC swap capability
> >   media: rkisp1: Add UYVY as an output format
> >  =

> >  .../bindings/media/rockchip-isp1.yaml         |  37 ++++-
> >  .../platform/rockchip/rkisp1/rkisp1-capture.c | 128 ++++++++++++-----
> >  .../platform/rockchip/rkisp1/rkisp1-common.h  |  35 ++++-
> >  .../platform/rockchip/rkisp1/rkisp1-dev.c     |  66 +++++++--
> >  .../platform/rockchip/rkisp1/rkisp1-isp.c     | 131 +++++++++++++++++-
> >  .../platform/rockchip/rkisp1/rkisp1-regs.h    |  32 +++++
> >  .../platform/rockchip/rkisp1/rkisp1-resizer.c |  27 ++--
> >  include/uapi/linux/rkisp1-config.h            |   2 +
> >  8 files changed, 398 insertions(+), 60 deletions(-)


-- =

TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
