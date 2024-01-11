Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9090C47077
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jan 2024 13:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NIOu3HRjJsCyrhj/YS2R3q0g/Qa0/XECVZS2z/qnkjw=; b=0MtVBSf39+n/zB
	iKyb+Yvxk7tlHt55co9jhf7jJmGaoFPZaGkY7HL/PXjUO0htFU7Pp3IJ6nHK+E4WCICZ4tTuuymgv
	BZO3ewP7rFyJ89Z9LekMDrC4XsCZ1dXuHAf7sZnSd+8QvlsJOldtJheeSvnKZn91o5JWMDMRz47cl
	LQSWrg125+QMt1ilmjzqPf14oMuEq46WdAfP2KWDXj8fqC+I6iMHGoVr6TGbCuNEYVyca/HnsHuPV
	dOraAIBLuxKxfmVSk0ereamaJ9h7RUGj8ws/w8DuTgw2WpvW3tCaAxtqRDJVw3r+tMCwpo5suxb3A
	nY8V5rP1wJOdI/+xR53g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNug8-0005Rg-2w;
	Thu, 11 Jan 2024 13:01:00 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtYL-00HSZZ-2H
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Jan 2024 11:48:55 +0000
Received: from pyrite.hamster-moth.ts.net (h175-177-049-156.catv02.itscom.jp [175.177.49.156])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id CC110AF2;
	Thu, 11 Jan 2024 12:47:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1704973660;
	bh=IT/dSv/sXBNNPMmmgP7PVDiGi4ZhUZuM0hCfxcY7kLI=;
	h=From:To:Cc:Subject:Date:From;
	b=P5wlqEyV5abgevpcmepyaIsa8hSe40UWN7thB04bMmPDefxOE+97iqj4eFmPBAI2O
	 VVhzMhFDp1ektIGU+6mtXidghlOGdXzEfNE1r5CBJfGmh74bM6KJtJWyyiwgH793Kz
	 CWfVUKNnSBM5jZi04Y+yMqR1qgIM5o+zn5648j8o=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: kieran.bingham@ideasonboard.com,
	tomi.valkeinen@ideasonboard.com,
	umang.jain@ideasonboard.com,
	aford173@gmail.com,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v6 00/11] media: rkisp1: Add support for i.MX8MP
Date: Thu, 11 Jan 2024 20:48:20 +0900
Message-Id: <20240111114831.656736-1-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_034853_912240_07180103 
X-CRM114-Status: GOOD (  14.03  )
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

v6 adds an extra patch at to fix endinanness issues on raw streams on
the i.MX8MP.

In v5 the patch "media: rkisp1: Fix RSZ_CTRL bits for i.MX8MP" has been
dropped.

[1] https://lore.kernel.org/all/20231218-rkisp-shirq-fix-v1-0-173007628248@ideasonboard.com/

Laurent Pinchart (2):
  media: rkisp1: Add and use rkisp1_has_feature() macro
  media: rkisp1: Configure gasket on i.MX8MP

Paul Elder (9):
  media: rkisp1: Support setting memory stride for main path
  media: rkisp1: Support devices lacking self path
  media: rkisp1: Support devices lacking dual crop
  dt-bindings: media: rkisp1: Add i.MX8MP ISP to compatible
  media: rkisp1: Add match data for i.MX8MP ISP
  media: rkisp1: Support i.MX8MP's 34-bit DMA
  media: rkisp1: Add YC swap capability
  media: rkisp1: Add UYVY as an output format
  media: rkisp1: Fix endianness on raw streams on i.MX8MP

 .../bindings/media/rockchip-isp1.yaml         |  37 ++-
 .../platform/rockchip/rkisp1/rkisp1-capture.c | 219 +++++++++++++-----
 .../platform/rockchip/rkisp1/rkisp1-common.h  |  39 +++-
 .../platform/rockchip/rkisp1/rkisp1-dev.c     |  73 +++++-
 .../platform/rockchip/rkisp1/rkisp1-isp.c     | 131 ++++++++++-
 .../platform/rockchip/rkisp1/rkisp1-regs.h    |  35 +++
 .../platform/rockchip/rkisp1/rkisp1-resizer.c |  12 +-
 include/uapi/linux/rkisp1-config.h            |   2 +
 8 files changed, 470 insertions(+), 78 deletions(-)

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
