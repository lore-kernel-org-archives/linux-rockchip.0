Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 379B7C38147
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jan 2023 13:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KqXirBsUBcXoa6aqeCpmxexTM4Fu0EMyALVLqIjSk6s=; b=T5eaGuWmPslfOR
	b9+GBIwNfnzc+Surk6b2PFx1WWrP/a7vz912QyJlwOAIUEDBARvjcwtz7hoVWhhC9CEIXjqsdvrTj
	NUEtQvrff47kBUSXDqD01YvKJ+0WP1S2H+mAt+/Do+Z2zQXsLXwkCmeciUG4Ji7Pr1yF9ynEx987E
	HOjfDQ6SfNPuOj2AtW6dGH/Gn/+pMGHRTX27sKgtNlc+nweeMZ2cpWDFr0aHUFjwiCn8G+466i8T5
	sj0tfZfXZ4+Oa+v+HTWqknWl1cgT00vlQ5Mysk9UnOSPGzhQSQyFKEpLg6bqRM5sWDgVwPtXbV83t
	c2KgPgNzwaa58afRXRbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI8Oe-0017Jw-Hc; Wed, 18 Jan 2023 13:22:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI8Ob-0017I9-S1
	for linux-rockchip@lists.infradead.org; Wed, 18 Jan 2023 13:22:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pI8OS-0002f6-3u; Wed, 18 Jan 2023 14:22:20 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pI8OP-006v7c-AQ; Wed, 18 Jan 2023 14:22:17 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pI8OO-00D1m1-C6; Wed, 18 Jan 2023 14:22:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: Sandy Huang <hjc@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	Michael Riesch <michael.riesch@wolfvision.net>,
	kernel@pengutronix.de,
	Robin Murphy <robin.murphy@arm.com>,
	Dan Johansen <strit@manjaro.org>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v3 0/3] drm/rockchip: dw_hdmi: Add 4k@30 support
Date: Wed, 18 Jan 2023 14:22:10 +0100
Message-Id: <20230118132213.2911418-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_052229_929443_8458BA17 
X-CRM114-Status: GOOD (  12.16  )
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

It's been some time since I last sent this series. This version fixes
a regression Dan Johansen reported. The reason turned out to be simple,
I used the YUV420 register values instead of the RGB ones.

I realized that we cannot achieve several modes offered by my monitor
as these require pixelclocks that are slightly below the standard
pixelclocks. As these are lower than the standard clock rates the PLL
driver offers the clk driver falls back to a way lower frequency
which results in something the monitor can't display, so this series
now contains a patch to discard these unachievable modes.

Sascha

Changes since v2:
- Use correct register values for mpll_cfg
- Add patch to discard modes we cannot achieve

Changes since v1:
- Allow non standard clock rates only on Synopsys phy as suggested by
  Robin Murphy

Sascha Hauer (3):
  drm/rockchip: dw_hdmi: relax mode_valid hook
  drm/rockchip: dw_hdmi: Add support for 4k@30 resolution
  drm/rockchip: dw_hdmi: discard modes with unachievable pixelclocks

 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 40 ++++++++++++++++-----
 1 file changed, 32 insertions(+), 8 deletions(-)

-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
