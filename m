Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5787C25B10
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 May 2024 15:12:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t4nOK/U41XGX6tqkHBsAXAV6skFfmivKakE56I6Poyc=; b=QqRdoh0iV9k0sl
	nvJDLsBGINc9Dl4KtfSMyT5wQJ6Y/j2JG/dFHrcZ9pjw00tGQ+BjRT/sK91FZZkORHBqqf6U98UH0
	rTHOqoA8mupjorYl5EwDa+B3r4IXR6Ck+Cg0w17Uj3H44qdf5W0YTpEaF5rVrrS9cmNP+Fj2WYFwY
	UmfktbFOicDwxUXSuZSWHRJLNyjTybJlL2Z9eAVXwMvvWT9DK9tVuzorls04sCJ0oAkqvBs+zzf05
	4pSTi+2384QrhS7IKWAeGdsyMgyq3N2EhnF72N5Kp3QbEaZzDnN46Dgl+6u9otGrk+bIhmoV4qqBO
	w0RyJ8mnjVuuXoijBaKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2ua5-0000000Gz5W-1fbw;
	Fri, 03 May 2024 15:12:13 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2ua0-0000000Gz2j-2VpQ
	for linux-rockchip@bombadil.infradead.org;
	Fri, 03 May 2024 15:12:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=pcSPZAO81RcCFcDpkzcFgFYRBVA3CVUiHcweI+A2Y30=; b=T413F/kxfDlqQtzAchTagQ1M1+
	hjAgx5EoucKpO34JUiceNKLL0Wg6ZnwDZBe37tFIox4moCZ0zGoq6mWByp7e4ECebR5Vs0/GfWHeh
	iO1YXmDqnSQeIE+VpOJTWFMiB3XfxJBA+/QXH/ju9s/teaEZfMHUoe1ul1LWfepNXKsp7Ox4nA4Zu
	XNBZpzT1irAOIWE0y594z79d0qYn6ripaibrzxBLDA9Nunz4uhJN/FJel0T1ZZn3RTk4aFlb9kmrw
	G/Kcbr/VqHIbM3uz7cNgrXqzOUiiy1aRzjVVSARTuSoG3zhUi1jT81SM/2GdndW7lHoOFjzTp2vWh
	UaHUp0+Q==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2uZu-00000000aaW-0aK3
	for linux-rockchip@lists.infradead.org;
	Fri, 03 May 2024 15:12:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1s2uZR-0004Br-K7; Fri, 03 May 2024 17:11:33 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <l.stach@pengutronix.de>)
	id 1s2uZN-00FjHY-C5; Fri, 03 May 2024 17:11:29 +0200
From: Lucas Stach <l.stach@pengutronix.de>
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Sandy Huang <hjc@rock-chips.com>,
	Jingoo Han <jingoohan1@gmail.com>,
	Inki Dae <inki.dae@samsung.com>,
	Seung-Woo Kim <sw0312.kim@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	kernel@pengutronix.de,
	patchwork-lst@pengutronix.de
Subject: [PATCH 00/14] improve Analogix DP AUX channel handling
Date: Fri,  3 May 2024 17:11:15 +0200
Message-Id: <20240503151129.3901815-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_161202_366274_D8C6E89D 
X-CRM114-Status: GOOD (  11.19  )
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

Currently the AUX channel support in the Analogix DP driver is severely
limited as the AUX block of the bridge is only initialized when the video
link is to be enabled. This is okay for the purposes of link training,
but does not allow to detect displays by probing for EDID. This series
reworks the driver to allow AUX transactions before the video link is
active.

As this requires to rework some of the controller initialization and
also handling of both internal and external clocks, the series includes
quite a few changes to add better runtime PM handling.

Lucas Stach (14):
  drm/bridge: analogix_dp: remove unused platform power_on_end callback
  drm/rockchip: analogix_dp: add runtime PM handling
  drm/bridge: analogix_dp: register AUX bus after enabling runtime PM
  drm/bridge: analogix_dp: handle clock via runtime PM
  drm/bridge: analogix_dp: remove unused analogix_dp_remove
  drm/bridge: analogix_dp: remove clk handling from
    analogix_dp_set_bridge
  drm/bridge: analogix_dp: move platform and PHY power handling into
    runtime PM
  drm/bridge: analogix_dp: move basic controller init into runtime PM
  drm/bridge: analogix_dp: remove PLL lock check from
    analogix_dp_config_video
  drm/bridge: analogix_dp: move macro reset after link bandwidth setting
  drm/bridge: analogix_dp: don't wait for PLL lock too early
  drm/bridge: analogix_dp: simplify and correct PLL lock checks
  drm/bridge: analogix_dp: only read AUX status when an error occured
  drm/bridge: analogix_dp: handle AUX transfer timeouts

 .../drm/bridge/analogix/analogix_dp_core.c    | 196 ++++++++----------
 .../drm/bridge/analogix/analogix_dp_core.h    |   7 +-
 .../gpu/drm/bridge/analogix/analogix_dp_reg.c |  38 ++--
 .../gpu/drm/bridge/analogix/analogix_dp_reg.h |   9 +
 drivers/gpu/drm/exynos/exynos_dp.c            |   5 +-
 .../gpu/drm/rockchip/analogix_dp-rockchip.c   |  26 +--
 include/drm/bridge/analogix_dp.h              |   4 +-
 7 files changed, 120 insertions(+), 165 deletions(-)

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
