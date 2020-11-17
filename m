Return-Path: <SRS0=Nc53=EX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD1FC63697
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2020 19:47:04 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0A5DF2222E
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2020 19:47:03 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="yu+wGQZE";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XQfdSGQu"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0A5DF2222E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ACbyCNrA5pclTJxlU7RTbLMNjnc5422qni9oemNd5GA=; b=yu+wGQZEPG6LThQmX8vxM0qy4K
	NDvcQERb6ScoR+VWBA6pTStWLIYDHZUvkAIm5IJnDqkUmmLtRGGfxpAIOwV+T2Z4wH47EG5u5UFGi
	VMSYElHazcpr9s0O+58sqYvnGLPOSbDrn5qJf6nrTNK2dgY1IaabTBtT2T/yO1bOB37jvPpDSG7yh
	b4jTYuDiCuXLxPRX2+DZGQoxzOgQyFH08VzcODrEOw6C4OdwxojnpOY20lvB51SzUL2j73PGB9JP3
	SsMeKDte+Uz6jwCcAN1l1/6vWC9tj9Z7RCRYhrevFNTzDbvc+VXMKbZjXo22M6xyMoYB3SV6l8CTx
	v7Pj3bAA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kf6wL-0003Wv-HQ; Tue, 17 Nov 2020 19:46:57 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kf6um-0002tB-Qs; Tue, 17 Nov 2020 19:45:27 +0000
Received: by mail-ed1-x543.google.com with SMTP id a15so23767774edy.1;
 Tue, 17 Nov 2020 11:45:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=iGo+ZN3tAXAxv3w8yNYuIIpSkiLbRMRp3Fk34AunwFo=;
 b=XQfdSGQug74wE57EDrUQcCwv7ZUJWtBXN01FdoRbPoHB0gW73UHsF61Bpr7LBhFNdP
 w9XxyHke8I9Xz8vs4Exv7IxndU25bpqtO7CqysEz8MDBU8QynFD6SCgWeJD/5t6VbCmv
 DJ/+01cA56p+DUwBYdBt8SIpMZcDSfOnEt1BaQCs6dCxDAwwu0CyyRTjmN89cqlzGV4W
 CdDeMzFE8TedSqG9OfayovDxEdV+SZ8ciISQFShyOeS/BagY9Vnqy8I7ekOdkAAa5gsX
 lkbymMefNwT00tGalZbO0r5vI+aIHB0A5D64fpPcJfCMwye9NawQ0nX1/oHo5VikF6kn
 ukNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=iGo+ZN3tAXAxv3w8yNYuIIpSkiLbRMRp3Fk34AunwFo=;
 b=VrCJOjbjxe10lDtEH9D/XiyRvnDwhWAmP2OnPFCkY9Eqi24IwApZwHtleoKm/Lc+wK
 PQ58jQJZyJe/wK+DwvgFlLxLImAZyYLhgJ/elXQgnjs+Cal51Wr5MMnW6DHddi5uy9vj
 PLxHQGt4z6Ro2od+lXtvEQY5Q4EhvHhR1zYhneFhh2iLLZuua+jR8pmVGNeu4zPnt2bX
 SjdD5lPAVPJkNp6j+uxsjCHw9P9akJXXpZOLn9P2Pp/1AgEVyN47oavBu49f0CNK4ZvB
 5gLb5UIi5OYyS+Fj/9PeqnsB6xV8SvSmr9Yj0ahKyffRdpqA+hedB7EJbzleFXLupYkL
 m1Ag==
X-Gm-Message-State: AOAM5330FgiiUXYLZ8t/BuW45maoMmnhN1nlmg6MGQq/i6Q2iXiDn4n7
 8gZPwA4XFhLtWQKd/Ilippk=
X-Google-Smtp-Source: ABdhPJyJxBsI7UzMAZkh+RoYMhBgZCCmMMEWzjjea4hV0eMUQ97cCmDrfRIc+G8Gjy1ktw15PxCicg==
X-Received: by 2002:aa7:c617:: with SMTP id h23mr21899993edq.154.1605642317521; 
 Tue, 17 Nov 2020 11:45:17 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w2sm727972ejc.109.2020.11.17.11.45.16
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 17 Nov 2020 11:45:16 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v4 1/7] clk: rockchip: add CLK_SET_RATE_PARENT to sclk for
 rk3066a i2s and uart clocks
