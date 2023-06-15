Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9670EB64D9
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jun 2023 17:10:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3mgMdZeI7TLJpW3Kzc63nIVGDDLIi1XCKkF1baCtMVw=; b=pNtc0od01QAk/XeBV0W9SRkS1N
	zKMrnIPpmIKoBohDv+tBb1OEYiFsIsuDo3HWLxx9pZqLO6xofsgqMfKNECTCeAOatqRL6hRwRxelR
	k/YLUOH+Qycd2MwUBO9k38wpurvvrO/f2lsEnGqxdETwTubuM3+7h81/e1v396JEaG19CN1Ueh6ju
	cNpIF/zUuo4uU8bQtfUJF9g5orC2759EGSRDuZftETejiTkWBtp3d8nD/STsYaeKQEMXatuAsE7Xk
	W71PGTIt4DObUYXpoApsoFEHQsYM41e5aYKCFSIGrmopD0nxcWnNwlTkBFihqDfyoaG5HIseeJnMC
	dfuYIu2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9qUO-00FXIy-3A;
	Thu, 15 Jun 2023 17:10:28 +0000
Received: from s.wrqvwxzv.outbound-mail.sendgrid.net ([149.72.154.232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9qUH-00FXBU-1P
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Jun 2023 17:10:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=from:subject:in-reply-to:references:mime-version:to:cc:
	content-transfer-encoding:content-type:cc:content-type:from:subject:to;
	s=s1; bh=g0mKsxc7WifgfdQa6wkEL0DNKIhExEjXfMT5XBSp9vg=;
	b=FyhGjc4hI55uDjlAar+NHdUxq6WdEL6eAqI0BktwfCEg+kdAJ3JFf1WPDfpHgAqXVeSw
	0iCSPkLjU3a50t9iW93e8MRyKTfxUXDBC0r55IH5avyNOZ8krpf3QmUDnTbpI8GUkrmmEB
	QNQMZZ+ItsbZQoL5E3HIzQtqY+OUDrwvGWKcQHa02IDjKOUs28bwKjwht9hVBPJxXx9988
	VZ9iyxa+Bctkenc/cNDy5Y/rkj8QK3x2Zku+iUQcRh/hEQiDkhkmSizU6a0rbLK7TP3scg
	EA4CC8qPN0Da9zLsdXZYpAaOzfQ91nFd25mq7AEPrUzfPVcfGWa4yUNxpQJtqbCw==
Received: by filterdrecv-77869f68cc-l7kjz with SMTP id filterdrecv-77869f68cc-l7kjz-1-648B45FB-47
        2023-06-15 17:10:19.904194626 +0000 UTC m=+3087262.988656015
Received: from bionic.localdomain (unknown)
	by geopod-ismtpd-2 (SG)
	with ESMTP
	id qITfAYONSLq-yRrNSqJZKw
	Thu, 15 Jun 2023 17:10:19.695 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v4 3/6] phy/rockchip: inno-hdmi: remove unused no_c from
 rk3328 recalc_rate
Date: Thu, 15 Jun 2023 17:10:20 +0000 (UTC)
Message-Id: <20230615171005.2251032-4-jonas@kwiboo.se>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230615171005.2251032-1-jonas@kwiboo.se>
References: <20230615171005.2251032-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h2Wro69xbbdc3QDDK?=
 =?us-ascii?Q?WHBniN5oob5+vr=2F5t3kES7o30Kht6TfePRyTCkj?=
 =?us-ascii?Q?RZf4ZJK=2FD4SK2lT1n6EMDZdqBmoJtpzosmRzc8V?=
 =?us-ascii?Q?2F3D1n66p7spuudK4ON1c0XpYaLjKN6iMWJb5qd?=
 =?us-ascii?Q?iA9uMs5S5fCRpTXN=2Fsrimhran3lCPclrdyTRdbw?=
 =?us-ascii?Q?TGn1=2FT5IgC0eTO7asSlpQ=3D=3D?=
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Alex Bee <knaerzche@gmail.com>, linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_101021_570583_4851251E 
X-CRM114-Status: UNSURE (   8.37  )
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

no_c is not used in any calculation, lets remove it.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v3:
- no change

 drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
index 7d412f771f6c..f027e0a2e26b 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
@@ -714,7 +714,7 @@ unsigned long inno_hdmi_phy_rk3328_clk_recalc_rate(struct clk_hw *hw,
 {
 	struct inno_hdmi_phy *inno = to_inno_hdmi_phy(hw);
 	unsigned long frac;
-	u8 nd, no_a, no_b, no_c, no_d;
+	u8 nd, no_a, no_b, no_d;
 	u64 vco;
 	u16 nf;
 
@@ -737,9 +737,6 @@ unsigned long inno_hdmi_phy_rk3328_clk_recalc_rate(struct clk_hw *hw,
 		no_b = inno_read(inno, 0xa5) & RK3328_PRE_PLL_PCLK_DIV_B_MASK;
 		no_b >>= RK3328_PRE_PLL_PCLK_DIV_B_SHIFT;
 		no_b += 2;
-		no_c = inno_read(inno, 0xa6) & RK3328_PRE_PLL_PCLK_DIV_C_MASK;
-		no_c >>= RK3328_PRE_PLL_PCLK_DIV_C_SHIFT;
-		no_c = 1 << no_c;
 		no_d = inno_read(inno, 0xa6) & RK3328_PRE_PLL_PCLK_DIV_D_MASK;
 
 		do_div(vco, (nd * (no_a == 1 ? no_b : no_a) * no_d * 2));
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
