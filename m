Return-Path: <SRS0=K/1+=EY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80D56C5519F
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2020 13:58:57 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 06AFE2078D
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2020 13:58:56 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="P2bQITq5";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PSzHtKWa"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 06AFE2078D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OJBfOnqp9vq2Ko+emCQG2U9f+Du6Df2F2bTu/a2c0Xw=; b=P2bQITq5ceKhqgZkYoWFlPWo9J
	Zon8jkaIebAm0ICdoNmqxy5ay7YODGFZsHdLl+Ef/NrPIGmS+NyibBmdXyNVhC3EQZDme2gylWirD
	iH4/hX96o5clyXuDL6HL/tsqNwsPhnrswOsOfhK+jWmkK45s5cM+F3Lp046ZfepOGeAZs6F7aYV3b
	Pq5AGWwNf9YoxcXDn1bUczjG8AMyhKRA3cqZxdeeOlQB9UjlOgc2CzXnMKGOvlODhU0mx6sHrklms
	i0TrLrwWRHxmSibjAkrqEj76IVAfZMVHMfFODBPqdeKJZTcv9oYZ/pAlszsdcKpFmTSG9EFgCcN+M
	lbrTDegw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kfNz0-0001VT-3T; Wed, 18 Nov 2020 13:58:50 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kfNyj-0001Q6-QZ; Wed, 18 Nov 2020 13:58:34 +0000
Received: by mail-ed1-x544.google.com with SMTP id t11so2049636edj.13;
 Wed, 18 Nov 2020 05:58:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=MSc/8VySs8WXwKj6OpV1mKveFgq9hNcBrOXYQLRkjsY=;
 b=PSzHtKWak7ejUUCBG6o/9Xv+30jOueaBodX9VLV/8RcMdzFoJw3kAlaLL9Kth67Pig
 T0yx3YNXBEP0sKJ34k6vg/GqWQBWKiY9Z5SyiatMjOyNlCGrzxwiBjOh/lYQhhE5IPKc
 8SQHgMHxBNYyBiQ4Vzk1sjP/RGkdOv4y8RIyvuQIvhY8uPxHWdBTSABPiPRqJT8Qk0e8
 SxZfa5sh8MHoaDD6BONOpJuOAbdp0srAxea26GAH/VUFDU+ztvpf2hVXRBF4N9a5AxFa
 Swi1dplBoZM+gMnUz+5omKUcyINEs3bldmPDOsp1gg2zcyoXQ+T3xU+chuwp9lQvepS5
 /CfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MSc/8VySs8WXwKj6OpV1mKveFgq9hNcBrOXYQLRkjsY=;
 b=NmdYoBsNFTUDinnshxij7gn2ut48mW+ezP1gMoz9452FNf1pbtLQvBp4fKk7r3mhk1
 djWwjdwlFKRe35QPi1+hcA2wg5X/hK/ju5KiGQW9BsNAAdqJPvYchkchWEIZd+49rXeL
 yzh+Z+ijbhaVIArA/2GdTLunw3rK972vY2at4c43NVtdNCjAeuO5FWCN6myqjpWXWt4C
 ldt3HvEjnl5mGe9ZrH6ztfsrWRJZgb/+3BtxzM396x5q7ooASnHQBh9r/5PNiRlJB40H
 CCQOYJbiZG3EkGx0OM+My7YlgY3egg+x6tjRYLnvK3D4lklkMgk/7SJ3thlzcwuyzv4u
 j7nw==
X-Gm-Message-State: AOAM531gM2jq31oCJo6mZoh/pgdxcMKoy4McVhzltyXxmiID8rAmqv4a
 U241rhZCfF42+pEcAPByhCA=
X-Google-Smtp-Source: ABdhPJzYLiQUISgIWGRy72t5CxEx67xBXXPbEiMo6R+2Z3MTIkeLrjLYfj+lXhQYoben1UPiIek2tg==
X-Received: by 2002:aa7:c546:: with SMTP id s6mr25648230edr.114.1605707912653; 
 Wed, 18 Nov 2020 05:58:32 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id cx6sm13721384edb.61.2020.11.18.05.58.31
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 18 Nov 2020 05:58:32 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v5 2/7] clk: rockchip: fix i2s gate bits on rk3066 and rk3188
Date: Wed, 18 Nov 2020 14:58:17 +0100
Message-Id: <20201118135822.9582-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201118135822.9582-1-jbx6244@gmail.com>
References: <20201118135822.9582-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201118_085833_913701_89D73C94 
X-CRM114-Status: GOOD (  13.87  )
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
Changed v3:
  reword
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
