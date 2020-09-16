Return-Path: <SRS0=LkMs=CZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72735C433E2
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2020 16:18:08 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 05F36229C4
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2020 16:18:07 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="NP0p89Vo";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="arZO1DSz"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 05F36229C4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E3H7mjCb7aR4/SxTd2kOXKLNU4frpw72Ams13IfHiXQ=; b=NP0p89VoPOAQXC8hzRBYsNCj/o
	qdjQhhkSvyO1kuhtqVefL/aU9ekWKe/+pcG7uD9V1Px0s86GLUMMNHGXUi0VWJjYKAnEhcfrcSTu1
	cYkai7ZmihWp4w+QFQ46ivquhzhJ8uUQTBfF9A0e9y848j73ve/z16BpOfUZ2anRLWTrr4A1QRNiQ
	ZZT7zWBx/WYe7r0GE2HMWuTpobycqi2BP/3xSmMkHU/mj5Fb23StYOGxZeCDNFnK28IyjgwZWdblV
	kfAYsAilZ4+9lOPhiHXCqr9G23qSYGd7hZbUNYTQwe0uVpe/YGaPKoc8FlQuSSjjvUPTrFYd9ejGc
	eG7YDvyA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kIa8B-0002Bp-KQ; Wed, 16 Sep 2020 16:18:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIa80-00027g-8I; Wed, 16 Sep 2020 16:17:53 +0000
Received: from kozik-lap.mshome.net (unknown [194.230.155.191])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9595F227C3;
 Wed, 16 Sep 2020 16:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600273071;
 bh=LN9CdnpYig01xRkC8IS2l0nFAprnIaPmxff2deSsbdM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=arZO1DSzyRhOIJzlgIdKnCqEdPq/+2oXH63V3zCRjt2uefr7rK8wu2FICE1m/evd4
 PlqSMpOP/sMmTTnpdckGd2RTU2CZs6H8hQ2e0xrGUnH+VxSn5fabupSMTnPVjpODK1
 n6acg/19rRfvPoRNDQbAwgcoHWP6hRI2xjgG86tg=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 David Lechner <david@lechnology.com>, Sekhar Nori <nsekhar@ti.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH 2/6] clk: fixed: add missing kerneldoc
Date: Wed, 16 Sep 2020 18:17:36 +0200
Message-Id: <20200916161740.14173-2-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200916161740.14173-1-krzk@kernel.org>
References: <20200916161740.14173-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200916_121752_408640_7A9A616F 
X-CRM114-Status: GOOD (  14.32  )
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add missing kerneldoc to fix compile warnings like:

  drivers/clk/clk-fixed-factor.c:211: warning: Function parameter or member 'node' not described in 'of_fixed_factor_clk_setup'

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/clk/clk-fixed-factor.c | 1 +
 drivers/clk/clk-fixed-rate.c   | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/clk/clk-fixed-factor.c b/drivers/clk/clk-fixed-factor.c
index 8b343e59dc61..910e6e74ae90 100644
--- a/drivers/clk/clk-fixed-factor.c
+++ b/drivers/clk/clk-fixed-factor.c
@@ -206,6 +206,7 @@ static struct clk_hw *_of_fixed_factor_clk_setup(struct device_node *node)
 
 /**
  * of_fixed_factor_clk_setup() - Setup function for simple fixed factor clock
+ * @node:	device node for the clock
  */
 void __init of_fixed_factor_clk_setup(struct device_node *node)
 {
diff --git a/drivers/clk/clk-fixed-rate.c b/drivers/clk/clk-fixed-rate.c
index 77499a27c8fb..45501637705c 100644
--- a/drivers/clk/clk-fixed-rate.c
+++ b/drivers/clk/clk-fixed-rate.c
@@ -168,6 +168,7 @@ static struct clk_hw *_of_fixed_clk_setup(struct device_node *node)
 
 /**
  * of_fixed_clk_setup() - Setup function for simple fixed rate clock
+ * @node:	device node for the clock
  */
 void __init of_fixed_clk_setup(struct device_node *node)
 {
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
