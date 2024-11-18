Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81C65D4922E
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Nov 2024 14:57:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J2GHlHxYC6bQMduSHd8PxTVdDo/Vfj769aBvt2pdtvo=; b=U0Fxup4OygFptm
	hndD3gQqP+dt8SZjar4K21+muDjvHCnhCc8OnQmTA7H4kHzeke3LAPdfvPXWN++LzYD5kN9CtSB3s
	2SI+yCFrcSFmFbqh4CAqa9/HJXiHM1VsMlzbPmXMCexWFyjKWkMWcJelbP3VudB3cgNSocOCLshCT
	hSquHiNu/nI4lXGCTraWyhldA8UNyONSZ6vxogeGQObwHSEgc5hW6n6aPAQNLcKmHGvkHFJLVNy7P
	0PdXULI2bDEKn9toIjOvuG8aJrcfNrAlNyo4vxeAEoIHfQSjN7z7Mu+9sJPtHrxIy/0fsME0NXOJh
	mRrgJDoG81E22JJqtb+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tD3Bb-00000009ppZ-0kKA;
	Mon, 18 Nov 2024 14:57:07 +0000
Received: from mail-m121150.qiye.163.com ([115.236.121.150])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tD3BX-00000009pnA-2IUi;
	Mon, 18 Nov 2024 14:57:05 +0000
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 317a7f35;
	Mon, 18 Nov 2024 22:56:48 +0800 (GMT+08:00)
From: Jon Lin <jon.lin@rock-chips.com>
To: broonie@kernel.org
Cc: linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	heiko@sntech.de,
	jon.lin@rock-chips.com,
	linux-arm-kernel@lists.infradead.org,
	linux-spi@vger.kernel.org
Subject: [PATCH] spi: rockchip-sfc: Embedded DMA only support 4B aligned address
Date: Mon, 18 Nov 2024 22:56:46 +0800
Message-Id: <20241118145646.2609039-1-jon.lin@rock-chips.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhoaTFZCT01PTh4ZSEpOSk5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a933fc6ba8d09d9kunm317a7f35
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6P006SBw*SzIhQ1ELSzkPMyov
	GBgwCkxVSlVKTEhKQk9KQ0tCTU1PVTMWGhIXVREUFVUXEhU7CRQYEFYYExILCFUYFBZFWVdZEgtZ
	QVlOQ1VJSVVMVUpKT1lXWQgBWUFDQ083Bg++
DKIM-Signature: a=rsa-sha256;
	b=fhKzbRWaLMBVXGi5F1pcCy/LUI0n+JSbCyVA5a8UCaMGcee5HZb4Zw3KEK74/cUF6oOxDzAJB/Mo6VzGT9cTygrEXl87Deas3Xwkx9wSNw/7e1NFRQ/Xtnf5UsA+posFPdKhOsGodusVnV5SmP5C8KpDEs1ICFKYMi+tNV6vXCQ=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=orMLRxEgPaCVt+DUcYSRwYW0pCq8JjJqS0YZ0bC7OiQ=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241118_065704_142802_81DA00F1 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
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

Controller limitations.

Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
---

 drivers/spi/spi-rockchip-sfc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/spi-rockchip-sfc.c b/drivers/spi/spi-rockchip-sfc.c
index 316e3db88492..69d0f2175568 100644
--- a/drivers/spi/spi-rockchip-sfc.c
+++ b/drivers/spi/spi-rockchip-sfc.c
@@ -503,7 +503,7 @@ static int rockchip_sfc_exec_mem_op(struct spi_mem *mem, const struct spi_mem_op
 	rockchip_sfc_adjust_op_work((struct spi_mem_op *)op);
 	rockchip_sfc_xfer_setup(sfc, mem, op, len);
 	if (len) {
-		if (likely(sfc->use_dma) && len >= SFC_DMA_TRANS_THRETHOLD) {
+		if (likely(sfc->use_dma) && len >= SFC_DMA_TRANS_THRETHOLD && !(len & 0x3)) {
 			init_completion(&sfc->cp);
 			rockchip_sfc_irq_unmask(sfc, SFC_IMR_DMA);
 			ret = rockchip_sfc_xfer_data_dma(sfc, op, len);
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
