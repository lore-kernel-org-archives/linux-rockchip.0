Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2785C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Apr 2022 23:43:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y6KA1I/vgr7VFycmivH233BZFfEYk4xQSGH7VckA0EI=; b=xUNvwcpihWkJBO
	+l2nVHe0FsbCtHqehNO9QGtSKiKvziLl291RV09mE5TIJhz/yhttkn0PkRK20z8lT/1+OBtYkKbkM
	0K8wwlUsTJHovX8I4IQHqvDIp1dtczmpDRJoSJ18vGk/B54JVsQPqxok+HF+JW0A2pEEQwr5JwP5A
	I9eQQ3C6rxV9OMlaBttDg9a0njtSTCMx11L1ji9HdB9cVqr1YdLp1BpB40p+kqbd7yAO7KfZS5KIG
	mTvTqL/E8zamC62X4pBRChQjF3/KcIaAzDvZn9u4NlLhzlt1bwR4RZiG9x+oJrefJPK68eeRWl8Rg
	fRzBvNEgU1RwQsl1ZEfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhgSF-00FOOl-Ou; Thu, 21 Apr 2022 23:43:19 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhgRt-00FNtx-Bl
 for linux-rockchip@lists.infradead.org; Thu, 21 Apr 2022 23:43:00 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 70DEEE86;
 Fri, 22 Apr 2022 01:42:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1650584575;
 bh=QPfG8O0stw5+YAORHnHQk3+G6V7eQaPFNEU2zOvgr/c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jcBGZ58VKhbePTHBDtVhASG7H9UZugdErCtRlnnOknBMYCmuBpkbbXxEu2MajFWWY
 9mCVJW4eAjzURhUAHwTqNnzOfDalOd95PQR6nGFeCqCQ8HWYqYivO+rudThDbf7c+G
 vSYDunWRZ/Nfy1QSpe7Ns87ER0NqSvxXdJLcMcYA=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>, Tomasz Figa <tfiga@google.com>,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v4 18/21] media: rkisp1: debug: Compute max register length
 name dynamically
Date: Fri, 22 Apr 2022 02:42:37 +0300
Message-Id: <20220421234240.1694-19-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
References: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220421_164257_619109_74594C79 
X-CRM114-Status: GOOD (  11.28  )
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

Don't hardcode the register name maximum length (used for alignment
purposes) to 14, but compute it dynamically. The small performance
impact isn't an issue as this is debugging code.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../platform/rockchip/rkisp1/rkisp1-debug.c   | 21 +++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
index 2c226f20f525..28a69323cb38 100644
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
@@ -32,22 +34,29 @@ static int rkisp1_debug_dump_regs(struct rkisp1_device *rkisp1,
 				  struct seq_file *m, unsigned int offset,
 				  const struct rkisp1_debug_register *regs)
 {
+	const struct rkisp1_debug_register *reg;
+	int width = 0;
 	u32 val, shd;
 	int ret;
 
+	for (reg = regs; reg->name; ++reg)
+		width = max_t(int, width, strlen(reg->name));
+
+	width += 1;
+
 	ret = pm_runtime_get_if_in_use(rkisp1->dev);
 	if (ret <= 0)
 		return ret ? : -ENODATA;
 
-	for ( ; regs->name; ++regs) {
-		val = rkisp1_read(rkisp1, offset + regs->reg);
+	for (reg = regs; reg->name; ++reg) {
+		val = rkisp1_read(rkisp1, offset + reg->reg);
 
-		if (regs->shd) {
-			shd = rkisp1_read(rkisp1, offset + regs->shd);
-			seq_printf(m, "%14s: 0x%08x/0x%08x\n", regs->name,
+		if (reg->shd) {
+			shd = rkisp1_read(rkisp1, offset + reg->shd);
+			seq_printf(m, "%*s: 0x%08x/0x%08x\n", width, reg->name,
 				   val, shd);
 		} else {
-			seq_printf(m, "%14s: 0x%08x\n", regs->name, val);
+			seq_printf(m, "%*s: 0x%08x\n", width, reg->name, val);
 		}
 	}
 
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
