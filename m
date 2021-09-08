Return-Path: <SRS0=E4Dv=N6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C11F4C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Sep 2021 18:14:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8857361100
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Sep 2021 18:14:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8857361100
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2Lurg0/voFi6LxNfPjaqqdcKBr2c4BOdO+Ox2j/jCMU=; b=Jt32BBIa+VWwQc
	jmMsIH2Iv+r0yS36S6TsMivEFw4coDVwnMLz80Sr61n+tvRejN5aLP4mrYtNAB06c/iHiqMwX14WZ
	42tkcVsw+wKAi+EDUej6RbD9yS1x8YM4nUr3ccfQZocg3tNTVMeIbpLE7IsMsc2bhvKX11xlgH0gt
	y4iUhoMNGmuSyMGElfyYGbiW8RIjzHVOcVbpM8v1EG5HHR7TPwl9uDeDTjSror4+S5oScSjIwfDo1
	UH1srfYIfNgp43pv+KkByE83dijit6PD6yGPcWC74Kaa/Gd1EgtM6YIiFY2GoDoI9fgCpLG2UhbLM
	stY81Mbu0C+9CEedn7ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mO25R-007NBf-KK; Wed, 08 Sep 2021 18:14:17 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mO25F-007N7b-PG
 for linux-rockchip@lists.infradead.org; Wed, 08 Sep 2021 18:14:07 +0000
Received: by mail-pg1-x52a.google.com with SMTP id 17so3491065pgp.4
 for <linux-rockchip@lists.infradead.org>; Wed, 08 Sep 2021 11:14:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uzvU0TWDqoO4AhItKda+Ka4vpknel8tSLxFVqVBoaHc=;
 b=dWLekvtSO0q46ozawqJd+04F7FuB57Cc0/SYjtEAJ/zPKT1iReWuzDc8VmgpGffCxq
 74mKvOXwSMsvA3xgPC5At98vactbCz5vxbdwYWaPWteBLn2zgIWeJjocuti+bMFGoqk3
 gXkiZClJdgCsQVK/pYBE9UTCRL4aEhZ4ZENpE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uzvU0TWDqoO4AhItKda+Ka4vpknel8tSLxFVqVBoaHc=;
 b=gcxEyYrt5zIklO3ZNFDhNTxjF1tFRJDgikWDw10InAVO5b4ku7oXUDsfVAjifwYK6M
 WUCqcwyIQeB+4v7kL1zD5cdhHW1Y9PxsoB+xXmYT17AYuI3+Rgwu9OO52889mAkIRCDQ
 PIYi57tm5EDK/srLDXNeOkdvFAUFKsK2EymPmvQYWgBQeTXqxfyh8SWR1gcRVFuOdRSL
 PaJoKL05XQiHOKcHuPu3ky/F5iPsvqh31ntco1YxRgtzhKMcpcxPmxYIz2+6kIrzHQ/D
 +UfyKuKB/3W7NzU94uKyaWe8Vw25wQc9nzS+9JFPliPs1uNliEpfPcf4Pgl/gXdwA0d/
 KO4w==
X-Gm-Message-State: AOAM531emoFMRJ5gzGC9yTq3JSaQnhlK5Z66LcyH9RdNcVTrC2vEyyYo
 g1NVodOTB1FW0rgsBdd54o43tA==
X-Google-Smtp-Source: ABdhPJyDQMGH0+RxUGQtHUeCYv4lJd35HOoioyP4NMAPxkHx4TB4s0fz74029ULAwuaRpQEaZQyUDw==
X-Received: by 2002:a63:584:: with SMTP id 126mr4916161pgf.165.1631124839684; 
 Wed, 08 Sep 2021 11:13:59 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:7556:e88d:6fba:e1d0])
 by smtp.gmail.com with UTF8SMTPSA id o3sm2709858pji.26.2021.09.08.11.13.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Sep 2021 11:13:58 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-clk@vger.kernel.org, Chen-Yu Tsai <wenst@chromium.org>,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 Brian Norris <briannorris@chromium.org>
Subject: [PATCH v2 1/3] clk: rockchip: rk3399: make CPU clocks critical
Date: Wed,  8 Sep 2021 11:13:38 -0700
Message-Id: <20210908111337.v2.1.I006bb36063555079b1a88f01d20e38d7e4705ae0@changeid>
X-Mailer: git-send-email 2.33.0.153.gba50c8fa24-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210908_111405_852779_03A110AF 
X-CRM114-Status: GOOD (  14.45  )
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

The CPU clocks don't currently have any owner (e.g., cpufreq-dt doesn't
enable() them -- and even if it did, it's not early enough compared to
other consumers -- nor does arch/arm64/kernel/smp.c), and instead are
simply assumed to be "on" all the time.

They are also parents of a few other clocks which haven't been
previously exposed for other devices to consume. If we want to expose
those clocks, then the common clock framework may eventually choose to
disable their parents (including the CPU PLLs) -- which is no fun for
anyone.

Thus, mark the CPU clocks as critical, to prevent them from being
disabled implicitly.

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

Changes in v2:
  - New, split from the patch that requires this change

 drivers/clk/rockchip/clk-rk3399.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
index 62a4f2543960..0ac9c72c4ee8 100644
--- a/drivers/clk/rockchip/clk-rk3399.c
+++ b/drivers/clk/rockchip/clk-rk3399.c
@@ -1514,7 +1514,10 @@ static const char *const rk3399_cru_critical_clocks[] __initconst = {
 	"aclk_vio_noc",
 
 	/* ddrc */
-	"sclk_ddrc"
+	"sclk_ddrc",
+
+	"armclkl",
+	"armclkb",
 };
 
 static const char *const rk3399_pmucru_critical_clocks[] __initconst = {
@@ -1549,9 +1552,6 @@ static void __init rk3399_clk_init(struct device_node *np)
 	rockchip_clk_register_branches(ctx, rk3399_clk_branches,
 				  ARRAY_SIZE(rk3399_clk_branches));
 
-	rockchip_clk_protect_critical(rk3399_cru_critical_clocks,
-				      ARRAY_SIZE(rk3399_cru_critical_clocks));
-
 	rockchip_clk_register_armclk(ctx, ARMCLKL, "armclkl",
 			mux_armclkl_p, ARRAY_SIZE(mux_armclkl_p),
 			&rk3399_cpuclkl_data, rk3399_cpuclkl_rates,
@@ -1562,6 +1562,9 @@ static void __init rk3399_clk_init(struct device_node *np)
 			&rk3399_cpuclkb_data, rk3399_cpuclkb_rates,
 			ARRAY_SIZE(rk3399_cpuclkb_rates));
 
+	rockchip_clk_protect_critical(rk3399_cru_critical_clocks,
+				      ARRAY_SIZE(rk3399_cru_critical_clocks));
+
 	rockchip_register_softrst(np, 21, reg_base + RK3399_SOFTRST_CON(0),
 				  ROCKCHIP_SOFTRST_HIWORD_MASK);
 
-- 
2.33.0.153.gba50c8fa24-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
