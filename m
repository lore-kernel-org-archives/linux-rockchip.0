Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 339EFCD129A
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Apr 2024 17:12:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n5rZsUcYW+l7VXR+MilE5pLw8cSrgA+06fixlodfxKo=; b=sVooDwL+j01u2O
	ud4Cle6ULGJ5H/GTZ33Q2LdRVa1dsc4FA8+9oGQEU3zNqAOTqkwh9LbozGWAUKqudT6G79sOwvPQj
	4P3vtMxuxUtRsq4qdNdkvy6w0pV305EOV93cGnQ7i8X5VZk+7Ig7Ba0jSj0SUlpTg5yXXn8vfTCm4
	tWERAWEYToquiI3KwEU+arDruCHI+pfcs7iLpzHGEVgICl8Zs3NORG0+wZAJQAgSm6rAIjvaF/8iy
	UmkdhGA5OZu78qksaovLYP9bB62Sja6TuKcQs/PvkATHc6A/3RHmo6c8E0i1IIR4C0GXWTJAAXbj8
	gyhwbEUL/4U/8zKv+AUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsQd0-00000003cCj-405t;
	Thu, 04 Apr 2024 17:11:54 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsQcw-00000003c9M-0VhP;
	Thu, 04 Apr 2024 17:11:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1367161725;
	Thu,  4 Apr 2024 17:11:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C245C43399;
	Thu,  4 Apr 2024 17:11:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712250708;
	bh=TcWRGLq08O0AXXWCdAlYWjEeOJBbdpRpjjHBPYAefD8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=ESQHBkAe3Khgge0T+gnl/aKyG0uCKAZqKTmZ8axMGCor6DzD9PBnDXNiFM6y++Jqp
	 ojSYSE6SzjeAkxq+rmOBSc1+MWHFBIYsLT3Oq2WKBbrXrUJXRD4iC0Ur9nZTRK4qC4
	 j2+XZNXsOvtZsyBCgvn4hHLCN3AHBRcjCl7RKrgn8AnmGUH8T5DZlqkipXrZyo8YqC
	 Vf7BQX60VLF4q6ZvSbdzj4cpI3PfRQwDwYDryWDbUg63MZbImksoZPpQtaiAMtG6jW
	 hsvkBs89agwjF6eQ4P19Oaur7gJkrFWcrkDZaOzSJJUBj9GPAso7gg5hmljkkeQI7H
	 1v5J5cnFNC+YA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id F37FF4800CF; Thu,  4 Apr 2024 19:11:45 +0200 (CEST)
From: Sebastian Reichel <sre@kernel.org>
Date: Thu, 04 Apr 2024 19:11:27 +0200
Subject: [PATCH 2/3] phy: rockchip-snps-pcie3: fix clearing
 PHP_GRF_PCIESEL_CON bits
MIME-Version: 1.0
Message-Id: <20240404-rk3588-pcie-bifurcation-fixes-v1-2-9907136eeafd@kernel.org>
References: <20240404-rk3588-pcie-bifurcation-fixes-v1-0-9907136eeafd@kernel.org>
In-Reply-To: <20240404-rk3588-pcie-bifurcation-fixes-v1-0-9907136eeafd@kernel.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Michal Tomek <mtdev79b@gmail.com>, 
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1794; i=sre@kernel.org;
 h=from:subject:message-id; bh=cEFPRy8gYX1m+oLrPcUp042GC8Sgj9z+ogKazCE3TEM=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGYO31EFqsLup4YLyyScdHfzr2HMXtZPA2MHd
 p503kIdYOZsB4kCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJmDt9RAAoJENju1/PI
 O/qarrgQAKNkG4dfQokmybsdhaHhfJMYQqeEvfJ+exyM0Bge4jPzP+/cts23KY299krTVV1jvZw
 f/eNszdrOyCr3PpwVLgSLuZB9FM0FVz3vjb4pkIW0JiDWeMJPO8C3t/CfqNSFKYUTmI2//rpHeb
 aMxm/hPzYrYzP2qCzHRMD/N6nHO1Febhr8z1mTT3XzuQX2/I+t+ets9cpj6yYdgeL5fQG0CTdqM
 dxx7vytSMP2YzVDRBKKNFD7TVmzMPlBlnmG/iqeqmd5lASpzjx6Xev9b1J6VVhSt2J7uKGqOUCb
 y4VCS7ElEVvo4FUTICBOiikIwu21i8/txbhquggLNlwI0SauEecxumJ7+Lo3t0vXpOzNuFN846K
 M1Iklznq5I8Q7HKZdRr9J6qMDa+GN9ZReuCyvWbm+qoNO36RLvXXZXfy16Yk3JCqxMgl1l4Hi3c
 nHfs3RcXddB1myh9yeBrWlCo2Ltpv1mc9tX2NQITFqo8QyZGC4BvijmUeOvF1Pul8x8S6VAySd2
 CVdvwO8LGgCQe5HZ2xGzPz+qFDYMJ9p7Grfg5yuZXdRUbDJLnE+INDIcvVx+2ynF4N74x7o5Nsu
 3YVHGeygWODWFrXDpv1C5vFAgl40RWxS5Ma0vrwfVd1jMjiKyfgNOtFw/pm3DkJs5AD9dcHR/d4
 ohccTuXI5bO92SbXDCs86xQ==
X-Developer-Key: i=sre@kernel.org; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_101150_378317_2C57C4B7 
X-CRM114-Status: GOOD (  11.55  )
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

From: Sebastian Reichel <sebastian.reichel@collabora.com>

Currently the PCIe v3 PHY driver only sets the pcie1ln_sel bits, but
does not clear them because of an incorrect write mask. This fixes up
the issue by using a newly introduced constant for the write mask.

While at it also introduces a proper GENMASK based constant for the
PCIE30_PHY_MODE.

Fixes: 2e9bffc4f713 ("phy: rockchip: Support PCIe v3")
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-snps-pcie3.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c b/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
index d5bcc9c42b28..9857ee45b89e 100644
--- a/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
+++ b/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
@@ -40,6 +40,8 @@
 #define RK3588_BIFURCATION_LANE_0_1		BIT(0)
 #define RK3588_BIFURCATION_LANE_2_3		BIT(1)
 #define RK3588_LANE_AGGREGATION		BIT(2)
+#define RK3588_PCIE1LN_SEL_EN			(GENMASK(1, 0) << 16)
+#define RK3588_PCIE30_PHY_MODE_EN		(GENMASK(2, 0) << 16)
 
 struct rockchip_p3phy_ops;
 
@@ -149,14 +151,15 @@ static int rockchip_p3phy_rk3588_init(struct rockchip_p3phy_priv *priv)
 	}
 
 	reg = mode;
-	regmap_write(priv->phy_grf, RK3588_PCIE3PHY_GRF_CMN_CON0, (0x7<<16) | reg);
+	regmap_write(priv->phy_grf, RK3588_PCIE3PHY_GRF_CMN_CON0,
+		     RK3588_PCIE30_PHY_MODE_EN | reg);
 
 	/* Set pcie1ln_sel in PHP_GRF_PCIESEL_CON */
 	if (!IS_ERR(priv->pipe_grf)) {
-		reg = mode & 3;
+		reg = mode & (RK3588_BIFURCATION_LANE_0_1 | RK3588_BIFURCATION_LANE_2_3);
 		if (reg)
 			regmap_write(priv->pipe_grf, PHP_GRF_PCIESEL_CON,
-				     (reg << 16) | reg);
+				     RK3588_PCIE1LN_SEL_EN | reg);
 	}
 
 	reset_control_deassert(priv->p30phy);

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
