Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 889ECC4167B
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Dec 2023 14:05:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4MQl2KpdGr+WEPNTESlVrtM3bGzYtx4KqJfa7jdXsQk=; b=A+GcXaUfUEdquX
	MwnXm71zYny7yHuvM82hBxwctbmlaK+1ir7+yRaBMGFqbeHF/NuuwoBOPbBgh/rRSFUuCCO9AR5nz
	y996P9TrHsysukxSMog+DcPhn+HcsnoScrS9/XiCIaSnMMA3r3k9VM+Xp6FVjr+DqwQKVD29Q+fcf
	iJr+jrlZwv+rdwKkgCbPsuOJWgJXMewMWzx1VILnrHopXlfZNzCCgAvv3Ep/HmBI8PYaAe0d+rSpX
	B05pX4BaGwF3qxDnODrVEdL1VrHTmDm1CKabhFASc5ZFqOx9iAa3Hv9+gA4+rcKwLaR43fRyVh2lj
	GEP++vM6lWU1VEWj8Umw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r948Y-00DtC7-1h;
	Fri, 01 Dec 2023 14:04:58 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r948V-00DtAt-1j
	for linux-rockchip@lists.infradead.org;
	Fri, 01 Dec 2023 14:04:56 +0000
Received: from pyrite.hamster-moth.ts.net (h175-177-049-156.catv02.itscom.jp [175.177.49.156])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 0E014FAD;
	Fri,  1 Dec 2023 15:04:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701439452;
	bh=pfSSnAAfqgfpEBtTEDM77fPiTlG6Vin5RIhMIHSqBEo=;
	h=From:To:Cc:Subject:Date:From;
	b=m70AKK77xrtOwE13tXjLX5OBdxBakl/Yy92HRXEvKpfYcZCFWRkImE31hXp7nTaDQ
	 QLCd7HkzPRae7b/c9ybK3KkwVkaDKmbbGzP6G1yBC+rInbJxK6x+CSKXoFSA0aoKHp
	 mZflLFcJ+xmYMHYN9ac4zpKQv5/7kwoRReU+hPfA=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: laurent.pinchart@ideasonboard.com,
	kieran.bingham@ideasonboard.com,
	tomi.valkeinen@ideasonboard.com,
	umang.jain@ideasonboard.com,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v2 0/4] media: rkisp1: Misc fixes and debug
Date: Fri,  1 Dec 2023 23:04:29 +0900
Message-Id: <20231201140433.2126011-1-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231201_060455_719031_20BD6DBE 
X-CRM114-Status: UNSURE (   6.53  )
X-CRM114-Notice: Please train this message.
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

This series adds a small cleanup of the register definitions, as well as
some additions to the debug for the rkisp1 driver.

Paul Elder (4):
  media: rkisp1: regs: Consolidate MI interrupt wrap fields
  media: rkisp1: debug: Add register dump for IS
  media: rkisp1: debug: Count completed frame interrupts
  media: rkisp1: debug: Consolidate counter debugfs files

 .../platform/rockchip/rkisp1/rkisp1-capture.c |  2 +
 .../platform/rockchip/rkisp1/rkisp1-common.h  |  5 ++
 .../platform/rockchip/rkisp1/rkisp1-debug.c   | 71 +++++++++++++------
 .../platform/rockchip/rkisp1/rkisp1-isp.c     |  2 +
 .../platform/rockchip/rkisp1/rkisp1-regs.h    |  9 +--
 5 files changed, 60 insertions(+), 29 deletions(-)

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