Date: Tue, 17 Nov 2020 20:45:01 +0100
Message-Id: <20201117194507.14843-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201117194507.14843-1-jbx6244@gmail.com>
References: <20201117194507.14843-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201117_144521_025329_21603D5B 
X-CRM114-Status: GOOD (  13.17  )
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
Cc: alsa-devel@alsa-project.org, linux-rockchip@lists.infradead.org,
 airlied@linux.ie, linux-kernel@vger.kernel.org, mturquette@baylibre.com,
 hjc@rock-chips.com, dri-devel@lists.freedesktop.org, lgirdwood@gmail.com,
 sboyd@kernel.org, robh+dt@kernel.org, broonie@kernel.org, daniel@ffwll.ch,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add CLK_SET_RATE_PARENT to sclk for rk3066a i2s and uart clocks,
so that the parent COMPOSITE_FRACMUX and COMPOSITE_NOMUX
also update.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 drivers/clk/rockchip/clk-rk3188.c | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3188.c b/drivers/clk/rockchip/clk-rk3188.c
index 730020fcc..db8c58813 100644
--- a/drivers/clk/rockchip/clk-rk3188.c
+++ b/drivers/clk/rockchip/clk-rk3188.c
@@ -255,19 +255,19 @@ static struct rockchip_clk_branch common_spdif_fracmux __initdata =
 			RK2928_CLKSEL_CON(5), 8, 2, MFLAGS);
 
 static struct rockchip_clk_branch common_uart0_fracmux __initdata =
