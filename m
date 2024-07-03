Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F28D1C2BD09
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Jul 2024 22:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ew38W5ATj5zOkQ/Konieso/f8hZzqn4Tmm+QfP5UTPk=; b=2Xal5c7XNliUKj
	ohlXK4iHnRcW+N2yWEjUjNggM/dxxfXyweKJdELpY584afaGaOdqzXXaeUNH3OL0kpQ3yq3nZXFn4
	xVPZJkrm+bK9yjll7h9Vu3KcJE2sKxPDsPtYg35iYeCtep6Sc2OJrC9fq9swU5i9wNovOW+7aKL54
	txe7XOa1y4654s1iBQt4p4Sgzws/KIWyYzNxfymGHsOgee7TAFPASwesy07UO3unsMKH0kdPa+aue
	HcrRsATbItpKn9oZJQgJoixDGaL18aUhjUeLmNJrV+NItxtEqZ28MuMPYN8xurQLU653TK6eGd2S4
	PM0QT8pNeTXAUsc8BmUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP8QK-0000000BdXh-3j9H;
	Wed, 03 Jul 2024 22:26:00 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP8QH-0000000BdW5-2b3g
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Jul 2024 22:25:59 +0000
Received: from pendragon.ideasonboard.com (117.145-247-81.adsl-dyn.isp.belgacom.be [81.247.145.117])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id E7EDD4CC;
	Thu,  4 Jul 2024 00:25:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1720045527;
	bh=BmOtYXV8tsCqxjxjxliKqEzMBQZWSt9XONLRRPSKZDY=;
	h=From:To:Cc:Subject:Date:From;
	b=tsNy/jFxExLvaMiWCzaPg2p15g4fZ7TobXo4lNf9jlSY0Ll5K4HLLp7umnLP0hMKg
	 K9MaahO7oTAfUs6Mda30rRkRy1TcQoHtv76uYcO9ZSE8+cQ4kyil78pgX5CKpVwrpU
	 zx4XBCh3CCg3EMZNjCAd1sX3kaPks4fUwSU5dn6s=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v1 0/5] media: rkisp1: Add support for the companding block
Date: Thu,  4 Jul 2024 01:25:28 +0300
Message-ID: <20240703222533.1662-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.44.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_152557_821253_36B22663 
X-CRM114-Status: GOOD (  13.20  )
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

Hello,

This patch series extends the rkisp1 driver to add support for the ISP's
companding block.

The companding block is an ISP processing block located at the front of
the processing pipeline that performs data expansion, black level
subtraction and data compression. It is found in the ISP8000Nano on the
i.MX8MP, and not present in Rockchip versions of the ISP, that implement
BLS in a dedicated block (not present in the ISP8000Nano) already
supported by the driver.

The first two patches start with preparatory work. Patch 1/5 refactors
existing duplicate code to share a common function, that will also be
used later in this series. Patch 2/5 then improves the ISP parameters
extensible format handler by making it possible to condition support for
particular ISP blocks based on device features.

Support for the companding block follows in the next three patches.
Patch 3/5 adds macros for the companding block registers, and patch 4/5
adds feature flags to differentiate between the dedicated BLS block and
the companding block. Finally, patch 5/5 adds support for the companding
block in the ISP parameters.

The series is based on Jacopo's support for extensible parameters in the
rkisp1 driver ("[PATCH v5 0/7] media: rkisp1: Implement support for
extensible parameters", see [1]). Thanks to that work, adding support
for a new ISP block in a backward compatible way is easy.

[1] https://lore.kernel.org/r/20240703161048.247124-1-jacopo.mondi@ideasonboard.com

Laurent Pinchart (2):
  media: rkisp1: Add helper function to swap colour channels
  media: rkisp1: Add features mask to extensible block handlers

Paul Elder (3):
  media: rkisp1: Add register definitions for the companding block
  media: rkisp1: Add feature flags for BLS and compand
  media: rkisp1: Add support for the companding block

 .../platform/rockchip/rkisp1/rkisp1-common.c  |  15 ++
 .../platform/rockchip/rkisp1/rkisp1-common.h  |   7 +
 .../platform/rockchip/rkisp1/rkisp1-dev.c     |   9 +-
 .../platform/rockchip/rkisp1/rkisp1-params.c  | 236 ++++++++++++++----
 .../platform/rockchip/rkisp1/rkisp1-regs.h    |  22 ++
 .../platform/rockchip/rkisp1/rkisp1-stats.c   |  51 ++--
 include/uapi/linux/rkisp1-config.h            |  85 ++++++-
 7 files changed, 338 insertions(+), 87 deletions(-)


base-commit: cefd157968bcde0f648cf2421213eb217451d39f
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
