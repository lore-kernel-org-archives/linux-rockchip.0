Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBD12C47422
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jan 2024 18:29:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0+cJtlfkvnEi2+w+a+Kunc1UaWbsbhzOtxcLlfiY5y8=; b=pjwp+FE4OXpGBv
	K0y2YsnMSziMdgaNAlvKnut+Oaw+kElPDx3LPCDLnrcPEV6ZFWBu0Q+GqED8MXR0oHPG3Vsjd+J/R
	ylEZwz9VK3IoHK23IrKx1fhKZYZBpZsbPnPQ68gfPWQScCMU5dPebF/oWhncwgiXp0Ybomwb3lbu2
	XGP0mZY9RE8UjiTyjmLZ/tLbx2ZdiSyQTHqiNorHjRi5LhthXY8l68KsnAD4oqt9ROFHrJmKOopXY
	elS6ZkcNXwX/1vr0PCNPcMI71zUWR6YKf8wQWDsEZ55AbjQX8oHeq6zGjAIQnl/KD0Rir5BZq9gYn
	TZKmW+4GcQ9Oz1WSBHWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTQxI-000000054TG-110f;
	Fri, 26 Jan 2024 18:29:32 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTQxC-000000054OW-44AV
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jan 2024 18:29:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1706293762;
	bh=2n9PipAmeHqJwOVMkEkqIqxneWxYWA+hFsQHqev4W4o=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=aRVs7Rii5ElUaOxTaXrEfFAShkE7yAzXJASBBruDy/zSGWx+c/vVAiqI8vxB0z0HZ
	 VC9I/nvECaQn3sp/mZ33p+S8A8mRl5DLn9kjUq+knWfq28wY96+lUKvPkUFlxoL7WZ
	 2JHv+9b/tuP4Koi+Ix4btpTALVcWhTLZei1TbhixGjhJvM+5OuDGJT0sfXdJY2TBUZ
	 hLUmuo4Af9QxCG95ykGY6iXwZVUd+AnBqx+s/bpUeZDzQ7KSSiH0YmBhplDsJ73uxq
	 +kLxMUjALDkNnYMpkLc19VS7eqIG1XFYmKYyXV53ast34kgaR5yJhLgWHo4ml8+cyV
	 Qm6Pzaq35XUXw==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id F03A23782072;
	Fri, 26 Jan 2024 18:29:21 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 92EB4480C4B; Fri, 26 Jan 2024 19:29:21 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	linux-clk@vger.kernel.org
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	huangtao@rock-chips.com,
	andy.yan@rock-chips.com,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v8 1/7] clk: rockchip: rk3588: fix CLK_NR_CLKS usage
Date: Fri, 26 Jan 2024 19:18:22 +0100
Message-ID: <20240126182919.48402-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240126182919.48402-1-sebastian.reichel@collabora.com>
References: <20240126182919.48402-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240126_102927_230636_E3302734 
X-CRM114-Status: GOOD (  15.56  )
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

CLK_NR_CLKS is not part of the DT bindings and needs to be removed
from it, just like it recently happened for other platforms. This
takes care of it by introducing a new function identifying the
maximum used clock ID at runtime.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/clk/rockchip/clk-rk3588.c |  5 ++++-
 drivers/clk/rockchip/clk.c        | 17 +++++++++++++++++
 drivers/clk/rockchip/clk.h        |  2 ++
 3 files changed, 23 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3588.c b/drivers/clk/rockchip/clk-rk3588.c
index 6994165e0395..0b60ae78f9d8 100644
--- a/drivers/clk/rockchip/clk-rk3588.c
+++ b/drivers/clk/rockchip/clk-rk3588.c
@@ -2458,15 +2458,18 @@ static struct rockchip_clk_branch rk3588_clk_branches[] __initdata = {
 static void __init rk3588_clk_init(struct device_node *np)
 {
 	struct rockchip_clk_provider *ctx;
+	unsigned long clk_nr_clks;
 	void __iomem *reg_base;
 
+	clk_nr_clks = rockchip_clk_find_max_clk_id(rk3588_clk_branches,
+					ARRAY_SIZE(rk3588_clk_branches)) + 1;
 	reg_base = of_iomap(np, 0);
 	if (!reg_base) {
 		pr_err("%s: could not map cru region\n", __func__);
 		return;
 	}
 
-	ctx = rockchip_clk_init(np, reg_base, CLK_NR_CLKS);
+	ctx = rockchip_clk_init(np, reg_base, clk_nr_clks);
 	if (IS_ERR(ctx)) {
 		pr_err("%s: rockchip clk init failed\n", __func__);
 		iounmap(reg_base);
diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index 4059d9365ae6..73d2cbdc716b 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -429,6 +429,23 @@ void rockchip_clk_register_plls(struct rockchip_clk_provider *ctx,
 }
 EXPORT_SYMBOL_GPL(rockchip_clk_register_plls);
 
+unsigned long rockchip_clk_find_max_clk_id(struct rockchip_clk_branch *list,
+					   unsigned int nr_clk)
+{
+	unsigned long max = 0;
+	unsigned int idx;
+
+	for (idx = 0; idx < nr_clk; idx++, list++) {
+		if (list->id > max)
+			max = list->id;
+		if (list->child && list->child->id > max)
+			max = list->id;
+	}
+
+	return max;
+}
+EXPORT_SYMBOL_GPL(rockchip_clk_find_max_clk_id);
+
 void rockchip_clk_register_branches(struct rockchip_clk_provider *ctx,
 				    struct rockchip_clk_branch *list,
 				    unsigned int nr_clk)
diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index 758ebaf2236b..fd3b476dedda 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -973,6 +973,8 @@ struct rockchip_clk_provider *rockchip_clk_init(struct device_node *np,
 			void __iomem *base, unsigned long nr_clks);
 void rockchip_clk_of_add_provider(struct device_node *np,
 				struct rockchip_clk_provider *ctx);
+unsigned long rockchip_clk_find_max_clk_id(struct rockchip_clk_branch *list,
+					   unsigned int nr_clk);
 void rockchip_clk_register_branches(struct rockchip_clk_provider *ctx,
 				    struct rockchip_clk_branch *list,
 				    unsigned int nr_clk);
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
