Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CF47ECAAD8
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 10:32:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZBufMK4CNBupqP6gE7LYUk29Ka3y6NH/JLxtqBzKoWM=; b=FVJ+MzXUr1pzjl
	2B5kSLnSdlHlpwjHu70hdsnVqfch5AnRQOvsgvz+rf7WuN02/yFHw0IT2fY/NMnlbGfcbMIqsXVqO
	0s4Ig6jdZ1sfNIaNgKAsKK0aCscoeJYGopZes4Cjab3Ub8o5ZlxfbMOkhgpCRR5/HRq5hf1GgqskA
	2tOBlcrBeOd2W7pt+t766ZfhgWwnE0Mzj3/Vp5k8EELOQgHp/XFZamqnS2k438lM7aZblL7pRFlSO
	cLHxC2ZTzsgWgcfIR0pKLaeZGbsddwv1HBl9iMh/BVc+nDmzbh62uFHCqibpdujtfHnx012yz2+kG
	ddFEOA7A51XfkJh0RNTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaaXu-002z71-Im; Tue, 20 Sep 2022 10:32:06 +0000
Received: from mail-m11875.qiye.163.com ([115.236.118.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaaXK-002yPD-Pb
	for linux-rockchip@lists.infradead.org; Tue, 20 Sep 2022 10:31:34 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11875.qiye.163.com (Hmail) with ESMTPA id BFB82280BD1;
	Tue, 20 Sep 2022 18:31:22 +0800 (CST)
From: Jianqun Xu <jay.xu@rock-chips.com>
To: linus.walleij@linaro.org,
	heiko@sntech.de,
	brgl@bgdev.pl,
	andriy.shevchenko@linux.intel.com
Cc: robert.moore@intel.com,
	robh@kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	lenb@kernel.org,
	rafael@kernel.org,
	Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 17/20] gpio/rockchip: print device with fwnode name when probe successful
Date: Tue, 20 Sep 2022 18:31:05 +0800
Message-Id: <20220920103108.23074-18-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220920103108.23074-1-jay.xu@rock-chips.com>
References: <20220920103108.23074-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVlCHkpJVkxJS01CTUhJSBofH1UTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OCI6Mjo6TD0oURwZVhRJLxcM
	OjEaCwFVSlVKTU1ITU1CQ0NITklLVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQUpCQ083Bg++
X-HM-Tid: 0a835a73d0be2eb1kusnbfb82280bd1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_033131_193599_CAD9D266 
X-CRM114-Status: UNSURE (   9.06  )
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

Print the device probe message with the fwnode instead of of_node.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 11586d93549b..d08435619f12 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -772,7 +772,7 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
 	}
 
 	platform_set_drvdata(pdev, bank);
-	dev_info(dev, "probed %pOF\n", np);
+	dev_info(dev, "probed %pfw\n", dev_fwnode(dev));
 
 	return 0;
 err_put_clk:
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
