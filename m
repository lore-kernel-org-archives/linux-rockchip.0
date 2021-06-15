Return-Path: <SRS0=7T5N=LJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63BD0C48BDF
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jun 2021 19:39:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AF10C61105
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jun 2021 19:39:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AF10C61105
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fk09t/TAvo1rofcrmbb73aAEF5bd5raLkh1R321NYNM=; b=NHzvmOp0xxx9Vd
	tFBXdcwK7bqO4i2ufpmaONqxGa9hyh2TlkCANe+dqSnwgsLgAZXEE52jWvMgJPxAn8knoeZ82gaEW
	H+3eSWeHkmvfRSNMxBu+KzQYydI3qx9qmCypmL5laXrHfifyAyhyyaVMEEI+oD1P1cEBs0pYxnCBx
	bop9+K6qVt8dL2H3oW9B/4XjECLnkVRZbFt2cYlEjxMHuLgbGGw6SipTTI7C1jIPsgT+MM1Wga5Rr
	4UFOHr2kyUTQxZKcohvO7WzFpzrsxU+yUHikQ2tG5HfputNLWWh6Qm+FGWqgmoUX1dFVrgR9RiLQa
	8Uu55oKsStKKOfvf03bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltEu9-002W5x-Uq; Tue, 15 Jun 2021 19:39:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9Nt-000E8e-NV; Tue, 15 Jun 2021 13:45:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=References:In-Reply-To:Message-Id:Date
 :Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=gKhX9cC49WczUWt+H4NeMYIvW7vvxB/hCICm7nJlcpo=; b=NVJ+rMnJ7Yp9Q/J8GiCWFTopqp
 K4YBDF+4Ki5vIQcFRZYvo7WvrkwFs5upCsuc7RUNj5jsjdZZ5LZ0kozdrLEjGcVPiliuiB6tYWckt
 TnB9DLD0RV9jJ4DZpx5rz1x7PAjUprt3wQ8s7aWRn4KkahjAuwg7VH5bfr4fzC/viJ47mP3Ts9qR+
 WA2GwkS2kjEY/UVSp0HlzxyDumwN7b9hNaRQc5YG9JsXyeZCRNkBXmYinjtDzu8TcbuTQwyatYDqi
 WWm86k1rF8Pg5/lVqq4vLw+0D/b7rPff0hFDbAEGtT+QzzlWmEZp2cTxBKhC6K0wvVNaM9DL/70h3
 9iUopR1A==;
Received: from lucky1.263xmail.com ([211.157.147.132])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lszoG-007IV7-0M; Tue, 15 Jun 2021 03:32:24 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id 87735F4E69;
 Tue, 15 Jun 2021 11:32:20 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P16485T139918414178048S1623727934928454_; 
 Tue, 15 Jun 2021 11:32:20 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <efe39b4914dd38387ca7606caba4bd78>
X-RL-SENDER: jon.lin@rock-chips.com
X-SENDER: jon.lin@rock-chips.com
X-LOGIN-NAME: jon.lin@rock-chips.com
X-FST-TO: broonie@kernel.org
X-RCPT-COUNT: 9
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Jon Lin <jon.lin@rock-chips.com>
To: broonie@kernel.org
Cc: jon.lin@rock-chips.com, heiko@sntech.de, robh+dt@kernel.org,
 linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: [PATCH v8 4/6] spi: rockchip: Wait for STB status in slave mode
 tx_xfer
Date: Tue, 15 Jun 2021 11:32:11 +0800
Message-Id: <20210615033213.14241-5-jon.lin@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210615033213.14241-1-jon.lin@rock-chips.com>
References: <20210615033213.14241-1-jon.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_043223_186780_C14A8B6C 
X-CRM114-Status: GOOD (  13.58  )
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

After ROCKCHIP_SPI_VER2_TYPE2, SR->STB is a more accurate judgment
bit for spi slave transmition.

Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
---

Changes in v8: None
Changes in v7: None
Changes in v6: None
Changes in v5: None
Changes in v4: None
Changes in v3: None

 drivers/spi/spi-rockchip.c | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 0887b19ef3ad..950d3bce443b 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -116,13 +116,14 @@
 #define BAUDR_SCKDV_MIN				2
 #define BAUDR_SCKDV_MAX				65534
 
-/* Bit fields in SR, 5bit */
-#define SR_MASK						0x1f
+/* Bit fields in SR, 6bit */
+#define SR_MASK						0x3f
 #define SR_BUSY						(1 << 0)
 #define SR_TF_FULL					(1 << 1)
 #define SR_TF_EMPTY					(1 << 2)
 #define SR_RF_EMPTY					(1 << 3)
 #define SR_RF_FULL					(1 << 4)
+#define SR_SLAVE_TX_BUSY				(1 << 5)
 
 /* Bit fields in ISR, IMR, ISR, RISR, 5bit */
 #define INT_MASK					0x1f
@@ -197,13 +198,19 @@ static inline void spi_enable_chip(struct rockchip_spi *rs, bool enable)
 	writel_relaxed((enable ? 1U : 0U), rs->regs + ROCKCHIP_SPI_SSIENR);
 }
 
-static inline void wait_for_idle(struct rockchip_spi *rs)
+static inline void wait_for_tx_idle(struct rockchip_spi *rs, bool slave_mode)
 {
 	unsigned long timeout = jiffies + msecs_to_jiffies(5);
 
 	do {
-		if (!(readl_relaxed(rs->regs + ROCKCHIP_SPI_SR) & SR_BUSY))
-			return;
+		if (slave_mode) {
+			if (!(readl_relaxed(rs->regs + ROCKCHIP_SPI_SR) & SR_SLAVE_TX_BUSY) &&
+			    !((readl_relaxed(rs->regs + ROCKCHIP_SPI_SR) & SR_BUSY)))
+				return;
+		} else {
+			if (!(readl_relaxed(rs->regs + ROCKCHIP_SPI_SR) & SR_BUSY))
+				return;
+		}
 	} while (!time_after(jiffies, timeout));
 
 	dev_warn(rs->dev, "spi controller is in busy state!\n");
@@ -383,7 +390,7 @@ static void rockchip_spi_dma_txcb(void *data)
 		return;
 
 	/* Wait until the FIFO data completely. */
-	wait_for_idle(rs);
+	wait_for_tx_idle(rs, ctlr->slave);
 
 	spi_enable_chip(rs, false);
 	spi_finalize_current_transfer(ctlr);
@@ -545,7 +552,7 @@ static int rockchip_spi_config(struct rockchip_spi *rs,
 	else
 		writel_relaxed(rs->fifo_len / 2 - 1, rs->regs + ROCKCHIP_SPI_RXFTLR);
 
-	writel_relaxed(rs->fifo_len / 2, rs->regs + ROCKCHIP_SPI_DMATDLR);
+	writel_relaxed(rs->fifo_len / 2 - 1, rs->regs + ROCKCHIP_SPI_DMATDLR);
 	writel_relaxed(rockchip_spi_calc_burst_size(xfer->len / rs->n_bytes) - 1,
 		       rs->regs + ROCKCHIP_SPI_DMARDLR);
 	writel_relaxed(dmacr, rs->regs + ROCKCHIP_SPI_DMACR);
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
