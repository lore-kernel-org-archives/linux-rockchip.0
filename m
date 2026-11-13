Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB555606A331
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 13:50:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=2xMtNp96;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=mhdiNYbh
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=9ifHbiEPbmJb8DlB+QrQMKMTxjAM0qWkCD3eoui0blI=; b=2xMtNp96ekhob2cbE4hbBvBrcV
	Ws6i7caAWoZj4qXb2wZoyezQrBEX5/yFWEMZnFGAUOPFdRIOCb0+PKn6NMVh+GprCEd5OgT2v72j1
	2vJl3CiXQeXnRIV9C0LbvcRchCjaMXOEPzxozLlXnOCT3nXWcmgtFrlQEUDSRpVbD15qgYq58hrBM
	gyw+50tp1y1Q3rjPgfsc9GBGMN8TUqo5Dg5m2/9QxElKwa6U8kXT9dVElviNLQo2Gm6TML7vhrIsn
	uu2IfcnRsP2Z+hxjwBC99vGXklQjURAyZ+VS9aZFiEAKZ+b9skbUZxrCOL3EUpE2ADBDN+J6ZAqvO
	pXOMgGmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRrg0-0000000D1k5-2NNn;
	Fri, 13 Nov 2026 13:50:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRrfi-0000000D1VG-0p9H;
	Fri, 13 Nov 2026 13:50:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=khN6VDPnjL2LqUdtA4sH+OiPa/4+wQB3zpuMWXL1Td4=; b=mhdiNYbhNfy//abGacUQnpqiZX
	2CDg297VC+uJbfwGwG5bMY3G+EuHb4u3KQgbHImRd4TW80PhvYIC2EDa7JEnopvoiSzqxrSbQoaWn
	A8FA7ZOKzkWyDjXzrN1ay9GRbVul4R/FbegW/jYHopGkff1EdH3RD/1Z8Eekd1uOFjNvRStzQM7to
	3aJcN7Y9/g6NdFcfIZKy+ijWKAsRV5Fbvlk6Q/e32JQajpR9VeAH/v79qpey/mvvMoIX/9beAyP2p
	HKvaeYLmIcL6Avr36mOEL3e5pRwLfyDJO7JTSrQf0Xwu6y6x0/suVRDqwVcB4wOYx1cLrux91hvHK
	pFq1wCSg==;
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
Subject: [PATCH v2 5/6] spi: rockchip: Move to pm_runtime_resume_and_get
Date: Fri, 13 Nov 2026 14:50:16 +0100
Message-ID: <20261113135017.1047959-6-heiko@sntech.de>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261113135017.1047959-1-heiko@sntech.de>
References: <20261113135017.1047959-1-heiko@sntech.de>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_055030_255305_66F55DCC 
X-CRM114-Status: GOOD (  12.64  )
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

Currently pm_runtime_get_sync() is used, which increments the usage
count even if the resume was not successful.

Move to the more modern pm_runtime_resume_and_get() which handles the
usage counter better.

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 drivers/spi/spi-rockchip.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 8bb55d52d346..ce1629e5a513 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -255,7 +255,7 @@ static void rockchip_spi_set_cs(struct spi_device *spi, bool enable)
 
 	if (cs_asserted) {
 		/* Keep things powered as long as CS is asserted */
-		pm_runtime_get_sync(rs->dev);
+		pm_runtime_resume_and_get(rs->dev);
 
 		if (spi_get_csgpiod(spi, 0))
 			ROCKCHIP_SPI_SET_BITS(rs->regs + ROCKCHIP_SPI_SER, 1);
@@ -734,7 +734,7 @@ static int rockchip_spi_setup(struct spi_device *spi)
 		return -EINVAL;
 	}
 
-	pm_runtime_get_sync(rs->dev);
+	pm_runtime_resume_and_get(rs->dev);
 
 	cr0 = readl_relaxed(rs->regs + ROCKCHIP_SPI_CTRLR0);
 
@@ -924,7 +924,7 @@ static void rockchip_spi_remove(struct platform_device *pdev)
 {
 	struct spi_controller *ctlr = platform_get_drvdata(pdev);
 
-	pm_runtime_get_sync(&pdev->dev);
+	pm_runtime_resume_and_get(&pdev->dev);
 
 	spi_unregister_controller(ctlr);
 
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
