Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41CE7CA5FA5
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Oct 2026 08:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GeQ5MZBkgGgSOjFLkRuaold1UfkiO1e/zN8ImG2WOdU=; b=ciFofAxyHDM1qL
	sL39e/9eef6ZGH3RjQzE1Q5wvpa1hOhUETxr7YGnyMPBPd9+WeXHpZyKocH86Vzge13qIz4Ynergv
	7toY8zBBQTFw731Yq7PmPbMz737tutsX0CR/oDFDSyeqv0OvkmUwFPNBFinmRG3ea1JhkmR1iD9fz
	STuP5F9ma+FHS/F6BM9YxrgLGY7+7NQvksGexYyUVibLjHqcx72a1S9qp+i34+R+RxAhRy4DeOsbg
	Tjcd7580sp1dI4ytQ7NzTS2Dw8t0Sism51Gsggu4/+4LtAE0LoJzEqnrIE6FD61V+VLzAYxMxGdai
	CdCq8Zi8VR5kKg28819Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCCOD-00000008EWa-2gkw;
	Thu, 01 Oct 2026 08:43:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCCOB-00000008ESU-0ynL
	for linux-rockchip@bombadil.infradead.org;
	Thu, 01 Oct 2026 08:43:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:In-Reply-To:References;
	bh=4dA/c3M5G0xH9p5gUF/XWZZJAKjMX6RGI0WkDKQAyf0=; b=VFGsjQLKEUP5qeSHmfTCvY0s28
	IpiCwsaTTW96KuCn4+3CIizI4AIQUE6SOv8m7DXtdom1PN90XhwgU/RNZlkVFpXnXSd7llxHTxSqv
	kfemfG2KNwZKMts7GQ3O4EtasCtq/8aRLp/HHSwWD0SWmHLWPFF9oB5vgYxr9EbFfxXEBnAywSmeu
	ix56aV2nXoAx7H6zUhU98ZM4iM/YL6slcOX0jDdW39NnXMCe3CEVWGyZmoqPXEb32zJzhldbaOtuz
	DbAKRup1E40efrLjP8qbbvAMxoUp39rcWjanARQvraxSvXCBtU6CUf2elesBSYZtYPz/TprIqxyWq
	bgnu6OZw==;
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xCCO7-00000004kd0-1Xrn
	for linux-rockchip@lists.infradead.org;
	Thu, 01 Oct 2026 08:43:38 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49b912e4b11so37258455e9.3
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Oct 2026 01:43:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1790844213; x=1791449013; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=4dA/c3M5G0xH9p5gUF/XWZZJAKjMX6RGI0WkDKQAyf0=;
        b=KALL2ockGe9J/CsvR2MG3aAt53Kd/FwSlV5SYzXptDPNIiF8M3VSyU0WfRW7VXS2OK
         dxt6PR1N62rInRpc+gNk+yS7Osygc39SLhtHfQrIeIkzN7tWj48K7lshPknr/Z32pFHp
         EwhSGNCiSG4KDVyVyrvF7Lzdk+BY1RZxaUw+KBsOZGpyId+raKUzdArZWLX0BOC/ULtQ
         AUpzwM/2OclSy07uy1qWaYaO7hTXCl9/8Rd4uI0KcgMlExm3R5Jo+eZY541pRedIRbUs
         OEf2QOJZnnIpshNHy1mgiZBlOlkX2iuxgT8zYt1Nuhp+/aEKRrKVItwdRvzDRYlSkP0N
         xTsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790844213; x=1791449013;
        h=cc:to:message-id:content-transfer-encoding:content-type
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=4dA/c3M5G0xH9p5gUF/XWZZJAKjMX6RGI0WkDKQAyf0=;
        b=qrJ8984vN1WRfKNNxUrR1KW8UZZ8ubx9d+exFhTJqEoh/QnEdig3vPHu+1aRu3eCVk
         i/ZsvinmUKqeBJze59WzlL6iYNggKaCZ5qjRsKz9q4Hi//tSZ2ppvk3xwKTU9H05wL2u
         SmfOaUGb781Jl2teulJwOQjh357vMqhPFwS7vhVna0U7dtjHguI1k2VMa4BO1uqYvnuV
         ZQKCPMHEmqMVF1dTlQZ2XXZnE1RlDNIg8kOcrDTCJlHpOfHaTD7WKjP5AZ+obV9mi6bj
         bv3Ax2ozPmAFyfHltC7ZrX9dLLNqewzicv/5evPiQ6EaYC3ErMakBTMEclVM+Y/qqSTM
         it8A==
