Return-Path: <SRS0=17rj=KO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4BEB1C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 17:42:21 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BBF5661007
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 17:42:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BBF5661007
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TyxYnk23qEO4sKuf6WzZGqSSxjF76OSdwcqa3zBkIT8=; b=lb6vwKmLX1Q9tVFIF7qN54ewv3
	ar5o5AK1cYYJ3ODt4o2jHeLFJ0JEcbyy2ua7souaZIIXhDkvm1KT2Uiv5TNmQEmyLtiTIqFOPfcGQ
	e33i+qfsdD1BqUOgVdDNwGlo54r3og46s7VbNiKe4/4jVzAIq3VflhAKroMjiAwlj6Y8qWhnTxxLp
	0ZDpbNws4ZDWc9Y2ECdJUyw0Tsk7SxpTWKsipdck2FCBDZuMPt+XtwKc851mdqKs89PxgpRXpJq7z
	kYE3PkKYEgoblWDY4jBExgP0L0VcsYaC+3U+tYx4ibCLpoCl8a5N8dbx9KVl5f5dzB+YV6npKK8YS
	R0hmdQ4A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljQD0-004foS-20; Wed, 19 May 2021 17:42:14 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljQCn-004fmv-It; Wed, 19 May 2021 17:42:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=UMV7QsTgPPQWeHZACgAJTLak2uBSFbgGNVbitXpkumY=; b=RjvGZ3sWrVdpAPcIa4UtIKudD5
 lYjQJRr1Dblpn3S8OEc/7lY1n9OltPja9uvl5FwHYdVio87PBcbkc9JNISalbjZf/rvKDRquKjHEM
 X4Fz+MRlKVGkhC/XDNCvcnYAOi+6stinN/TF0VVuOR54fUXwKv8R8fK/vaeG59SCYjxIu5XTtHuGO
 ut904UfhTz6S2qo/5JMJ2QoAWwtY7HvBZr5Ir0SVlSOUBK5bIn2U/Z1SqAwMgPV2MxZOyYW7MjlQV
 35RxUlVtmZJlBNhWtzPpZzUR6gnNTzZRLKq5Smjd8t1rnZJkyP0/H1QgwIN/shS9CN/3+djuimlif
 ZN833GFg==;
Received: from mail-qk1-x72c.google.com ([2607:f8b0:4864:20::72c])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljQCk-00FfNv-T4; Wed, 19 May 2021 17:42:00 +0000
Received: by mail-qk1-x72c.google.com with SMTP id 124so1234615qkh.10;
 Wed, 19 May 2021 10:41:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UMV7QsTgPPQWeHZACgAJTLak2uBSFbgGNVbitXpkumY=;
 b=CTMANwDtXaZ5Sx/ObdGSKt93E1OgGIain6uNRfKCke4FfgEHk2C+3N09zLtXCVtCT5
 BNts0q2AQgbzRAiCb/yXEL4F6I/lCAidlFy9C4F+tskJRyp2if/dlU+XU+raP+NSN5b2
 AV1XOOLuMfUzBAsxqbzr5no9uK6oeyjmNuR7oJjgTcOmcmWkNZpD43ITieb95h+t/FZs
 xsIyes6D2gULmM7mBwVrIDKxQFXtOIf4s+6gDP4CxOUVYii2T+BvKtCfe+mleREsk80k
 zQOEI50CfXPhC0wH/efwblMLpPXBYN99p+2I/qJo6nRkmpxAZ3c/eFYfi8MinFPCqXHh
 KQpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UMV7QsTgPPQWeHZACgAJTLak2uBSFbgGNVbitXpkumY=;
 b=bntASmcLswCFwpWvvfjEcj06dZ+nWxc51OUqOplrCZLxnH7rAOY++xFL7qlzF4Y/hB
 PTSlvxNlZ4xRl6t2Bswjn8T7NLyFbM6Fb1hSmcxhCbaozPG+PzenzcfM2+b4qAgYHSnG
 7shEvIDEM18n+eS7r/jUK9f4PLVZv/3INUSBYWjd9gnrRC88mGJhHCeT8gdGrhZns0tx
 W5p9ig2vWE3RdT/HnAcOxrVO2Wmzum06slaAM6YyQv80ouKBuKo33dntiGsczA8IETZr
 i8+m61i70qU6cNNekIvDpAHT48dm6O9BSrSAfVd3p1uQtJCClbun8H+Ixxebi1HMoupV
 +5EA==
