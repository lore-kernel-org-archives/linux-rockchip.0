Return-Path: <SRS0=bCYA=EU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38F34C5519F
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Nov 2020 13:41:47 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4BC1822252
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Nov 2020 13:41:45 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="hj2XIwQt";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HQ3r1+UA"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4BC1822252
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Bgqffy+YcOILn7kpDyXA4L/s0zIn4sk7DNc/PXe42tw=; b=hj2XIwQtGj2hlQSsyc7Ko1Dvpj
	0jyYKVQ7qLMmCyYduMuVq5M7lLFZZYN1THdIapSx6FsSpclHkWP+jQCRIx/kl7kEVs+NekUy1OUSt
	Bm+lEZ6iJ0rc8ZpRR2CzH3qhNRcIRJe79gvJa4k/SlIO98rnMdK79zjopRtNb+9UJG6wUi15fgJNr
	soeyUwUER6a9APCp4zwneW76gI/jbrp7qTK9IhbSyaE4f9IBSzC0BicOWtm6l4N7iTc6tYBYaCcBl
	zOfXlzlwQKCNAoXsjmcu0SHxv0jpB4gVgZy2uRqL6PGYxauRQy/itwnLg/YnZIJr4m8AjVCzQFPLa
	goh7q9Og==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kdvoE-0007aK-GK; Sat, 14 Nov 2020 13:41:42 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kdvo8-0007Yj-4H; Sat, 14 Nov 2020 13:41:36 +0000
Received: by mail-ej1-x641.google.com with SMTP id i19so17870068ejx.9;
 Sat, 14 Nov 2020 05:41:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=oCiHauMY/pbQZ8o5QcU4bw23qyqCEf72jnXhjHhGCU8=;
 b=HQ3r1+UAbF1vLX/yrABgaISynyAIxVDSRJHXPrRcg+pNNpjXsjcmYCDe60r4A2uOxI
 39Ftn8FFmhFnivyUIk/wKHp4WjjPrMrxfshblRMjyA7EtSq9FJeLhV6WPtNSizI1FOu3
 tYW0pV7KPFVO9e7ldqpv+m6VqsRs9Rcuv8ob3x5AaWpQZfDIfH8J0oh/t+mWB2+mkpt2
 mva/bLpxUxTJkqbSCA53R0e3LH1Y3/oL9Ud/Bwaw/KTkoze7ixobBQCsy7RTaRHakBXT
 kobQCrKVUkS7g7TMgn2YYL5s8ZxZn9CqzyOvIa5F8fli/LSgEK2dicriiu/hoFCc4KGW
 H3LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=oCiHauMY/pbQZ8o5QcU4bw23qyqCEf72jnXhjHhGCU8=;
 b=KIGc9mu86/flAB+9SsYuOvHpjXR+Zw/ALFbOnem3A4abNiOZsWyCuKmi+maguEYsHk
 c3+K68zx1nqO58JV6jJA3ntyNFmcThhiwxIM/3n+QxjBIEW/kEdzrvDGIsmaoNAp0VnP
 MOqmmtaapSmwA2/MzdOmXpiX/sCkarSNIG/lViYkisVdumcxYr9sEr8uH6rUP5R39Ql1
 75OYf3aaQCAVsZ70aL4NofpGlcJGLEN+DgYl1njxOos/1iIUkN3BYQPV8GgLCqCMikrP
 sFtREOr8ZhF8W1o9RGesxYhM+ILMdHtnEyTf0oggsnViFilhXmC2FC+zUNTLHhfvNYQT
 jZBQ==
X-Gm-Message-State: AOAM53223L96cVCM2th7c9/l+iFWFnT0Gewix/1S4pnRMBKcpw/XvSvk
 grfSakkDMEBB37eIuZtoWQk2WTkDP1n1wg==
X-Google-Smtp-Source: ABdhPJw45tu2V6Tj+ePi7yM5zSpKrIu1abxfh7y0HE3exy81Q5qjskb8dFZdJ8H/g3zx8oKAAn6uXg==
X-Received: by 2002:a17:906:d784:: with SMTP id
 pj4mr6420803ejb.78.1605361293854; 
 Sat, 14 Nov 2020 05:41:33 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id l20sm6589314eja.40.2020.11.14.05.41.32
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 14 Nov 2020 05:41:33 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v2 2/2] clk: rockchip: fix i2s gate bits on rk3066 and rk3188
Date: Sat, 14 Nov 2020 14:41:25 +0100
Message-Id: <20201114134125.6169-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201114134125.6169-1-jbx6244@gmail.com>
References: <20201114134125.6169-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201114_084136_196206_774E3AD2 
X-CRM114-Status: GOOD (  13.83  )
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
Cc: sboyd@kernel.org, mturquette@baylibre.com, zhangqing@rock-chips.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The Rockchip PX2/RK3066 TRM under CRU_CLKGATE7_CON
gives this info:

