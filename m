Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C477C4167B
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Dec 2023 10:13:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V9c660VieYJug7ahFI6nbNWF4ZCpRZb+Q8ZGJPecf9o=; b=ZXL2Tai7tFikNW
	7d5x6nrzBZIYOvhhqVUc/9LVkskDVEKnTLS08CS7VqO0a3O4vukpsEaifApy2x+m/a4pM0kgzGeGO
	RkCT8AXJji6apoWxzCCQ7QImXARVdjJ+H+p0EyrzwIs+Gz1tz36tUy6Fr6hNgiYGPwF/06shHWggs
	rGrDkJZYp/hX3FvAX6mQfrDvN7bIexGbOLqoV5Iz65OI9uuKhwhdMNXaYTp9RsGSNHRWZ94D2FgPe
	/VeoMt5N9RV+FXar6rXEx2PkaA3wkNpNrF+k5thPxIk0UnzpKoAlMHu2oxMVUrN589CUGbAdpxxRJ
	gotBqKHaaM5MZ0tocrtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAott-009gMq-2t;
	Wed, 06 Dec 2023 10:13:05 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAoti-009gDo-1w;
	Wed, 06 Dec 2023 10:13:01 +0000
Received: from [127.0.1.1] (91-158-149-209.elisa-laajakaista.fi [91.158.149.209])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id BEFD21F73;
	Wed,  6 Dec 2023 11:12:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701857532;
	bh=kTEQJAdraKwrzcd8ZJfODsKyAzCts6sPzE51t6mPv5U=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=cz2haK2OD5bPWnsON1BgC7pXGyYxdoSU5/LFsDYGcDMEQKRBpbOa9angdhJunGisq
	 +toHkNLKqCXqRr/o8MhkAPkDmg3jCoKpMCOFqR6oCXzOrWeAgMsvSHH70cTgQ37YaU
	 pRcQOWuWBntCvDjIqAqJ++QzXsF/GYzSy3UJYaOQ=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Wed, 06 Dec 2023 12:12:29 +0200
Subject: [PATCH v2 2/4] media: rkisp1: Fix IRQ handler return values
MIME-Version: 1.0
Message-Id: <20231206-rkisp-irq-fix-v2-2-6ba4185eeb1f@ideasonboard.com>
References: <20231206-rkisp-irq-fix-v2-0-6ba4185eeb1f@ideasonboard.com>
In-Reply-To: <20231206-rkisp-irq-fix-v2-0-6ba4185eeb1f@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1657;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=kTEQJAdraKwrzcd8ZJfODsKyAzCts6sPzE51t6mPv5U=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBlcEkhBdljqzcxdBz+n0Wffu84QmzeeRNvsvGC9
 cGZSQNUbE+JAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZXBJIQAKCRD6PaqMvJYe
 9aUMD/sECwuIEzxXDMinK22ykn6sULYtxlmWoqQFVcpYw+bgJVHt+hioXxZCPYN3ombSxlxQvUP
 XAf9qCLnbP6ywYh/g2iz/pf2CUJ8lr2vwMgD/mn+krMg3H0RubK5JM2mDdxp4Q/41VR6ETh+el1
 /9xu2KTLFtOvjltjNUANLQJr8a16LwuDh8Ah5GtaD/T3qaVx7/ztWxkhCmKMn501fvi1lWHkwb3
 6INakLtaDUMWNK33/ves8vzO77xQwemh9VBeh+Si8npZjrUDuui31TZcrdE9J3P66MLC3avRfVx
 NzE030mRNOv6eYYpXloFk1yCeCDdsSC4hae7M7YUyKPtUy0xnhHb4GFdzI52a3B3uZNp0KumFA6
 /WVfNjO1scszA5xbpCUmiQVNTewp4GYp0jIRm39SBqA+M2Bvts2aydSdIGRmlsja2Fm7nGa2upJ
 V4XOnY+Kd2NI1REQ67usKfmPk5TXUALa9KpqGGeIBYeuFZn37joHclghA7Tjr96hAjmnBqOqILu
 DsVaqLUsQjaEV/batt9ydgvTYOq97ISZW2gZrmbCoLbxExWCsdL2Q1sNTtijABONT2r5lB3xBJZ
 dKeb0vSidXxLX4g0Gwon37xOsfFbpPP+lNSem+uVNur/4R7fOWj++2pGUM1k0VxDgLmYh1lGff8
 wBMUB02ZqLQ45CQ==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231206_021254_777194_E4A361EF 
X-CRM114-Status: GOOD (  11.63  )
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

The IRQ handler rkisp1_isr() calls sub-handlers, all of which returns an
irqreturn_t value, but rkisp1_isr() ignores those values and always
returns IRQ_HANDLED.

Fix this by collecting the return values, and returning IRQ_HANDLED or
IRQ_NONE as appropriate.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index d4950294b7b9..030eb8c79546 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -444,17 +444,25 @@ static int rkisp1_entities_register(struct rkisp1_device *rkisp1)
 
 static irqreturn_t rkisp1_isr(int irq, void *ctx)
 {
+	irqreturn_t ret = IRQ_NONE;
+
 	/*
 	 * Call rkisp1_capture_isr() first to handle the frame that
 	 * potentially completed using the current frame_sequence number before
 	 * it is potentially incremented by rkisp1_isp_isr() in the vertical
 	 * sync.
 	 */
-	rkisp1_capture_isr(irq, ctx);
-	rkisp1_isp_isr(irq, ctx);
-	rkisp1_csi_isr(irq, ctx);
 
-	return IRQ_HANDLED;
+	if (rkisp1_capture_isr(irq, ctx) == IRQ_HANDLED)
+		ret = IRQ_HANDLED;
+
+	if (rkisp1_isp_isr(irq, ctx) == IRQ_HANDLED)
+		ret = IRQ_HANDLED;
+
+	if (rkisp1_csi_isr(irq, ctx) == IRQ_HANDLED)
+		ret = IRQ_HANDLED;
+
+	return ret;
 }
 
 static const char * const px30_isp_clks[] = {

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