X-Gm-Message-State: AOAM531p2Y9KCGsdo9hJzCqxZMd9hABxQ2D9P6uMkyA0swE95B/B+XOA
 MiLeuq7/UJI/Iwe56b8qLVg=
X-Google-Smtp-Source: ABdhPJzIFT/6iKFcpgqqZGn/WXeltIuFnyxwyWHx+EoZfc1DaoTOk8qlYPNqJ1+vWpugaseUlQyLRA==
X-Received: by 2002:a05:620a:4543:: with SMTP id
 u3mr549497qkp.118.1621446116804; 
 Wed, 19 May 2021 10:41:56 -0700 (PDT)
Received: from master-laptop.sparksnet
 ([2601:153:980:85b1:de7c:b0e3:ef92:cf37])
 by smtp.gmail.com with ESMTPSA id k125sm280021qkf.53.2021.05.19.10.41.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 May 2021 10:41:56 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>,
 Elaine Zhang <zhangqing@rock-chips.com>
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Peter Geis <pgwipeout@gmail.com>
Subject: [PATCH] clk: rockchip: fix rk3568 cpll clk gate bits
Date: Wed, 19 May 2021 13:41:49 -0400
Message-Id: <20210519174149.3691335-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210519_104158_963319_3D412BF0 
X-CRM114-Status: GOOD (  12.32  )
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

The cpll clk gate bits had an ordering issue. This led to the loss of
the boot sdmmc controller when the gmac was shut down with:
`ip link set eth0 down`
as the cpll_100m was shut off instead of the cpll_62p5.
cpll_62p5, cpll_50m, cpll_25m were all off by one with cpll_100m
misplaced.

Fixes: cf911d89c4c5 ("clk: rockchip: add clock controller for rk3568")

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 drivers/clk/rockchip/clk-rk3568.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
index 946ea2f45bf3..75ca855e720d 100644
--- a/drivers/clk/rockchip/clk-rk3568.c
+++ b/drivers/clk/rockchip/clk-rk3568.c
@@ -454,17 +454,17 @@ static struct rockchip_clk_branch rk3568_clk_branches[] __initdata = {
 	COMPOSITE_NOMUX(CPLL_125M, "cpll_125m", "cpll", CLK_IGNORE_UNUSED,
 			RK3568_CLKSEL_CON(80), 0, 5, DFLAGS,
 			RK3568_CLKGATE_CON(35), 10, GFLAGS),
+	COMPOSITE_NOMUX(CPLL_100M, "cpll_100m", "cpll", CLK_IGNORE_UNUSED,
+			RK3568_CLKSEL_CON(82), 0, 5, DFLAGS,
+			RK3568_CLKGATE_CON(35), 11, GFLAGS),
 	COMPOSITE_NOMUX(CPLL_62P5M, "cpll_62p5", "cpll", CLK_IGNORE_UNUSED,
 			RK3568_CLKSEL_CON(80), 8, 5, DFLAGS,
-			RK3568_CLKGATE_CON(35), 11, GFLAGS),
+			RK3568_CLKGATE_CON(35), 12, GFLAGS),
 	COMPOSITE_NOMUX(CPLL_50M, "cpll_50m", "cpll", CLK_IGNORE_UNUSED,
 			RK3568_CLKSEL_CON(81), 0, 5, DFLAGS,
-			RK3568_CLKGATE_CON(35), 12, GFLAGS),
+			RK3568_CLKGATE_CON(35), 13, GFLAGS),
 	COMPOSITE_NOMUX(CPLL_25M, "cpll_25m", "cpll", CLK_IGNORE_UNUSED,
 			RK3568_CLKSEL_CON(81), 8, 6, DFLAGS,
-			RK3568_CLKGATE_CON(35), 13, GFLAGS),
-	COMPOSITE_NOMUX(CPLL_100M, "cpll_100m", "cpll", CLK_IGNORE_UNUSED,
-			RK3568_CLKSEL_CON(82), 0, 5, DFLAGS,
 			RK3568_CLKGATE_CON(35), 14, GFLAGS),
 	COMPOSITE_NOMUX(0, "clk_osc0_div_750k", "xin24m", CLK_IGNORE_UNUSED,
 			RK3568_CLKSEL_CON(82), 8, 6, DFLAGS,
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
