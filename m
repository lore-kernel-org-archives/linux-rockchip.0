Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BFCFC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Nov 2022 09:15:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uTK0LvlJLtE6ptinkeTCzsy0ocJ/eti75AcGixRH7Xo=; b=oreCF1OjtfoEe7
	s8FOWXYVCsp1K8fMJsNOhepouMpPkfpilxwra9MPmAM4tIgLDWyzfHU8czOJV9UXwWfMOyLmuIWGA
	+88NG5CKjLUD5Jlwck1NEgDBjXmAg0gszMQ4YWnLDK984T1RgmkV3K/BySm74Xa95ldBOMN2RRmed
	xzeKKlOcq+W2ee0t+q/p6rVhg1lMp2xVYEtFNeF0crapkRt98BeTSkEgS5lYORXQiTIrS8ZPs9nfG
	EK701VltBV1H2VwFkCRZOsxGaGHPrvQex3Ves9+FGLLw/yOG4uXFdHCL3dyYx4662zA8nRLkLjHt3
	eVPGjP04I1/EIDwsShYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxlqk-00FqER-K3; Wed, 23 Nov 2022 09:15:22 +0000
Received: from szxga01-in.huawei.com ([45.249.212.187])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxlqY-00FqAF-Ow; Wed, 23 Nov 2022 09:15:12 +0000
Received: from dggpeml500023.china.huawei.com (unknown [172.30.72.56])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4NHFnP2GyFzmV6V;
	Wed, 23 Nov 2022 17:14:33 +0800 (CST)
Received: from ubuntu1804.huawei.com (10.67.174.58) by
 dggpeml500023.china.huawei.com (7.185.36.114) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 23 Nov 2022 17:15:04 +0800
From: Xiu Jianfeng <xiujianfeng@huawei.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>, <heiko@sntech.de>,
	<mturquette@linaro.org>
CC: <linux-clk@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2] clk: rockchip: Fix memory leak in rockchip_clk_register_pll()
Date: Wed, 23 Nov 2022 17:12:01 +0800
Message-ID: <20221123091201.199819-1-xiujianfeng@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.67.174.58]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 dggpeml500023.china.huawei.com (7.185.36.114)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_011510_996159_C212E1BA 
X-CRM114-Status: UNSURE (   8.79  )
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

If clk_register() fails, @pll->rate_table may have allocated memory by
kmemdup(), so it needs to be freed, otherwise will cause memory leak
issue, this patch fixes it.

Fixes: 90c590254051 ("clk: rockchip: add clock type for pll clocks and pll used on rk3066")
Signed-off-by: Xiu Jianfeng <xiujianfeng@huawei.com>

---
v2: move kfree(pll->rate_table) to the err_pll block
---
 drivers/clk/rockchip/clk-pll.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
index 4b9840994295..2d42eb628926 100644
--- a/drivers/clk/rockchip/clk-pll.c
+++ b/drivers/clk/rockchip/clk-pll.c
@@ -1197,6 +1197,7 @@ struct clk *rockchip_clk_register_pll(struct rockchip_clk_provider *ctx,
 	return mux_clk;
 
 err_pll:
+	kfree(pll->rate_table);
 	clk_unregister(mux_clk);
 	mux_clk = pll_clk;
 err_mux:
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
