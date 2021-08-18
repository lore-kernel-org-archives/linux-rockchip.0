Return-Path: <SRS0=TfDj=NJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAB35C4320A
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Aug 2021 14:11:18 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8B47A60ED5
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Aug 2021 14:11:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8B47A60ED5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=canonical.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=y+7E80QgpbzgGS8c6fXpkTK//mSjL4CGpWXugwuySOE=; b=sm85Rx7zXmIjuA
	qexJgmMtqq7WAuBVkxeyuWuur8gNW89tTgWdgtFqruAXXnUbjGBLM6Glb/H4W25ApVhE8F47rKvXu
	l/oF+fOBpFJfQJ7symujlyMsn+LJpZpIVadKu0qdciUH/CL2F4d3NFVspHvzPsx3xRCmpXajU3PcF
	Wkx8C0d8nsOjAKOMh0/KBKbV4qMonyaYdXqk4IhrrJJ2dAjQjEhFU7tmN1U5fD2krt19X0rq5a/ET
	7obGgOAHHP9iNYw4xLD+xjQE1iGLIf2U6oQ8w/MEAtCW/961vyie098cQ8BLKftVFDbSOBCeeP/M0
	dhHVn3HipgCYyfSEiG4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGMHi-005p95-Gk; Wed, 18 Aug 2021 14:11:14 +0000
Received: from smtp-relay-canonical-0.canonical.com ([185.125.188.120])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGMHS-005p5Q-V9; Wed, 18 Aug 2021 14:11:03 +0000
Received: from localhost (1.general.cking.uk.vpn [10.172.193.212])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPSA id A8DCE40CCD; 
 Wed, 18 Aug 2021 14:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1629295851;
 bh=G/MIHNvD6MdN21TmI/GGdS5FVLKTw1VFGnxzch1O72o=;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type;
 b=hS5KjdpwPEmHj9ge/Yxw8bSV9FJs4NIIHk3VGgwrMATFRFM/xpT/bZEVvEPhUoWmt
 JBeKekHTZy/XajcJckInkK8FwpJDL6k7Qi+dFLAv0VQbiM65XDhhTkiGtpkDUXqfwy
 /fpni7Q7J/UBCnCdL9sBGMIYUleC4ioG7CxDOOUxrN9Jav+nU37bShHtQeRxI4v1H8
 MIcaeMniTPTBJjVA+r82SGGDSizfoJlm8YF99eVmVLuswWXaXg6T9XkAVe7ZNy/8on
 uUHnlBHSU96rndoYoFsSyNPfngxkvvXxvpVV7xG35TJvkIS2FkJidCRvuPEseZJXU6
 v2zFXU6OfyJfQ==
From: Colin King <colin.king@canonical.com>
To: Mark Brown <broonie@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Chris Morgan <macromorgan@hotmail.com>, Jon Lin <jon.lin@rock-chips.com>,
 linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH][next] spi: rockchip-sfc: Fix assigned but never used return
 error codes
Date: Wed, 18 Aug 2021 15:10:51 +0100
Message-Id: <20210818141051.36320-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210818_071059_313660_B7E8FE45 
X-CRM114-Status: GOOD (  12.40  )
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

From: Colin Ian King <colin.king@canonical.com>

Currently there are two places where the error return variable ret is
being assigned -ETIMEDOUT on timeout errors and this value is not
being returned. Fix this by returning -ETIMEDOUT rather than redundantly
assiging it to ret.

Addresses-Coverity: ("Unused value")
Fixes: 0b89fc0a367e ("spi: rockchip-sfc: add rockchip serial flash controller")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/spi/spi-rockchip-sfc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-rockchip-sfc.c b/drivers/spi/spi-rockchip-sfc.c
index 7c4d47fe80c2..827e205c5340 100644
--- a/drivers/spi/spi-rockchip-sfc.c
+++ b/drivers/spi/spi-rockchip-sfc.c
@@ -257,7 +257,7 @@ static int rockchip_sfc_wait_txfifo_ready(struct rockchip_sfc *sfc, u32 timeout_
 	if (ret) {
 		dev_dbg(sfc->dev, "sfc wait tx fifo timeout\n");
 
-		ret = -ETIMEDOUT;
+		return -ETIMEDOUT;
 	}
 
 	return (status & SFC_FSR_TXLV_MASK) >> SFC_FSR_TXLV_SHIFT;
@@ -274,7 +274,7 @@ static int rockchip_sfc_wait_rxfifo_ready(struct rockchip_sfc *sfc, u32 timeout_
 	if (ret) {
 		dev_dbg(sfc->dev, "sfc wait rx fifo timeout\n");
 
-		ret = -ETIMEDOUT;
+		return -ETIMEDOUT;
 	}
 
 	return (status & SFC_FSR_RXLV_MASK) >> SFC_FSR_RXLV_SHIFT;
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
