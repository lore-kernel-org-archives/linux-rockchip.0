Return-Path: <SRS0=bXWU=NM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96321C4338F
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Aug 2021 12:50:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C1ED261242
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Aug 2021 12:50:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C1ED261242
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jECSBnJT6eb/cYBxp2SiOs76cWRTSuz5RIbZjMO04/8=; b=L6V+JiDlfnZWNs
	LHZg4/N01un+HqOM6n+KDTs+0+5muQxTzmuYka0SG74zvzyenpidVddAiolJ0q8B+4Z/rK9pn7Rum
	NoTJXWpsLMegbqJQGP/UAnj9C+jfUnzgfzas1io3zXOkRWZpKnieq0XAwYJdOAJFD5D/NegRn1xGJ
	u1m8cZ92NHgg+/cj4Cb2aD0DkTfo0BFL6/2QEOArrXKXkp7L//kbuZiz0sXR6uLaS5e3ieS4iYNv2
	YJ/fg/MZd6wmCsK/Xs5UQCuMY54mpBRH1RMIkYwZNn2pSPv486KYGOsagfUWYcI25kRTEjh/XK18m
	hsxWgDd9l3+gZsECb1Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mHQRo-00CoD0-0d; Sat, 21 Aug 2021 12:50:04 +0000
Received: from lucky1.263xmail.com ([211.157.147.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mHQRa-00CoBR-TI; Sat, 21 Aug 2021 12:49:52 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id C3B4BD772A;
 Sat, 21 Aug 2021 20:49:43 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P704T139881080669952S1629550173496538_; 
 Sat, 21 Aug 2021 20:49:34 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <c71ec8a5484971490f56a865178e1d83>
X-RL-SENDER: jon.lin@rock-chips.com
X-SENDER: jon.lin@rock-chips.com
X-LOGIN-NAME: jon.lin@rock-chips.com
X-FST-TO: heiko@sntech.de
X-RCPT-COUNT: 7
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Jon Lin <jon.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Jon Lin <jon.lin@rock-chips.com>, Mark Brown <broonie@kernel.org>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] spi: rockchip-sfc: Remove redundant IO operations
Date: Sat, 21 Aug 2021 20:49:25 +0800
Message-Id: <20210821124925.6066-1-jon.lin@rock-chips.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210821_054951_265271_AC82C0A0 
X-CRM114-Status: GOOD (  11.86  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Coherent dma buffer is uncached and memcpy is enough.

Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
---

 drivers/spi/spi-rockchip-sfc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-rockchip-sfc.c b/drivers/spi/spi-rockchip-sfc.c
index 7c4d47fe80c2..81154a8836fc 100644
--- a/drivers/spi/spi-rockchip-sfc.c
+++ b/drivers/spi/spi-rockchip-sfc.c
@@ -453,7 +453,7 @@ static int rockchip_sfc_xfer_data_dma(struct rockchip_sfc *sfc,
 	dev_dbg(sfc->dev, "sfc xfer_dma len=%x\n", len);
 
 	if (op->data.dir == SPI_MEM_DATA_OUT)
-		memcpy_toio(sfc->buffer, op->data.buf.out, len);
+		memcpy(sfc->buffer, op->data.buf.out, len);
 
 	ret = rockchip_sfc_fifo_transfer_dma(sfc, sfc->dma_buffer, len);
 	if (!wait_for_completion_timeout(&sfc->cp, msecs_to_jiffies(2000))) {
@@ -462,7 +462,7 @@ static int rockchip_sfc_xfer_data_dma(struct rockchip_sfc *sfc,
 	}
 	rockchip_sfc_irq_mask(sfc, SFC_IMR_DMA);
 	if (op->data.dir == SPI_MEM_DATA_IN)
-		memcpy_fromio(op->data.buf.in, sfc->buffer, len);
+		memcpy(op->data.buf.in, sfc->buffer, len);
 
 	return ret;
 }
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
