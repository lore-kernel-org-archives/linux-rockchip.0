Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7014C48260
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Feb 2024 09:55:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MpcN6kzT2stpzhSiLHXeDYU4qLkepF2aXkyvTye48io=; b=ua99QyQgUClJH/
	8lFO4fUCeKmq11hDtZHvgeVRAqBQApq2d6UA6pwBL2cT+m62dVhKlkmscOeR2ZbJbndmKddN4p4fC
	TPHjfeda0CPSolhu+4ixEmD6PIWtL/aze4xjLXNm3HGdRdQo0LFbeo+UWQLGLEyE/bpVVpkX2zPVs
	5YSoChrk7lbAKpz9ZynrwX19s7dl26YAfSnS4izr6sUOCp516YafaHe86SoJbNS2d1WFh/59USjzo
	14vCWUTRdNgUNKitgkMpBJvjUvTEioq3/hPzNiOI79MhumPYyiX7Gs8DHvwpssl0lk0lhGEG1XjNt
	bBeebC0mmBdzW6RMzuVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rauwE-00000001pwN-1AxX;
	Fri, 16 Feb 2024 09:55:22 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rauwB-00000001pvI-2Su1
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Feb 2024 09:55:21 +0000
Received: from pyrite.hamster-moth.ts.net (h175-177-049-156.catv02.itscom.jp [175.177.49.156])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 553236B3;
	Fri, 16 Feb 2024 10:55:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1708077310;
	bh=14pbGMOUrSYFgdYiRsPiVkEL+Ef/tvyX16rpDvJtEtM=;
	h=From:To:Cc:Subject:Date:From;
	b=hpHhzRjoqXjm22tS4Wtv1ifSooadJ1hfqlGZhU1WBqa0JmyS47x6gHXWbuCdXVyW3
	 HNVXqVYKI5iaeO0loqx2pJt+NTHh1HCEccE6TA5PsTxVdGyQBAcOUqY48QRkGva1bM
	 Zg87q1F0ib5TWu+OOmYIK7FG6dJVriNkO7WjZt3c=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: kieran.bingham@ideasonboard.com,
	tomi.valkeinen@ideasonboard.com,
	umang.jain@ideasonboard.com,
	aford173@gmail.com,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v12 00/12] media: rkisp1: Add support for i.MX8MP
Date: Fri, 16 Feb 2024 18:54:46 +0900
Message-Id: <20240216095458.2919694-1-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_015519_786735_54C704E9 
X-CRM114-Status: GOOD (  13.62  )
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

Twelfth time's the charm.

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

Patches 9 and 10 add support for UYVY output format, which can be
implemented on the ISP version in the i.MX8MP but not in the one in the
RK3399.

This version of the series specifically has been tested on a Polyhex
Debix model A with an imx219 (Raspberry Pi cam v2).

v6 added patch 11 to fix endinanness issues on raw streams on the
i.MX8MP.

In v12 patch 6 "media: rkisp1: Add version enum for i.MX8MP ISP" has
been split out from patch 12 "media: rkisp1: Add match data for i.MX8MP
ISP".

[1] https://lore.kernel.org/all/20231218-rkisp-shirq-fix-v1-0-173007628248@ideasonboard.com/

Laurent Pinchart (2):
  media: rkisp1: Add and use rkisp1_has_feature() macro
  media: rkisp1: Configure gasket on i.MX8MP

Paul Elder (10):
  media: rkisp1: Support setting memory stride for main path
  media: rkisp1: Support devices lacking self path
  media: rkisp1: Support devices lacking dual crop
  dt-bindings: media: rkisp1: Add i.MX8MP ISP to compatible
  media: rkisp1: Add version enum for i.MX8MP ISP
  media: rkisp1: Support i.MX8MP's 34-bit DMA
  media: rkisp1: Add YC swap capability
  media: rkisp1: Add UYVY as an output format
  media: rkisp1: Fix endianness on raw streams on i.MX8MP
  media: rkisp1: Add match data for i.MX8MP ISP

 .../bindings/media/rockchip-isp1.yaml         |  37 ++-
 .../platform/rockchip/rkisp1/rkisp1-capture.c | 219 +++++++++++++-----
 .../platform/rockchip/rkisp1/rkisp1-common.h  |  35 ++-
 .../platform/rockchip/rkisp1/rkisp1-dev.c     |  71 +++++-
 .../platform/rockchip/rkisp1/rkisp1-isp.c     | 131 ++++++++++-
 .../platform/rockchip/rkisp1/rkisp1-regs.h    |  35 +++
 .../platform/rockchip/rkisp1/rkisp1-resizer.c |  17 +-
 include/uapi/linux/rkisp1-config.h            |   2 +
 8 files changed, 467 insertions(+), 80 deletions(-)

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