-	MUX(SCLK_UART0, "sclk_uart0", mux_sclk_uart0_p, 0,
+	MUX(SCLK_UART0, "sclk_uart0", mux_sclk_uart0_p, CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(13), 8, 2, MFLAGS);
 
 static struct rockchip_clk_branch common_uart1_fracmux __initdata =
-	MUX(SCLK_UART1, "sclk_uart1", mux_sclk_uart1_p, 0,
+	MUX(SCLK_UART1, "sclk_uart1", mux_sclk_uart1_p, CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(14), 8, 2, MFLAGS);
 
 static struct rockchip_clk_branch common_uart2_fracmux __initdata =
-	MUX(SCLK_UART2, "sclk_uart2", mux_sclk_uart2_p, 0,
+	MUX(SCLK_UART2, "sclk_uart2", mux_sclk_uart2_p, CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(15), 8, 2, MFLAGS);
 
 static struct rockchip_clk_branch common_uart3_fracmux __initdata =
-	MUX(SCLK_UART3, "sclk_uart3", mux_sclk_uart3_p, 0,
+	MUX(SCLK_UART3, "sclk_uart3", mux_sclk_uart3_p, CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(16), 8, 2, MFLAGS);
 
 static struct rockchip_clk_branch common_clk_branches[] __initdata = {
@@ -408,28 +408,28 @@ static struct rockchip_clk_branch common_clk_branches[] __initdata = {
 	COMPOSITE_NOMUX(0, "uart0_pre", "uart_src", 0,
 			RK2928_CLKSEL_CON(13), 0, 7, DFLAGS,
 			RK2928_CLKGATE_CON(1), 8, GFLAGS),
-	COMPOSITE_FRACMUX(0, "uart0_frac", "uart0_pre", 0,
+	COMPOSITE_FRACMUX(0, "uart0_frac", "uart0_pre", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(17), 0,
 			RK2928_CLKGATE_CON(1), 9, GFLAGS,
 			&common_uart0_fracmux),
 	COMPOSITE_NOMUX(0, "uart1_pre", "uart_src", 0,
 			RK2928_CLKSEL_CON(14), 0, 7, DFLAGS,
 			RK2928_CLKGATE_CON(1), 10, GFLAGS),
-	COMPOSITE_FRACMUX(0, "uart1_frac", "uart1_pre", 0,
+	COMPOSITE_FRACMUX(0, "uart1_frac", "uart1_pre", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(18), 0,
 			RK2928_CLKGATE_CON(1), 11, GFLAGS,
 			&common_uart1_fracmux),
 	COMPOSITE_NOMUX(0, "uart2_pre", "uart_src", 0,
 			RK2928_CLKSEL_CON(15), 0, 7, DFLAGS,
 			RK2928_CLKGATE_CON(1), 12, GFLAGS),
-	COMPOSITE_FRACMUX(0, "uart2_frac", "uart2_pre", 0,
+	COMPOSITE_FRACMUX(0, "uart2_frac", "uart2_pre", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(19), 0,
 			RK2928_CLKGATE_CON(1), 13, GFLAGS,
 			&common_uart2_fracmux),
 	COMPOSITE_NOMUX(0, "uart3_pre", "uart_src", 0,
 			RK2928_CLKSEL_CON(16), 0, 7, DFLAGS,
 			RK2928_CLKGATE_CON(1), 14, GFLAGS),
-	COMPOSITE_FRACMUX(0, "uart3_frac", "uart3_pre", 0,
+	COMPOSITE_FRACMUX(0, "uart3_frac", "uart3_pre", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(20), 0,
 			RK2928_CLKGATE_CON(1), 15, GFLAGS,
 			&common_uart3_fracmux),
@@ -543,15 +543,15 @@ static struct clk_div_table div_aclk_cpu_t[] = {
 };
 
 static struct rockchip_clk_branch rk3066a_i2s0_fracmux __initdata =
-	MUX(SCLK_I2S0, "sclk_i2s0", mux_sclk_i2s0_p, 0,
+	MUX(SCLK_I2S0, "sclk_i2s0", mux_sclk_i2s0_p, CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(2), 8, 2, MFLAGS);
 
 static struct rockchip_clk_branch rk3066a_i2s1_fracmux __initdata =
-	MUX(SCLK_I2S1, "sclk_i2s1", mux_sclk_i2s1_p, 0,
+	MUX(SCLK_I2S1, "sclk_i2s1", mux_sclk_i2s1_p, CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(3), 8, 2, MFLAGS);
 
 static struct rockchip_clk_branch rk3066a_i2s2_fracmux __initdata =
-	MUX(SCLK_I2S2, "sclk_i2s2", mux_sclk_i2s2_p, 0,
+	MUX(SCLK_I2S2, "sclk_i2s2", mux_sclk_i2s2_p, CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(4), 8, 2, MFLAGS);
 
 static struct rockchip_clk_branch rk3066a_clk_branches[] __initdata = {
@@ -615,21 +615,21 @@ static struct rockchip_clk_branch rk3066a_clk_branches[] __initdata = {
 	COMPOSITE_NOMUX(0, "i2s0_pre", "i2s_src", 0,
 			RK2928_CLKSEL_CON(2), 0, 7, DFLAGS,
 			RK2928_CLKGATE_CON(0), 7, GFLAGS),
-	COMPOSITE_FRACMUX(0, "i2s0_frac", "i2s0_pre", 0,
+	COMPOSITE_FRACMUX(0, "i2s0_frac", "i2s0_pre", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(6), 0,
 			RK2928_CLKGATE_CON(0), 8, GFLAGS,
 			&rk3066a_i2s0_fracmux),
 	COMPOSITE_NOMUX(0, "i2s1_pre", "i2s_src", 0,
 			RK2928_CLKSEL_CON(3), 0, 7, DFLAGS,
 			RK2928_CLKGATE_CON(0), 9, GFLAGS),
-	COMPOSITE_FRACMUX(0, "i2s1_frac", "i2s1_pre", 0,
+	COMPOSITE_FRACMUX(0, "i2s1_frac", "i2s1_pre", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(7), 0,
 			RK2928_CLKGATE_CON(0), 10, GFLAGS,
 			&rk3066a_i2s1_fracmux),
 	COMPOSITE_NOMUX(0, "i2s2_pre", "i2s_src", 0,
 			RK2928_CLKSEL_CON(4), 0, 7, DFLAGS,
 			RK2928_CLKGATE_CON(0), 11, GFLAGS),
-	COMPOSITE_FRACMUX(0, "i2s2_frac", "i2s2_pre", 0,
+	COMPOSITE_FRACMUX(0, "i2s2_frac", "i2s2_pre", CLK_SET_RATE_PARENT,
 			RK2928_CLKSEL_CON(8), 0,
 			RK2928_CLKGATE_CON(0), 12, GFLAGS,
 			&rk3066a_i2s2_fracmux),
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
