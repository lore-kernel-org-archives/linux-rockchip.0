Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 313F4C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 21:01:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KyMXFmVpwzO9mtnkNIpHhwoGZtQcWIIvDPb3zld+e8s=; b=wlunGWpg1RfJfK
	Y2flIrkPv1Oy94QiP5l8sn8MStcGZ4N9+LNt6tGArYJGs0DC2+v9VR3pAamI4OvQ90i2T7y8aWOZM
	Jv6MO/lpQjo/1DTY3ojGu5viWkREBUZovu96NOnJAzXtOfEc2QcsHTiHpRqdlAvygM7czEfqf4WRm
	SyS5kJGOMVuBhrbfA154z2t+1TA8BT07zhI1qHZEew3BWBos73+3LcXtscu+IprM4Z+Oe8/k34C3i
	EfrWjhjdmhGgacDWcOEdH/SiRlwEwm5hQgmnH76AkL1yxzdlLWAijbrV91gna7wLbZnH+4ZC0pIT3
	/etaGsahrARIsDt3hOKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj5pY-00BRW2-Nf; Mon, 25 Apr 2022 21:01:12 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj5pW-00BRVO-1B
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 21:01:12 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 9E465496;
 Mon, 25 Apr 2022 23:01:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1650920468;
 bh=KlG0z4fR6YwQgD2L410Xq9NMkO7Ubkh2YbuSrfD9CB4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=SUWe8je4NCg8kTbalv9YSJQC+TOVnSzBvL6rgXRjqjSuO0fpb2eA0xnW8ATdHMsNh
 22ajKoL6Xu5Yi7Vmg3IpFJ3QwvQYnPvdb2p8Dx0DdqMqTDhvitVjL8XuBpJ6Al39um
 Ot4gjaro50r43O3dBoUytG1tZ4ZpuGNkL0Yk3m0g=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, Dafna Hirschfeld <dafna@fastmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Paul Elder <paul.elder@ideasonboard.com>,
 Tomasz Figa <tfiga@google.com>, Ricardo Ribalda <ribalda@chromium.org>
Subject: [PATCH v4.1 18/21] media: rkisp1: debug: Update max register name
 length
Date: Tue, 26 Apr 2022 00:01:04 +0300
Message-Id: <20220425210104.31964-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <Ymbw52EF+Pcvkclz@pendragon.ideasonboard.com>
References: <Ymbw52EF+Pcvkclz@pendragon.ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_140110_269022_C926A9D0 
X-CRM114-Status: GOOD (  11.73  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Update the maximum register name length to match all the registers being
printed. This helps getting a consistent alignment of register dumps
when concatenating multiple debugfs files.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
Changes since v4:

- Replace dynamic per-file register length with global maximum length
---
 .../media/platform/rockchip/rkisp1/rkisp1-debug.c    | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
index 2c226f20f525..e76dc2b164b6 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
@@ -11,8 +11,10 @@
 #include <linux/debugfs.h>
 #include <linux/delay.h>
 #include <linux/device.h>
+#include <linux/minmax.h>
 #include <linux/pm_runtime.h>
 #include <linux/seq_file.h>
+#include <linux/string.h>
 
 #include "rkisp1-common.h"
 #include "rkisp1-regs.h"
@@ -28,10 +30,14 @@ struct rkisp1_debug_register {
 	RKISP1_CIF_##name, RKISP1_CIF_##name##_SHD, #name \
 }
 
+/* Keep this up-to-date when adding new registers. */
+#define RKISP1_MAX_REG_LENGTH		21
+
 static int rkisp1_debug_dump_regs(struct rkisp1_device *rkisp1,
 				  struct seq_file *m, unsigned int offset,
 				  const struct rkisp1_debug_register *regs)
 {
+	const int width = RKISP1_MAX_REG_LENGTH;
 	u32 val, shd;
 	int ret;
 
@@ -39,15 +45,15 @@ static int rkisp1_debug_dump_regs(struct rkisp1_device *rkisp1,
 	if (ret <= 0)
 		return ret ? : -ENODATA;
 
-	for ( ; regs->name; ++regs) {
+	for (; regs->name; ++regs) {
 		val = rkisp1_read(rkisp1, offset + regs->reg);
 
 		if (regs->shd) {
 			shd = rkisp1_read(rkisp1, offset + regs->shd);
-			seq_printf(m, "%14s: 0x%08x/0x%08x\n", regs->name,
+			seq_printf(m, "%*s: 0x%08x/0x%08x\n", width, regs->name,
 				   val, shd);
 		} else {
-			seq_printf(m, "%14s: 0x%08x\n", regs->name, val);
+			seq_printf(m, "%*s: 0x%08x\n", width, regs->name, val);
 		}
 	}
 
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
