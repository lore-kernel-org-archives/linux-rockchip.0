Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52AA2606A31C
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2026 23:50:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=hiRRM6U8;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=eT1U28Xf
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=7UoiCsN7fOZKSs/Zx51MY/1ii2iDD+B6VerU4P5+6is=; b=hiRRM6U82RbC+KcrioNPK6sPhy
	yUbuFeUAExC+mzqi/q0qOCFzljavZdUR2ayZwKWqFaACRZuArZO4VUwTQsAtNmQ35lvxVvn/Korcb
	eWtdr/E7DYjoBJYfMV5MPLH7aEQp2ZTIKKzLrNy/mXTvmp832rufIBAPlofVoeYf6bw8uwGHrmvEc
	1JGt4WhQ1UtjL4khUtZPpR06rZv0m1m18kmPVPFFy6nk1jm/2Ugsu7BcYIitSbge5XbJrgR4/eImG
	U3Eoe/LXmuAeAk2aOkUXd6tpySgMFu6FygYBEXVBtkvHWEPAP8j6TCQnR28MSGDZFWEcdmfgPV3sx
	P7z4ZDmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTSws-00000007JOb-3KJq;
	Tue, 17 Nov 2026 23:50:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTSwp-00000007JMn-33Jh;
	Tue, 17 Nov 2026 23:50:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=0oMXGLoKcrMltsWL6uMm4zEKFcls2YExOE/JJ6JogwE=; b=eT1U28XfPrgX2Cuu1cq1A6eUiK
	QA0pCfbnSuaUZiaToiyC1gdOP0SlmE++zEY3IIQ8MPh3CRtQ2q45w6SsdvR45G4S4WtzJ6ty/hNnS
	6B+irPbVY+3elZXp0vxsv8QV04QFMN9ZgNpuqhl4aA/Q3XrgP/aSKMBPkv3UMR0tqs6Ld0xad+jZW
	ROBdlEqaCtI720fZEYd5ey3bjjBmHiCgsxhoHxplIkcv+a8xOIpaci3U1IhuRvwD8feABbnI4WE4Y
	2FvLzxnQ3Ta8vzM4BY61ioMLlkKMJqVcP7kOfMebEV/utvOkxdBQ/etF3m0mQKmI2K6eU7FXZEJH0
	vYQAAPKQ==;
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
Subject: [PATCH v3 5/7] spi: rockchip: Fix runtime resume error handling
Date: Wed, 18 Nov 2026 00:50:19 +0100
Message-ID: <20261117235021.2013719-6-heiko@sntech.de>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261117235021.2013719-1-heiko@sntech.de>
References: <20261117235021.2013719-1-heiko@sntech.de>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_155047_771725_7A3B3770 
X-CRM114-Status: GOOD (  14.26  )
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

When enabling the apb-clock any error does get handled, but when an
error happens enabling the spiclk itself, only the apb-clock is disabled
but the function then returns successful.

Fix this by also reporting the error on enabling the second clock.

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 drivers/spi/spi-rockchip.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 1a81fd94b439..8bb55d52d346 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -994,8 +994,10 @@ static int rockchip_spi_runtime_resume(struct device *dev)
 		return ret;
 
 	ret = clk_prepare_enable(rs->spiclk);
-	if (ret < 0)
+	if (ret < 0) {
 		clk_disable_unprepare(rs->apb_pclk);
+		return ret;
+	}
 
 	return 0;
 }
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
