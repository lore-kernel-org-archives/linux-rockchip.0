Return-Path: <SRS0=0Sn9=DR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A11A1C43457
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Oct 2020 15:32:50 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 57D3F22260
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Oct 2020 15:32:50 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="i1iDA8cn";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="fuGJA2Kf"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 57D3F22260
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=kwiboo.se
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:References:In-Reply-To:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nqqSuBf3mpR1HeNNwqHOVi+BXVVME5ZMGQYohPKnJIM=; b=i1iDA8cn4e50FCKKUlxThQDkmj
	Smoy183TDjIrN3X2x0AVXJTc8vfpO0MIUoyD12XNnHRHTHgegFQeUBRwEr+XwgDGA9hS6i+Sw5AqL
	1GUVEvAKSB75UeStqkyLvOHchX/y9L5odiyFJIrQThLLF0hlYc6MD1r5K3rd2WWkTbuVf3ZlpyXBa
	Ular9Pnx/Pfnn1heUo7+9bB1yhNn78yMAqNEr2f/zWD4qfQz9tG8dtK7UrT67o8huI6csmbYHTWXb
	RG8mOW7HEOw3gmU7sLdkEZO+Q+8GZVZeadpIfxclnEKjF3kgQZe8D61uDSXC6Rpn9N/T4KFkrBj6q
	pMOYT9Yg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kRGrV-0005XF-P7; Sat, 10 Oct 2020 15:32:45 +0000
Received: from o1.b.az.sendgrid.net ([208.117.55.133])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kRGr6-0005On-VA
 for linux-rockchip@lists.infradead.org; Sat, 10 Oct 2020 15:32:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=from:subject:in-reply-to:references:to:cc:content-type:
 content-transfer-encoding;
 s=001; bh=mikxWY2WrXrZaeo3Sy9pZz4F5Xpp8LK8RWbT2pvPkS8=;
 b=fuGJA2Kfy56dbguqMKJqd7af/02AtUQS6G6FTSR43DYk1B0newYcykAt469b6AF9soql
 UQ3HPIAKv58SVMJqDfMcEh3pC7BZOHUgH3AR3GvyKwk9FbcTDbROPwl2Y+7DkoNGD0aqXl
 A7yFGCSejTZlcy58TkAvISbMr2sFUyfks=
Received: by filterdrecv-p3mdw1-6685f47d68-bgzv8 with SMTP id
 filterdrecv-p3mdw1-6685f47d68-bgzv8-19-5F81D402-5D
 2020-10-10 15:32:19.094166221 +0000 UTC m=+233772.646090851
Received: from bionic.localdomain (unknown)
 by ismtpd0005p1lon1.sendgrid.net (SG) with ESMTP
 id Fxmt5RzDQi-yjWQ_OjGZnA Sat, 10 Oct 2020 15:32:18.807 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v3 3/6] phy/rockchip: inno-hdmi: remove unused no_c from
 rk3328 recalc_rate
Date: Sat, 10 Oct 2020 15:32:19 +0000 (UTC)
Message-Id: <20201010153214.19722-4-jonas@kwiboo.se>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201010153214.19722-1-jonas@kwiboo.se>
References: <20200108210740.28769-1-jonas@kwiboo.se>
 <20201010153214.19722-1-jonas@kwiboo.se>
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h+46SoLVEC6jJy9rA?=
 =?us-ascii?Q?3qGzShGqx8iCCOj8DH4a1rv6ZSnJ2Y3csk0R3hH?=
 =?us-ascii?Q?=2FGdVS=2FSpyqXmxT9XcnZfOzz5IUogdN+spJTE++b?=
 =?us-ascii?Q?d9XF9en=2FWJRlEzU01xUR1q04nvn8=2Fc0fzboqfQL?=
 =?us-ascii?Q?kHmcPMsQ4QLshubPBxNVQM2sAUHDgNnVUFKk8QX?=
 =?us-ascii?Q?yV4goG0+Sllqt7Tz+pfLw=3D=3D?=
To: Kishon Vijay Abraham I <kishon@ti.com>, Heiko Stuebner <heiko@sntech.de>
X-Entity-ID: wSPGWgGSXUap++qShBI+ag==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201010_113221_024757_90008FE8 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Algea Cao <algea.cao@rock-chips.com>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Vinod Koul <vkoul@kernel.org>, Huicong Xu <xhc@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org, Zheng Yang <zhengyang@rock-chips.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

no_c is not used in any calculation, lets remove it.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
index 093d2334e8cd..06db69c8373e 100644
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
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
