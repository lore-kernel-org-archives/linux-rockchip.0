Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2F4AC4167B
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 08:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LFMIOX3CvfTcRn13oj2cn6RVwJEk9Ll55c1Go9ByKm0=; b=NtAXLu4VJ1VMUT
	SEb5D2bHY/9gFJVKsGuRH8quEnuDMklkWyDWq3We8/RNmNy5WCLrdd+S1rhcd5Zj5RsVeyxf9CohZ
	YVx7sYpSpUyqnrDZtnt2wubjihgyJrL3ZmfT5dILB5wEfy6+FFVu4AsPnk/i7JRbExwlqjrNQ47Nc
	RYXjv1jfXxZiRb5FhdLVMSG8ezIwZuw4MdDHdx2lpS98c0bSg0mp5hnpMNHubjY9PQWtfPRaJF04k
	4/ADSyUIP3Yf8a3gR0/EdXa+DjnJtuADZqvW1VIL0O9jLZ0MIVmEcHJAoWmtwgX5R6JrnrSzt1vQD
	0h09NPNuJ+oaDporjNIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQVc-006bDL-06;
	Tue, 05 Dec 2023 08:10:24 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQVO-006b3Z-30;
	Tue, 05 Dec 2023 08:10:13 +0000
Received: from [127.0.1.1] (91-158-149-209.elisa-laajakaista.fi [91.158.149.209])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 21D0B158D;
	Tue,  5 Dec 2023 09:09:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701763766;
	bh=rVmPtwm1uGmDrIWKXT2svm/MUUgksqxTNOdoxtoMjGU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=MuUU0XQXq6ZXG66dOeIgSjJveT/+bR/YLt/ymW2upTL3owTAskGnfjTO/vYsO7QPL
	 16zakRN2AQ+QS8PFU6CSOLnFEmmY/pfkHl9LXGZICRZ4V37I0T/3WAsE3RTucbTC3t
	 9487GO8l/Jh18OrjAFpZx08TGj6KD5NSBdOvJvk8=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Tue, 05 Dec 2023 10:09:35 +0200
Subject: [PATCH 4/4] media: rkisp1: Fix IRQ disable race issue
MIME-Version: 1.0
Message-Id: <20231205-rkisp-irq-fix-v1-4-f4045c74ba45@ideasonboard.com>
References: <20231205-rkisp-irq-fix-v1-0-f4045c74ba45@ideasonboard.com>
In-Reply-To: <20231205-rkisp-irq-fix-v1-0-f4045c74ba45@ideasonboard.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3150;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=rVmPtwm1uGmDrIWKXT2svm/MUUgksqxTNOdoxtoMjGU=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBlbtrZU6iFL2/Y58GR7rOJhBlQDCvuGEErOgG0X
 XlZATZxLJKJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZW7a2QAKCRD6PaqMvJYe
 9Tm4D/9Sq2B3VjwaBr6L8KhLLf2C7zg40sLxpalB/S4jSwZguMCWNTiEuqknm/LXBBOh5HG8GEp
 VLyFyIn0NvXtVvxyOLYf3hlux+YjGoZABwQps827/TlJs9Egyf1D+X7EYwfdgguuePOeDp3H2z2
 YhBzLAdIaJ2le4cmk89cow16VtWuoKgjo8fcM5edz72sV/8/NM7pqQJ+5PZMZD1wWs0fsH0+GHE
 wROiwZB8Kj9QLf9P6GLlOymwP1rqmVhTf8BOIHeYaxxlbQrS8AdHNw7pZ0aDkx+7kVS4BnOxemi
 BdJekPp9Xj+k8AEHQmouZ77wMZxBUuYg1vKSoKJwMFC4TR+TM97Q5gPcb6gCE3BkqRUBlZ/3Mv8
 kGEZhc2cQRU3BXeoUsnPbI/Qlu31jlz9LGE9Ws15h/mTdP+uNiPDgHwYCNPQpL+zshEbeIqOTTR
 FZ9P572LCytqw/V2qlI2r5EnDyJ37Hi1X5nzzL88/Js1tCL/OIQf9/XMpjtKsCYxFZqu97PmIRE
 TTYyugTXYCWiFCrYC380+wIgU37svswllDUwCv6y2bLxisA7BXPSWLP3d2RUd7vlisv5jlGQ+l/
 XnRzAgi2gBVOk2u5qvZ8LXR+t6sqGzO6p6EuZjheclWTre0ek9cM/Irob4PCWpbaxIi8opGjYfu
 usRe3ZoUttSytSQ==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_001011_134715_54EAB812 
X-CRM114-Status: GOOD (  13.08  )
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

It is not clear to me if this problem causes a real issue, but shutting
down the ISP while an interrupt handler is running sounds rather bad.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c | 14 +++++++++++++-
 drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c | 20 +++++++++++++++++---
 2 files changed, 30 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-csi.c
index f6b54654b435..f0cef766fc0c 100644
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
index d6b8786661ad..a6dd497c884c 100644
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
