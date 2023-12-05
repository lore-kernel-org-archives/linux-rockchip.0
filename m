Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6D48C46CA0
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 08:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HlIoknwxA19p4oJFfqlcCTNUJBDW9Xb/L+t+2Ayefgs=; b=MEQQgTSc9UjCB8
	UbM1JtHVYGN7OcH+HJ3FtICDyk19a9x7RiPM5H2sPaYdn2+mMtpOz9roopGwTg3tDolOcyzT7XAre
	EtYckAAX/bSRZNQw/YM5iVNVOGPknOvhhvc0QMmfAuPtLajHJl+bIzidRnGq1mLk1/01I3GEY+WYn
	Rx4H3FFlBqB7HwRRtK0UzVL/39hKSzuDgz4wXnJxWhWqSSUk4kXaRCFoIlwCuFsjrPW8DOAZt1JBO
	K/7jboIQ0l3E2C7jkMkCsZLpq4WSwyEfTCJdqcE80jCrZ8FSDfTRlt3jKibtjrsBKdE46UiI76ZXt
	va3zJ8mTPCzr0kUnLWeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQVT-006b7I-0W;
	Tue, 05 Dec 2023 08:10:15 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQVP-006b3D-0L;
	Tue, 05 Dec 2023 08:10:12 +0000
Received: from [127.0.1.1] (91-158-149-209.elisa-laajakaista.fi [91.158.149.209])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 305AF4DB;
	Tue,  5 Dec 2023 09:09:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701763763;
	bh=LBo5JbsGnbR2WsOpAEu7E/zZBgullH/48QZtK26TE84=;
	h=From:Subject:Date:To:Cc:From;
	b=HG8dG+AqXVwiQyPqiYmya9Mifng3N9a8QJ9Z0dDtj0NpJt6qqmuOX+3LKcIAfe0p7
	 9lK0NiTjCbAEWznaPmBEYTrpmaxkmPm9YnLdsvtvVXSGfs/MXET8RcU4OUoZh2D/Ru
	 oGxn4VUmnNt1n8uqi01LTtYoh5Zr4mdxWbSTmT3E=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Subject: [PATCH 0/4] media: rkisp1: Fix IRQ related issues
Date: Tue, 05 Dec 2023 10:09:31 +0200
Message-Id: <20231205-rkisp-irq-fix-v1-0-f4045c74ba45@ideasonboard.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIALvabmUC/x2MSQqAMAwAvyI5G7ApLvgV8VA01SC4JCBC8e8Wj
 zMwk8BYhQ36IoHyLSbHnsGVBUxr2BdGmTMDVeQdVTXqJnai6IVRHmRHPnShaT1FyM2pnPX/G8b
 3/QBonC03XwAAAA==
To: Dafna Hirschfeld <dafna@fastmail.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Paul Elder <paul.elder@ideasonboard.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>, 
 kieran.bingham@ideasonboard.com, umang.jain@ideasonboard.com, 
 aford173@gmail.com, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1105;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=LBo5JbsGnbR2WsOpAEu7E/zZBgullH/48QZtK26TE84=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBlbtrUj5VZRebXyHRSVoljHrBVDzmoMUPSIFx8k
 /xPcB8r22mJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZW7a1AAKCRD6PaqMvJYe
 9ae2D/9AuwDX4iqBukE8T3ay9UYyBvemxwdq4+ftsjLkKjqCn3iSTKsfOZRc0/WZwzASNSFLeZF
 x0gxzoscBHX9iAvWvgCCk/oY2pj0ogx7EcaSoA2axHbZzSCBvnfm8UMjcFBWyIxVS1dJLOLAAWP
 zaclpTbmD2QBMI12o69ydjh2eJ/PbrDQJKdbcRTV22bgMscE66dLuopWcgMeAmfvKUCFkNd+fYL
 XKrQZGO4Q8z2Xs8axCIiz/2P9CVOvYX+9cYksRxq+94l30bYFtmwGDMsefKvVZ5Oge9JiqxmQk1
 wCIqH9GORY5vq/3KadNS/i0jds59CxpqpVCVoh4cAszKOeS6rLJLJEf5TSQ/PEpLVorD2ig7O2B
 RFAlcm8G6RNNmU2hQnYtayAjS5df54nYTlyyuBYs1IASOiluoZbBnHcPZ+Pvqc+ZrYqqjcQAbxM
 FFYTpscnQc570dJhuxS7P7ys2K/Pxx8zOIRngOEHoFhuaElR28Lt5PoXA5yzg1NG/3TeD3fV9lR
 I0zt9KUGeuOwUuN3WHgfVdeSXGt3EmxPmV0A3x+lCJ7cdsg5zidVaQcfcr7X7tosI4xAflCHrlJ
 dSeHiGLaFFESaNJnLCNa7ZHGxIV/JJyo5dLPLsksdu5iWPlmcVPG+s8wg9awJ08LxhFXjrqWq6D
 uJFJfN1y/UeE6vw==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_001011_292833_21B965AC 
X-CRM114-Status: UNSURE (   6.65  )
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

These fix a few IRQ related issues I noticed when testing i.MX8MP. These
are based on Paul's recently sent "[PATCH v4 00/11] media: rkisp1: Add
support for i.MX8MP" series, but could also be rebased on top of
mainline if needed.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
Tomi Valkeinen (4):
      media: rkisp1: Store IRQ lines
      media: rkisp1: Fix IRQ handler return values
      media: rkisp1: Fix IRQ handling due to shared interrupts
      media: rkisp1: Fix IRQ disable race issue

 .../platform/rockchip/rkisp1/rkisp1-capture.c      |  3 ++
 .../media/platform/rockchip/rkisp1/rkisp1-common.h | 13 ++++-
 .../media/platform/rockchip/rkisp1/rkisp1-csi.c    | 17 ++++++-
 .../media/platform/rockchip/rkisp1/rkisp1-dev.c    | 58 ++++++++++++++++++----
 .../media/platform/rockchip/rkisp1/rkisp1-isp.c    | 23 +++++++--
 5 files changed, 100 insertions(+), 14 deletions(-)
---
base-commit: dd19f89b915c203d49e3b23ca02446d4fb05d955
change-id: 20231205-rkisp-irq-fix-e123a8a6732f

Best regards,
-- 
Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
