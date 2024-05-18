Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB8A2C25B74
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 May 2024 03:41:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cE6vD8g1qN7XFt++iqfOn5DjbcXhl4/7pRNJKzeLrsg=; b=a+wJvr0YsyKNwG
	u0uPXKhMXUubZ0RklkOlsjptq0xU2xaHKMd1dJoVf5WUZpExP8uXu+1MkkQmmgfeDFtlxtvZxz2Nd
	vlViGgM8KBYVRFdb8dPWTY8S4dGArXGXuaqpUZ/RUFEgKuq5n1yCERn/IbuU7JE2ny1D9T3yrT5Mn
	1IfTmRrGziI05bQ2AWB5nyiMB91TQsycGkt/ECUybkivB68TtloOwfaGFJgCX1KDF9oEvlJK/6lfm
	c82OuGaSTALBn0f1XSvl9Sg6IGGJQEbcdTph1kO+Z+EbnSaObwrcwzmW5Vbx+HSsZmtrkOOwlNJ2V
	yn2w+TX84subQI7Q4LZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s8Awu-00000009VQJ-3z07;
	Sat, 18 May 2024 03:41:32 +0000
Received: from out-183.mta1.migadu.com ([2001:41d0:203:375::b7])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s8Awr-00000009VON-0Uix
	for linux-rockchip@lists.infradead.org;
	Sat, 18 May 2024 03:41:30 +0000
X-Envelope-To: val@packett.cool
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1716003678;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=2ubBRvLZp8rewt/xkDpvLy7GWRXEow8xsujDo199KHU=;
	b=WENIuJj/YXcKEi4kz6nEU7g+zESvAbhk3zTLBwUdv/uDETPmGXqgrKI6NNOj4c+G58BpXd
	3oN26gFOGsl3CzU+DZO9Tv1i71Tl9yXrLu3sBJM+QQdHg+Tz/N0FyOLzrzd9dk5DW6C26k
	nqiwM5Fd+HBcfQLFldSySPJMQ0PGNLR++bnxrbMhl2FrVWU2dgN80dpFAw/fjRCMxON7Pl
	TBuSMjtzJE1fHxln1/H6XbpFBXhq8q1lNs8RF4z/ifEcQlzXbDfGpj+Rq9d+CmGVQ1VffO
	ztMYpKYvwp6DX2nubhc97sOtnaMq3SyLNUgPq0uRJp8G92vtx1IOmWg5WwS1bg==
X-Envelope-To: miquel.raynal@bootlin.com
X-Envelope-To: richard@nod.at
X-Envelope-To: vigneshr@ti.com
X-Envelope-To: heiko@sntech.de
X-Envelope-To: sfr@canb.auug.org.au
X-Envelope-To: linux-mtd@lists.infradead.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Val Packett <val@packett.cool>
To: 
Cc: Val Packett <val@packett.cool>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	linux-mtd@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] mtd: rawnand: rockchip: reject NVDDR timings when checked
Date: Sat, 18 May 2024 00:31:13 -0300
Message-ID: <20240518033923.5577-2-val@packett.cool>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240517_204129_314626_B8447876 
X-CRM114-Status: GOOD (  11.92  )
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

.setup_interface first gets called with a negative "target" value
NAND_DATA_IFACE_CHECK_ONLY, in which case an error is expected
if the controller driver does not support the timing mode (NVDDR).

Signed-off-by: Val Packett <val@packett.cool>
---
Hello everyone, first Linux patch from a long time FreeBSD person :)

This was required to get the NAND controller to attach on the random
old RK3066 tablet I'm bringing up mainline on.
---
 drivers/mtd/nand/raw/rockchip-nand-controller.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/nand/raw/rockchip-nand-controller.c b/drivers/mtd/nand/raw/rockchip-nand-controller.c
index 7baaef69d..555804476 100644
--- a/drivers/mtd/nand/raw/rockchip-nand-controller.c
+++ b/drivers/mtd/nand/raw/rockchip-nand-controller.c
@@ -420,13 +420,13 @@ static int rk_nfc_setup_interface(struct nand_chip *chip, int target,
 	u32 rate, tc2rw, trwpw, trw2c;
 	u32 temp;
 
-	if (target < 0)
-		return 0;
-
 	timings = nand_get_sdr_timings(conf);
 	if (IS_ERR(timings))
 		return -EOPNOTSUPP;
 
+	if (target < 0)
+		return 0;
+
 	if (IS_ERR(nfc->nfc_clk))
 		rate = clk_get_rate(nfc->ahb_clk);
 	else
-- 
2.45.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
