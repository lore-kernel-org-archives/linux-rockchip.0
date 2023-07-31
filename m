Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC1E5C001DC
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 11:00:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VIktUzXVhIyH1Lzd7qETEaqzcRALDgS0skaMT0R9y18=; b=c5hE5eiXkzenJX
	hasu+rx2HdZQasLVfHq0szW6sVCjMKCcgvt+LI1+ldBNTk1WxC1TNSLUwcjwbctDgZyTuhHDLKgtc
	Y/XxU8xKKvq4WyM0nIxNw54lv69PhBFao7GJPVWNZgbwJaW4lfbuwwan9IUQMTYyXUzdwOZVbJmEu
	28FRz3m886z1Nj0+Dh0DK+tEeH72QFEBePvjtm6wW5VUcY5oQhUYQu160ptmJBDGX+pXfkbfw6ISn
	wMuM1WKtdPrEdD1yF/Q0IbT828fBOaZu47Iie9yO5w6A5U6M3N8O/k9fK//jPNqOONslModHWoZSv
	JGtMM6cCmjXSl7vq9ZBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQdi-00FE6T-1s;
	Mon, 31 Jul 2023 11:00:38 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQda-00FE1x-1m
	for linux-rockchip@lists.infradead.org;
	Mon, 31 Jul 2023 11:00:32 +0000
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-1bbf8cb694aso17431655ad.3
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Jul 2023 04:00:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690801228; x=1691406028;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rP1HvhmILSDZxBxnehc/orNHE8euRpEXGakH0zc2A7k=;
        b=vu53Q9UAlOg6BDlJrkAy6fQOvq8rg045i4qiJrtblnnk3iOqoYyWZ7uOZjYd2EeZgx
         P5AyemhYD2+unRxsl+Z4PWruWaLgXb0jgcpcdFiHhsl1aQ9WP5MXMz9arwajyizMCs42
         dR9X7rcvjJeaZ/g76zi9zAw6lllsNtaWFzaIJHWCswRIFZgxplvbsWOV9rO9HbX2UeCX
         HMBtbR8j84mTk3Il76l66YygZjIWaQOnW+76w2ntsSVkcySJlSeZ9EE939VatbsO74Yu
         JOngwf0ht//eV7beeWzxcxb4n207cpIwwT3l47asgL3cqlQnpTa1UavhhqNRPzW1eDAn
         DfQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801228; x=1691406028;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rP1HvhmILSDZxBxnehc/orNHE8euRpEXGakH0zc2A7k=;
        b=FhGdT7adNGfqeSX7HbKr3UFNSle5sgEZ/dzrQP0ss0z/Dep1zAhyjsmTMDEYLWNmc1
         t69rj7SrAyYK23xkZ7j9a52Vexh9/vxpJpHB6rbREByVOixxz+a/3KbODb7sEWeazl7M
         bUzC50lhkyLyY/NG2uoOr5N2fQx40/E+HxVDnrbKSqPF21/pqauh1Bgbpe1y2Lvy0ct9
         xSuqY3BirJPomOCFvBtF0/LL0fda7aH75eaBrvWk5/n9r3qex+OpbPxWahZQqQZUerJy
         Dn1Dpjo2074f3u0HrDiVuWjVQn5JiykICVRyWSxb5jS3N/WQIiTZUHdpkk7QaWv1y46R
         jUew==
X-Gm-Message-State: ABy/qLY1VgI0LGEAnd2qEEZF+qD3kBDe8SApL9hKDTdRxboxRPtO6SU0
	MfhcKX4MLqkkH28i7gJPb1pQ2w==
X-Google-Smtp-Source: APBJJlH8SyBbLB03Bth3Pd8z8lX9ED3lmZv12VgI5f3Sa1hnE8Ivym4zh3nPE9tU5JbnHWoZUfS4bQ==
X-Received: by 2002:a17:902:dac4:b0:1b8:8dbd:e1a0 with SMTP id q4-20020a170902dac400b001b88dbde1a0mr10540287plx.13.1690801228399;
        Mon, 31 Jul 2023 04:00:28 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id t14-20020a1709028c8e00b001b1a2c14a4asm8281096plo.38.2023.07.31.04.00.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 04:00:27 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Jagan Teki <jagan@edgeble.ai>,
	linux-clk@vger.kernel.org,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH 02/14] clk: rockchip: rv1126: Add PD_VO clock tree
