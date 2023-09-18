Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FDD8C46CA1
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Sep 2023 07:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/wRKi0NJrwkUu9ZsHkywDLN2gFJJP+k2lv9lxGdewsU=; b=wpv81bqnAiQiZz
	htkaBICEMGVFiWy6DwERY1zIv43GwqZ+MG19/1a41WHJ31jVugIaUVfEXFqeNR2yOJQL5uKrnxykU
	sV1ttMr/bqJR7imDgPqXj1BVka0JJ/u3W7KYgfjpAaxUSY3cwUQ5eQFaOawmR6jKWdLvL3sR53Mr8
	ETgYpGEzCKJX3jvuE2ztkh1LxNRVURKwZlZPVhxHT7mN2XY7jz2vFSkWml9+DsMp4bNt3P9J6AbFG
	J0PPT3tXroBPT1II4xaeAJnwWoj/yi197DSdVztwaIfLI2jT7g9mIvc1PmWXg13yRtkZS0a3X82L7
	xStZbN5frEwbNyuC6uiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qi8kW-00Ej23-31;
	Mon, 18 Sep 2023 07:32:52 +0000
Received: from mail-m12767.qiye.163.com ([115.236.127.67])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qi8kR-00Eiw2-2l;
	Mon, 18 Sep 2023 07:32:49 +0000
DKIM-Signature: a=rsa-sha256;
	b=acOd2ke57QbjXIpr8WEZCRZSAYNGHf1HbxM9U1aGgLGr9PLnd+ACr878zLkd6X952/kTisl1H5l+X/5JEBTo0iYQ09aTdV94GKaJ0dM7q5b2nXv12U5Cmlk5QR8AZU80E4GXJ+0q11TBfZXMiS8UWgN2wqx5pqAI9PZYUXFBTOY=;
	s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=vyECsO4uy90lTUrx8mOBqqu8I+jSj4HmGYI/qGQDg4o=;
	h=date:mime-version:subject:message-id:from;
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11879.qiye.163.com (Hmail) with ESMTPA id 801BC680358;
	Mon, 18 Sep 2023 15:31:57 +0800 (CST)
From: Elaine Zhang <zhangqing@rock-chips.com>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	kever.yang@rock-chips.com,
	zhangqing@rock-chips.com,
	heiko@sntech.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	huangtao@rock-chips.com,
	xxx@rock-chips.com,
	xf@rock-chips.com
Subject: [PATCH v1 5/8] clk: rockchip: rk3399: Support module build
Date: Mon, 18 Sep 2023 15:31:48 +0800
Message-Id: <20230918073151.7660-6-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230918073151.7660-1-zhangqing@rock-chips.com>
References: <20230918073151.7660-1-zhangqing@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGRoaTlZCTE9CSh1IGUgdTk9VEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8aa73401362eb5kusn801bc680358
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OlE6Tjo5Qz1KN0oJIgwvSBA6
	MysKCUJVSlVKTUJOS0lJSEpDT0NIVTMWGhIXVQETGhUcChIVHDsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUhJS0g3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230918_003248_050855_742D3835 
X-CRM114-Status: GOOD (  11.39  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

support CLK_OF_DECLARE and module_platform_driver
double clk init method.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 drivers/clk/rockchip/clk-rk3399.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
index ee3bda968574..dcc794dbb190 100644
--- a/drivers/clk/rockchip/clk-rk3399.c
+++ b/drivers/clk/rockchip/clk-rk3399.c
@@ -1571,6 +1571,7 @@ static void __init rk3399_pmu_clk_init(struct device_node *np)
 }
 CLK_OF_DECLARE(rk3399_cru_pmu, "rockchip,rk3399-pmucru", rk3399_pmu_clk_init);
 
+#ifdef MODULE
 struct clk_rk3399_inits {
 	void (*inits)(struct device_node *np);
 };
@@ -1593,8 +1594,9 @@ static const struct of_device_id clk_rk3399_match_table[] = {
 	},
 	{ }
 };
+MODULE_DEVICE_TABLE(of, clk_rk3399_match_table);
 
-static int __init clk_rk3399_probe(struct platform_device *pdev)
+static int clk_rk3399_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
 	const struct of_device_id *match;
@@ -1612,10 +1614,16 @@ static int __init clk_rk3399_probe(struct platform_device *pdev)
 }
 
 static struct platform_driver clk_rk3399_driver = {
+	.probe		= clk_rk3399_probe,
 	.driver		= {
 		.name	= "clk-rk3399",
 		.of_match_table = clk_rk3399_match_table,
 		.suppress_bind_attrs = true,
 	},
 };
-builtin_platform_driver_probe(clk_rk3399_driver, clk_rk3399_probe);
+module_platform_driver(clk_rk3399_driver);
+
+MODULE_DESCRIPTION("Rockchip RK3399 Clock Driver");
+MODULE_LICENSE("GPL");
+MODULE_ALIAS("platform:clk-rk3399");
+#endif /* MODULE */
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
