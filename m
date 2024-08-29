Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15F3EC87FD2
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Aug 2024 20:27:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k8XT4Dzig6qNDHkWw5gr5F8sbMP0jZOqdT18fuP2KoM=; b=Y038VkDdxdkvlX
	OH7zmtCKudG3xC8+zeMaY8DPI9hWbU/E3ts3AqUGKDf5OGserQs92vs0jd8lpJYA19HDa7wOL1l70
	WTIjAqg5W+qLh8n871Px7bYuv2p35uTUYsLD2uQ4o2urf/lULj6nihzAwkgBHwakWkqkwvJ+h2Jjc
	IltTGYy2Xi9WA9ZsyD3Q+ShHAZwE4axkzEZZa3rQAOgCYhZDBw4LYED47oOL2mJ1/pe3jHt1sUFa3
	eG9sRM35a2uAyTpmO9vWusdxDiezRXS52J0RtVPbG18L3tDZnVSQSM0bTtemyMzY4SpAzg0V/YCEE
	5C7W1vxa64ufQ0lQtWQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjlkI-00000003XlG-0Pk7;
	Thu, 29 Aug 2024 20:27:54 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjlib-00000003XFW-1y2M;
	Thu, 29 Aug 2024 20:26:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1724963167;
	bh=RlsFXO6KatDsM7/49cx/GSZQ9BgWcaXezSg0o3At/h0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=i3l7IouF+s1UpEa2L7+qaXO296mVBKobWHSB2ihmSLDlW2UVpNIOkXxBEZWyvPenV
	 itpTBBTmLqX+ABwHw0ap3KDWbkzx/U7dpuP1rYv5VU3Lv+B/jqI+gaR05zEeNmtloC
	 ZKvXZDNlnxsPxfKudSGgrj0nSNYx3f+4IR+BA19iw3nfqDUlUYxSNkFBI6gsRmJO93
	 FJXy6oloTGPXSPJpDwKVxsLUiwuSxUWx/ZnEKrSP1upHgxaa08JZ8KX4+f21iVzmW9
	 UiZZ8Z1JG3b9PdE+LgouZm6w8XpNhr4HRUAMewg3nvmFEqiEnxpI9vW0FRquhsEFGQ
	 kps7fiY8614Gg==
Received: from trenzalore.hitronhub.home (unknown [23.233.251.139])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C2A0317E0FF5;
	Thu, 29 Aug 2024 22:26:05 +0200 (CEST)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Linus Walleij <linus.walleij@linaro.org>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Rob Herring <robh@kernel.org>,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH 1/2] pmdomain: rockchip: Add gating support
Date: Thu, 29 Aug 2024 16:20:47 -0400
Message-ID: <20240829202732.75961-2-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240829202732.75961-1-detlev.casanova@collabora.com>
References: <20240829202732.75961-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_132609_696660_1978E9DA 
X-CRM114-Status: GOOD (  14.57  )
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

Some rockchip SoC need to ungate power domains before their power status
can be changed.

Each power domain has a gate mask that is set to 1 to ungate it when
manipulating power status, then set back to 0 to gate it again.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 drivers/pmdomain/rockchip/pm-domains.c | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index 64b4d7120d832..5b601efadd2e0 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
@@ -46,6 +46,7 @@ struct rockchip_domain_info {
 	bool active_wakeup;
 	int pwr_w_mask;
 	int req_w_mask;
+	int clk_ungate_mask;
 	int mem_status_mask;
 	int repair_status_mask;
 	u32 pwr_offset;
@@ -63,6 +64,7 @@ struct rockchip_pmu_info {
 	u32 chain_status_offset;
 	u32 mem_status_offset;
 	u32 repair_status_offset;
+	u32 clk_ungate_offset;
 
 	u32 core_pwrcnt_offset;
 	u32 gpu_pwrcnt_offset;
@@ -303,6 +305,26 @@ static unsigned int rockchip_pmu_read_ack(struct rockchip_pmu *pmu)
 	return val;
 }
 
+static int rockchip_pmu_ungate_clk(struct rockchip_pm_domain *pd, bool ungate)
+{
+	const struct rockchip_domain_info *pd_info = pd->info;
+	struct rockchip_pmu *pmu = pd->pmu;
+	unsigned int val;
+	int clk_ungate_w_mask = pd_info->clk_ungate_mask << 16;
+
+	if (!pd_info->clk_ungate_mask)
+		return 0;
+
+	if (!pmu->info->clk_ungate_offset)
+		return 0;
+
+	val = ungate ? (pd_info->clk_ungate_mask | clk_ungate_w_mask) :
+			clk_ungate_w_mask;
+	regmap_write(pmu->regmap, pmu->info->clk_ungate_offset, val);
+
+	return 0;
+}
+
 static int rockchip_pmu_set_idle_request(struct rockchip_pm_domain *pd,
 					 bool idle)
 {
@@ -543,6 +565,8 @@ static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)
 			return ret;
 		}
 
+		rockchip_pmu_ungate_clk(pd, true);
+
 		if (!power_on) {
 			rockchip_pmu_save_qos(pd);
 
@@ -559,6 +583,7 @@ static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)
 			rockchip_pmu_restore_qos(pd);
 		}
 
+		rockchip_pmu_ungate_clk(pd, false);
 		clk_bulk_disable(pd->num_clks, pd->clks);
 	}
 
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
