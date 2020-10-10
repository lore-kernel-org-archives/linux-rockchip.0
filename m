Return-Path: <SRS0=0Sn9=DR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F561C433DF
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Oct 2020 15:32:40 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 124E022260
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Oct 2020 15:32:39 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="XXx4GT9X";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="HglME5te"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 124E022260
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=kwiboo.se
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:References:In-Reply-To:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e54XWsXnHNseOZmm4xO38tDZ+ACIuC0uLbZJMOTeVB4=; b=XXx4GT9XdN7OuQP4pemAv5NOHk
	z0aRPbPR0XGHrrDOkJRvQPFoVLWNydR+v/sKqIbIJoizwiNjgemH9qpB79PVvL1AsLS3XgMqEHrl4
	8VfKlMDlHyMsozF+EXKxcesTxJURvsFm1k6ZB9XH87R+yUpg9/oHyKBz8Nc4ZAOtwttRcB9rYAKhM
	FbkLgDrA8nIJdiTZMPjrI5DEKNEsmWyHo5nglv3oV5g7GYEik7g3ezxuP1HEzFHLMEDjh6OxJ2caP
	aoSGCOuRmxZXSd+ilyqL6NdQT/23722ErtXa1nQ63fQ4tymDDgB7DBUYOJPMW4u96TpUXTmxyQunV
	IttjRTpw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kRGrG-0005TQ-Jh; Sat, 10 Oct 2020 15:32:30 +0000
Received: from o1.b.az.sendgrid.net ([208.117.55.133])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kRGr5-0005Om-Ui
 for linux-rockchip@lists.infradead.org; Sat, 10 Oct 2020 15:32:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=from:subject:in-reply-to:references:to:cc:content-type:
 content-transfer-encoding;
 s=001; bh=HR4kr+bDhTd27xGffh3PFuiOeC0GhYxHGFLRteOkMOg=;
 b=HglME5tep4F8tssX/3Kj3u2SPccF41KenX3c6TfEVBc1wLEKqAh0Ciix6djA/8xPmb7v
 igaha0pQ33dUKRd8vGH9rQ0Qh0atiblOe9BLbjDbBipFGvLESBsKBMfkt5e14T2P/aAkdf
 pF42OMSWjasHOm1B7zD6na0yueFOXbIFk=
Received: by filterdrecv-p3mdw1-6685f47d68-rbs6q with SMTP id
 filterdrecv-p3mdw1-6685f47d68-rbs6q-18-5F81D402-2
 2020-10-10 15:32:18.198781183 +0000 UTC m=+233784.103325308
Received: from bionic.localdomain (unknown)
 by ismtpd0005p1lon1.sendgrid.net (SG) with ESMTP
 id IDVGaD7fTTeGX5FuXCLoeA Sat, 10 Oct 2020 15:32:17.911 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v3 1/6] phy/rockchip: inno-hdmi: use correct vco_div_5 macro
 on rk3328
Date: Sat, 10 Oct 2020 15:32:18 +0000 (UTC)
Message-Id: <20201010153214.19722-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201010153214.19722-1-jonas@kwiboo.se>
References: <20200108210740.28769-1-jonas@kwiboo.se>
 <20201010153214.19722-1-jonas@kwiboo.se>
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h5PeQ=2F8GT5JxvfjTx?=
 =?us-ascii?Q?oREXZhpZWKmUXxK7F7a9E3o4w0pmPqqTCy+z7ob?=
 =?us-ascii?Q?bLB=2FanqZtFMNH+Of8VMqZzD+tyeqX2poIZk2D3K?=
 =?us-ascii?Q?2Z7SC=2FQkGIOUng92Lj0fjvqr7Lm3NYSt2h6LHxg?=
 =?us-ascii?Q?tsxOKLv4fHN+a028rmPyLOzubJz7L5u9GN6uhZ9?=
 =?us-ascii?Q?zbPb+7+M1YFOB3s=2FzrqCA=3D=3D?=
To: Kishon Vijay Abraham I <kishon@ti.com>, Heiko Stuebner <heiko@sntech.de>
X-Entity-ID: wSPGWgGSXUap++qShBI+ag==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201010_113220_063254_A4381E3C 
X-CRM114-Status: GOOD (  11.09  )
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

inno_hdmi_phy_rk3328_clk_set_rate() is using the RK3228 macro
when configuring vco_div_5 on RK3328.

Fix this by using correct vco_div_5 macro for RK3328.

Fixes: 53706a116863 ("phy: add Rockchip Innosilicon hdmi phy")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/phy/rockchip/phy-rockchip-inno-hdmi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
index 9ca20c947283..b0ac1d3ee390 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-hdmi.c
@@ -790,8 +790,8 @@ static int inno_hdmi_phy_rk3328_clk_set_rate(struct clk_hw *hw,
 			 RK3328_PRE_PLL_POWER_DOWN);
 
 	/* Configure pre-pll */
-	inno_update_bits(inno, 0xa0, RK3228_PCLK_VCO_DIV_5_MASK,
-			 RK3228_PCLK_VCO_DIV_5(cfg->vco_div_5_en));
+	inno_update_bits(inno, 0xa0, RK3328_PCLK_VCO_DIV_5_MASK,
+			 RK3328_PCLK_VCO_DIV_5(cfg->vco_div_5_en));
 	inno_write(inno, 0xa1, RK3328_PRE_PLL_PRE_DIV(cfg->prediv));
 
 	val = RK3328_SPREAD_SPECTRUM_MOD_DISABLE;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
