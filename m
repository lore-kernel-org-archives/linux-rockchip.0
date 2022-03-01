Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BB8DC43217
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Mar 2022 20:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6xHnbbsrkyUg3j3gQbRRlOGB0QSapXxRgHn+MOgWbuk=; b=jbq3n9KvySfNAY
	WrGxHO7bNZMP64QM13p4aKxEx02ptUBvTVSOYnUxpjwMmLwYI7WM+N79Zjjv+hlV2OBFDX+AuEjLC
	OGQy41NWbjoKlrIeKVG/E+cmoJJ+JXi4+znjiIpbo88SZ1mBb21JG4WF+yXD11Nm87yULXwkrteja
	D/x8skkU+TeuT3lcaR+2dv4O2xXaj8KZBfkXlzfZUi5dI3xLxFeZW9w2F0/Ng7/BS7bIEWk/AVToy
	C+NY+D8TsM1Ug5JAOoMxNscbkxF4zNB9erTWjWka1OumioAYA8Ld+GuGCCJxmRjzByc4nOeJ6mrSS
	FIjbqOJKtrlfxUgvdOYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nP8y7-000QTc-6I; Tue, 01 Mar 2022 20:19:35 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nP8xU-000QBB-SC; Tue, 01 Mar 2022 20:18:59 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 921B6B81D40;
 Tue,  1 Mar 2022 20:18:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E384C340F1;
 Tue,  1 Mar 2022 20:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646165934;
 bh=SR4RH4k8tOzLxCwm6G9PkuTC3aqNtihuYpxsO+LqONo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kR3LR/+vAIK0pzb9hP5h7M3WFfDqTi1kP5GJh/0CvYL/xY0+hKfyAz/Q8dW9Joesm
 0Yd3D/jegwkSnNIuRwO16dOnemRmeCSgK2ix9G3qXwe5tLyz9o9DDsJqg/V39jP/5H
 DIdYLdCpkCwH2clIHbHG/dZO2ixFO4pC485MSOsIX0mhJkX2RgfWlX2Vbclz/eENpW
 NZAUf3z04+JZxVRxP0Idknii2tx3TU4/b5m/32IGkawiXh8K+DiHGggXT+c/IN0Lh6
 0rlIiWBMnovxZSO4jmsk7oET26szJcK7KP0xNzflryT48QqtYPu/xhxKjkQtlMrNQt
 pRKyduUGQP7Bw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jon Lin <jon.lin@rock-chips.com>, Mark Brown <broonie@kernel.org>,
 Sasha Levin <sashal@kernel.org>, heiko@sntech.de,
 linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.10 04/14] spi: rockchip: terminate dma transmission
 when slave abort
Date: Tue,  1 Mar 2022 15:18:16 -0500
Message-Id: <20220301201833.18841-4-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220301201833.18841-1-sashal@kernel.org>
References: <20220301201833.18841-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_121857_083011_AD134C72 
X-CRM114-Status: GOOD (  11.42  )
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

From: Jon Lin <jon.lin@rock-chips.com>

[ Upstream commit 80808768e41324d2e23de89972b5406c1020e6e4 ]

After slave abort, all DMA should be stopped, or it will affect the
next transmission and maybe abort again.

Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
Link: https://lore.kernel.org/r/20220216014028.8123-3-jon.lin@rock-chips.com
Signed-off-by: Mark Brown <broonie@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/spi/spi-rockchip.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index a594310754111..a9f97023d5a00 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -567,6 +567,12 @@ static int rockchip_spi_slave_abort(struct spi_controller *ctlr)
 {
 	struct rockchip_spi *rs = spi_controller_get_devdata(ctlr);
 
+	if (atomic_read(&rs->state) & RXDMA)
+		dmaengine_terminate_sync(ctlr->dma_rx);
+	if (atomic_read(&rs->state) & TXDMA)
+		dmaengine_terminate_sync(ctlr->dma_tx);
+	atomic_set(&rs->state, 0);
+	spi_enable_chip(rs, false);
 	rs->slave_abort = true;
 	complete(&ctlr->xfer_completion);
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
