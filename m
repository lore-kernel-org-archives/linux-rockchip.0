Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEE90606A32A
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Nov 2026 13:58:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=vVakSTaC;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=qp2kg4x9
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=xiJlyXNF0IAFPxx/0Cqku7XNLxF1RaV/4tRuqaYHIrw=; b=vVakSTaC81ZSttRigQqqisKTRd
	uTd89hKXB1F9+RkOv4EUx32kp58hyS4leeSTVg8FFlTC8sPRlP/oeb1mpahiFe7Gdlb6L3Zkpxm5K
	2T6xE4WTFYfhfd5l+QwlhLE4YRp0M7p6PvXVMx2yTJsGQORmCRltP6I/ygB1kRQTlFxmFKeC71ZUN
	KkaO3iIb0buu4ggbXOISk6aHoMszyENAnVg8kdY3NL2koPiwtP5rwd7/7a9BJrcO/Y7BWymrOPDpO
	Rqh9vMEutqEIFFhW0QbyCM5Y2h57u+V0IEejMN+GDTroh4U2Ht2UNsMBBlESE/i1VUmQZYDOqhXx7
	tMQDdcVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU2eq-0000000C9H7-0ftQ;
	Thu, 19 Nov 2026 13:58:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU2ef-0000000C9A9-2XGx;
	Thu, 19 Nov 2026 13:58:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=3lTaBCqZF5G8fjlGAlGQP3TalbwWa07a5DbQshXZTOk=; b=qp2kg4x9gfr3I3leGdIHl9EBeZ
	BcSiihxgJ6LOkQpNKSt1epwz76ydXVYZiqFJjmpVDbgCjw6jGSOTXdEsjW9ft2lJH3m8oRvtUxX9Q
	Y6d/ZqcL6fOZXpwFz0ITmEiCupBVxHqNZaxBdqAKFEYs/pBk5IxYBQdLTGyjhn63OjdIQT1Lrff0O
	5Jydw6VCNNxHzcnIBUCUbLC8FJYgOgwuPQcSusgEI4J2iBqc9uX8MrEHRDJud6CbgBAgy5wiA/Eta
	FvpnB5a1s6buC7AXHvEj0KHcuDDKRIvcsfaN8/b3J73ioeRm4wae4hEpxAWiNIEcvQfsKop+CSPQ7
	5PHQEufg==;
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
Subject: [PATCH v4 2/6] spi: Allow spi_delay_exec() to be used from atomic contexts
Date: Thu, 19 Nov 2026 14:58:04 +0100
Message-ID: <20261119135808.2377849-3-heiko@sntech.de>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261119135808.2377849-1-heiko@sntech.de>
References: <20261119135808.2377849-1-heiko@sntech.de>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261119_055826_005403_AC02FADE 
X-CRM114-Status: GOOD (  13.20  )
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

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 drivers/spi/spi.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 5e05f2fef12e..ec2074126910 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -1730,11 +1730,12 @@ static void _spi_transfer_delay_ns(u32 ns)
 {
 	if (!ns)
 		return;
-	if (ns <= NSEC_PER_USEC) {
+	if (ns <= NSEC_PER_USEC || spi_in_atomic()) {
 		ndelay(ns);
 	} else {
 		u32 us = DIV_ROUND_UP(ns, NSEC_PER_USEC);
 
+		might_sleep();
 		fsleep(us);
 	}
 }
@@ -1782,8 +1783,6 @@ int spi_delay_exec(struct spi_delay *_delay, struct spi_transfer *xfer)
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
