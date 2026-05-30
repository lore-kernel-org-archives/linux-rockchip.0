Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47C00CD6E52
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 May 2026 03:20:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KqKou1FtVgcJxhl8PDJ0JfZo8PmA08e0EXW4Q1Sk6o0=; b=4BTrJW+Z9AoC4Q
	qVt58I1FVzPlxyyKHD/0EAU+fmmTXut+NUZd+bgzsf9eH4hpI2IBpjrzaQgViSIVkUs0UZdyDXKuQ
	JvoSbH3GB1D9CW9NKORKdO3+eeX1r/gldyZpa2690RdS2R4dBNmnm+Lhe/ywWkEPkigsOarCO5lHH
	FgzXfPMw8UqUszH4NtHwKZkW6xC33hv1ubQ0if5zZQKoZZS6gpbncIgbhy1hJNaKwhTtidH4K+fm7
	sFwRa64fylWDLxIRpXmBCCaocY2R2XLXyrBI51Un1eX7MbPrp11NHIL9l9u1/T0DJ02bJEP+qKnCr
	vFQ3UM34f/xMurcHe7dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTAFS-00000008POB-1Ved;
	Sat, 30 May 2026 03:20:30 +0000
Received: from mail-oo1-xc2b.google.com ([2607:f8b0:4864:20::c2b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTAFO-00000008PJo-1bRL
	for linux-rockchip@lists.infradead.org;
	Sat, 30 May 2026 03:20:27 +0000
Received: by mail-oo1-xc2b.google.com with SMTP id 006d021491bc7-69d7aa0ac14so5286364eaf.3
        for <linux-rockchip@lists.infradead.org>; Fri, 29 May 2026 20:20:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780111225; x=1780716025; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kkQGFdPkGtJ/r5yX8xazHT/KTEybpcr8RzLV0lxcFoU=;
        b=hSg74niudPYaA18BWkVXnhqVFX+MQ0FeU66sMonb4d1uYZF9/4r2Wq7LYdrC1Qhe0v
         21m6aWu7GudetI2psJpqpPEYFYwT7rk4I7EH/oodoVvKj12Yul/ocALtdCY9vrjrvxsK
         xnF4cPSwnw7/nXOrTCfrQtBdgdt37zE3MW5X9LWh2wCResH43aXpzrBzFh/IKpQ41VIN
         Gst72nImZnx8stH6O1+jfeNgeb/IaXPKqQ36/u3SX40BTrcYly1ku3q9YFminybGl1DZ
         oQtAA36AA1qNKikRUPyiQ71tQND3RcCZnK9hCHIyKxpMkhWyrYRTtI6s3/+TEYbJAO5B
         T9Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780111225; x=1780716025;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kkQGFdPkGtJ/r5yX8xazHT/KTEybpcr8RzLV0lxcFoU=;
        b=coJAE5QSBXMij0M7QdSeE2uSMT6b7p/rLpLCCkAelh197dzk33IjWPP4bcqa12+Vnv
         lyruKeiRzd0m2Tk+rh49BZT2FbVoEGkEfPzPC0Vfs8aFkWKzFpcCeJo9LBv9LzHHu/T0
         AxIbX61oNnL6M5MOywYZNzNrrwJgQiZmge9SAZgAZ8LniXf5Ym/fFTH6Puj2JATglJJ3
         9JlfUfeHTsMX6JvbsmJia6HNaE/0h0frjom6ZFmEd58Pvb8AzjEWMDlXLjHQorOU54KH
         kJbMtIRCFMg2/w65KIalGu984w9vLWjKe+bKZNOOzI1UILApNj4uBOnp2205quP5HrTv
         mTcg==
X-Forwarded-Encrypted: i=1; AFNElJ/Lp7a93UbJFce5d9jOTzae8hb+76OiY/J0pxFfJ3FW2j4ZEeOR0SiYvC5cHaWm9GkpOf/DNWcyRBTQV6pTxg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzOP4T4enP+ij0UY6UD29dpdmOqmOGqlvm5F+GuE5SfDtZsLACb
	dkcgYMsQ0bBHqqpcaT+uFct3UiPYAMzGlDHsVvLPVthXevPfhKmLIm9q
X-Gm-Gg: Acq92OGsylNLZz/Ej83Wu+8xEXcJD6R08WIvB6lsTUD83p8XAakBk+CZvUVrVHv8ErH
	8sdc/VYrZ0iblejBxPAeFr6ILFTT/Kzk7nmNj1jG/PntxBzkEZJOK/p3GJXWqP2jzNp+KgKw1PZ
	LF0MqVP6i+jPhQ5D50k4cJYYQBh1ka2IqnCCaY5hnnvo8chYC5r6HMdfYd2nDKej3V8gB1dBFOb
	5eRhXDj85EQHXigMlJd4Lb6GVTV3/hFhnirimDkLv/FF80g6hCLu5+RK52g2vwCk371XO3pSAtz
	LSv09mXfDkWgdHdjE5/mr7V8vIvHaRlhBzrvBjbRTEVOC7RuHf1dTh8/beIyfOh+LGDgjTLR+/z
	Ja5nZj2TISaaMxtoL34wg6sn1R/DrubzGm/miDI8Wtg9mJf7W8s/repNSOAtMIzOrVmKbBeEYAa
	FaSeO3c5vvVuq06iiVQ7l3Df2n5CKympY=
X-Received: by 2002:a05:6820:2219:b0:69d:9547:c963 with SMTP id 006d021491bc7-69e102e3a3fmr1135487eaf.27.1780111225660;
        Fri, 29 May 2026 20:20:25 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-69e067e911csm2130737eaf.5.2026.05.29.20.20.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2026 20:20:25 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-iio@vger.kernel.org
Cc: andy@kernel.org,
	nuno.sa@analog.com,
	dlechner@baylibre.com,
	jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	andriy.shevchenko@intel.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V9 09/11] iio: imu: inv_icm42607: Add IRQ for icm42607
Date: Fri, 29 May 2026 22:17:36 -0500
Message-ID: <20260530031739.109063-10-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260530031739.109063-1-macroalpha82@gmail.com>
References: <20260530031739.109063-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260529_202026_429358_9DB33C84 
X-CRM114-Status: GOOD (  16.67  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add IRQ support for the icm42607 driver.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../iio/imu/inv_icm42607/inv_icm42607_core.c  | 97 ++++++++++++++++++-
 1 file changed, 96 insertions(+), 1 deletion(-)

diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
index 6b623fb679f3..3c91623dffb2 100644
--- a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
@@ -331,6 +331,91 @@ static int inv_icm42607_setup(struct inv_icm42607_state *st,
 	return inv_icm42607_set_conf(st, st->hw->conf);
 }
 
+static irqreturn_t inv_icm42607_irq_timestamp(int irq, void *_data)
+{
+	struct inv_icm42607_state *st = _data;
+
+	st->timestamp.accel = iio_get_time_ns(st->indio_accel);
+
+	return IRQ_WAKE_THREAD;
+}
+
+static irqreturn_t inv_icm42607_irq_handler(int irq, void *_data)
+{
+	struct inv_icm42607_state *st = _data;
+	struct device *dev = regmap_get_device(st->map);
+	unsigned int status;
+	int ret;
+
+	mutex_lock(&st->lock);
+
+	ret = regmap_read(st->map, INV_ICM42607_REG_INT_STATUS, &status);
+	if (ret) {
+		dev_err(dev, "Interrut status read error %d\n", ret);
+		goto out_unlock;
+	}
+
+	if (status & INV_ICM42607_INT_STATUS_FIFO_FULL)
+		dev_warn(dev, "FIFO full data lost!\n");
+
+	if (status & INV_ICM42607_INT_STATUS_FIFO_THS) {
+		mutex_unlock(&st->lock);
+		ret = inv_icm42607_buffer_fifo_read(st, 0);
+		if (ret) {
+			dev_err(dev, "FIFO read error %d\n", ret);
+			goto out_unlock;
+		}
+
+		mutex_lock(&st->lock);
+		ret = inv_icm42607_buffer_fifo_parse(st);
+		if (ret)
+			dev_err(dev, "FIFO parsing error %d\n", ret);
+	}
+
+out_unlock:
+	mutex_unlock(&st->lock);
+	return IRQ_HANDLED;
+}
+
+static int inv_icm42607_irq_init(struct inv_icm42607_state *st, int irq,
+				 int irq_type, bool open_drain)
+{
+	struct device *dev = regmap_get_device(st->map);
+	unsigned int val = 0;
+	int ret;
+
+	switch (irq_type) {
+	case IRQF_TRIGGER_RISING:
+	case IRQF_TRIGGER_HIGH:
+		val = INV_ICM42607_INT_CONFIG_INT1_ACTIVE_HIGH;
+		break;
+	default:
+		val = INV_ICM42607_INT_CONFIG_INT1_ACTIVE_LOW;
+		break;
+	}
+
+	switch (irq_type) {
+	case IRQF_TRIGGER_LOW:
+	case IRQF_TRIGGER_HIGH:
+		val |= INV_ICM42607_INT_CONFIG_INT1_LATCHED;
+		break;
+	default:
+		break;
+	}
+
+	if (!open_drain)
+		val |= INV_ICM42607_INT_CONFIG_INT1_PUSH_PULL;
+
+	ret = regmap_write(st->map, INV_ICM42607_REG_INT_CONFIG, val);
+	if (ret)
+		return ret;
+
+	irq_type |= IRQF_ONESHOT;
+	return devm_request_threaded_irq(dev, irq, inv_icm42607_irq_timestamp,
+					 inv_icm42607_irq_handler, irq_type,
+					 st->hw->name, st);
+}
+
 static int inv_icm42607_enable_vddio_reg(struct inv_icm42607_state *st)
 {
 	int ret;
@@ -367,13 +452,18 @@ int inv_icm42607_core_probe(struct regmap *regmap,
 {
 	struct device *dev = regmap_get_device(regmap);
 	struct inv_icm42607_state *st;
-	int irq;
+	int irq, irq_type;
+	bool open_drain;
 	int ret;
 
 	irq = fwnode_irq_get_byname(dev_fwnode(dev), "INT1");
 	if (irq < 0)
 		return dev_err_probe(dev, irq, "Unable to get INT1 interrupt\n");
 
+	irq_type = irq_get_trigger_type(irq);
+
+	open_drain = device_property_read_bool(dev, "drive-open-drain");
+
 	st = devm_kzalloc(dev, sizeof(*st), GFP_KERNEL);
 	if (!st)
 		return -ENOMEM;
@@ -433,6 +523,11 @@ int inv_icm42607_core_probe(struct regmap *regmap,
 	if (IS_ERR(st->indio_accel))
 		return PTR_ERR(st->indio_accel);
 
+	/* Initialize interrupt handling */
+	ret = inv_icm42607_irq_init(st, irq, irq_type, open_drain);
+	if (ret)
+		return ret;
+
 	return 0;
 }
 EXPORT_SYMBOL_NS_GPL(inv_icm42607_core_probe, "IIO_ICM42607");
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
