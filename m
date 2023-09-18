Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A534C46CA1
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Sep 2023 07:42:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ETgMQUa5ggpwWJG0R8G6ToeQuklhSnEo2569NkgBus=; b=IXPc1m9vxf4huY
	T27SfAy+mE5lUjkRfWgwCkjEBbrPKWzfJcGgojV9OfOVhPoV2pVcLz3+TslmZEIkfR5AvJh+H2LxM
	PxtVGYmR19ecKflPEYc4gSjjLT9nzQ9sMsNIO5appso1EG4nXh5Jdtp9FTKcPmnEjE8pmH9J3S2hy
	ijV5zLYCdlM2Ewg4YB9t7yCKpW6oU6E9zHDjri99SqHoU1zdk9n3/oOzdEyrbwIsk8QDQKZuCJSjO
	lE/AQClHQzo9+yIXZckiYWgBXCGm4m0Gu5Ztxot9jZBuPKhs939DJTlnaFB9j5E/RkZbng59wK+21
	lELePDpgB96eVzJFwfIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qi8tK-00El3D-2U;
	Mon, 18 Sep 2023 07:41:58 +0000
Received: from mail-m49231.qiye.163.com ([45.254.49.231])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qi8tH-00El1L-1U;
	Mon, 18 Sep 2023 07:41:57 +0000
DKIM-Signature: a=rsa-sha256;
	b=anc0sa+d8rpcjzKssV90aHXJyouUoX4sa6cc8E8GkpuIFNV2UgBziV5zXdOumVXNie+eDu/bmQ4IPESh2l81HhgsQdUp5WxAnqlMS+pnuKRtY+gs4NW7QBZ1UHBjv19lGZ94/OW2LK+O9HG6NRt9gfsVVFb2vYlVu55GmxOOvIE=;
	s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=rQXmJM8WZ2P7TQ/NkWuRBycU5T8lBHAqSLpNdp/37dc=;
	h=date:mime-version:subject:message-id:from;
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11879.qiye.163.com (Hmail) with ESMTPA id 769C7680357;
	Mon, 18 Sep 2023 15:31:59 +0800 (CST)
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
Subject: [PATCH v1 7/8] clk: rockchip: rk3588: Support module build
Date: Mon, 18 Sep 2023 15:31:50 +0800
Message-Id: <20230918073151.7660-8-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230918073151.7660-1-zhangqing@rock-chips.com>
References: <20230918073151.7660-1-zhangqing@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQk1LT1YYQh1CSh5MH0pMGEpVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8aa73408c92eb5kusn769c7680357
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PBg6URw6AT1OSkoSSQERSA0I
	AyhPFENVSlVKTUJOS0lJSElLSEhPVTMWGhIXVQETGhUcChIVHDsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUhKT0g3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230918_004155_698629_93B300C0 
X-CRM114-Status: GOOD (  12.06  )
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
 drivers/clk/rockchip/clk-rk3588.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3588.c b/drivers/clk/rockchip/clk-rk3588.c
index 6f0db8ce3ba9..70ced70a3559 100644
--- a/drivers/clk/rockchip/clk-rk3588.c
+++ b/drivers/clk/rockchip/clk-rk3588.c
@@ -2504,6 +2504,7 @@ static void __init rk3588_clk_init(struct device_node *np)
 
 CLK_OF_DECLARE(rk3588_cru, "rockchip,rk3588-cru", rk3588_clk_init);
 
+#ifdef MODULE
 struct clk_rk3588_inits {
 	void (*inits)(struct device_node *np);
 };
@@ -2519,8 +2520,9 @@ static const struct of_device_id clk_rk3588_match_table[] = {
 	},
 	{ }
 };
+MODULE_DEVICE_TABLE(of, clk_rk3588_match_table);
 
-static int __init clk_rk3588_probe(struct platform_device *pdev)
+static int clk_rk3588_probe(struct platform_device *pdev)
 {
 	const struct clk_rk3588_inits *init_data;
 	struct device *dev = &pdev->dev;
@@ -2536,10 +2538,15 @@ static int __init clk_rk3588_probe(struct platform_device *pdev)
 }
 
 static struct platform_driver clk_rk3588_driver = {
+	.probe		= clk_rk3588_probe,
 	.driver		= {
 		.name	= "clk-rk3588",
 		.of_match_table = clk_rk3588_match_table,
 		.suppress_bind_attrs = true,
 	},
 };
-builtin_platform_driver_probe(clk_rk3588_driver, clk_rk3588_probe);
+module_platform_driver(clk_rk3588_driver);
+
+MODULE_DESCRIPTION("Rockchip RK3588 Clock Driver");
+MODULE_LICENSE("GPL");
+#endif /* MODULE */
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
