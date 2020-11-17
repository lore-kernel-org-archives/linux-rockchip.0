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
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6161C64E7C
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2020 19:46:02 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8274222240
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2020 19:46:02 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ZwaICyrw";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="oKkdf4FD"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8274222240
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YTn3Gt2LXJFabv1zHqDVxf8sMsVgbm27xhncAhQBR3g=; b=ZwaICyrwdlOU3AFo8luHM2Q5Tj
	SnFfMYlNzXHh8lYckshHt5I802aeEch/6uY5yDOHkR+x+rzWvs5guDaFlQY0S+htMntQj7+yVxKfk
	JL5H0pmUAX79KxDFOsjDMXYRrKVtHPitzkDYGZ2rrEJUt9If+/ajtaQXwUteSCHZ1JcHtobiz7DJ5
	e5FdDjJev93jmVphOEe82GJca0a1W+TC6yXSvGEngg0t63aIafeBNS8K5dLLDyqE66iL+YtL29tM5
	rvBhgHimM6vyLN3TVbcdb4drEZruqBeSSxPyuH0+dbdfEO0kTK4RGabB6QqMw5FUhz78ojEzYbcO/
	4bLLCmsQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kf6vL-00036T-Bj; Tue, 17 Nov 2020 19:45:55 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kf6ul-0002tN-HJ; Tue, 17 Nov 2020 19:45:21 +0000
Received: by mail-ed1-x544.google.com with SMTP id ay21so23798168edb.2;
 Tue, 17 Nov 2020 11:45:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=qLZ92o7SKXRNCO4EpTsjSi6r9gNUjFUim5asS0HF/w0=;
 b=oKkdf4FDYOBcmRjaWF0djFWKvkEqMKLs8V80Y1M3AuCZSdPVZPQadXdiS6A1MtHNlU
 tON1BGPFwyeiGJ1066SUnIc3fqf0Bfv4cjJF8DLF1zA0tHI7XMZcOIiO5+ZzzaGh1jgZ
 tkwRnw4K2HLlTi4Rgr1ErjdxqsqGgJ3RqPaz+IchvRiEGvuLadjlSvx++D3mccEGuKGQ
 3w5aoTYSVWBq+V3BupHllZOk4/0hxww1fmflisiadpt+RRH51V0hqOn+oOILJKje73nu
 L5xBl0gUosjFuWFxdgqFqhJE3jffW4bvC/f7No6YZMBpSJu1ijPc8o0jdH+m3aB4ki1a
 Vfmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=qLZ92o7SKXRNCO4EpTsjSi6r9gNUjFUim5asS0HF/w0=;
 b=JWMu5fWlEWfmZygdbQGb6WX2FrVitx5dr5VMgY4Bfeb0HLt/5Mq7O+pTEi4EgF8ZXn
 lrk2QUg/8vZfDmKtpR43qAUddRDLw0J/llvy2yhNq5E0tYhLRf+tu71p3D/dIX+4+b9R
 7DiglUUDQiHTAMqxbak34VXiEEHmEke1QhT9h3nb8FLL/0IbSzQuOoml+SBzHRmk5Kkt
 AaA4vbmrzo1ukk60BjJDHzuXKShR5hgxauLPM735FuROGZM4dhAcEJLKQNO2lfT4J0q3
 AESjeqdlclnfesKTd5uH8kgpmkE7kTF0GNacUjJJP/QJe1aHqQTTESU+6ojwEEF99jr8
 7dSw==
X-Gm-Message-State: AOAM531F02M/EgvXdAYcMGxUGwjh7oK+bxCSUyjgByU356z7OXVRhgxi
 TwjSzUnM3jfM8GttagpNKLY=
X-Google-Smtp-Source: ABdhPJxTXIBU54JqmMAwvF6EOMr/MiPBAO9XomS/YrWcH+/VIo1h+Y3x2QhXOy3CZ7L2oxRaE1WIFA==
X-Received: by 2002:a05:6402:2d7:: with SMTP id
 b23mr21720443edx.196.1605642318630; 
 Tue, 17 Nov 2020 11:45:18 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w2sm727972ejc.109.2020.11.17.11.45.17
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 17 Nov 2020 11:45:18 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v4 2/7] clk: rockchip: fix i2s gate bits on rk3066 and rk3188
Date: Tue, 17 Nov 2020 20:45:02 +0100
Message-Id: <20201117194507.14843-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201117194507.14843-1-jbx6244@gmail.com>
References: <20201117194507.14843-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201117_144519_689921_8037E280 
X-CRM114-Status: GOOD (  14.60  )
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

The Rockchip PX2/RK3066 uses these bits in CRU_CLKGATE7_CON:

hclk_i2s_8ch_gate_en  bit 4 (dtsi: i2s0)
hclk_i2s0_2ch_gate_en bit 2 (dtsi: i2s1)
hclk_i2s1_2ch_gate_en bit 3 (dtsi: i2s2)

The Rockchip PX3/RK3188 uses this bit in CRU_CLKGATE7_CON:

hclk_i2s_2ch_gate_en  bit 2 (dtsi: i2s0)

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
