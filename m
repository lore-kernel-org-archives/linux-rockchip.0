Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE6E0CD37B0
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Sep 2023 07:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q0Ca/amtvKEqZCjAviIANe4AR1oKDHD4ApVNssTVI5w=; b=TAWXJcgb5i1biU
	IYTtQKsZbsSz5ykwP/nbAsN/+wSJC5pbOjK7e77E4VB209ph+/u2HjTT8hoW10pYd34RvI24nlMRN
	2IChtc1ONEMmjDOLicaApCJjRMRkJcuqowJQ6z9dkU+sDY8o6mtOrS8N2suH3djDeE512qj/l8sZJ
	OU2cjA7f6sqkJegQeCmz6fvKvQgQOVsZ/9GH1RMGPKJJRVKqylIeK/6dd/rj7q2A5cMUm1h70FXSZ
	da7TI3YE1nkLJrFnfz/eHr+dLy39lwpj63taGATodsYrj7OzzBt85Ib9NPajUoFSVqQccYps2lv2Y
	lo5QjCIfdKB3mff++nkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qi8tM-00El4M-2W;
	Mon, 18 Sep 2023 07:42:00 +0000
Received: from mail-m49222.qiye.163.com ([45.254.49.222])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qi8tJ-00El1U-26;
	Mon, 18 Sep 2023 07:41:59 +0000
DKIM-Signature: a=rsa-sha256;
	b=T9yjZlm7HyhCsWHXpRZQ0PVqlymuih1rHp3kM2Xsqf50HYG5brDEkzqRHx6hMnYqwegM4oaEaoxrLKpfkJ/Lk0p+xWkMMquwFnO1UnYlwtiZS7txcqAhuh5KCyVpgbedQuTeCoT5nNSrFNj0WOTkr3ma/Yukfm2LbQgohf3OS+w=;
	s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=R+b+U05rjVQsHcLYYo7FvRmUm3DUdEyeUtl3J6etFps=;
	h=date:mime-version:subject:message-id:from;
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11879.qiye.163.com (Hmail) with ESMTPA id 83310680600;
	Mon, 18 Sep 2023 15:31:58 +0800 (CST)
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
Subject: [PATCH v1 6/8] clk: rockchip: rk3568: Support module build
Date: Mon, 18 Sep 2023 15:31:49 +0800
Message-Id: <20230918073151.7660-7-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230918073151.7660-1-zhangqing@rock-chips.com>
References: <20230918073151.7660-1-zhangqing@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGhpCGFZCGkwfSUlCHR4YGhpVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8aa73405372eb5kusn83310680600
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OBA6ATo*Tz1IHUoCFAxPSA8Q
	LhMaCRJVSlVKTUJOS0lJSEpCT0hLVTMWGhIXVQETGhUcChIVHDsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUhKQk43Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230918_004157_930495_501240DD 
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
 drivers/clk/rockchip/clk-rk3568.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
index 64d2278825ab..5907f7e14201 100644
--- a/drivers/clk/rockchip/clk-rk3568.c
+++ b/drivers/clk/rockchip/clk-rk3568.c
@@ -1653,6 +1653,7 @@ static void __init rk3568_clk_init(struct device_node *np)
 
 CLK_OF_DECLARE(rk3568_cru, "rockchip,rk3568-cru", rk3568_clk_init);
 
+#ifdef MODULE
 struct clk_rk3568_inits {
 	void (*inits)(struct device_node *np);
 };
@@ -1675,8 +1676,9 @@ static const struct of_device_id clk_rk3568_match_table[] = {
 	},
 	{ }
 };
+MODULE_DEVICE_TABLE(of, clk_rk3568_match_table);
 
-static int __init clk_rk3568_probe(struct platform_device *pdev)
+static int clk_rk3568_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
 	const struct clk_rk3568_inits *init_data;
@@ -1692,10 +1694,16 @@ static int __init clk_rk3568_probe(struct platform_device *pdev)
 }
 
 static struct platform_driver clk_rk3568_driver = {
+	.probe		= clk_rk3568_probe,
 	.driver		= {
 		.name	= "clk-rk3568",
 		.of_match_table = clk_rk3568_match_table,
 		.suppress_bind_attrs = true,
 	},
 };
-builtin_platform_driver_probe(clk_rk3568_driver, clk_rk3568_probe);
+module_platform_driver(clk_rk3568_driver);
+
+MODULE_DESCRIPTION("Rockchip RK3568 Clock Driver");
+MODULE_LICENSE("GPL");
+MODULE_ALIAS("platform:clk-rk3568");
+#endif /* MODULE */
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
