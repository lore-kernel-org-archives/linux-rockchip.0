Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF940C433FE
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Apr 2022 03:23:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0KMZvePTKc+030hgIH96vQ8Hry4ypOqstn61ERwvqgM=; b=btypKCQp9l/r8N
	F0Ck59XbKH8Lqm6YAVt9V4ZUx/pHgNRw2uV1wrOFfMDuma+NRm6TpmtuTzWBqp87b/MpQX7ErQAew
	WfW3zcjt6aZF+I/ZQpOng8YmhKDWaU5qSb0YGv81CeYJIlCfLT8myWCdgFLu5UMe3yTgujSwX7l/O
	pGMhOvgFxzRV9t0GHMlTHUvsJs4kJC3q7YwW6kmYluYTtKwfmDcUQlQEdSOhwj0/hBF7eTScM0ecx
	J+8EUGY+aVK1MeeD3JnCBC9FaK6fdtqr3e+EuYOJUe+yx5hvCBUHIkTTMntLWoqqKoXZ7OppIoaWi
	HiPbmR8586wGYiMwwFHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neq5G-003gxf-Gc; Thu, 14 Apr 2022 03:23:50 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neq4X-003gdO-7h; Thu, 14 Apr 2022 03:23:06 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 98FDC5C0599;
 Wed, 13 Apr 2022 23:23:04 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 13 Apr 2022 23:23:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm2; t=1649906584; x=1649992984; bh=Zx
 ce5/kMy/OOKoyZk0y1H+zbEfnzEMwAKLBLRkDpYTo=; b=gWIUGtDisH43Z1V5Aj
 Fkfz8gjlSTkvgnu6n/vdOVhXRGKjQQk26pdNeyMCMlp97bkKvPgZmYTykiftsY4T
 VO2vOT1OB4mH1DzIL+LZaoNVKLZruuKEeESt/yly6FNERKBsHTyRlbMUBlM2FQpm
 BSLlwgS+LR8YTkhIqHycj+on19azWQElnKx9eSPiFqAWfIsfXnPBLJRv8WFa3lW3
 E6HI6fCG3u36aiADxlwoFGlFUp6IxXuOydNn+EplrLhwW1mZu0NDQec7LxtA4/oF
 8SyDc3vFs/ba0SghT1MBwIjCU7AW20ZKlJ+EtQ/pWOtDUvPPuWlOY6gvTVC0A4vy
 4z3A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1649906584; x=1649992984; bh=Zxce5/kMy/OOKoyZk0y1H+zbEfnzEMwAKLB
 LRkDpYTo=; b=fK5xWL6vqy8kwPYCMsYSnXm0WDAkqifrittZPyqJ3oFfYQ6MlG+
 7+8Vrh011hPj5rvYS61g4301ypL/2bWHRZUJajk2WEKgbRmZDLVD+ykSbzmv0ASV
 Rze6qXaw9j343bz1DF5nkipvBISJtnPYn/fGlMiAZIiI5VODtGf0Ck/Grpax8byK
 98qpHwiOU+tzrK04m4gvkwgbGPjio0Lf7edx+MH6pSu8INSt+nOAKNHOV9iYP0qF
 brxKXihHKsu+im66LICdr0ywRteoXpoYIrtD7MhFKZdL227bh/1WWwtUexPBrx+C
 k4xmIvS/ICJnXWkIE9W1xTt1EO9P1EyHNNA==
X-ME-Sender: <xms:mJNXYrzBN6VfFdKy2S78KIWeUr504Sp3yqwWjBlN-b5ROVpb7Z2p4Q>
 <xme:mJNXYjSBElpqOHxzgb-gkTfgchJvLGAdog0q0taSgW10tPGnqHUg4I4_ipOHXhG4e
 XyIb-h3Y8kEMQLYDw>
X-ME-Received: <xmr:mJNXYlUTRiVy7bkr11mmE4ozGBl7i7uhJcWD_66cqFILevMuEp11t9W6HbXvon43uXZSI17SX3cEuNrt0P2q3cjqSXVjGEtxCbvwd8ZyF13Y4UFnoiCpyXDZrGtC2UL0SW5PoQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudelvddgjedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucggtf
 frrghtthgvrhhnpeduhfejfedvhffgfeehtefghfeiiefgfeehgfdvvdevfeegjeehjedv
 gfejheeuieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
 hmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:mJNXYlgFdKFpvxCTCQSXutohXY8kn5usudjk7SPJ4b8HEygSLizktg>
 <xmx:mJNXYtAal3TT5bSrTIPqNtigMZzNmVCoLt-lnhNZrEPlQh0SEzDmYQ>
 <xmx:mJNXYuLmE_9jM9qFP_aqKpK2FVMbrJrhkOWsMRiEaF_W-Alf01-7KQ>
 <xmx:mJNXYnDArgFyNVyPX04hI3zHukrQbrvk6hq5Qwv5DFnqzC3htHXgFA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 13 Apr 2022 23:23:03 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, Samuel Holland <samuel@sholland.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH 3/6] phy: rockchip-inno-usb2: Do not lock in bvalid IRQ handler
Date: Wed, 13 Apr 2022 22:22:54 -0500
Message-Id: <20220414032258.40984-4-samuel@sholland.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220414032258.40984-1-samuel@sholland.org>
References: <20220414032258.40984-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_202305_389596_E70D261D 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Clearing the IRQ is atomic, so there is no need to hold the mutex.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---

 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 29407b36f5fa..3422db56be76 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -905,13 +905,9 @@ static irqreturn_t rockchip_usb2phy_bvalid_irq(int irq, void *data)
 	if (!property_enabled(rphy->grf, &rport->port_cfg->bvalid_det_st))
 		return IRQ_NONE;
 
-	mutex_lock(&rport->mutex);
-
 	/* clear bvalid detect irq pending status */
 	property_enable(rphy->grf, &rport->port_cfg->bvalid_det_clr, true);
 
-	mutex_unlock(&rport->mutex);
-
 	rockchip_usb2phy_otg_sm_work(&rport->otg_sm_work.work);
 
 	return IRQ_HANDLED;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