X-Forwarded-Encrypted: i=1; AKwUvBz2vvmkfoTlTMCyGiuCt6KC6SOlbhz544IRhTL1dyzk6enLS4evSPnm6DkDz8WoKjG4Hku6IV96tkIbyv/Mgw==@lists.infradead.org
X-Gm-Message-State: AFuF++l0a141k+OqwYGG9/i0Q+RMIfDCqLvkzHLw3zBQP/3M0AsuEJuD
	DoAurAWoNaYEHVE6CeGy1YkwQH3ngTkCED0z9NB1iLC/r1FMdw5mlnfPO2SAzENC65E=
X-Gm-Gg: AYBFou1AkHPs54ZAWFeIkwdKWsWLxoK21S6AXKWSyQJf3D8pqacGczFD0ffI2Aq2CjD
	kD5ZoTt2I3iGJbzmXTmE1ai/sAJhiWnsJ1kaLKpCAyCfI4AD5Yjo7CNS/FRBWZj9PJ3lZh6xZKY
	13etG4UgMZEYLHShaaJJlUjyeDRI7KE5BWgLbfKXF0cxccmu950ueCmBS3N95ydlekbM9qhbXIB
	Ko+5ZaGpeCjBx1gb5G6d+ntVGP3ZWnTxWZvxB7sYb9nBYy7/0nTOGr8mNs5bOh4QFYmPdVKRFeG
	JgemJbe8kQXFBfAdzwqpn2t4CsLAaSbevCygKG0VxiRLflM65UylOn3/8guhO1f7TNlEGapSAAD
	MWAkaAKOPnKmPJEVG8DmtLWURoPVcNeCy1wDa4lOSrAmCi+2hCNsWuKVppemwnH386krBVNwKJd
	lqFso+rGonDZ0RFWzb0R9ZwAkky0tqb2Nk07k2CfDYgQcjlFWwL5oFwNtfURPX0UlMuPMnQwa3h
	Zps6uiYDZb+wuNspIJ3vaubGUo=
X-Received: by 2002:a05:600c:c8a:b0:49e:7862:c09e with SMTP id 5b1f17b1804b1-4a01adec28amr66837005e9.14.1790844212958;
        Thu, 01 Oct 2026 01:43:32 -0700 (PDT)
Received: from alchark-surface.localdomain ([5.194.93.183])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a01f979c05sm84307725e9.3.2026.10.01.01.43.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2026 01:43:32 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Thu, 01 Oct 2026 12:43:20 +0400
Subject: [PATCH] i2c: rk3x: Add generic GPIO based bus recovery
MIME-Version: 1.0
Message-Id: <20261001-rki2c-recovery-v1-1-ea29ce7317fc@flipper.net>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMQQrCMBBG4auUWRtIpiDiVcRFnf7RUUhl0paW0
 Ls31eW3eK9QhikyXZtChlmzDqkinBqSV5eecNpXE3s+B++Ds4+yOIMMM2x1nvnCEjvEtqUafQ1
 Rl9/wdv87T483ZDwutG07saLDvXIAAAA=
X-Change-ID: 20261001-rki2c-recovery-02282cfaef33
To: Heiko Stuebner <heiko@sntech.de>, Andi Shyti <andi.shyti@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=6657; i=alchark@flipper.net;
 h=from:subject:message-id; bh=05hckqbzWrSWg6nAu4ayXZJ0SnccK6eIRIGmfGXur/8=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTtkzWVi7jpc3tlDsfnVxOXxnW1ZOn/TjjDtVTsezira
 pm1ofb6joksDGJcDJZiiixzvy2xnWrEN2uXh8dXmDmsTCBDpEUaGICAhYEvNzGv1EjHSM9U21DP
 0EjHWMeIgYtTAKZ6tREjQ0+r8oZFpSU3uU7NfzblsvXPtyYvL3UyNj5WPL+I92XD08sM/yyzUh6
 c9b90RMxTvUaR+VTJLeaMKz/mP9phss3cqEXGnAMA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_094335_771870_13852392 
