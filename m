Return-Path: <SRS0=zRVM=NS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B7F1C432BE
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Aug 2021 05:04:50 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3D75760F39
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Aug 2021 05:04:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3D75760F39
Authentication-Results: mail.kernel.org; dmarc=fail (p=reject dis=none) header.from=manjaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tv0OzVhZHn7kmJpgrWuqhs7L3XQ117I0u//LdFPfc4k=; b=VxNZWZJsgsyiD/
	KW5VidBN/z/YYTg5iSD5xjszPuGB+EoaMJdx01t2YvdlOOhdHRoQLHUic5/kGHSUHhmHNHzAU9Zbh
	FabhPiEQ1RdtXt8pAb+KbjyZkA1P3mjWFwHhwgmh7ZpBqLH8Umc/K61mlAK8AoKKbe0zOCZ9cFrcP
	L9UoJ+mbOQADovZEl1ybuwnzYmP3m1jnevWx5e2tYjxSkulZJnyGbnbOdQbnFhrH+9yjgNrQD3t7Z
	F2PfS189TpVlHuZ/+HOt67hPMbEggWfkLIua/JW4E2Z7zl1YVwjc/R9NEp136/2v8si0WN3h2BJyk
	dBK54jgfQneS9GKw6hJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mJU2o-00Ba1B-1i; Fri, 27 Aug 2021 05:04:46 +0000
Received: from mail.manjaro.org ([116.203.91.91])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mJU2U-00BZxG-8i; Fri, 27 Aug 2021 05:04:30 +0000
From: Tobias Schramm <t.schramm@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
 t=1630040663;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=CCGe3l7vX7fN0xeU/nOfzM7VX7yQ/ff/as6wuEAK9KE=;
 b=LjpDAzCiCaVwFIh4DfutFmxf9GqvTbwqKiyGitq+ye1tCOhDH8F9LPEGW0zDNbCvM07E9z
 eyRekW34kHW87+7Nt6LDGMn12tDeIYrVYd81jt9swNaHFBKgA/56hIJ3uiDDO5n0oZ+OIB
 F4riSGuyThtwOGfIFVKyOgKhA6UHtr3q0ZmjEeOjnZoKYUEnU3F7vK//V6UAwGGDprdv/f
 gIsukLETAWJNgwTx8rZcJuwCCa2mA7Jhm46pBPvqkeArOvMFmdX+Dib2l/dDm4qbpSwsNl
 maIlDaZjL2Yejpn1YVV68XA5HsE9hEwIAbOe/2IoyO/rFOBYyIfUbRm1ofFpUA==
To: linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Mark Brown <broonie@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Tobias Schramm <t.schramm@manjaro.org>
Subject: [PATCH] spi: rockchip: handle zero length transfers without timing out
Date: Fri, 27 Aug 2021 07:03:57 +0200
Message-Id: <20210827050357.165409-1-t.schramm@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
 auth=pass smtp.auth=t.schramm@manjaro.org smtp.mailfrom=t.schramm@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210826_220426_653262_BD5827BA 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
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

Previously zero length transfers submitted to the Rokchip SPI driver would
time out in the SPI layer. This happens because the SPI peripheral does
not trigger a transfer completion interrupt for zero length transfers.

Fix that by completing zero length transfers immediately at start of
transfer.

Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
---
 drivers/spi/spi-rockchip.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 540861ca2ba3..553b6b9d0222 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -600,6 +600,12 @@ static int rockchip_spi_transfer_one(
 	int ret;
 	bool use_dma;
 
+	/* Zero length transfers won't trigger an interrupt on completion */
+	if (!xfer->len) {
+		spi_finalize_current_transfer(ctlr);
+		return 1;
+	}
+
 	WARN_ON(readl_relaxed(rs->regs + ROCKCHIP_SPI_SSIENR) &&
 		(readl_relaxed(rs->regs + ROCKCHIP_SPI_SR) & SR_BUSY));
 
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
