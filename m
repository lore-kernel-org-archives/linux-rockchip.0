Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4BC5D3942F
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Apr 2026 14:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ys7CEFcDgeXNfR+NhHw32aaWumXFB31ai6AYVVsx8EI=; b=mLcxzd3RlBKJev
	8Wo8oJkN0c7Ed1rC5x6iembO8W111Bo7aFavkVVKeTnBjsOoCEPFFkRl9mOqDLfatFSNq7OVbtG94
	1pN8s0G9dbJROWTBpmGxMTblVzk5FhPWn9j8sTJKwO+z305/nw0WzEh4P/hzqCc/nCZFZ7zuDZGWl
	i7L64BNDNHbiQRPl9MWiX6MdaWHs1ZetZkr37oe4WnFxlX+3tknK0+H3jl/L80+iL+Ha6gqIKfp/9
	Ul3pNXsw1FOnN9q7a/J5OPzHLfCvBHj8u1is6FNGAoUxTlM627kC8s9zf9rXt2PmRs3p+UKE62YaW
	ToX/Y3XPoq++G6qGvOWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8Ita-00000000JSJ-2upF;
	Thu, 02 Apr 2026 14:19:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8Ita-00000000JRg-0aeo
	for linux-rockchip@bombadil.infradead.org;
	Thu, 02 Apr 2026 14:19:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=wEwVt/TOby91/obLvpEjMbAjKWw/iIZ/j0HIP3lRSWw=; b=lckzT84mEPK7+cazmjyHumBQEI
	cvjDst1tFqJyMgimdWrcxF2Uya3HWlqAWhuJU2piAZKbVzTwYk4kZzCgFKJtBLLnNhmAOEiupJAr5
	89fVRGbfsLyRMcKPDzoEW5uZ8si/JxGTGivS/IFLZfdIbZocwrtHExmZXbLjq63ySJGGBpaFmjrvw
	MELWA1u86UeFB+1MkVXsWoQGfKBhjJk04J9Dx1nC/FLB8uypy31rBfYqWPmwd9b0ZujwBnWURdRWS
	U0TNaXsagKpXqhWmc4iGZcY7cfGA4749EjYZkhGabiE9YfvkZWB35OHZp0G1MG0ZacK/cbG2GgUIo
	m3X9bBFA==;
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8ItX-00000002exJ-0Icm
	for linux-rockchip@lists.infradead.org;
	Thu, 02 Apr 2026 14:19:41 +0000
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-3567e2b4159so621491a91.0
        for <linux-rockchip@lists.infradead.org>; Thu, 02 Apr 2026 07:19:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775139577; x=1775744377; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wEwVt/TOby91/obLvpEjMbAjKWw/iIZ/j0HIP3lRSWw=;
        b=sH5LRlkpeELdfFV9+I2orEkSeLzV50f/sS2nvbN5d/o73nB1SQPt4PvC8WrwbnwYJm
         7QYNAJVS88bPqcNli59iEmA4JuOU3EqhyhNa4gqwmWYNellsJcJTF3vKbT45WlAtPAvI
         gi7vg2xNnF77wLEU5w6MKP2wGDVxSMU2DJIcPH++4OeGkFqQt334v06shjt4a+mX06sH
         eVHjxoC1Sq3BHm8oAT8V31vD9c3qdzPqaLO12UKu+zHZ/RcMSrl1kLi1Slyw+85ev98O
         X/tqAJSX8TteZvb7zqJkNjg0KXlJ3wHmFRdLbvQtNhrLS0Zx51bD3W74X+xJadidPtO7
         DyKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775139577; x=1775744377;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wEwVt/TOby91/obLvpEjMbAjKWw/iIZ/j0HIP3lRSWw=;
        b=VDvmJtet1Uimxg/r1auNenDIMLUuZagz0ZowwZqJNYcDnXkTDHFyG7JlrypPkTnBHv
         L8EG+7P7BhWTDU1SHy0faJuuYZddxTRxN0Do8Gb7K/13FlFhxgNu0RQnorWMyzgkBZdY
         ypNZh5rcxncA1OWUTe33U8XeQcAaJm4kHIwgaLfS0f1JXoFf2r4iKrhiemcovE7iefhB
         k0LUMe+qYMMt38Oymgy+4wMXAHj2JN4NFD5Df2LfmyA98F7ptAOkU+MqstENPxgM63Zj
         JMEL660h9f9MjdjYTrVTH601tepDgFRvJ2peKhw0r5Psx5LO9ExM3PaOhlJ8AxMssgQx
         5xEA==
X-Forwarded-Encrypted: i=1; AJvYcCVvcHToIe+P9t3mCLjhJzH/mZyNcF6+NxL3sBIzOvLe3B5ax6iFiX+z2qZjZqwzmo/NUH0nhGo6ypGjl195JA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yznatbltj8J1yij+qo4Ut2jQxvPYy7q3l+nclrsofTiAOU8JQ3A
	LJm2PAi/4OSouuZ626/tAz2GnBl8V0p149LCEKPILhAVddB5xVihqqCW