Date: Mon, 31 Jul 2023 16:30:00 +0530
Message-Id: <20230731110012.2913742-3-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731110012.2913742-1-jagan@edgeble.ai>
References: <20230731110012.2913742-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_040030_591613_E7B6C7B6 
X-CRM114-Status: GOOD (  11.49  )
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

PD_VO clock tree diagram in RV1126 is connected to
- BIU_VO
- VOP
- RGA
- IEP
- DSIHOST

Add entire PD_VO clock tree for rv1126.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Cc: linux-clk@vger.kernel.org
Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>

 drivers/clk/rockchip/clk-rv1126.c | 59 +++++++++++++++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/drivers/clk/rockchip/clk-rv1126.c b/drivers/clk/rockchip/clk-rv1126.c
index 5c6f1ce34a2f..fc19c5522490 100644
--- a/drivers/clk/rockchip/clk-rv1126.c
+++ b/drivers/clk/rockchip/clk-rv1126.c
@@ -175,6 +175,7 @@ PNAME(mux_i2s2_p)			= { "mclk_i2s2_div", "mclk_i2s2_fracdiv", "i2s2_mclkin", "xi
 PNAME(mux_i2s2_out2io_p)		= { "mclk_i2s2", "xin12m" };
 PNAME(mux_gpll_cpll_xin24m_p)		= { "gpll", "cpll", "xin24m" };
 PNAME(mux_audpwm_p)			= { "sclk_audpwm_div", "sclk_audpwm_fracdiv", "xin24m" };
+PNAME(mux_dclk_vop_p)			= { "dclk_vop_div", "dclk_vop_fracdiv", "xin24m" };
 PNAME(mux_usb480m_gpll_p)		= { "usb480m", "gpll" };
 PNAME(clk_gmac_src_m0_p)		= { "clk_gmac_div", "clk_gmac_rgmii_m0" };
 PNAME(clk_gmac_src_m1_p)		= { "clk_gmac_div", "clk_gmac_rgmii_m1" };
@@ -259,6 +260,10 @@ static struct rockchip_clk_branch rv1126_audpwm_fracmux __initdata =
 	MUX(SCLK_AUDPWM_MUX, "mclk_audpwm_mux", mux_audpwm_p, CLK_SET_RATE_PARENT,
 			RV1126_CLKSEL_CON(36), 8, 2, MFLAGS);
 
+static struct rockchip_clk_branch rv1126_dclk_vop_fracmux __initdata =
+	MUX(DCLK_VOP_MUX, "dclk_vop_mux", mux_dclk_vop_p, CLK_SET_RATE_PARENT,
+	    RV1126_CLKSEL_CON(47), 10, 2, MFLAGS);
+
 static struct rockchip_clk_branch rv1126_clk_pmu_branches[] __initdata = {
 	/*
 	 * Clock-Architecture Diagram 2
@@ -714,6 +719,49 @@ static struct rockchip_clk_branch rv1126_clk_branches[] __initdata = {
 			RV1126_CLKSEL_CON(72), 8, 1, MFLAGS, 0, 7, DFLAGS,
 			RV1126_CLKGATE_CON(11), 1, GFLAGS),
 
+	/*
+	 * Clock-Architecture Diagram 9
+	 */
+	/* PD_VO */
+	COMPOSITE(ACLK_PDVO, "aclk_pdvo", mux_gpll_cpll_p, 0,
+		  RV1126_CLKSEL_CON(45), 7, 1, MFLAGS, 0, 5, DFLAGS,
+		  RV1126_CLKGATE_CON(14), 0, GFLAGS),
+	COMPOSITE_NOMUX(HCLK_PDVO, "hclk_pdvo", "aclk_pdvo", 0,
+			RV1126_CLKSEL_CON(45), 8, 5, DFLAGS,
+			RV1126_CLKGATE_CON(14), 1, GFLAGS),
+	COMPOSITE_NOMUX(PCLK_PDVO, "pclk_pdvo", "aclk_pdvo", 0,
+			RV1126_CLKSEL_CON(46), 8, 5, DFLAGS,
+			RV1126_CLKGATE_CON(14), 2, GFLAGS),
+	GATE(ACLK_RGA, "aclk_rga", "aclk_pdvo", 0,
+	     RV1126_CLKGATE_CON(14), 6, GFLAGS),
+	GATE(HCLK_RGA, "hclk_rga", "hclk_pdvo", 0,
+	     RV1126_CLKGATE_CON(14), 7, GFLAGS),
+	COMPOSITE(CLK_RGA_CORE, "clk_rga_core", mux_gpll_cpll_p, 0,
+		  RV1126_CLKSEL_CON(46), 7, 1, MFLAGS, 0, 5, DFLAGS,
+		  RV1126_CLKGATE_CON(14), 8, GFLAGS),
+	GATE(ACLK_VOP, "aclk_vop", "aclk_pdvo", 0,
+	     RV1126_CLKGATE_CON(14), 9, GFLAGS),
+	GATE(HCLK_VOP, "hclk_vop", "hclk_pdvo", 0,
+	     RV1126_CLKGATE_CON(14), 10, GFLAGS),
+	COMPOSITE(DCLK_VOP_DIV, "dclk_vop_div", mux_gpll_cpll_p, 0,
+		  RV1126_CLKSEL_CON(47), 8, 1, MFLAGS, 0, 8, DFLAGS,
+		  RV1126_CLKGATE_CON(14), 11, GFLAGS),
+	COMPOSITE_FRACMUX(DCLK_VOP_FRACDIV, "dclk_vop_fracdiv", "dclk_vop_div",
+			  CLK_SET_RATE_PARENT, RV1126_CLKSEL_CON(48), 0,
+			  RV1126_CLKGATE_CON(14), 12, GFLAGS,
+			  &rv1126_dclk_vop_fracmux),
+	GATE(DCLK_VOP, "dclk_vop", "dclk_vop_mux", 0,
+	     RV1126_CLKGATE_CON(14), 13, GFLAGS),
+	GATE(PCLK_DSIHOST, "pclk_dsihost", "pclk_pdvo", 0,
+	     RV1126_CLKGATE_CON(14), 14, GFLAGS),
+	GATE(ACLK_IEP, "aclk_iep", "aclk_pdvo", 0,
+	     RV1126_CLKGATE_CON(12), 7, GFLAGS),
+	GATE(HCLK_IEP, "hclk_iep", "hclk_pdvo", 0,
+	     RV1126_CLKGATE_CON(12), 8, GFLAGS),
+	COMPOSITE(CLK_IEP_CORE, "clk_iep_core", mux_gpll_cpll_p, 0,
+		  RV1126_CLKSEL_CON(54), 7, 1, MFLAGS, 0, 5, DFLAGS,
+		  RV1126_CLKGATE_CON(12), 9, GFLAGS),
+
 	/*
 	 * Clock-Architecture Diagram 12
 	 */
@@ -905,6 +953,17 @@ static struct rockchip_clk_branch rv1126_clk_branches[] __initdata = {
 	GATE(0, "pclk_pdaudio_niu", "hclk_pdaudio", CLK_IGNORE_UNUSED,
 			RV1126_CLKGATE_CON(9), 3, GFLAGS),
 
+	/*
+	 * Clock-Architecture Diagram 9
+	 */
+	/* PD_VO */
+	GATE(0, "aclk_pdvo_niu", "aclk_pdvo", CLK_IGNORE_UNUSED,
+	     RV1126_CLKGATE_CON(14), 3, GFLAGS),
+	GATE(0, "hclk_pdvo_niu", "hclk_pdvo", CLK_IGNORE_UNUSED,
+	     RV1126_CLKGATE_CON(14), 4, GFLAGS),
+	GATE(0, "pclk_pdvo_niu", "pclk_pdvo", CLK_IGNORE_UNUSED,
+	     RV1126_CLKGATE_CON(14), 5, GFLAGS),
+
 	/*
 	 * Clock-Architecture Diagram 12
 	 */
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
