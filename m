Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70DF4606A325
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Nov 2026 13:59:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=lzmq2ZsA;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=OxuEj42x
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=a9F1gcPYq1llEUqrcF3PnXCsXH/Rma2W1QRCmdUxTZU=; b=lzmq2ZsAvYkwAvAdpaiJy4qGAN
	2Nx2evN4CpS7Ts7Ru5FauDpEZnJVqiUI1iLCi0QG4oqFtfyn3KUdiOURbpk186O9jXGn+thacFdzE
	4R/3Fnj3w2EGbj2r7D4+p1jFFVxmy7ZU21/ORKSPKStW9aU83pCQUHE3LaNYma2osA6CrlSUXHwOa
	25JJvzUxYkHRuPRj9FZzLQGHcmd/RIZid8jTiKRrp1JaQGU/muX5ZrfnXDlFP4gSxKuLUxdjTtAIc
	Kaspe4i5TWugFCpSKrx7UN/ytDQ61T+jpkqyrXphnqw0XoaH0QZD7MUCK4ajvVnCCMeaVJF6Pgcfn
	G7vNYWIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU2fI-0000000C9eT-2jYV;
	Thu, 19 Nov 2026 13:59:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU2ef-0000000C9AD-3ZOg;
	Thu, 19 Nov 2026 13:58:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=MfVmbNiMRP2tKpvH50ByGISUxc8c1XPU+cH8XaIhIrc=; b=OxuEj42xyrrZIhlmeXAfRWbuUa
	ZR0zQyqgyjAOcR+z5sOU+agBOHl+82XdkMA2vebavYrQINvBuiWt3/Ac3LHMnukMKHZr2hhe53+i7
	xqhIDyjOmVTaMYn3pB7sFJsDRRTCG4Ke7kRnY1e6mw9e2Zg4cYeJFeh5dQG9pM1aQ/Fd3VxbZoP0v
	2HShQbqB7GtSUlyoP6mf6uO58IHEwwJkvk8zipztqJpDxlgc0uChUJvb6O5hgPAI/1DLH0+VdW4xq
	od8TYegFjOQxsOeLimbk7db285fXw/0B4fpzIDTObrj7UCrTAgEwQQbOw/q0wjBRaIRKLIzdfBkh9
	J37QCeNw==;
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
Subject: [PATCH v4 5/6] spi: rockchip: Fix runtime resume error handling
Date: Thu, 19 Nov 2026 14:58:07 +0100
Message-ID: <20261119135808.2377849-6-heiko@sntech.de>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261119135808.2377849-1-heiko@sntech.de>
References: <20261119135808.2377849-1-heiko@sntech.de>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261119_055826_023065_9C7433DB 
X-CRM114-Status: GOOD (  13.92  )
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
index f8d6cea2f3da..cc6bd7d8f877 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -992,8 +992,10 @@ static int rockchip_spi_runtime_resume(struct device *dev)
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
