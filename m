Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E226C54E58
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 19:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K1H2/BbmjCy6HCuIqu9JOWydoqj+SyIKKqNoS8YwW14=; b=veh6RVBNQ28LaT
	Q1Bbb1DDvC2DomcFEwAveHfI/p5P09Mg4oigJgfExAehktli6vOF49k48o2Xt5ommps7OSZwEVNSy
	UUh0nGCxc93cbiBBveg+Sz3UTAi8SaBR0uUUow2L+lStfxnbzr1eY4ATvIUSUYPSR8L//Je/vGL/S
	5qY1N5VEKrlepKyKvO25Mtn4FJ8MKpEnDxlOBCvTV+a8HiT1PccRY6psFZISjcnN5cfnlmGELTRW7
	W/8NiUhERZzsr/RoCC5fgsXPWO5eh02oP0tpbgrZ3kI1DhKEbG4SlF87yrye4iYEpbUjYQQK/WASk
	Mqg6UBqt6jXElQgypTfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roq7K-00000001cq5-0KNk;
	Mon, 25 Mar 2024 19:36:22 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roq7D-00000001clJ-2oaZ
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Mar 2024 19:36:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1711395371;
	bh=YWCk8MFNsSxQYcCPL/DtpufPtO/DvTFn4RE2bOKP/Sc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oTJx4Ak34ohM4kLxH/TRkAQ96+ogADwoEnXxd9YOSGyLalbY57Y1CUbhYMr1lb23G
	 G29lT28nzYhhDQh/EKEsuWIBXDlXhShbxTLFGyXVtRv8KWwiA8EK6uZzCb7tpjMKNN
	 Foa0tbRn4PToIboYcUKXEb4pE0MeZtEOSWHCKV3CytUi7DYAmd3I0ueIYE6BQ02zav
	 Ld0vZOx3NL659+C8sS5tLm+2YUx6GNDp3w4oOlNsQ3Meqy3FfneL26lRBzeAQpBFkw
	 NtAj0qjIKSrjAGpvgH8ghjEDpvviZ4m6S+hPBQHd3Wqq5bD2kKolHhj8s3Cb9ifKf2
	 SnFHjXi9EAbHw==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 739AC37820EC;
	Mon, 25 Mar 2024 19:36:11 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 126E74800CF; Mon, 25 Mar 2024 20:36:11 +0100 (CET)
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
	Michal Tomek <mtdev79b@gmail.com>,
	Ilya K <me@0upti.me>,
	Chad LeClair <leclair@gmail.com>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v9 2/7] clk: rockchip: handle missing clocks with -EPROBE_DEFER
Date: Mon, 25 Mar 2024 20:33:33 +0100
Message-ID: <20240325193609.237182-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240325193609.237182-1-sebastian.reichel@collabora.com>
References: <20240325193609.237182-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_123615_966314_B49B4F8A 
X-CRM114-Status: GOOD (  12.88  )
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

In the future some clocks will be registered using CLK_OF_DECLARE
and some are registered later from the driver probe routine. Any
clock handled by the probe routine should return -EPROBE_DEFER
until that routine has been called.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/clk/rockchip/clk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index 73d2cbdc716b..31b7cc243d82 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -376,7 +376,7 @@ struct rockchip_clk_provider *rockchip_clk_init(struct device_node *np,
 		goto err_free;
 
 	for (i = 0; i < nr_clks; ++i)
-		clk_table[i] = ERR_PTR(-ENOENT);
+		clk_table[i] = ERR_PTR(-EPROBE_DEFER);
 
 	ctx->reg_base = base;
 	ctx->clk_data.clks = clk_table;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