X-CRM114-Status: GOOD (  24.28  )
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

A target that loses track of the framing can be left driving SDA low while
it waits for a clock to shift out an ACK, e.g. after decoding a data byte
in another device's reply as its own address. The controller then cannot
generate a START, and the target takes the first bytes of the next
transfer as data for itself, silently corrupting its registers. This has
been observed on RK3576 with a TI BQ25792 charger and a TI BQ28Z620 gauge
sharing the bus, with gauge reads ending up in the charger's registers.

Use the I2C core's generic GPIO bus recovery so that boards can describe
the recovery pins, so that the core can clock the target out of the wedged
state and issue a STOP when SDA reads low before a transfer.

Some newer SoCs such as RK3576 have a dedicated bus status register which
can be read atomically with a single MMIO access, so use it as a fast path
to detect a wedged bus where available, falling back to the generic GPIO
based detection otherwise. Recovery itself is always GPIO based and thus
only available in non-atomic contexts due to the need to switch pinctrl.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 drivers/i2c/busses/i2c-rk3x.c | 84 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 84 insertions(+)

diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
index fcede9f6ed54..a4ca2585a39b 100644
--- a/drivers/i2c/busses/i2c-rk3x.c
+++ b/drivers/i2c/busses/i2c-rk3x.c
@@ -41,6 +41,12 @@
 #define TXBUFFER_BASE 0x100
 #define RXBUFFER_BASE 0x200
 
