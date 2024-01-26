Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98300C4828C
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jan 2024 18:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KA46YPvPKMxUcqKSNCr0GbYH9XfehjFfu/qbdeIk4LA=; b=AFf1gpX9jsh3JI
	7wU/W/93O3kCDX6PSSFfuBRMnoDPgK6mBfL1aCfRFOCrfP8LLxvB+MnxQBRyLgx1ThdEp4q0n868A
	BucLoKJ8z+Yeos513j8ubwc4aEEaOeoekKB1EeNyoeO5+v3i42kCV5286C+hy+hYTpLkXQYvDt9eu
	n3d/GhwZkU50zEwHrt1HEGtj/ZHDTLENE83hijRFfuU88wpyGoY76DQpqyZsxG6kvQUeJzWEhbHet
	zWASdX511KOJXH0LDSZaCew70BTkI6Mk4MRIArDNK+G5j30//ZsDgFkgvayXZyJlL4NqAV+NqJHV6
	MbvIrOuRHUjpoQ7+yQUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTQxJ-000000054VF-3XAO;
	Fri, 26 Jan 2024 18:29:33 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTQxF-000000054RM-184B
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jan 2024 18:29:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1706293762;
	bh=5rhOg385ALxMZC2NP0YG1CGe+OyMaqjG1bdXKQfeSHk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BdTfDq41VU/P7akV3KDhG+i7wDoMWbECjwWpaGuKM9adWyJNAXyhMinqs08A9JcI5
	 AJNPxTVfAy418MIMn0Lg9gDwoft9zcfc0fJLvgRXz8CMQNzgzRA+LAT8eNe6IsN+Y6
	 8wFeZRcSiRu1DZ7M0P/0MpAYQYi6GBlWdnk1dYW5VgZ8RLbyjZZcVO5W84vshygFRf
	 oPsI5GeA5572Pi6Jq2492f4Ro7fpmQe2zLsbyWxpygJYSQvu6TopQqMBtYfLySOHf1
	 3kC/jmCJxAgIdANWrM+cg3/mMA5Y/V6+W13Qqcd+EOzii6t6YJObPOCdfCDWHXAXVP
	 YvD11zLA6kjKQ==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 704353782081;
	Fri, 26 Jan 2024 18:29:22 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 9B205482AC9; Fri, 26 Jan 2024 19:29:21 +0100 (CET)
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
Subject: [PATCH v8 5/7] clk: rockchip: rk3588: fix indent
Date: Fri, 26 Jan 2024 19:18:26 +0100
Message-ID: <20240126182919.48402-6-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240126182919.48402-1-sebastian.reichel@collabora.com>
References: <20240126182919.48402-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240126_102929_508834_EF5D81ED 
X-CRM114-Status: GOOD (  11.49  )
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

pclk_mailbox2 is the only RK3588 clock indented with one tab instead of
two tabs. Let's fix this.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/clk/rockchip/clk-rk3588.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3588.c b/drivers/clk/rockchip/clk-rk3588.c
index 26330d655159..2e8bdd93c625 100644
--- a/drivers/clk/rockchip/clk-rk3588.c
+++ b/drivers/clk/rockchip/clk-rk3588.c
@@ -1004,7 +1004,7 @@ static struct rockchip_clk_branch rk3588_clk_branches[] __initdata = {
 	GATE(PCLK_MAILBOX1, "pclk_mailbox1", "pclk_top_root", 0,
 			RK3588_CLKGATE_CON(16), 12, GFLAGS),
 	GATE(PCLK_MAILBOX2, "pclk_mailbox2", "pclk_top_root", 0,
-		RK3588_CLKGATE_CON(16), 13, GFLAGS),
+			RK3588_CLKGATE_CON(16), 13, GFLAGS),
 	GATE(PCLK_PMU2, "pclk_pmu2", "pclk_top_root", CLK_IS_CRITICAL,
 			RK3588_CLKGATE_CON(19), 3, GFLAGS),
 	GATE(PCLK_PMUCM0_INTMUX, "pclk_pmucm0_intmux", "pclk_top_root", CLK_IS_CRITICAL,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
