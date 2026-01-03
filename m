Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D24A2FC6171
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Jan 2026 05:25:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R/uXeGMzhMW/BdAtUhGzlnkUgraOpOK+W4DbKNY/8qw=; b=SRaU6AAT4W2pRE
	mbtGl9ADXMv/31/1nJknOnHWTsAvRWjCq5zkX3NJ+gy2/dlSKIXjAgIa0EUrVDa4JbaB8Sg1UFg3l
	8/n50JLrg9ib6OhQEjU/SAUHJSoGVlz3WrsaoNzGiH5sz+MC/cxe37r987z2BVYALJWqpasZ3j/a1
	Yo0aNU/390K+xUWGrmnAiu/O8JFZJvZ70/4xyVTGOoVGiHaUxxv8RzHznPEgq+VjBqm1MzYYhTIDD
	oI/VpXc0DbETH/0DZyT5IDiSlOi60V7jFoQRjSl6L5BmUfMiY2xwsX9Wu5uLESkWl6humfHpEEtw5
	1hkMF+Fq+Vg6fDJhYFdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbu8j-00000008zl2-0T1H;
	Sat, 03 Jan 2026 05:25:25 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbu8h-00000008zkR-1ttX
	for linux-rockchip@lists.infradead.org;
	Sat, 03 Jan 2026 05:25:24 +0000
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-7aa2170adf9so9247926b3a.0
        for <linux-rockchip@lists.infradead.org>; Fri, 02 Jan 2026 21:25:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767417922; x=1768022722; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=P3Von/oqR6tF4sweOsQdB8oflDGVDpq56CSH4LwQR/I=;
        b=VkOCGRpuzPwhc1GWnGvLKewAXIPQBAbIE4DNiY91gwPhTpMcKeuUpIzJkPKTf58CZ7
         74lfGKGz1BNU4rAA0YNLkSHzEcVsswunRBm8mjTunHfsKFVKTc5jtKEikQzyHYvK2pRz
         gnj8+Nz0Q+qiBiAJ0u0tX3aNfjAqfAuMTdEs7qX6jfu4t3YJbRl5rmDsAnuhc8daVxsU
         XJQQAnqlHuHqNW6t1HDFMuRs2GNsKUV41oFAp6iFWQeaHue9ETKyMLpphySXD1GjWV6S
         x76DTUNgsOnzxpLUzg7d4l81M9Ab386ufOgsxEeWrpROw41X5isKfbdmz2qkiWcNQ+Sp
         NzOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767417922; x=1768022722;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P3Von/oqR6tF4sweOsQdB8oflDGVDpq56CSH4LwQR/I=;
        b=eNSQnnf9dAO1bVUlPUYfEmj7VPYXABzx6L8uLrjSfeIjTjmQ10bms0bE94aqhl3x5S
         bHF5+fjyR4pwpC82pH+GkH4PgLiChqLw/mPm+Q8g+i5+dm+2DlDuqCMKmj9o6ZmZTGZ+
         lGbFYJRfHKyWeNKetYgDcne2QuJ5edPjj+Yd6PKNpese1PXcIMdIRCg7Cm2Jlrswc0OM
         0xFVJJd35gy/cdo8vNt54kPxyIhtEk8N1zmd5OE7PXtvUjC+uzSks6vA4hJAId0nm31l
         JZjk9Ep88kyB+2XsxID2RCrz4HxyLtsw+dTiUMfubTsCd3qRAxeTlzMdocB/NNoVzsFi
         N8QQ==
X-Forwarded-Encrypted: i=1; AJvYcCXzyUJ/RbRR3eVXXV765e6uje7a95iGE6GIsGSc83HAfKlHbQr6G0QaMzk7sWfzMTwd1H6kCFVUXyRycLwevA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyd9W6zOa/QC9tGSgo4ORFXPAAwKRpOi7ZU95c+RxNFubaQyRjH
	j15iEZPQJk5oV64ZPrpknDHWp2RMe3B7j4KgLlFTdnYRDKMvKJtVzPDA
X-Gm-Gg: AY/fxX69QRyuQNglYr8oHHOA58txofFfLrmrUiZf13HhQt+InSfSGmmO0TYSr+eSYRO
	gh/gn5P894xfjziWEXBrjCU7VMstDgpYIvTP5L3sbboqlAqloWLPR6u7wwbe5FmCNvZC0I1FTAF
	BL0EhSIv6AWl3RMqHZMGMClt97vLkvFVJODGdSzXORivI+3kW3SZIFK9Fsn0OWdHyMVCUe5NLTy
	JGVR6YHLCikfWUCGtl3jYPOv9/nAGCF1f1tjtXN2d61Qae9NS9VrvTE+rtUVZh9PVHtp4NBPL8M
	7M2CFF3jtiM5WAKq2LNrOadLETUjKMuSsiHYxvBFDzYQ/Awx30gbadzKh5rJBNeCeCGKepdZW0t
	+Joh2VCMvhJyScZInB76+bh1b5LXTKnXPVIyCaRMhT1zuvTslK75O1Ol9AdeG74nSzTi7jXQn22
	mSoDXIDg==
