Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27F97C83F17
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 19:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fGlUnur3wgAuFBXEDiEaUG48ZMzKJ/weMaejv0INPog=; b=mfbb0F4OikA40v
	Hr2tL4Reqza5lubZzS4iaXP2Fob4itZ939lGjWt8AgoHhcmVj4sQOlw8i7u4eYWuZ2FCS3AabBtvk
	6M8p5LjKkIC/L6pTqmYSbK6V6nOzQsBPo1IoHselgrZsyj5K56ktwfCliECwCf0G/w6X3zfKXAr9V
	y+MUNGb2qwIndwxV4oi8WNdA9NCjxUHtkeqb0CTFOvP5hS/FdLC4s+gZe0zAJdcjUoIVyShDwTBWU
	efCInebbqFHgYgLxxHMhOWb3XdrmuoICNjDphjz9DJwfOH2D4+vPBsbn3rDscPuvynGE2Ihr2vSkF
	IPHTjNiMxTliJ/hLQOcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb4QK-00C8k0-21;
	Tue, 29 Aug 2023 19:30:48 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb4Q4-00C8hw-1D;
	Tue, 29 Aug 2023 19:30:39 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-500b0f06136so5380563e87.0;
        Tue, 29 Aug 2023 12:30:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693337430; x=1693942230;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eglkfRZu56bK3qZVs6wBq4nX9Ykg+M4S/tca+p9SQ30=;
        b=jruP9OV0Cp6ujyJehHhmSgckXYPv5kzIE/ofTujIZnvpA34/6dBmoxH1rbYtdMXFih
         kFpwPpfSFd9lXwbYzZTREjUW8uUS17xTiLWsgtlAiEIV2fj8UJ1ftWYc22ucfable8R/
         +fs39uyDtpOB0s9Gy9uLrL3MD+NfcnHcPKqB32H0L4Ax2/JpGmwznU96hZMth0CEDdDv
         4/csJoQbC+Vtt6evliCCQILLJAFConRiGU8t6N+uAM4yU2qQIj9DAnRP51VuMaAH/FmP
         OWq59Lar9SXHwEuebsNn4XBl4srthjzzheotqT6dLAcvLWt0e1RmkFBSuAF1a2f178HN
         htQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693337430; x=1693942230;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eglkfRZu56bK3qZVs6wBq4nX9Ykg+M4S/tca+p9SQ30=;
        b=bqK0KLNx9jkkUb9FSqt81QmWyfgIPOdfELC1TBsGycL/+TDEVuTqsUn20XEjunx+zw
         YyTadMQ5n7Ql/8tjjTCRjw14R5DjV6YMyWvdDo8VHEDXSH/MY+D3EhTujCnibLBB73Kk
         dBviJ+Zilo9kkWfvLHeOURuO/T0i4WbzZq47T8pSRQPGE/63RyGlLc6CTUEELYNl8WZB
         zyk86KVST7PA4REZTc8YIgou8ht9os976zsDS5YpB+JfTyEze3yW9nkhQ8smWYHxgx1X
         0dD27Nt1JwilV9/izmoo/GDAVi5OFvxrT5K6eCKt9kff55S7QNLRzNdXI5Fh2p+RC++9
         Bu3w==
X-Gm-Message-State: AOJu0YwIXmrkSKq9cxbKNuT6YzQNs6xMFp+QuwkqoHMXICMLuq0y1fXl
	VCIDCjrOzF5RsGAK3ApjCA==
X-Google-Smtp-Source: AGHT+IGKu0J2D48F+mooqlGIw6OnQ/YOnu4pF/VvL1n566pIMWV+tJNpWaqbTUwmm6Fet/DMD5rnUA==
X-Received: by 2002:a05:6512:ea4:b0:4ff:7602:5879 with SMTP id bi36-20020a0565120ea400b004ff76025879mr26903079lfb.55.1693337429715;
        Tue, 29 Aug 2023 12:30:29 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8])
        by smtp.gmail.com with ESMTPSA id o8-20020aa7d3c8000000b0052544bca116sm5940902edr.13.2023.08.29.12.30.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 12:30:29 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Stephen Boyd <sboyd@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 1/3] clk: rockchip: rk3128: Fix aclk_peri_src parent
Date: Tue, 29 Aug 2023 21:29:56 +0200
Message-ID: <20230829192958.250248-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829192958.250248-1-knaerzche@gmail.com>
References: <20230829192958.250248-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_123036_815314_E78E40B5 
X-CRM114-Status: GOOD (  12.73  )
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

From: Finley Xiao <finley.xiao@rock-chips.com>

