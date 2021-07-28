Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A69BC4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 18:02:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3117F60EE2
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 18:02:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3117F60EE2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fl/4F4X5bta0NWROcG8YyLFrjlB0YGQ4LhNHWRU7g7o=; b=n7aIpGM6GCOhuE
	lWjc0StE8PWZkMFIWPkQoLIsHxWLBdsbpE7Dqn5FHDVfCY2WU4ws/gyBjGsrmJ2wCWb/YzlgEUaUt
	Vef6YXoB6HFS42Kfwkj46meNbmTtPUyLKfNLG5JkKV83vYeH6W731UQwATeLawXYONwx1JgnDDd6j
	u2DkafQHSpVWld9jFlNcl8BAzqvuW3bZip13kmsrHqv8iks7cu3GXm7ojEwgCuq2UhT0N7xBpPvzc
	BniCXffylpf5CT7l101e3VRh1SQZ6JJHWIec7YnEFy9F7sleJKJScaw9qXViHDZmyBtFFEsJesGiL
	NF3xm7pkdvfNaw3/AKxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8nt5-001yKN-Qi; Wed, 28 Jul 2021 18:02:35 +0000
Received: from mail-qv1-xf32.google.com ([2607:f8b0:4864:20::f32])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8nrX-001xnb-KX; Wed, 28 Jul 2021 18:01:01 +0000
Received: by mail-qv1-xf32.google.com with SMTP id jm13so1997330qvb.5;
 Wed, 28 Jul 2021 11:00:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rPqLjOXsqV94UI25n/9CxZKC1Erx0U3BkTkX0ji1T7I=;
 b=IbQtOFHYx1EjJ567K1P9YznQxwLwclrO6ezP9aDlFfDQdVBaFa0p14UXh2f5pEv2Ip
 ZVduQHDVa2ukcMv/h/gOEtdyhX82CwtnP9ND3hiKc7OzIboRSgUbosWOTtIeA2G4bmBD
 D81eVwcrwWFrEh/SncOy8qKPRZJGf13D5TCKDz5VuL0fYMLXI5ka3Jv0Ii3X4hKyXTUr
 tRBnTXUnyCX+ZuehdBZBK3Uh2WX3GGat1oWPtfVLsQW11XhcO8GGq9Sl4Bl5vTjPDCHv
 6zIX3jViB1Yb1h0bs8GFgVsBMiEw9spPPAcfABg/p8opslmK5YWrYldrKbnnoaiJOwEn
 h09g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rPqLjOXsqV94UI25n/9CxZKC1Erx0U3BkTkX0ji1T7I=;
 b=JvBRYtFMXFvLEi+C0NtGk0Ku+w7fDX3enLflAN5OibUX4NTEnrjZcJUGhDUVmUx9cX
 xnzqHdNnRA6BYl/Fy9VPHTabHc07zfPbRhW/67hFisLynTersTDGLrYTJMggPkhWSKW2
 arOV7AA7isKwiLUkfQdW68fhHJQ1q0exH8wsrCgWirCcPlIvw2B+P/HlpGEL1L1iII80
 t0azgGhcUah1wzQ7+Us0bkE8pVO49208CTJNadYJt/PGIRF8+ObpWYPXBHh6Um6Bo8Xg
 9KophIG3fm8nOE7uOmXjyo4k3JPbdS0ajJcnNFOAS9UjCx7eqjKN51Qzkn6Uxin0prdh
 Hu2A==
X-Gm-Message-State: AOAM532qhvqe2GCU4mIvvGCw0c75D/DrExh9xzDqR+CDzt1hf5Anjo8K
 IuClNjXkRPolqXayyQ8PzXM=
X-Google-Smtp-Source: ABdhPJwfHlE/wHQhpc7paohVWmUOifKKt2PNUIlQQ+it5vD1Md0OsrvSP7Fg1/ufE1LIvCZeg15jgQ==
X-Received: by 2002:a0c:ed51:: with SMTP id v17mr1292786qvq.20.1627495258206; 
 Wed, 28 Jul 2021 11:00:58 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:b58:2ae8:d75f:660a])
 by smtp.gmail.com with ESMTPSA id r5sm223341qtm.75.2021.07.28.11.00.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jul 2021 11:00:57 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/8] clk: rockchip: fix clk-pll rk356x early pll init
Date: Wed, 28 Jul 2021 14:00:28 -0400
Message-Id: <20210728180034.717953-3-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210728180034.717953-1-pgwipeout@gmail.com>
References: <20210728180034.717953-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_110059_697870_8F08C509 
X-CRM114-Status: GOOD (  15.29  )
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

The rk356x needs to reclock certain plls at boot. If the grf phandles
are not linked in the cru and pmucru nodes, it is unable to apply any
assigned-clock-rates at boot.

Fix this by removing the check for the grf for selecting the utilized
operations.

"The rk3568 reuses the pll_rk3328-type which in turn is a modified
pll_rk3036 and uses their ops. Which in turn means the pll shouldn't
access the GRF at all, as it uses the pll's own register to check the
locked state."

Suggested-by: Heiko Stuebner <heiko@sntech.de>
Link:
https://lore.kernel.org/linux-devicetree/20210728135534.703028-7-pgwipeout@gmail.com/
Fixes: c9c3c6eecc55 ("clk: rockchip: simplify GRF handling in pll
clocks")
Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 drivers/clk/rockchip/clk-pll.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
index fe937bcdb487..f7827b3b7fc1 100644
--- a/drivers/clk/rockchip/clk-pll.c
+++ b/drivers/clk/rockchip/clk-pll.c
@@ -940,7 +940,7 @@ struct clk *rockchip_clk_register_pll(struct rockchip_clk_provider *ctx,
 	switch (pll_type) {
 	case pll_rk3036:
 	case pll_rk3328:
-		if (!pll->rate_table || IS_ERR(ctx->grf))
+		if (!pll->rate_table)
 			init.ops = &rockchip_rk3036_pll_clk_norate_ops;
 		else
 			init.ops = &rockchip_rk3036_pll_clk_ops;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
