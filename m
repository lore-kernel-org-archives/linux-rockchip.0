Return-Path: <SRS0=vLt7=LB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6873C4743F
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 06:45:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 88D2F611C0
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 06:45:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 88D2F611C0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MqVTlg7vlYYCnGyryBl5xfXtiikpT+J4q/ArDikkU20=; b=I8KTILXAsDaf26
	S94H7jsxE5KY6LyPh8M8qy+bp5HIGCfAGeYSXmi+PpdgYTVMDAT7bBtVPHHYfFbHCNyBxfnfXnKem
	HED56jH9VjKBHAJsvfbln07U1/meoyoV147+ky+4OeaAAQplCGgpUggrmh3ADyxrrRBPR5YoWlee9
	rSGVcrhmqMnghgbycJXqggLi0o7V2VPQ+8lCqVVX+hj7B/c4MetgNIxMohLcJ+zPMGNZvkcLk5y9m
	rwfkjyAHD5+xVGw+LlR6O5EYagYqqpKdAr/97hQyr/Z5CndjUgMA7x3eFuNYvCV7ougDGHJo5KRkI
	vJKoPLD7oxz9pNQGRlKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lq90k-001msK-62; Mon, 07 Jun 2021 06:45:22 +0000
Received: from lucky1.263xmail.com ([211.157.147.135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lq90C-001mhT-Qe; Mon, 07 Jun 2021 06:44:50 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id C5A55AD0D3;
 Mon,  7 Jun 2021 14:44:45 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P32529T140357020903168S1623048283531022_; 
 Mon, 07 Jun 2021 14:44:46 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <6a353039b07003a315a0ea3022898f88>
X-RL-SENDER: jon.lin@rock-chips.com
X-SENDER: jon.lin@rock-chips.com
X-LOGIN-NAME: jon.lin@rock-chips.com
X-FST-TO: broonie@kernel.org
X-RCPT-COUNT: 7
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Jon Lin <jon.lin@rock-chips.com>
To: broonie@kernel.org
Cc: jon.lin@rock-chips.com, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 6/6] spi: rockchip: Support SPI_CS_HIGH
Date: Mon,  7 Jun 2021 14:44:40 +0800
Message-Id: <20210607064440.31616-2-jon.lin@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210607064440.31616-1-jon.lin@rock-chips.com>
References: <20210607063448.29589-1-jon.lin@rock-chips.com>
 <20210607064440.31616-1-jon.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210606_234449_107563_E869E0E4 
X-CRM114-Status: GOOD (  13.70  )
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

1.Add standard spi-cs-high support
2.Refer to spi-controller.yaml for details

Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
---

Changes in v4: None
Changes in v3: None

 drivers/spi/spi-rockchip.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index be7d90e18a3f..4b08be25c33d 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -108,6 +108,8 @@
 #define CR0_OPM_MASTER				0x0
 #define CR0_OPM_SLAVE				0x1
 
+#define CR0_SOI_OFFSET				23
+
 #define CR0_MTM_OFFSET				0x21
 
 /* Bit fields in SER, 2bit */
@@ -238,7 +240,7 @@ static void rockchip_spi_set_cs(struct spi_device *spi, bool enable)
 {
 	struct spi_controller *ctlr = spi->controller;
 	struct rockchip_spi *rs = spi_controller_get_devdata(ctlr);
-	bool cs_asserted = !enable;
+	bool cs_asserted = spi->mode & SPI_CS_HIGH ? enable : !enable;
 
 	/* Return immediately for no-op */
 	if (cs_asserted == rs->cs_asserted[spi->chip_select])
@@ -509,6 +511,8 @@ static int rockchip_spi_config(struct rockchip_spi *rs,
 	cr0 |= (spi->mode & 0x3U) << CR0_SCPH_OFFSET;
 	if (spi->mode & SPI_LSB_FIRST)
 		cr0 |= CR0_FBM_LSB << CR0_FBM_OFFSET;
+	if (spi->mode & SPI_CS_HIGH)
+		cr0 |= BIT(spi->chip_select) << CR0_SOI_OFFSET;
 
 	if (xfer->rx_buf && xfer->tx_buf)
 		cr0 |= CR0_XFM_TR << CR0_XFM_OFFSET;
@@ -787,7 +791,7 @@ static int rockchip_spi_probe(struct platform_device *pdev)
 
 	ctlr->auto_runtime_pm = true;
 	ctlr->bus_num = pdev->id;
-	ctlr->mode_bits = SPI_CPOL | SPI_CPHA | SPI_LOOP | SPI_LSB_FIRST;
+	ctlr->mode_bits = SPI_CPOL | SPI_CPHA | SPI_LOOP | SPI_LSB_FIRST | SPI_CS_HIGH;
 	if (slave_mode) {
 		ctlr->mode_bits |= SPI_NO_CS;
 		ctlr->slave_abort = rockchip_spi_slave_abort;
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
