Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1ADBC433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Feb 2022 01:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c8VyrWOjgHLxB7y/omuI6TkrHyktb9fS/egnHCXEVqk=; b=hO/1IspG9cXOKb
	DwkpjNCqJwN96hBctHY+p6K9iqXeLhlrv/0fLf3dp5zSSPPIAtYxzSMdSa7MugrNShyQdOQrm9rAR
	vDsnQc41GnDjc6WbtMHYEZF5exGc6yBKo8sAglk+BOsloiZeLBc0x/4iOxTX2weXsTGtoMFHzo8fe
	ysA9EvNGcqQNBrI8AGxKezlJvG58Tjwsym2B1+IOoE3Y0/E71SRt3NLlJaDAnT+HmHk4KqlD4E5Ml
	jBdZev5+FcLYc2abrcsz8Lb1hSV/1Gws1f5UYJBCVT4p0mxdwnbQZUr3frPCZcS6ucR1JftKHSntu
	mR4USGvMnEcJRM2clXzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nK9JW-005BBM-BE; Wed, 16 Feb 2022 01:41:02 +0000
Received: from mail-m17640.qiye.163.com ([59.111.176.40])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nK9J5-005B05-J5; Wed, 16 Feb 2022 01:40:37 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
 by mail-m17640.qiye.163.com (Hmail) with ESMTPA id 699545402F4;
 Wed, 16 Feb 2022 09:40:33 +0800 (CST)
From: Jon Lin <jon.lin@rock-chips.com>
To: broonie@kernel.org
Cc: heiko@sntech.de, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jon Lin <jon.lin@rock-chips.com>
Subject: [PATCH v3 1/6] spi: rockchip: Fix error in getting num-cs property
Date: Wed, 16 Feb 2022 09:40:23 +0800
Message-Id: <20220216014028.8123-2-jon.lin@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220216014028.8123-1-jon.lin@rock-chips.com>
References: <20220216014028.8123-1-jon.lin@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUhPN1dZLVlBSVdZDwkaFQgSH1lBWUMYQk1WQkhPTUsZTEkYHU
 wYVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWVVLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NhA6Tjo6Pj5ONBYYLg0pGRA4
 EwNPCR9VSlVKTU9PQkxOTUhIQ0JJVTMWGhIXVREUFVUXEhU7CRQYEFYYExILCFUYFBZFWVdZEgtZ
 QVlOQ1VJSVVMVUpKT1lXWQgBWUFJT0tPNwY+
X-HM-Tid: 0a7f003034c2d995kuws699545402f4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220215_174035_813933_BDADA8AD 
X-CRM114-Status: GOOD (  11.37  )
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

Get num-cs u32 from dts of_node property rather than u16.

Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
---

Changes in v3: None
Changes in v2:
- Fix patches should be at the start of the series

Changes in v1:
- The origin patch

 drivers/spi/spi-rockchip.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 553b6b9d0222..4f65ba3dd19c 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -654,7 +654,7 @@ static int rockchip_spi_probe(struct platform_device *pdev)
 	struct spi_controller *ctlr;
 	struct resource *mem;
 	struct device_node *np = pdev->dev.of_node;
-	u32 rsd_nsecs;
+	u32 rsd_nsecs, num_cs;
 	bool slave_mode;
 
 	slave_mode = of_property_read_bool(np, "spi-slave");
@@ -764,8 +764,9 @@ static int rockchip_spi_probe(struct platform_device *pdev)
 		 * rk spi0 has two native cs, spi1..5 one cs only
 		 * if num-cs is missing in the dts, default to 1
 		 */
-		if (of_property_read_u16(np, "num-cs", &ctlr->num_chipselect))
-			ctlr->num_chipselect = 1;
+		if (of_property_read_u32(np, "num-cs", &num_cs))
+			num_cs = 1;
+		ctlr->num_chipselect = num_cs;
 		ctlr->use_gpio_descriptors = true;
 	}
 	ctlr->dev.of_node = pdev->dev.of_node;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