X-Google-Smtp-Source: AGHT+IGXYc8+FvRJ1M0wgH9j9p6V5dVha9j+Kma2Qez7gSUK8elkPSRSvbOR59FPXYmmBJmR/5NC/A==
X-Received: by 2002:a05:6a00:1f06:b0:781:261b:7524 with SMTP id d2e1a72fcca58-7ff64ed14d4mr37036813b3a.14.1767417922373;
        Fri, 02 Jan 2026 21:25:22 -0800 (PST)
Received: from rockpi-5b ([45.112.0.8])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e48f258sm41658653b3a.47.2026.01.02.21.25.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jan 2026 21:25:21 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Andi Shyti <andi.shyti@kernel.org>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-i2c@vger.kernel.org (open list:I2C SUBSYSTEM HOST DRIVERS),
	linux-kernel@vger.kernel.org (open list)
Cc: Anand Moon <linux.amoon@gmail.com>,
	David Wu <david.wu@rock-chips.com>
Subject: [PATCH v1] i2c: rk3x: Add support for SCL output enable debounce
Date: Sat,  3 Jan 2026 10:55:04 +0530
Message-ID: <20260103052506.6743-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260102_212523_503620_1F701CC9 
X-CRM114-Status: GOOD (  15.32  )
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

From: David Wu <david.wu@rock-chips.com>

As per the RK3399 and RK3588 datasheets Rockchip I2C controllers feature
a SCL_OE_DB register (0x24). This register is used to configure the
debounce time for the SCL output enable signal, which helps prevent
glitches and ensures timing compliance during bus handover or slave clock
stretching.

Introduce a 'has_scl_oe_debounce' flag to rk3x_i2c_soc_data to
distinguish between hardware versions. For supported SoCs, calculate
the debounce counter dynamically based on the current clock rate
and program it during divider adaptation.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
Signed-off-by: David Wu <david.wu@rock-chips.com>
---
v1: This change have been pulled from linux-radxa kernel.
---
 drivers/i2c/busses/i2c-rk3x.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
index d4e9196445c0..31d7d6487613 100644
--- a/drivers/i2c/busses/i2c-rk3x.c
+++ b/drivers/i2c/busses/i2c-rk3x.c
@@ -35,6 +35,7 @@
 #define REG_IEN        0x18 /* interrupt enable */
 #define REG_IPD        0x1c /* interrupt pending */
 #define REG_FCNT       0x20 /* finished count */
+#define REG_SCL_OE_DB  0x24 /* Slave hold scl debounce */
 
 /* Data buffer offsets */
 #define TXBUFFER_BASE 0x100
@@ -164,6 +165,7 @@ enum rk3x_i2c_state {
  * @calc_timings: Callback function for i2c timing information calculated
  */
 struct rk3x_i2c_soc_data {
+	bool has_scl_oe_debounce;
 	int grf_offset;
 	int (*calc_timings)(unsigned long, struct i2c_timings *,
 			    struct rk3x_i2c_calced_timings *);
@@ -875,6 +877,7 @@ static void rk3x_i2c_adapt_div(struct rk3x_i2c *i2c, unsigned long clk_rate)
 {
 	struct i2c_timings *t = &i2c->t;
 	struct rk3x_i2c_calced_timings calc;
+	unsigned long period, time_hold = (WAIT_TIMEOUT / 2) * 1000000;
 	u64 t_low_ns, t_high_ns;
 	unsigned long flags;
 	u32 val;
@@ -892,6 +895,13 @@ static void rk3x_i2c_adapt_div(struct rk3x_i2c *i2c, unsigned long clk_rate)
 	i2c_writel(i2c, val, REG_CON);
 	i2c_writel(i2c, (calc.div_high << 16) | (calc.div_low & 0xffff),
 		   REG_CLKDIV);
+
+	if (i2c->soc_data->has_scl_oe_debounce) {
+		period = DIV_ROUND_UP(1000000000, clk_rate);
+		val = DIV_ROUND_UP(time_hold, period);
+		i2c_writel(i2c, val, REG_SCL_OE_DB);
+	}
+
 	spin_unlock_irqrestore(&i2c->lock, flags);
 
 	clk_disable(i2c->pclk);
@@ -1198,6 +1208,7 @@ static const struct rk3x_i2c_soc_data rk3288_soc_data = {
 static const struct rk3x_i2c_soc_data rk3399_soc_data = {
 	.grf_offset = -1,
 	.calc_timings = rk3x_i2c_v1_calc_timings,
+	.has_scl_oe_debounce = true,
 };
 
 static const struct of_device_id rk3x_i2c_match[] = {

base-commit: 805f9a061372164d43ddef771d7cd63e3ba6d845
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