hclk_i2s_8ch_gate_en  bit 4 (dtsi: i2s0)
hclk_i2s0_2ch_gate_en bit 2 (dtsi: i2s1)
hclk_i2s1_2ch_gate_en bit 3 (dtsi: i2s2)

The Rockchip PX3/RK3188 TRM under CRU_CLKGATE7_CON
gives this info:

hclk_i2s_2ch_gate_en  bit 2 (dtsi: i2s0)
hclk_i2s_8ch_gate_en  bit 4 (not used in rk3188.dtsi)

The bits got somehow mixed up in the clk-rk3188.c file.
The labels in the dtsi files are not suppose to change.
The sclk and hclk names should match for
"trace_event=clk_disable,clk_enable",
so remove GATE HCLK_I2S0 from the common clock tree and
fix the bits in the rk3066 and rk3188 clock tree.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 drivers/clk/rockchip/clk-rk3188.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3188.c b/drivers/clk/rockchip/clk-rk3188.c
index db8c58813..0b76ad34d 100644
--- a/drivers/clk/rockchip/clk-rk3188.c
+++ b/drivers/clk/rockchip/clk-rk3188.c
@@ -449,7 +449,6 @@ static struct rockchip_clk_branch common_clk_branches[] __initdata = {
 
 	/* hclk_cpu gates */
 	GATE(HCLK_ROM, "hclk_rom", "hclk_cpu", 0, RK2928_CLKGATE_CON(5), 6, GFLAGS),
-	GATE(HCLK_I2S0, "hclk_i2s0", "hclk_cpu", 0, RK2928_CLKGATE_CON(7), 2, GFLAGS),
 	GATE(HCLK_SPDIF, "hclk_spdif", "hclk_cpu", 0, RK2928_CLKGATE_CON(7), 1, GFLAGS),
 	GATE(0, "hclk_cpubus", "hclk_cpu", 0, RK2928_CLKGATE_CON(4), 8, GFLAGS),
 	/* hclk_ahb2apb is part of a clk branch */
@@ -634,8 +633,9 @@ static struct rockchip_clk_branch rk3066a_clk_branches[] __initdata = {
 			RK2928_CLKGATE_CON(0), 12, GFLAGS,
 			&rk3066a_i2s2_fracmux),
 
-	GATE(HCLK_I2S1, "hclk_i2s1", "hclk_cpu", 0, RK2928_CLKGATE_CON(7), 3, GFLAGS),
-	GATE(HCLK_I2S2, "hclk_i2s2", "hclk_cpu", 0, RK2928_CLKGATE_CON(7), 4, GFLAGS),
+	GATE(HCLK_I2S0, "hclk_i2s0", "hclk_cpu", 0, RK2928_CLKGATE_CON(7), 4, GFLAGS),
+	GATE(HCLK_I2S1, "hclk_i2s1", "hclk_cpu", 0, RK2928_CLKGATE_CON(7), 2, GFLAGS),
+	GATE(HCLK_I2S2, "hclk_i2s2", "hclk_cpu", 0, RK2928_CLKGATE_CON(7), 3, GFLAGS),
 	GATE(HCLK_CIF1, "hclk_cif1", "hclk_cpu", 0, RK2928_CLKGATE_CON(6), 6, GFLAGS),
 	GATE(HCLK_HDMI, "hclk_hdmi", "hclk_cpu", 0, RK2928_CLKGATE_CON(4), 14, GFLAGS),
 
@@ -728,6 +728,7 @@ static struct rockchip_clk_branch rk3188_clk_branches[] __initdata = {
 			RK2928_CLKGATE_CON(0), 10, GFLAGS,
 			&rk3188_i2s0_fracmux),
 
+	GATE(HCLK_I2S0, "hclk_i2s0", "hclk_cpu", 0, RK2928_CLKGATE_CON(7), 2, GFLAGS),
 	GATE(0, "hclk_imem0", "hclk_cpu", 0, RK2928_CLKGATE_CON(4), 14, GFLAGS),
 	GATE(0, "hclk_imem1", "hclk_cpu", 0, RK2928_CLKGATE_CON(4), 15, GFLAGS),
 
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
