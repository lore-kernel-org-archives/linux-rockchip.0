Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84D1BC6FD18
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Apr 2023 11:53:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PXLCVoOmYXgZ6DqQULT8hw+EOlmeaVLmHOSAKfBMe0k=; b=kAXDw+fXOCCuVF
	0wIdsDyHJso1lPw1xXMqUjZg6IM0kRRTuDKIGDiqev3lxSog/EeFL2Q6zzz3JvRZw90DWxztTRUAf
	sFZSJW4SC2OSWLS/CM20LeN6Wmh/8zujcV4qdeXxzhsl8Q6FU8fGAXXM17NEmHoZ5031YY292B+0q
	3YUQsWUC8/DBPCuPtEfuZ3GvkeXi91bhbpEaRBPXiE1oJfkQYOFE7ZlSJ2EkfP2u9VdkFFkEN8Nh5
	UhhNuRJExNAwEcvoO9wB/i5VJdK0Yrwqaj44rv2igQCIjt3QpHXPDbWwrnPFeMVLdLB8/0EkcTYl+
	jAziKKKHBBzbnaE6ZPKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pp6N2-005Ems-19;
	Wed, 19 Apr 2023 11:53:08 +0000
Received: from [202.114.0.240] (helo=hust.edu.cn)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pp6Mo-005Ek4-3B;
	Wed, 19 Apr 2023 11:53:06 +0000
Received: from localhost.localdomain ([10.21.35.93])
	(user=u202212060@hust.edu.cn mech=LOGIN bits=0)
	by mx1.hust.edu.cn  with ESMTP id 33JBphtt020757-33JBphtu020757
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Wed, 19 Apr 2023 19:52:05 +0800
From: Li Lanzhe <u202212060@hust.edu.cn>
To: Mark Brown <broonie@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
        Chris Morgan <macromorgan@hotmail.com>,
        Jon Lin <jon.lin@rock-chips.com>
Cc: Li Lanzhe <u202212060@hust.edu.cn>, Dongliang Mu <dzm91@hust.edu.cn>,
        linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] spi: spi-rockchip: Fix missing unwind goto in rockchip_sfc_probe()
Date: Wed, 19 Apr 2023 07:50:29 -0400
Message-Id: <20230419115030.6029-1-u202212060@hust.edu.cn>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-FEAS-AUTH-USER: u202212060@hust.edu.cn
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230419_045255_409159_867CA9D1 
X-CRM114-Status: GOOD (  11.60  )
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

If devm_request_irq() fails, then we are directly return 'ret' without 
clk_disable_unprepare(sfc->clk) and clk_disable_unprepare(sfc->hclk).

Fix this by changing direct return to a goto 'err_irq'.

Fixes: 0b89fc0a367e ("spi: rockchip-sfc: add rockchip serial flash controller")
Signed-off-by: Li Lanzhe <u202212060@hust.edu.cn>
Reviewed-by: Dongliang Mu <dzm91@hust.edu.cn>
---
The issue is found by static analysis and remains untested.
---
 drivers/spi/spi-rockchip-sfc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/spi-rockchip-sfc.c b/drivers/spi/spi-rockchip-sfc.c
index bd87d3c92dd3..69347b6bf60c 100644
--- a/drivers/spi/spi-rockchip-sfc.c
+++ b/drivers/spi/spi-rockchip-sfc.c
@@ -632,7 +632,7 @@ static int rockchip_sfc_probe(struct platform_device *pdev)
 	if (ret) {
 		dev_err(dev, "Failed to request irq\n");
 
-		return ret;
+		goto err_irq;
 	}
 
 	ret = rockchip_sfc_init(sfc);
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