X-Gm-Gg: AeBDietEo89yHaU4FVVg5sQoUI/e92AHYxBStKsiAjPG486bUce5syvPRJ0Fb07yCOB
	P5F/nVgQiGAD0iIRVieynopz5f9t7zsvpc3K1M4sTkMD+Wcq613P9pgXCI2XVqi3qN45CDLEVP2
	nt1ASNjhLRRp5YeZ9QDMyOaWkYNV44eqh4VBzWY/hjb/Ri+fxAJ9oCT194qSNaTXkuNAsMIr5OC
	q7omF5z5jhaX3xaUQwVUdM9mVwtVJFLK04MYW5rTbDPwUOSLHzir74x7ozeVSX5Fq3R32SknM6A
	azLq4sXhU4mi7QadwgxFoIqz2GLjz/ED/2f14dqaxgW4ROU06KNZ/DFk6m/oNTNG/c5JSbChhYs
	m4pJROyTkPqGXdixPuw3P2u1FAtkzToOgNs3Mg3N0Iwa+tJ2dJMdrOab+NApYMxWnhKH2TN6oe8
	em9/2FDIhHXnxLz4TI4WGW
X-Received: by 2002:a17:90b:3d92:b0:35b:90e7:c453 with SMTP id 98e67ed59e1d1-35dc6e43b12mr7324340a91.6.1775139576619;
        Thu, 02 Apr 2026 07:19:36 -0700 (PDT)
Received: from rockpi-5b ([45.112.0.200])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35dbe9377b7sm10959123a91.10.2026.04.02.07.19.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Apr 2026 07:19:35 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Andi Shyti <andi.shyti@kernel.org>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-i2c@vger.kernel.org (open list:I2C SUBSYSTEM HOST DRIVERS),
	linux-kernel@vger.kernel.org (open list)
Cc: Anand Moon <linux.amoon@gmail.com>,
	David Wu <david.wu@rock-chips.com>
Subject: [PATCH v3 1/2] i2c: rk3x: add support for SCL OE debounce and slave hold recovery
Date: Thu,  2 Apr 2026 19:49:22 +0530
Message-ID: <20260402141927.7216-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260402_151939_202343_4FD1BA4E 
X-CRM114-Status: GOOD (  24.09  )
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

As per the RK3399 and RK35xx datasheet, Rockchip I2C controllers
feature a SCL_OE_DB register (0x24). This register is used to
configure the debounce time for the SCL output enable signal,
which helps prevent glitches and ensures timing compliance during bus
handover or slave clock stretching.

Introduce a 'has_scl_oe_debounce' flag to rk3x_i2c_soc_data to
distinguish between hardware versions. For supported SoCs, calculate
the debounce counter dynamically based on the current clock rate
and program it during divider adaptation.

Additionally:
- Implement detection for the REG_INT_SLV_HDSCL (Slave Hold SCL)
  interrupt bit during transfer timeouts.
- Capture the Interrupt Pending (IPD) register state before clearing
  interrupts during a timeout to check for the slave hold condition.
- Re-apply the clock dividers via rk3x_i2c_adapt_div() if a slave
  hold is detected on supported SoCs to attempt bus recovery.
- Initialize the SLV_HDSCL bit in i2c_start for I2C interrupt field.

The recovery logic is gated by 'has_scl_oe_debounce' to ensure that
reserved bits on older SoC variants do not trigger false-positive
recoveries.

Signed-off-by: David Wu <david.wu@rock-chips.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
Changes:
v3: intialize the SLV_HDSCL bit in in i2c_start for interupt enable
 v2: https://lore.kernel.org/all/20260321105146.7419-1-linux.amoon@gmail.com/
v2: Aded the to detect REG_INT_SLV_HDSCL interrupt timeout
    it was part of origmal commit below.
    [1] https://github.com/radxa/kernel/commit/006c0b1e7710d471119a69d6bd56917a15a85a0b
Fix the order of SoB,
Fix the doc warning reporteed by kernel test robot
 v1: https://lore.kernel.org/all/20260103052506.6743-1-linux.amoon@gmail.com/
---
 drivers/i2c/busses/i2c-rk3x.c | 34 +++++++++++++++++++++++++++++++++-
 1 file changed, 33 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
index fcede9f6ed54..06a77780cf82 100644
--- a/drivers/i2c/busses/i2c-rk3x.c
+++ b/drivers/i2c/busses/i2c-rk3x.c
@@ -36,6 +36,7 @@
 #define REG_IEN        0x18 /* interrupt enable */
 #define REG_IPD        0x1c /* interrupt pending */
 #define REG_FCNT       0x20 /* finished count */
