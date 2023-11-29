Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CCB3C07E97
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Nov 2023 09:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CHYm+ZgFVLfYijAGknwu2XoRdNdoo0vvEKg1E9U814g=; b=CcZMGTKTwHZjs7
	4t0Xi8xwhzvwXjCZquFFZlsbH60pIjQwd/WvLUvR5fheDyvFjaW2C/ZF22hPs/KKLmC4QBZqHIiZd
	4ZP/rDB+Wv+f5QE+wph56HwXx/rTgl5bxnE9qm+5B8WOJYPhoPU/irlFIYCcDmmaJhjo5SSRIwxuC
	kkuoT+qEnkOx9z31pSQ156ko3dRSM683MaOTIKEViWX1YOko1trDn1fe06V9HoFeNG/TINt2HIhcT
	6OegpsyUpWESwKY26D0iOmkc8KBOuLqVhbnAxehe6T8E0DcIGPf40BzpnPLk4O5BnHVCBwhvl5CxZ
	V1oPF1DohMOvpR2Vt3Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Grs-007dnz-1K;
	Wed, 29 Nov 2023 09:28:28 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Grk-007dg4-2k
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Nov 2023 09:28:22 +0000
Received: from pyrite.hamster-moth.ts.net (h175-177-049-135.catv02.itscom.jp [175.177.49.135])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 99D122B6;
	Wed, 29 Nov 2023 10:27:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701250058;
	bh=TEIBgpUjK6NYJRiaGUhsgKnE4DjYmC8agG6/GUA9vAM=;
	h=From:To:Cc:Subject:Date:From;
	b=cdIKcKefkWjwzhIvpuWrxnGyyHUS9fT9pqK9a/uCs+7BYq+w5lWzHI5A3SEFv6/xp
	 1tShxd13EgaI4oarWFRcC6RYkS1wDdgNy6qwmh6bJqiYbX3XUvdRhAW9tHGfdWSpVB
	 QcKFGgqtKLDDbqgWn7eJ9VnJYHWdkex0l8ZgribY=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: kieran.bingham@ideasonboard.com,
	tomi.valkeinen@ideasonboard.com,
	umang.jain@ideasonboard.com,
	aford173@gmail.com,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v4 00/11] media: rkisp1: Add support for i.MX8MP
Date: Wed, 29 Nov 2023 18:27:48 +0900
Message-Id: <20231129092759.242641-1-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_012821_032073_BE36A992 
X-CRM114-Status: GOOD (  12.47  )
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

Laurent Pinchart (2):
  media: rkisp1: Add and use rkisp1_has_feature() macro
  media: rkisp1: Configure gasket on i.MX8MP

Paul Elder (9):
  media: rkisp1: Support setting memory stride for main path
  media: rkisp1: Support devices lacking self path
  media: rkisp1: Support devices lacking dual crop
  media: rkisp1: Fix RSZ_CTRL bits for i.MX8MP
  dt-bindings: media: rkisp1: Add i.MX8MP ISP to compatible
  media: rkisp1: Add match data for i.MX8MP ISP
  media: rkisp1: Shift DMA buffer addresses on i.MX8MP
  media: rkisp1: Add YC swap capability
  media: rkisp1: Add UYVY as an output format

 .../bindings/media/rockchip-isp1.yaml         |  37 ++++-
 .../platform/rockchip/rkisp1/rkisp1-capture.c | 128 ++++++++++++-----
 .../platform/rockchip/rkisp1/rkisp1-common.h  |  35 ++++-
 .../platform/rockchip/rkisp1/rkisp1-dev.c     |  66 +++++++--
 .../platform/rockchip/rkisp1/rkisp1-isp.c     | 131 +++++++++++++++++-
 .../platform/rockchip/rkisp1/rkisp1-regs.h    |  32 +++++
 .../platform/rockchip/rkisp1/rkisp1-resizer.c |  27 ++--
 include/uapi/linux/rkisp1-config.h            |   2 +
 8 files changed, 398 insertions(+), 60 deletions(-)

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
