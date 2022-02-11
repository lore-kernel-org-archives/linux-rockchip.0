Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A465C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Feb 2022 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s3ITfXTCfI4d2gFDW8rnMSE5M67Hpl1WlzHZTzKDleI=; b=VlVytoCchu1j0k
	vn9As3eDEmYIPc3OEK+itHlstq+6A+gIkZ3Nx0+EBEKVh5DGGLTievpl7Fx65s/mNeFE9nQofA8B0
	zLc9WXIhdicxNVPP1ro6awmNI3leD++T/Da/h6NQn+KTCKwWFXrF2j+AgHoFvhQECwUSfjAyyTcdA
	pubjPNZJx5tOYDRDUunHw+TpQfzKKZz0U4W/NWlkFB2/UkpQrvMfLCOah8Z1lupWoDa6K4kQStPMW
	cYx5dXetrnRvJa2ZXiCB5LbAeH/2cBXn6F/AoALPnpgK9pc1fLxxnIq7fwtoKwri3U2wmXRr3Pd34
	BcA4ToMKk1xkv2h1dUcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIMrY-005bnF-ES; Fri, 11 Feb 2022 03:44:48 +0000
Received: from mail-m17664.qiye.163.com ([59.111.176.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIMqk-005bRI-Fu; Fri, 11 Feb 2022 03:44:01 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
 by mail-m17664.qiye.163.com (Hmail) with ESMTPA id 7CFE1140127;
 Fri, 11 Feb 2022 11:43:47 +0800 (CST)
From: Jon Lin <jon.lin@rock-chips.com>
To: broonie@kernel.org
Cc: heiko@sntech.de, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jon Lin <jon.lin@rock-chips.com>
Subject: [PATCH 2/6] spi: rockchip: Preset cs-high and clk polarity in setup
 progress
Date: Fri, 11 Feb 2022 11:43:38 +0800
Message-Id: <20220211034344.4130-2-jon.lin@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220211034344.4130-1-jon.lin@rock-chips.com>
References: <20220211034344.4130-1-jon.lin@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUhPN1dZLVlBSVdZDwkaFQgSH1lBWRlLHUJWTR4YSEhCHkJDHk
 9MVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWVVLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MTo6ASo5Tj5JEh40CA8PF08w
 CRowFDpVSlVKTU9PTk5KS0lMQ0NNVTMWGhIXVREUFVUXEhU7CRQYEFYYExILCFUYFBZFWVdZEgtZ
 QVlOQ1VJSVVMVUpKT1lXWQgBWUFJQ09NNwY+
X-HM-Tid: 0a7ee6e13bd2da2fkuws7cfe1140127
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220210_194358_734073_A3E1D10F 
X-CRM114-Status: UNSURE (   9.92  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

After power up, the cs and clock is in default status, and the cs-high
and clock polarity dts property configuration will take no effect until
the calling of rockchip_spi_config in the first transmission.
So preset them to make sure a correct voltage before the first
transmission coming.

Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
---

 drivers/spi/spi-rockchip.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 7ac07569e103..1738a2611a2b 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -711,6 +711,26 @@ static bool rockchip_spi_can_dma(struct spi_controller *ctlr,
 	return xfer->len / bytes_per_word >= rs->fifo_len;
 }
 
+static int rockchip_spi_setup(struct spi_device *spi)
+{
+	struct rockchip_spi *rs = spi_controller_get_devdata(spi->controller);
+	u32 cr0;
+
+	pm_runtime_get_sync(rs->dev);
+
+	cr0 = readl_relaxed(rs->regs + ROCKCHIP_SPI_CTRLR0);
+
+	cr0 |= ((spi->mode & 0x3) << CR0_SCPH_OFFSET);
+	if (spi->mode & SPI_CS_HIGH)
+		cr0 |= BIT(spi->chip_select) << CR0_SOI_OFFSET;
+
+	writel_relaxed(cr0, rs->regs + ROCKCHIP_SPI_CTRLR0);
+
+	pm_runtime_put(rs->dev);
+
+	return 0;
+}
+
 static int rockchip_spi_probe(struct platform_device *pdev)
 {
 	int ret;
@@ -837,6 +857,7 @@ static int rockchip_spi_probe(struct platform_device *pdev)
 	ctlr->min_speed_hz = rs->freq / BAUDR_SCKDV_MAX;
 	ctlr->max_speed_hz = min(rs->freq / BAUDR_SCKDV_MIN, MAX_SCLK_OUT);
 
+	ctlr->setup = rockchip_spi_setup;
 	ctlr->set_cs = rockchip_spi_set_cs;
 	ctlr->transfer_one = rockchip_spi_transfer_one;
 	ctlr->max_transfer_size = rockchip_spi_max_transfer_size;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
