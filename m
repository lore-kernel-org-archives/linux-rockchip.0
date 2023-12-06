Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BA7DC4167B
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Dec 2023 10:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZGlYwg+4xgPH45QOZxeVgVacLa80eKsk8LDsMPwKrDA=; b=iZdgG5u/Uo4moX
	92p8CJnBS497EeWwPp56CoLs6ZyOEq2Y37v549shu74K7UAyWBOp6vMiaVYueSWHn9re14nG6YZ2C
	g6Jga+q3gwROaEZXp74t0hxUPPwegxeQrIGQNhKCUQxVRa0tUC9WMcISDk6NIsHOgxQtUhb3VfADp
	eHef16lyBooLxz6oWTwGR+aosJuipDZW8CQ/0yyloxVnetDfzXXim+gING5ofYmwI+91kF+g8JtZm
	ozTwEFg9Za4SeYqBWuxyDfg3zOoOMlWHWLid43kJKKd3RmtUnQrvWRPsX5sss2WOzOoEXgz6XGNrv
	zrCcyRLqIIwCS7fFR1ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAou1-009gTE-0G;
	Wed, 06 Dec 2023 10:13:13 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAotk-009gF2-0f;
	Wed, 06 Dec 2023 10:13:03 +0000
Received: from [127.0.1.1] (91-158-149-209.elisa-laajakaista.fi [91.158.149.209])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8EA622B09;
	Wed,  6 Dec 2023 11:12:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701857534;
	bh=PKUcBdc8Qj6XeTMDCk4F0nRr2AQygA1lnSwR9BIZ64A=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=mlZdKuCICZ5xqmYpghtsHBC1xpLI76Ws+DZsoYvWi8URIodqTSDt9hGX+aot1nvHW
	 C9gdyHqwHmp09usqo56v9453JXWr3org8nQ9xwPX54CN1RXnilaS1EasyJKBLFCxSe
	 /KhuS6lrDaxHWLYIpJpq4Jg4LfbyItKa0/eQnoBk=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Wed, 06 Dec 2023 12:12:31 +0200
Subject: [PATCH v2 4/4] media: rkisp1: Fix IRQ disable race issue
MIME-Version: 1.0
Message-Id: <20231206-rkisp-irq-fix-v2-4-6ba4185eeb1f@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3439;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=PKUcBdc8Qj6XeTMDCk4F0nRr2AQygA1lnSwR9BIZ64A=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBlcEkhuPu8R/u0zTPQ1W//B0yzANJaz5h46O91S
 MX9rZ0rGhKJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZXBJIQAKCRD6PaqMvJYe
 9SQ1D/0WNlBX1kQYLY1htxMCKTBE6WutW9vj9EDMkljHP4bFOTt76UdikAxDBt1ozRlskCeF6cE
 PNe0r5Ck2WlI7E+Ucfu1SmRgsqZf80Or7Lz3sqGYscuwl5RF1QUYnzmULiaNOSmkkJHc/ZIIemb
 p+G7vvjytJrpg1MGF/qJmhVlGCVZJhLn+r8oAHx80cCgzvnf9apfFuz0soMDZLzC60zk1TK9+/F
 mjhOSBnU8njOvS7TdFQJsxhr5fCWsZYXahNF41pY+luL+ZgS7KNpbkqprCw1k63yeO6XABJ9pAh
 Cyx7CtSaKsrLGO7GhnKZpcrO7cdQROBDpG4ymbwxFVMKnED45uChqhg9y663qTHBahXIVUhuyBX
 QwKPpwY7wFCORjm0WtGPW7dfE8Mgam1vqPHnzfi7s/JDZQMKNZvr1jlG3wgbHgF6/U7ngoDiR4E
 2U1qi4jqTB/V2vAKvSfqkJ1Zc4DcssxYYOcmO3iQVPkNCiBHwdXzttxza0KTWktARVZ5lyIaEXE
 hxTlkWxglasejh0NocZF5jfIeOPfHV5JhHFOmJ/6iaLAo1IEgFRRe5QGsm267E6IW3Obuk9+DZ1
 4rNodgTAdPKsYrQNbUDie5BXKjTjOwZUJ/uvb0/aKOm0G/15ajtHheOslDXihbxjSBiiX1RlVSW
 Ckl3LxDwT6v/JPA==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231206_021256_403349_A9967778 
