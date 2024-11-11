Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF2E8D12D60
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Nov 2024 02:38:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ev4YwN/N2gUFRSF87RbrnED8JfIwY0n9K3Z44VSFqg=; b=jH1avNdWjzG++Z
	TZonDLcEFbPdFzs902U7xqaempqbTAVcLzRwGQWINAw89WGgQ33uvVqphwNVdfgsTWXiqVHrBIfHc
	mJgQUUS3uEe2anSECwTuQrx/jiPxgqOxbKzexhOCDM42hWhGcM5Nk9gB3eELL0V+pdUV098HL2elb
	7IOAgU3Ll52h9SGtwMaGQbzjii9vrJwECNEULItQFTh1IQzLtd0DY9lu7gMKd9dsTP2I1Xv76ynYT
	q0YkWkbuaRaxTveuOg3rzElh/zY9yhElLqfO3GXdHrMcbJMZeRG6rZkXIFtz7GDdwHHeAY3YkzJoe
	7fOuRYL8259egHMWIJUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAKJe-0000000G8rf-2WXx;
	Mon, 11 Nov 2024 02:38:10 +0000
Received: from mail-m17243.xmail.ntesmail.com ([45.195.17.243])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAKG5-0000000G8Jw-304e;
	Mon, 11 Nov 2024 02:34:33 +0000
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 258a5851;
	Mon, 11 Nov 2024 10:34:22 +0800 (GMT+08:00)
From: Ye Zhang <ye.zhang@rock-chips.com>
To: Ye Zhang <ye.zhang@rock-chips.com>,
	linus.walleij@linaro.org,
	brgl@bgdev.pl,
	heiko@sntech.de,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	mika.westerberg@linux.intel.com,
	andriy.shevchenko@linux.intel.com,
	tao.huang@rock-chips.com,
	finley.xiao@rock-chips.com,
	tim.chen@rock-chips.com,
	elaine.zhang@rock-chips.com
Subject: [PATCH v4 2/4] gpio: rockchip: change the GPIO version judgment logic
Date: Mon, 11 Nov 2024 10:34:10 +0800
Message-Id: <20241111023412.3466161-3-ye.zhang@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241111023412.3466161-1-ye.zhang@rock-chips.com>
References: <20241111023412.3466161-1-ye.zhang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxlJS1YfTUNKSE1NThpKSENWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a9319127de209d8kunm258a5851
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Py46Khw6FjIjEixKMw8qGDFW
	HUoaFAtVSlVKTEhKSUJJT01PSkJNVTMWGhIXVQIeVQETGhUcOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSkhPQzcG
DKIM-Signature: a=rsa-sha256;
	b=PMDf6IZaMBzkQAOU0WNh1boWHdQwaHX7M5knKr110MgtXf/f1kJs/a+nRS3PgETWkfOjjoMBP3OYfr5J8OpzrCBxQkm+LW7WAy/TYag5/HYkvJC5Dzr1qAQzmAPb3jmyHu1D09PLVHslTuJDAFkCmURbIxiofL6DE57qmOEauHo=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=vWJG8cvhxWAUIWFD+PqmL7Rgp7985cdAoAUoZrwNjjs=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241110_183430_255772_2FD757A7 
X-CRM114-Status: GOOD (  10.49  )
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

Have a list of valid IDs and default to -ENODEV.

Signed-off-by: Ye Zhang <ye.zhang@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 71672d654491..f05b92e0e977 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -667,8 +667,13 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
 	clk_prepare_enable(bank->clk);
 	id = readl(bank->reg_base + gpio_regs_v2.version_id);
 
-	/* If not gpio v2, that is default to v1. */
-	if (id == GPIO_TYPE_V2 || id == GPIO_TYPE_V2_1) {
+	switch (id) {
+	case GPIO_TYPE_V1:
+		bank->gpio_regs = &gpio_regs_v1;
+		bank->gpio_type = GPIO_TYPE_V1;
+		break;
+	case GPIO_TYPE_V2:
+	case GPIO_TYPE_V2_1:
 		bank->gpio_regs = &gpio_regs_v2;
 		bank->gpio_type = GPIO_TYPE_V2;
 		bank->db_clk = of_clk_get(bank->of_node, 1);
@@ -677,9 +682,10 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
 			clk_disable_unprepare(bank->clk);
 			return -EINVAL;
 		}
-	} else {
-		bank->gpio_regs = &gpio_regs_v1;
-		bank->gpio_type = GPIO_TYPE_V1;
+		break;
+	default:
+		dev_err(bank->dev, "cannot get the version ID\n");
+		return -ENODEV;
 	}
 
 	return 0;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