+/* Registers present on some SoCs only */
+#define REG_SCL_OE_DB  0x24  /* target clock stretching debounce */
+#define REG_ST         0x220 /* SCL/SDA line status */
+#define REG_DBGCTRL    0x224 /* SCL glitch filter, clock stretching detection */
+#define REG_CON1       0x228 /* automatic STOP control */
+
 /* REG_CON bits */
 #define REG_CON_EN        BIT(0)
 enum {
@@ -66,6 +72,10 @@ enum {
 /* REG_MRXADDR bits */
 #define REG_MRXADDR_VALID(x) BIT(24 + (x)) /* [x*8+7:x*8] of MRX[R]ADDR valid */
 
+/* REG_ST bits */
+#define REG_ST_SDA        BIT(0) /* 1: SDA is high */
+#define REG_ST_SCL        BIT(1) /* 1: SCL is high */
+
 /* REG_IEN/REG_IPD bits */
 #define REG_INT_BTF       BIT(0) /* a byte was transmitted */
 #define REG_INT_BRF       BIT(1) /* a byte was received */
@@ -163,11 +173,13 @@ enum rk3x_i2c_state {
  * struct rk3x_i2c_soc_data - SOC-specific data
  * @grf_offset: offset inside the grf regmap for setting the i2c type
  * @calc_timings: Callback function for i2c timing information calculated
+ * @has_bus_status: REG_ST reports the SCL/SDA line levels
  */
 struct rk3x_i2c_soc_data {
 	int grf_offset;
 	int (*calc_timings)(unsigned long, struct i2c_timings *,
 			    struct rk3x_i2c_calced_timings *);
+	bool has_bus_status;
 };
 
 /**
@@ -181,6 +193,7 @@ struct rk3x_i2c_soc_data {
  * @clk_rate_nb: i2c clk rate change notify
  * @irq: irq number
  * @t: I2C known timing information
+ * @rinfo: bus recovery information, filled in by the I2C core from firmware
  * @lock: spinlock for the i2c bus
  * @wait: the waitqueue to wait for i2c transfer
  * @busy: the condition for the event to wait for
@@ -206,6 +219,7 @@ struct rk3x_i2c {
 
 	/* Settings */
 	struct i2c_timings t;
+	struct i2c_bus_recovery_info rinfo;
 
 	/* Synchronization & notification */
 	spinlock_t lock;
@@ -1056,6 +1070,60 @@ static int rk3x_i2c_wait_xfer_poll(struct rk3x_i2c *i2c)
 	return !i2c->busy;
 }
 
+/*
+ * A target that lost track of the framing may be left driving SDA low, e.g.
+ * waiting for a clock to shift out an ACK. The controller cannot generate a
+ * START then, and the target takes the next bytes on the bus as data for
+ * itself. Clock the target out and issue a STOP before starting a transfer.
+ */
+static bool rk3x_i2c_sda_held_low(struct rk3x_i2c *i2c, bool polling)
+{
+	struct i2c_bus_recovery_info *bri = i2c->adap.bus_recovery_info;
+	u32 st;
+
+	if (i2c->soc_data->has_bus_status) {
+		clk_enable(i2c->clk);
+		clk_enable(i2c->pclk);
+		st = i2c_readl(i2c, REG_ST);
+		clk_disable(i2c->pclk);
+		clk_disable(i2c->clk);
+
+		return !(st & REG_ST_SDA);
+	}
+
+	/* Reading the recovery GPIO may sleep */
+	if (polling || !bri || !bri->get_sda)
+		return false;
+
+	return !bri->get_sda(&i2c->adap);
+}
+
+/*
+ * Polling transfers come in through .xfer_atomic, which the I2C core only uses
+ * when the caller cannot sleep.
+ */
+static int rk3x_i2c_clear_bus(struct rk3x_i2c *i2c, bool polling)
+{
+	int ret;
+
+	if (!rk3x_i2c_sda_held_low(i2c, polling))
+		return 0;
+
+	/* Recovery switches pinctrl states, which may sleep */
+	if (polling || !i2c->adap.bus_recovery_info) {
+		dev_warn_ratelimited(i2c->dev, "SDA held low, cannot recover the bus\n");
+		return 0;
+	}
+
+	dev_warn_ratelimited(i2c->dev, "SDA held low, recovering the bus\n");
+
+	ret = i2c_recover_bus(&i2c->adap);
+	if (ret)
+		dev_err_ratelimited(i2c->dev, "bus recovery failed: %d\n", ret);
+
+	return ret;
+}
+
 static int rk3x_i2c_xfer_common(struct i2c_adapter *adap,
 				struct i2c_msg *msgs, int num, bool polling)
 {
@@ -1066,6 +1134,10 @@ static int rk3x_i2c_xfer_common(struct i2c_adapter *adap,
 	int ret = 0;
 	int i;
 
+	ret = rk3x_i2c_clear_bus(i2c, polling);
+	if (ret)
+		return ret;
+
 	spin_lock_irqsave(&i2c->lock, flags);
 
 	clk_enable(i2c->clk);
@@ -1200,6 +1272,12 @@ static const struct rk3x_i2c_soc_data rk3399_soc_data = {
 	.calc_timings = rk3x_i2c_v1_calc_timings,
 };
 
+static const struct rk3x_i2c_soc_data rk3576_soc_data = {
+	.grf_offset = -1,
+	.calc_timings = rk3x_i2c_v1_calc_timings,
+	.has_bus_status = true,
+};
+
 static const struct of_device_id rk3x_i2c_match[] = {
 	{
 		.compatible = "rockchip,rv1108-i2c",
@@ -1229,6 +1307,10 @@ static const struct of_device_id rk3x_i2c_match[] = {
 		.compatible = "rockchip,rk3399-i2c",
 		.data = &rk3399_soc_data
 	},
+	{
+		.compatible = "rockchip,rk3576-i2c",
+		.data = &rk3576_soc_data
+	},
 	{},
 };
 MODULE_DEVICE_TABLE(of, rk3x_i2c_match);
@@ -1261,6 +1343,8 @@ static int rk3x_i2c_probe(struct platform_device *pdev)
 	i2c->adap.dev.of_node = np;
 	i2c->adap.algo_data = i2c;
 	i2c->adap.dev.parent = &pdev->dev;
+	/* The core picks up recovery GPIOs and pinctrl states, if described */
+	i2c->adap.bus_recovery_info = &i2c->rinfo;
 
 	i2c->dev = &pdev->dev;
 

---
base-commit: 6c2cb8b8b843d216ab549b678a0d8831c43153e0
change-id: 20261001-rki2c-recovery-02282cfaef33

Best regards,
--  
Alexey Charkov <alchark@flipper.net>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
