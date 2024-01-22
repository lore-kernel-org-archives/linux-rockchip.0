Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF6C0C47DAF
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Jan 2024 14:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G1C7K71fwis1uFW5Z+b3uI1VHMGIoOeEBTBh96nqeNU=; b=fX3Uhic6Mq8s87
	NHgHEL2Lgcms/HQCK0YoxEjCXWFhFzKhts5tX1DTK+c58X+B8e7WbMOiAPLrMexB2rGI+d1OBocsW
	vkiK5zoWezAYLojb7DWnuHt9+iaFNZUxYrtfd6ySIw5AjyMGkmTHESl9Hen/KdMMLsUY24JS/VbjZ
	MfuVTvozCeNdHaBtg9B0gh1HfI4j2eY+x9lYNFQvRjV0g7O51RXJy+bRFkxXq5Z0KTa5U0ZRYYqnJ
	kLxvs7EaPeYDxznPSQC3j4LfT6sW1OoBTaNr4eQPqL6PP8szBw7sR3RZS+vzOJNbsiQZWVHkIkA6x
	VACr0g4ZxN3b90R70Qwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRvkw-00CWWs-00;
	Mon, 22 Jan 2024 14:58:34 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRvkl-00CWLP-2X;
	Mon, 22 Jan 2024 14:58:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 499AD614F7;
	Mon, 22 Jan 2024 14:58:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C47EFC433C7;
	Mon, 22 Jan 2024 14:58:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705935503;
	bh=xD9xpuiZUPrSvYzQ2YyguGL/6fOMJQL/RT0rBtUxc7A=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=PY6jkODxULik0F4bzacQo+s2XHjVPC/+tJKg3M6O8Ah6MqxHZIAbF2a0mMAhpc5Mf
	 Rw9lXX1X7IaO1BGFfBu2/b2rfrEmsOTKh0jLNq2dYkV8360NhfHWq3bqhwEZ84gJuT
	 lAc52HGgLfr4GX40j+9W/kHiNMmgry7ZFxA4JSmqqh9vX9NyhxmZG0uF+xG0KN5KKo
	 xGXtbD3jNMI04dH0rGggyIpgqXPufOmb3yyd6VDEcgHiqStoEvV6SDl8xDXGu9R8IF
	 GEw2+oTDmQ3EIpOBenevabCyoJvfwNHSWn2r2fv/+FNzhNWNSRvLwtuuInjotLj8XT
	 9myT4CQ3iOWUw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	Adam Ford <aford173@gmail.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	dafna@fastmail.com,
	heiko@sntech.de,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH AUTOSEL 6.7 36/88] media: rkisp1: Fix IRQ handler return values
Date: Mon, 22 Jan 2024 09:51:09 -0500
Message-ID: <20240122145608.990137-36-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240122145608.990137-1-sashal@kernel.org>
References: <20240122145608.990137-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.7.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_065823_868370_22A262E3 
X-CRM114-Status: GOOD (  12.46  )
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

From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>

[ Upstream commit 3eb7910e1b16a2c136be26a8380f21469225b2f6 ]

The IRQ handler rkisp1_isr() calls sub-handlers, all of which returns an
irqreturn_t value, but rkisp1_isr() ignores those values and always
returns IRQ_HANDLED.

Fix this by collecting the return values, and returning IRQ_HANDLED or
IRQ_NONE as appropriate.

Link: https://lore.kernel.org/r/20231207-rkisp-irq-fix-v3-2-358a2c871a3c@ideasonboard.com

Tested-by: Adam Ford <aford173@gmail.com>  #imx8mp-beacon
Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../media/platform/rockchip/rkisp1/rkisp1-dev.c  | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
index 4c4514e20673..22b2ae0e89c4 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
@@ -442,17 +442,25 @@ static int rkisp1_entities_register(struct rkisp1_device *rkisp1)
 
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
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
