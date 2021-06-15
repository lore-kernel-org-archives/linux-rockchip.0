Return-Path: <SRS0=7T5N=LJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED08CC48BE5
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jun 2021 18:32:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 65C95610F7
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jun 2021 18:32:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 65C95610F7
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gokl5fOYf9od4HNwMihHWU4daK7PS5qkEDFQn02lMVk=; b=XCWLBbMmF6AWpf
	qZpuzRLDNPzdfySMJO2H1+58x34Ze8jq20toUYfNwsw5XHWFK8ZZk+UIGzteSMEpoZoV3He59VJyM
	cYA8cKAbdoPqLGmWmakU0SdUl5hhgWnQ9iwRhI0tNKDv6acRsETPHn8EME1z0Zni244zB2BVwTXqH
	DxNmg8FnZ+YoInJI2G6AQhHxjPgKlEXSPH7Vuoi6Ib+8o9meRud4OP9Xwb0TC7Jdhfou8rNDT1bOP
	nALnLQQCbDIYCgIVeY9U643h4ETM9g7QS5roEBAqtX0riX6Y/a4lLBQHaodcwlizGUazs0lI83A36
	ImfONDojPm75gEPsvhnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltDre-0029NX-RW; Tue, 15 Jun 2021 18:32:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9Nz-000DDm-1g; Tue, 15 Jun 2021 13:45:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=References:In-Reply-To:Message-Id:Date
 :Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=T4odna+TubC4ugUHLLg68WYke12C8Y7/s4Xt+SunhKI=; b=YbgDEkCkY5FZW5xD3QaQgQoTam
 GLp9cETUxsMJakPLprOs+4dVPQq4LnG36z0lbNO3H+Y/14+Fhw3CeDS7AvC1pH7gP9AmwrKnANHxy
 iTGzEIevoey++Gsh6J3GltwdoSZ6V1qzGjNwRD4ZTJ4eYODrsW28HIbBKNmGcyRbGS1MXL2ij+ImW
 +mZpV16qC2PxUCp/yGbOF3ioONsZBIWlIDhvRcVb24XeF1HVuRiRzMwzihUcFr7Ld+ImtGIpU9p8O
 wj8LmAbDGn/6GI2wPlW7PhOajvDc7WdFaypcOYakrE++KVTT+2Si2z7qlffxQfeWlohKNrFtOyhKJ
 LSDGvXIQ==;
Received: from lucky1.263xmail.com ([211.157.147.132])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lszku-007IOs-Gm; Tue, 15 Jun 2021 03:28:57 +0000
Received: from localhost (unknown [192.168.167.70])
 by lucky1.263xmail.com (Postfix) with ESMTP id 6E5E3F50C3;
 Tue, 15 Jun 2021 11:28:53 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P4790T140158307387136S1623727723794355_; 
 Tue, 15 Jun 2021 11:28:46 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <ae4d96e07bc08feb25427f3b72d05146>
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
Subject: [PATCH v7 6/6] spi: rockchip: Support SPI_CS_HIGH
Date: Tue, 15 Jun 2021 11:28:42 +0800
Message-Id: <20210615032842.25529-2-jon.lin@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210615032842.25529-1-jon.lin@rock-chips.com>
References: <20210615032842.25529-1-jon.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_042855_673241_D1CA8959 
X-CRM114-Status: GOOD (  13.78  )
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

Changes in v7: None
Changes in v6: None
Changes in v5: None
Changes in v4: None
Changes in v3: None

 drivers/spi/spi-rockchip.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 48b666d42d8a..d64cca34eef7 100644
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
