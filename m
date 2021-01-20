Return-Path: <SRS0=q9XV=GX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2337EC433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 09:31:38 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B84A522D08
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 09:31:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B84A522D08
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZuLbuMyHDYSq6qVqb3k3EYb26+jtac4MknO2y0aREMw=; b=msZZpoNk6BICNOlHib4F1HcpL
	avrXOkE5ZsMkxpcVK/kcLT2PbUv3VSfh0u6gp/8SL8Ts4J9KpsaUrt8g+dQQWDdAWZ1c0ZfjIdocF
	0J731Qz/MwCdJRyx9F4FsJkAno+5mQJteWwxFldEF1oUiJR9fnaQc1H6JvMPeQaKW1wO2wPToD41b
	vOAwCOl60UuMA86/M56yh/yp3BGhxDWYvLxbfTcx17IdJ0tX+olDiwlCcFLmKMrSFgq+zdmdTZOXg
	IX0dqB5tur8GQJ6EBW8T07LhmCkFdwGHImTIItTfdH4m+dLlVb5SH49vwVyL5w10599zIbY7iUJzm
	PsiaCB34A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l29pr-00019t-Dh; Wed, 20 Jan 2021 09:31:31 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l29pB-0000u2-2H
 for linux-rockchip@lists.infradead.org; Wed, 20 Jan 2021 09:30:52 +0000
Received: by mail-wr1-x432.google.com with SMTP id m4so22349020wrx.9
 for <linux-rockchip@lists.infradead.org>; Wed, 20 Jan 2021 01:30:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yKuuR4wyj2fWlRIK+EKlFxHaqO4Ik4r36A/blNvBUws=;
 b=DIvBQakzIghVLP5ZRiLIIk76X0nPl+XMwv0GEsSui7fhaPObPa2RRoeC5vLmI46t+9
 0J8F7W9pM9FtV7GG39c9ZhJuoXJOnXKDFEtfBnHUm1Zu86NWbje0uoE96V8beoCS736d
 0EcIrfgUlc1tdGBM8Iqhu6n7qhw8UmEAYEee6oboUVo9LNL5jjHtJcwRM4OtpOw5cBzM
 4f9IJYsbGIYrHf8ab3zTb8IZP3jKVeDxoZVxhuYve4it/wHpstW+l/njlAZUdGuF/bgL
 NpVn4KuGqXcoC3KPlwRhsG6tdeTtP3yzZEdcX0m8QvqtLwBMp0JaPj/1s0M77Eze8x6T
 1DLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yKuuR4wyj2fWlRIK+EKlFxHaqO4Ik4r36A/blNvBUws=;
 b=IYW/mBcBVfJoM3i6s/Lt2wcJkAV2Ixc1ezz+SJVj/8cAJBF/lXS2YHDsdD+ytwwGhQ
 14R6gcAjE1kZ0Fua0M/RMnsg7p7FCmRkqNWstGNoZsKQq5yxVkXsvWD30Y7OmzKVBdYU
 veZBVnZnPInxhb/AwUwJJbDrnNI3+xChRl3qAZozLxRJymBYHSgaWwOK2kjZM4FYNR8D
 5FDuqrXMB5GiHF6SVmcAOppxwfN3ApFF39gmVIqlZ93gxGV6OLzFJzOONjN1YsFyIwYl
 /bSYNrehQjDjpocm+WIB7vo/wC4gaxkeTY+RouN86sUwJX0yOcx0igTPjCcUcwHJlBjU
 A2Jw==
X-Gm-Message-State: AOAM531sFN5DltQcrbUzH2d60+uXT/SqPnlccoNOoGv4Th12j+fTwb5O
 zH2Sx768ya3p21diqYsuG4ThXw==
X-Google-Smtp-Source: ABdhPJzkANdQfSHYBemOqLUzk1mQilYRQs50FdyxtrCmZ5LECdlrx9Qh+/KOY40JABAEyKPBigBseg==
X-Received: by 2002:adf:e54a:: with SMTP id z10mr8481420wrm.1.1611135047757;
 Wed, 20 Jan 2021 01:30:47 -0800 (PST)
Received: from dell.default ([91.110.221.158])
 by smtp.gmail.com with ESMTPSA id z130sm2889201wmb.33.2021.01.20.01.30.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Jan 2021 01:30:47 -0800 (PST)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Subject: [PATCH 03/20] clk: rockchip: clk-pll: Demote kernel-doc abuses to
 standard comment blocks
Date: Wed, 20 Jan 2021 09:30:23 +0000
Message-Id: <20210120093040.1719407-4-lee.jones@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210120093040.1719407-1-lee.jones@linaro.org>
References: <20210120093040.1719407-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210120_043049_256527_405CC88B 
X-CRM114-Status: GOOD (  11.99  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, Xing Zheng <zhengxing@rock-chips.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Fixes the following W=1 kernel build warning(s):

 drivers/clk/rockchip/clk-pll.c:104: warning: Function parameter or member 'i' not described in 'RK3036_PLLCON'
 drivers/clk/rockchip/clk-pll.c:365: warning: Function parameter or member 'nr' not described in 'RK3066_PLL_RESET_DELAY'
 drivers/clk/rockchip/clk-pll.c:584: warning: Function parameter or member 'i' not described in 'RK3399_PLLCON'

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: Xing Zheng <zhengxing@rock-chips.com>
Cc: linux-clk@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/clk/rockchip/clk-pll.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
index 4c6c9167ef509..fe937bcdb4876 100644
--- a/drivers/clk/rockchip/clk-pll.c
+++ b/drivers/clk/rockchip/clk-pll.c
@@ -97,7 +97,7 @@ static int rockchip_pll_wait_lock(struct rockchip_clk_pll *pll)
 	return ret;
 }
 
-/**
+/*
  * PLL used in RK3036
  */
 
@@ -358,7 +358,7 @@ static const struct clk_ops rockchip_rk3036_pll_clk_ops = {
 	.init = rockchip_rk3036_pll_init,
 };
 
-/**
+/*
  * PLL used in RK3066, RK3188 and RK3288
  */
 
@@ -577,7 +577,7 @@ static const struct clk_ops rockchip_rk3066_pll_clk_ops = {
 	.init = rockchip_rk3066_pll_init,
 };
 
-/**
+/*
  * PLL used in RK3399
  */
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
