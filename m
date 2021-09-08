Return-Path: <SRS0=E4Dv=N6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8324C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Sep 2021 18:14:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6AB806113D
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Sep 2021 18:14:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6AB806113D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CuOEBidpp4x9Rqu2/YaFlY24OOyJtvOCEz8FMbJyaL4=; b=TLRx1Kwb62HwOr
	HPYe0SQKtyBFCgA8m7lRP8z3Q8GhRRAdaNhe8XUVCD+D4LqSEcT1+m6d2Mbyiq+QVY+1+Mu6UUYFT
	Ui5Kb0Lbf3pg659/R1sJrf79RE7gjMl7SJh/TLyOZkuEx1nGrHTqqEvFY1FhLFJNdMChS5ExbrEed
	ky4MOKhC1kackgJf1DC43eCc1ulONCwQ6VDd/6LfFHQsjzzDbnreT53ZMe/RPIbpK6L6xL+pQMbRm
	q5xAq1uqSA+BGvag3Dab35MVCdtHG+Nxr2dGYfBUr5Bzle4o3sAwQqqKc7ZwyysWDwKNLJWRRPLuX
	EEIczJO0pyPAc2hrbkpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mO25Q-007NBF-BR; Wed, 08 Sep 2021 18:14:16 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mO25C-007N7v-Aw
 for linux-rockchip@lists.infradead.org; Wed, 08 Sep 2021 18:14:03 +0000
Received: by mail-pg1-x533.google.com with SMTP id e7so3502934pgk.2
 for <linux-rockchip@lists.infradead.org>; Wed, 08 Sep 2021 11:14:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YmaBqKj8o4HmKcMeIl0Rd4QT1PMQFox+evWowfdT4pM=;
 b=LhDZLw+XEOIsX47v4NpnWSsriew4EbKSYY+nTXSZ9TmzNi61j7u4637SNRUlYjyoO8
 4R4YpmU0eL3um0lTV+i052dCvVbo4xV0OYKht0oajmhCceVIlOxvjPyxbVM/YbGWSWBS
 ZIRkmc+hJiyaUDFaiaiH2UcD7B2bPGrHAFmv8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YmaBqKj8o4HmKcMeIl0Rd4QT1PMQFox+evWowfdT4pM=;
 b=oToijH7nxoxAt2Hk1ca0t2V25x8LD6DfzJJqJgsxtCQmt/QTPdjfqXIDKrY7imel0w
 2TBEFkRHiNaQUYHCe+D25I+iNToP3Ohp4nlePMTnC67REIVJD2kkgNC0knRrJw1zpolY
 gW9G6CBTZajdR2uqs+e+ffvlpkSsOsFSQqxysxavzdyF9lpnXj21Uhdexqd4uPlJsipx
 lDDpW/c50GjwR4JKzoKLBBeQK3cwRLK6fkIGaxqEBvY6qpZEDGWHPKoF1VQoQkt1ORiz
 sFKKcDmFFB+M5wZT4ty8TF+9jO9YUqNW1ketcsapRaVl3B5kQ+UtL8v4JQLlXg9HXPnA
 5chg==
X-Gm-Message-State: AOAM532bpXBFIQXHNZ0jJAW5H7upPZCIZp1nANGReZo+KZPkL4Pw8VBA
 vUyh3baU7Q+pmlNyIbrDwoJzdA==
X-Google-Smtp-Source: ABdhPJz7vRfq/pAFYK+fNsy+aJ/Sx1OQI+A2rftCimRi2r9//7V/EaLJIn03rX6MPvX0ZYsKroiejA==
X-Received: by 2002:a63:ef58:: with SMTP id c24mr4826337pgk.299.1631124841813; 
 Wed, 08 Sep 2021 11:14:01 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:7556:e88d:6fba:e1d0])
 by smtp.gmail.com with UTF8SMTPSA id e19sm2982086pfi.139.2021.09.08.11.14.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Sep 2021 11:14:01 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-clk@vger.kernel.org, Chen-Yu Tsai <wenst@chromium.org>,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 Brian Norris <briannorris@chromium.org>
Subject: [PATCH v2 2/3] clk: rockchip: rk3399: expose PCLK_COREDBG_{B,L}
Date: Wed,  8 Sep 2021 11:13:39 -0700
Message-Id: <20210908111337.v2.2.If29cd838efbcee4450a62b8d84a99b23c86e0a3f@changeid>
X-Mailer: git-send-email 2.33.0.153.gba50c8fa24-goog
In-Reply-To: <20210908111337.v2.1.I006bb36063555079b1a88f01d20e38d7e4705ae0@changeid>
References: <20210908111337.v2.1.I006bb36063555079b1a88f01d20e38d7e4705ae0@changeid>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210908_111402_439954_C87849AC 
X-CRM114-Status: GOOD (  13.74  )
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

We have DT IDs for PCLK_COREDBG_L and PCLK_COREDBG_B, but we don't
actually expose them.

Note that this requires the previous patch (making "armclkl" and
"armclkb" into "critical" clocks) to prevent these clocks from taking
down the CPU.

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
Signed-off-by: Brian Norris <briannorris@chromium.org>
---

Changes in v2:
  - Split "CPU clocks are critical" to a new patch, to make it more
    obvious

 drivers/clk/rockchip/clk-rk3399.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
index 0ac9c72c4ee8..53ed5cca335b 100644
--- a/drivers/clk/rockchip/clk-rk3399.c
+++ b/drivers/clk/rockchip/clk-rk3399.c
@@ -481,7 +481,7 @@ static struct rockchip_clk_branch rk3399_clk_branches[] __initdata = {
 	COMPOSITE_NOMUX(0, "atclk_core_l", "armclkl", CLK_IGNORE_UNUSED,
 			RK3399_CLKSEL_CON(1), 0, 5, DFLAGS | CLK_DIVIDER_READ_ONLY,
 			RK3399_CLKGATE_CON(0), 5, GFLAGS),
-	COMPOSITE_NOMUX(0, "pclk_dbg_core_l", "armclkl", CLK_IGNORE_UNUSED,
+	COMPOSITE_NOMUX(PCLK_COREDBG_L, "pclk_dbg_core_l", "armclkl", CLK_IGNORE_UNUSED,
 			RK3399_CLKSEL_CON(1), 8, 5, DFLAGS | CLK_DIVIDER_READ_ONLY,
 			RK3399_CLKGATE_CON(0), 6, GFLAGS),
 
@@ -531,7 +531,7 @@ static struct rockchip_clk_branch rk3399_clk_branches[] __initdata = {
 	GATE(ACLK_GIC_ADB400_CORE_B_2_GIC, "aclk_core_adb400_core_b_2_gic", "armclkb", CLK_IGNORE_UNUSED,
 			RK3399_CLKGATE_CON(14), 4, GFLAGS),
 
-	DIV(0, "pclken_dbg_core_b", "pclk_dbg_core_b", CLK_IGNORE_UNUSED,
+	DIV(PCLK_COREDBG_B, "pclken_dbg_core_b", "pclk_dbg_core_b", CLK_IGNORE_UNUSED,
 			RK3399_CLKSEL_CON(3), 13, 2, DFLAGS | CLK_DIVIDER_READ_ONLY),
 
 	GATE(0, "pclk_dbg_cxcs_pd_core_b", "pclk_dbg_core_b", CLK_IGNORE_UNUSED,
-- 
2.33.0.153.gba50c8fa24-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
