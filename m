Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377D3606A8B3
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 13:50:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=GDDM2DjQ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=CuZhwzYl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=tDrfCVEqnwx2Bv7SDAuSVesDcTqvBDMUf274JARz1AM=; b=GDDM2DjQ77i7jHeM3bHGsicO78
	LXdydJNFth4q1vFn6sjEdrsZzGwD6J/y1P+MtU7sWhNDnYHUhmhiTJa8HGCr8yyW0k9TcReZ86w3c
	49wxhSvWuCOReDpPMPoRCMZRZtlU60zw3Dvnu4JtXenxCmQ5MzBd4XJzGtsXhJodG+DQp/PsAXOd5
	ueSSWfIYPCDx337dg1jFMw+g5zcFe2mIZp9m28NdzG3N97da7PK3H7AYJLIRtmLcdWh32pXOGTAxp
	8WdPbjJO56hw3QrU6GxidlrbIW+haZhgolfsma0h94/VUeCEaX0CBHIfno7kPWuRVfJ6N97upS71b
	m5fDa6MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRrfq-0000000D1cY-1pAC;
	Fri, 13 Nov 2026 13:50:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRrfh-0000000D1V1-2QTd;
	Fri, 13 Nov 2026 13:50:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=an70ig7dAEwpGArUZ6IJueFBhswwSw/pstiiDjbFBS8=; b=CuZhwzYlzuHWQ4UCTTUy0ZkzvV
	xnQzjRAEtjIb1wzaxFOXXYoLHosClMw+j7RLDWKCnsvEtBxIxlfLztM8z3NkH2wDCSYCSnyYQfoSh
	v5rlqKbOtLszR47s2bUaZgSNTApyVw++jOgOwYVQ3lRYET6CDriE4TUgyd81TgRRO7pR4f+SsaUmE
	V3abAWyXsIhyqr4VxBUKUZo09njnagyaNDjtSHW9EL9Dk4EFyZC6+nkIxgNc50YREAwcPJB5a8ggn
	crHdRy7jxgqDumoisEsb2sDfdurBvMEIIpym1H6sYZcNqtYyWKSFV2ZgIpOGQY/UV40rlLNavevP8
	e++v95eA==;
From: Heiko Stuebner <heiko@sntech.de>
To: broonie@kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	quentin.schulz@cherry.de,
	Lee Jones <lee@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH v2 1/6] spi: Allow spi_delay_exec() to be used from atomic contexts
Date: Fri, 13 Nov 2026 14:50:12 +0100
Message-ID: <20261113135017.1047959-2-heiko@sntech.de>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261113135017.1047959-1-heiko@sntech.de>
References: <20261113135017.1047959-1-heiko@sntech.de>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_055029_642090_94329104 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Heiko Stuebner <heiko.stuebner@cherry.de>

When using spi_delay_exec() only the fsleep in the subsequent
_spi_transfer_delay_ns() can actually sleep.

As we might want to use spi_delay_exec() from atomic contexts in the
future, move the might_sleep() up to the actual place that matters
and fall back to the existing ndelay if called from an atomic context.

This also introduces a helper spi_in_atomic_mode() to determine when
that is the case. As this should really only be used in very special
occasions, it really restricts things to late system states.

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 drivers/spi/spi.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 40cda0037ea5..e79f16aca1a3 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -1700,15 +1700,27 @@ static int spi_transfer_wait(struct spi_controller *ctlr,
 	return 0;
 }
 
+/*
+ * We only allow atomic transfers for very late communication, e.g. to access a
+ * PMIC when powering down. Atomic transfers are a corner case and not for
+ * generic use!
+ */
+static inline bool spi_in_atomic_mode(void)
+{
+	return system_state > SYSTEM_RUNNING &&
+	       (IS_ENABLED(CONFIG_PREEMPT_COUNT) ? !preemptible() : irqs_disabled());
+}
+
 static void _spi_transfer_delay_ns(u32 ns)
 {
 	if (!ns)
 		return;
-	if (ns <= NSEC_PER_USEC) {
+	if (ns <= NSEC_PER_USEC || spi_in_atomic_mode()) {
 		ndelay(ns);
 	} else {
 		u32 us = DIV_ROUND_UP(ns, NSEC_PER_USEC);
 
+		might_sleep();
 		fsleep(us);
 	}
 }
@@ -1756,8 +1768,6 @@ int spi_delay_exec(struct spi_delay *_delay, struct spi_transfer *xfer)
 {
 	int delay;
 
-	might_sleep();
-
 	if (!_delay)
 		return -EINVAL;
 
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