+#define REG_SCL_OE_DB  0x24 /* Slave hold scl debounce */
 
 /* Data buffer offsets */
 #define TXBUFFER_BASE 0x100
@@ -74,6 +75,7 @@ enum {
 #define REG_INT_START     BIT(4) /* START condition generated */
 #define REG_INT_STOP      BIT(5) /* STOP condition generated */
 #define REG_INT_NAKRCV    BIT(6) /* NACK received */
+#define REG_INT_SLV_HDSCL BIT(7) /* Slave hold scl interrupt enable */
 #define REG_INT_ALL       0x7f
 
 /* Constants */
@@ -161,10 +163,12 @@ enum rk3x_i2c_state {
 
 /**
  * struct rk3x_i2c_soc_data - SOC-specific data
+ * @has_scl_oe_debounce: Support for slave hold SCL debounce
  * @grf_offset: offset inside the grf regmap for setting the i2c type
  * @calc_timings: Callback function for i2c timing information calculated
  */
 struct rk3x_i2c_soc_data {
+	bool has_scl_oe_debounce;
 	int grf_offset;
 	int (*calc_timings)(unsigned long, struct i2c_timings *,
 			    struct rk3x_i2c_calced_timings *);
@@ -248,8 +252,12 @@ static inline void rk3x_i2c_clean_ipd(struct rk3x_i2c *i2c)
 static void rk3x_i2c_start(struct rk3x_i2c *i2c)
 {
 	u32 val = i2c_readl(i2c, REG_CON) & REG_CON_TUNING_MASK;
+	u32 ien = REG_INT_START;
 
-	i2c_writel(i2c, REG_INT_START, REG_IEN);
+	if (i2c->soc_data->has_scl_oe_debounce)
+		ien |= REG_INT_SLV_HDSCL;
+
+	i2c_writel(i2c, ien, REG_IEN);
 
 	/* enable adapter with correct mode, send START condition */
 	val |= REG_CON_EN | REG_CON_MOD(i2c->mode) | REG_CON_START;
@@ -876,6 +884,7 @@ static void rk3x_i2c_adapt_div(struct rk3x_i2c *i2c, unsigned long clk_rate)
 {
 	struct i2c_timings *t = &i2c->t;
 	struct rk3x_i2c_calced_timings calc;
+	unsigned long period, time_hold = (WAIT_TIMEOUT / 2) * 1000000;
 	u64 t_low_ns, t_high_ns;
 	unsigned long flags;
 	u32 val;
@@ -893,6 +902,13 @@ static void rk3x_i2c_adapt_div(struct rk3x_i2c *i2c, unsigned long clk_rate)
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
@@ -1063,6 +1079,7 @@ static int rk3x_i2c_xfer_common(struct i2c_adapter *adap,
 	unsigned long flags;
 	long time_left;
 	u32 val;
+	u32 ipd = 0; /* To store interrupt pending status for timeout analysis */
 	int ret = 0;
 	int i;
 
@@ -1107,6 +1124,9 @@ static int rk3x_i2c_xfer_common(struct i2c_adapter *adap,
 		spin_lock_irqsave(&i2c->lock, flags);
 
 		if (time_left == 0) {
+			/* Read IPD before clearing to check for Slave Hold SCL */
+			ipd = i2c_readl(i2c, REG_IPD);
+
 			/* Force a STOP condition without interrupt */
 			i2c_writel(i2c, 0, REG_IEN);
 			val = i2c_readl(i2c, REG_CON) & REG_CON_TUNING_MASK;
@@ -1125,6 +1145,17 @@ static int rk3x_i2c_xfer_common(struct i2c_adapter *adap,
 		}
 	}
 
+	/*
+	 * If a timeout occurred and the slave is holding SCL,
+	 * re-apply the timings/dividers to attempt recovery.
+	 */
+	if (ret == -ETIMEDOUT && i2c->soc_data->has_scl_oe_debounce) {
+		if (ipd & REG_INT_SLV_HDSCL) {
+			dev_err(i2c->dev, "SCL hold by slave detected, resetting timings.\n");
+			rk3x_i2c_adapt_div(i2c, clk_get_rate(i2c->clk));
+		}
+	}
+
 	clk_disable(i2c->pclk);
 	clk_disable(i2c->clk);
 
@@ -1198,6 +1229,7 @@ static const struct rk3x_i2c_soc_data rk3288_soc_data = {
 static const struct rk3x_i2c_soc_data rk3399_soc_data = {
 	.grf_offset = -1,
 	.calc_timings = rk3x_i2c_v1_calc_timings,
+	.has_scl_oe_debounce = true,
 };
 
 static const struct of_device_id rk3x_i2c_match[] = {

base-commit: 9147566d801602c9e7fc7f85e989735735bf38ba
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