gpll_div3_peri gates, but a single clk_peri_src gate.
The peri mux directly connects to the plls respectively the pll divider
clocks.
Fix this by creating a single gated composite.

Also rename all occurrences of aclk_peri_src to clk_peri_src, since it
is the parent for both peri aclks and hclks and that name also matches the
one used in the TRM.

Fixes: f6022e88faca ("clk: rockchip: add clock controller for rk3128")
Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
[renamed aclk_peri_src -> clk_peri_src and added commit message]
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 drivers/clk/rockchip/clk-rk3128.c | 20 +++++++-------------
 1 file changed, 7 insertions(+), 13 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3128.c b/drivers/clk/rockchip/clk-rk3128.c
index aa53797dbfc1..fcacfe758829 100644
--- a/drivers/clk/rockchip/clk-rk3128.c
+++ b/drivers/clk/rockchip/clk-rk3128.c
@@ -138,7 +138,7 @@ PNAME(mux_pll_src_5plls_p)	= { "cpll", "gpll", "gpll_div2", "gpll_div3", "usb480
 PNAME(mux_pll_src_4plls_p)	= { "cpll", "gpll", "gpll_div2", "usb480m" };
 PNAME(mux_pll_src_3plls_p)	= { "cpll", "gpll", "gpll_div2" };
 
-PNAME(mux_aclk_peri_src_p)	= { "gpll_peri", "cpll_peri", "gpll_div2_peri", "gpll_div3_peri" };
+PNAME(mux_clk_peri_src_p)	= { "gpll", "cpll", "gpll_div2", "gpll_div3" };
 PNAME(mux_mmc_src_p)		= { "cpll", "gpll", "gpll_div2", "xin24m" };
 PNAME(mux_clk_cif_out_src_p)		= { "clk_cif_src", "xin24m" };
 PNAME(mux_sclk_vop_src_p)	= { "cpll", "gpll", "gpll_div2", "gpll_div3" };
@@ -275,23 +275,17 @@ static struct rockchip_clk_branch common_clk_branches[] __initdata = {
 			RK2928_CLKGATE_CON(0), 11, GFLAGS),
 
 	/* PD_PERI */
-	GATE(0, "gpll_peri", "gpll", CLK_IGNORE_UNUSED,
+	COMPOSITE(0, "clk_peri_src", mux_clk_peri_src_p, 0,
+			RK2928_CLKSEL_CON(10), 14, 2, MFLAGS, 0, 5, DFLAGS,
 			RK2928_CLKGATE_CON(2), 0, GFLAGS),
-	GATE(0, "cpll_peri", "cpll", CLK_IGNORE_UNUSED,
-			RK2928_CLKGATE_CON(2), 0, GFLAGS),
-	GATE(0, "gpll_div2_peri", "gpll_div2", CLK_IGNORE_UNUSED,
-			RK2928_CLKGATE_CON(2), 0, GFLAGS),
-	GATE(0, "gpll_div3_peri", "gpll_div3", CLK_IGNORE_UNUSED,
-			RK2928_CLKGATE_CON(2), 0, GFLAGS),
-	COMPOSITE_NOGATE(0, "aclk_peri_src", mux_aclk_peri_src_p, 0,
-			RK2928_CLKSEL_CON(10), 14, 2, MFLAGS, 0, 5, DFLAGS),
-	COMPOSITE_NOMUX(PCLK_PERI, "pclk_peri", "aclk_peri_src", 0,
+
+	COMPOSITE_NOMUX(PCLK_PERI, "pclk_peri", "clk_peri_src", 0,
 			RK2928_CLKSEL_CON(10), 12, 2, DFLAGS | CLK_DIVIDER_POWER_OF_TWO,
 			RK2928_CLKGATE_CON(2), 3, GFLAGS),
-	COMPOSITE_NOMUX(HCLK_PERI, "hclk_peri", "aclk_peri_src", 0,
+	COMPOSITE_NOMUX(HCLK_PERI, "hclk_peri", "clk_peri_src", 0,
 			RK2928_CLKSEL_CON(10), 8, 2, DFLAGS | CLK_DIVIDER_POWER_OF_TWO,
 			RK2928_CLKGATE_CON(2), 2, GFLAGS),
-	GATE(ACLK_PERI, "aclk_peri", "aclk_peri_src", 0,
+	GATE(ACLK_PERI, "aclk_peri", "clk_peri_src", 0,
 			RK2928_CLKGATE_CON(2), 1, GFLAGS),
 
 	GATE(SCLK_TIMER0, "sclk_timer0", "xin24m", 0,
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