X-CRM114-Status: GOOD (  14.09  )
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

In rkisp1_isp_stop() and rkisp1_csi_disable() the driver masks the
interrupts and then apparently assumes that the interrupt handler won't
be running, and proceeds in the stop procedure. This is not the case, as
the interrupt handler can already be running, which would lead to the
ISP being disabled while the interrupt handler handling a captured
frame.

This brings up two issues: 1) the ISP could be powered off while the
interrupt handler is still running and accessing registers, leading to
board lockup, and 2) the interrupt handler code and the code that
disables the streaming might do things that conflict.

It is not clear to me if 2) causes a real issue, but 1) can be seen with
a suitable delay (or printk in my case) in the interrupt handler,
leading to board lockup.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c | 14 +++++++++++++-
 drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c | 20 +++++++++++++++++---
 2 files changed, 30 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
index 47f4353a1784..0bab3303f2e4 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
@@ -125,8 +125,20 @@ static void rkisp1_csi_disable(struct rkisp1_csi *csi)
 	struct rkisp1_device *rkisp1 = csi->rkisp1;
 	u32 val;
 
-	/* Mask and clear interrupts. */
+	/* Mask MIPI interrupts. */
 	rkisp1_write(rkisp1, RKISP1_CIF_MIPI_IMSC, 0);
+
+	/* Flush posted writes */
+	rkisp1_read(rkisp1, RKISP1_CIF_MIPI_IMSC);
+
+	/*
+	 * Wait until the IRQ handler has ended. The IRQ handler may get called
+	 * even after this, but it will return immediately as the MIPI
+	 * interrupts have been masked.
+	 */
+	synchronize_irq(rkisp1->irqs[RKISP1_IRQ_MIPI]);
+
+	/* Clear MIPI interrupt status */
 	rkisp1_write(rkisp1, RKISP1_CIF_MIPI_ICR, ~0);
 
 	val = rkisp1_read(rkisp1, RKISP1_CIF_MIPI_CTRL);
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index dafbfd230542..33b5a714d117 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -364,11 +364,25 @@ static void rkisp1_isp_stop(struct rkisp1_isp *isp)
 	 * ISP(mi) stop in mi frame end -> Stop ISP(mipi) ->
 	 * Stop ISP(isp) ->wait for ISP isp off
 	 */
-	/* stop and clear MI and ISP interrupts */
-	rkisp1_write(rkisp1, RKISP1_CIF_ISP_IMSC, 0);
-	rkisp1_write(rkisp1, RKISP1_CIF_ISP_ICR, ~0);
 
+	/* Mask MI and ISP interrupts */
+	rkisp1_write(rkisp1, RKISP1_CIF_ISP_IMSC, 0);
 	rkisp1_write(rkisp1, RKISP1_CIF_MI_IMSC, 0);
+
+	/* Flush posted writes */
+	rkisp1_read(rkisp1, RKISP1_CIF_MI_IMSC);
+
+	/*
+	 * Wait until the IRQ handler has ended. The IRQ handler may get called
+	 * even after this, but it will return immediately as the MI and ISP
+	 * interrupts have been masked.
+	 */
+	synchronize_irq(rkisp1->irqs[RKISP1_IRQ_ISP]);
+	if (rkisp1->irqs[RKISP1_IRQ_ISP] != rkisp1->irqs[RKISP1_IRQ_MI])
+		synchronize_irq(rkisp1->irqs[RKISP1_IRQ_MI]);
+
+	/* Clear MI and ISP interrupt status */
+	rkisp1_write(rkisp1, RKISP1_CIF_ISP_ICR, ~0);
 	rkisp1_write(rkisp1, RKISP1_CIF_MI_ICR, ~0);
 
 	/* stop ISP */

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
