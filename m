Return-Path: <SRS0=rTbS=K7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2D4E7C47082
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Jun 2021 09:48:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EC9EF61242
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Jun 2021 09:48:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EC9EF61242
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MxEFARuAkCLJ0rxlecmwJ3Obpxche7sdpr/mp4b8NS8=; b=NoUwUuldW1HOZp
	7rjcCHbbSF8cNSQYqLXzOQQyXIDEBuVEu5GDsFhRYVB1V51R80n2R0JNrn+96HrSQek9tm+WzRKDt
	js5DNeqoPM0yk85W0mVJP4M90bfMsowvKpQ7xYT49v7ACEPA2M8aL+j3ND833ssLW1Vs92enfYkgf
	TtVLM+5PuQ2AxEinbyoYwWEWILLtbn605WKidptqAngKcBoEJeqAljV7am/BLfJBRfhK7/batpQkf
	bJ2jehh/t+UHNERszwR3qA7Gs+U9nAZI02ZozGenkYd9eo5IT2Bm1rZZz1eAJ2/mYYTpLotw7cpyP
	Q2Vx1T1TbXtrvQPYwLkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lpSuo-00GM7Z-8u; Sat, 05 Jun 2021 09:48:26 +0000
Received: from lucky1.263xmail.com ([211.157.147.134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lpStj-00GLmV-2A; Sat, 05 Jun 2021 09:47:22 +0000
Received: from localhost (unknown [192.168.167.105])
 by lucky1.263xmail.com (Postfix) with ESMTP id D6909C8515;
 Sat,  5 Jun 2021 17:47:09 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P26721T140686913419008S1622886424373318_; 
 Sat, 05 Jun 2021 17:47:10 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <dccf5c605e869723bc21836674667486>
X-RL-SENDER: jon.lin@rock-chips.com
X-SENDER: jon.lin@rock-chips.com
X-LOGIN-NAME: jon.lin@rock-chips.com
X-FST-TO: broonie@kernel.org
X-RCPT-COUNT: 8
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Jon Lin <jon.lin@rock-chips.com>
To: broonie@kernel.org
Cc: heiko@sntech.de, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@esmil.dk,
 Jon Lin <jon.lin@rock-chips.com>
Subject: [PATCH v3 5/8] spi: rockchip: Support cs-gpio
Date: Sat,  5 Jun 2021 17:46:56 +0800
Message-Id: <20210605094659.13507-5-jon.lin@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210605094659.13507-1-jon.lin@rock-chips.com>
References: <20210605094659.13507-1-jon.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210605_024721_027875_DC2F46C8 
X-CRM114-Status: GOOD (  17.28  )
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

1.Add standard cs-gpio support
2.Refer to spi-controller.yaml for details

Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
---
 drivers/spi/spi-rockchip.c | 61 ++++++++++++++++++++++++++++++++++----
 1 file changed, 56 insertions(+), 5 deletions(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 950d3bce443b..48b666d42d8a 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -6,6 +6,7 @@
 
 #include <linux/clk.h>
 #include <linux/dmaengine.h>
+#include <linux/gpio.h>
 #include <linux/interrupt.h>
 #include <linux/module.h>
 #include <linux/of.h>
@@ -157,7 +158,8 @@
  */
 #define ROCKCHIP_SPI_MAX_TRANLEN		0xffff
 
-#define ROCKCHIP_SPI_MAX_CS_NUM			2
+/* 2 for native cs, 2 for cs-gpio */
+#define ROCKCHIP_SPI_MAX_CS_NUM			4
 #define ROCKCHIP_SPI_VER2_TYPE1			0x05EC0002
 #define ROCKCHIP_SPI_VER2_TYPE2			0x00110002
 
@@ -191,6 +193,7 @@ struct rockchip_spi {
 	bool cs_asserted[ROCKCHIP_SPI_MAX_CS_NUM];
 
 	bool slave_abort;
+	bool gpio_requested;
 };
 
 static inline void spi_enable_chip(struct rockchip_spi *rs, bool enable)
@@ -245,11 +248,15 @@ static void rockchip_spi_set_cs(struct spi_device *spi, bool enable)
 		/* Keep things powered as long as CS is asserted */
 		pm_runtime_get_sync(rs->dev);
 
-		ROCKCHIP_SPI_SET_BITS(rs->regs + ROCKCHIP_SPI_SER,
-				      BIT(spi->chip_select));
+		if (gpio_is_valid(spi->cs_gpio))
+			ROCKCHIP_SPI_SET_BITS(rs->regs + ROCKCHIP_SPI_SER, 1);
+		else
+			ROCKCHIP_SPI_SET_BITS(rs->regs + ROCKCHIP_SPI_SER, BIT(spi->chip_select));
 	} else {
-		ROCKCHIP_SPI_CLR_BITS(rs->regs + ROCKCHIP_SPI_SER,
-				      BIT(spi->chip_select));
+		if (gpio_is_valid(spi->cs_gpio))
+			ROCKCHIP_SPI_CLR_BITS(rs->regs + ROCKCHIP_SPI_SER, 1);
+		else
+			ROCKCHIP_SPI_CLR_BITS(rs->regs + ROCKCHIP_SPI_SER, BIT(spi->chip_select));
 
 		/* Drop reference from when we first asserted CS */
 		pm_runtime_put(rs->dev);
@@ -632,6 +639,47 @@ static bool rockchip_spi_can_dma(struct spi_controller *ctlr,
 	return xfer->len / bytes_per_word >= rs->fifo_len;
 }
 
+static int rockchip_spi_setup(struct spi_device *spi)
+{
+
+	int ret = -EINVAL;
+	struct rockchip_spi *rs = spi_controller_get_devdata(spi->controller);
+
+	if (spi->cs_gpio == -ENOENT)
+		return 0;
+
+	if (!rs->gpio_requested && gpio_is_valid(spi->cs_gpio)) {
+		ret = gpio_request_one(spi->cs_gpio,
+				       (spi->mode & SPI_CS_HIGH) ?
+				       GPIOF_OUT_INIT_LOW : GPIOF_OUT_INIT_HIGH,
+				       dev_name(&spi->dev));
+		if (ret)
+			dev_err(&spi->dev, "can't request chipselect gpio %d\n",
+				spi->cs_gpio);
+		else
+			rs->gpio_requested = true;
+	} else {
+		if (gpio_is_valid(spi->cs_gpio)) {
+			int mode = ((spi->mode & SPI_CS_HIGH) ? 0 : 1);
+
+			ret = gpio_direction_output(spi->cs_gpio, mode);
+			if (ret)
+				dev_err(&spi->dev, "chipselect gpio %d setup failed (%d)\n",
+					spi->cs_gpio, ret);
+		}
+	}
+
+	return ret;
+}
+
+static void rockchip_spi_cleanup(struct spi_device *spi)
+{
+	struct rockchip_spi *rs = spi_controller_get_devdata(spi->controller);
+
+	if (rs->gpio_requested)
+		gpio_free(spi->cs_gpio);
+}
+
 static int rockchip_spi_probe(struct platform_device *pdev)
 {
 	int ret;
@@ -706,6 +754,7 @@ static int rockchip_spi_probe(struct platform_device *pdev)
 
 	rs->dev = &pdev->dev;
 	rs->freq = clk_get_rate(rs->spiclk);
+	rs->gpio_requested = false;
 
 	if (!of_property_read_u32(pdev->dev.of_node, "rx-sample-delay-ns",
 				  &rsd_nsecs)) {
@@ -759,6 +808,8 @@ static int rockchip_spi_probe(struct platform_device *pdev)
 	ctlr->max_speed_hz = min(rs->freq / BAUDR_SCKDV_MIN, MAX_SCLK_OUT);
 
 	ctlr->set_cs = rockchip_spi_set_cs;
+	ctlr->setup = rockchip_spi_setup;
+	ctlr->cleanup = rockchip_spi_cleanup;
 	ctlr->transfer_one = rockchip_spi_transfer_one;
 	ctlr->max_transfer_size = rockchip_spi_max_transfer_size;
 	ctlr->handle_err = rockchip_spi_handle_err;
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
