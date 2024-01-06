Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA2D4C46CD2
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Jan 2024 16:03:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=or8nGkXqN/OEbbIRnL+uDQnvY2Jnv+wkqD+H7lc+BZc=; b=BbLuu6o0t+mSHW
	9Ejc5Jp7Ikx+gTpv/LBKO3qY4/rIy7flSVQu18radf/U90h5vciozgfk4sh0t5NCYYQCS7iVQ30LR
	wMaD4dzEsH5u2NxRtrf/vR5oQDqH6BaetKlAnsbCwN9v8TVVeOmTq6WJUZDPmOg7lNu+noeTxC12S
	Jf3Rf98BHyCX4XwWbHaw/+aRbyNorkUIklc6B7WRkYgI+deql0bA7YrPwaRYTK6fUv44gqS0qyiVv
	Od0ostUHVm4FEBCfLM7rJqsfp7KM/AQ9MZxF0EAaJCSAWtwm98iMdRgZVXHCCq2z6HrrZ7k1MQwrU
	+L3eTT3BeGghqGZoht6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rM98M-001YGh-1c;
	Sat, 06 Jan 2024 16:02:50 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rM98K-001YE0-1W
	for linux-rockchip@lists.infradead.org;
	Sat, 06 Jan 2024 16:02:50 +0000
Received: from pyrite.hamster-moth.ts.net (unknown [IPv6:2001:268:c203:a8ee:6c57:4243:1eb3:6cb])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id A7932FF3;
	Sat,  6 Jan 2024 17:01:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1704556901;
	bh=/pjXivSG4goku7eRq54a5o6OqspuBVcEzAsDoABpraA=;
	h=From:To:Cc:Subject:Date:From;
	b=O4ZdFBQv06eiLHFTWsS9AMMmzjwa/VDyAi0O/YER15sKfxQJERJVr6PH7T0cLrMam
	 IPoLroqGwQfW/P5JZnkuZ0B/GoJH1SdPrUfAbNYbq/O+9xgvRxOL82sWkxpBiZmt5q
	 ygsHcTR+aBUyfbAPRAQ8mRzhzNauo+CVp9KWQbpU=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: kieran.bingham@ideasonboard.com,
	tomi.valkeinen@ideasonboard.com,
	umang.jain@ideasonboard.com,
	aford173@gmail.com,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v5 00/10] media: rkisp1: Add support for i.MX8MP
Date: Sun,  7 Jan 2024 01:02:11 +0900
Message-Id: <20240106160221.4183409-1-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240106_080248_647394_7F5CA4FA 
X-CRM114-Status: GOOD (  13.13  )
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

This patch series depends on the series "media: rkisp1: Fix shared
interrupt handling" [1]

This series extends the rkisp1 driver to support the ISP found in the
NXP i.MX8MP SoC.

The ISP IP cores in the Rockchip RK3399 (known as the "Rockchip ISP1")
and in the NXP i.MX8MP have the same origin, and have slightly diverged
over time as they are now independently developed (afaik) by Rockchip
and VeriSilicon. The latter is marketed under the name "ISP8000Nano",
and is close enough to the RK3399 ISP that it can easily be supported by
the same driver.

The last two patches add support for UYVY output format, which can be
implemented on the ISP version in the i.MX8MP but not in the one in the
RK3399.

This version of the series specifically has been tested on a Polyhex
Debix model A with an imx219 (Raspberry Pi cam v2).

In v5 the patch "media: rkisp1: Fix RSZ_CTRL bits for i.MX8MP" has been
dropped.

[1] https://lore.kernel.org/all/20231218-rkisp-shirq-fix-v1-0-173007628248@ideasonboard.com/

Laurent Pinchart (2):
  media: rkisp1: Add and use rkisp1_has_feature() macro
  media: rkisp1: Configure gasket on i.MX8MP

Paul Elder (8):
  media: rkisp1: Support setting memory stride for main path
  media: rkisp1: Support devices lacking self path
  media: rkisp1: Support devices lacking dual crop
  dt-bindings: media: rkisp1: Add i.MX8MP ISP to compatible
  media: rkisp1: Add match data for i.MX8MP ISP
  media: rkisp1: Shift DMA buffer addresses on i.MX8MP
  media: rkisp1: Add YC swap capability
  media: rkisp1: Add UYVY as an output format

 .../bindings/media/rockchip-isp1.yaml         |  37 ++++-
 .../platform/rockchip/rkisp1/rkisp1-capture.c | 130 ++++++++++++-----
 .../platform/rockchip/rkisp1/rkisp1-common.h  |  37 ++++-
 .../platform/rockchip/rkisp1/rkisp1-dev.c     |  74 ++++++++--
 .../platform/rockchip/rkisp1/rkisp1-isp.c     | 131 +++++++++++++++++-
 .../platform/rockchip/rkisp1/rkisp1-regs.h    |  27 ++++
 .../platform/rockchip/rkisp1/rkisp1-resizer.c |  12 +-
 include/uapi/linux/rkisp1-config.h            |   2 +
 8 files changed, 392 insertions(+), 58 deletions(-)

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
