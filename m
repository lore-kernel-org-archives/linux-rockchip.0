Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F2C0CD4F39
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 May 2026 22:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w6Za/IgPstOYRZVRohUka9BtMsHlDBWn3K3Dn/z2bTw=; b=v8Lj7yECTYTcWW
	XREP7CgqAljAoVlk+yDU14EbQdR2Y7OZYQ4RB0BQlQ1xoUvHpmIaT/wdQ8qXJm0JjKC66aym7fn5T
	s9KGb5UDKzeWc9yRnjSoAXqiDBvaEV5b2tkxQ6thhexL126lEQSBoWCJcTCZ1npPqsWTNLUxJuzji
	vvh2ERUY8DpaByCytzXOGQDIpL8p17xygPxlL8/BlbPnGhO8coufjSo1fI4StzfQBl5LNjrs4BFdn
	sivrF7NrvsN09IqT6VYJtNAhR/nmxiuIjqYRBiBVzWTYWj2ZYqTU3cFoMlk4Vkb8vQY8s4yR3IymB
	kZBa9B9AUF1W7jEVdJug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMvRZ-00000000ZHo-3zcS;
	Tue, 12 May 2026 22:19:13 +0000
Received: from mail-oi1-x22f.google.com ([2607:f8b0:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMvRV-00000000ZDn-3FGp
	for linux-rockchip@lists.infradead.org;
	Tue, 12 May 2026 22:19:11 +0000
Received: by mail-oi1-x22f.google.com with SMTP id 5614622812f47-479d593a0c3so5196414b6e.0
        for <linux-rockchip@lists.infradead.org>; Tue, 12 May 2026 15:19:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778624349; x=1779229149; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=05b0Mo0L8S3zIayLtoQennVKsKWEYnmx7u2V9ZuLDes=;
        b=ddgfHzD9kr/br5t6n/otEAOQ4+WZhrNKckJzJ90Y8shBQvywJDXoWwpEGpdakWDuDx
         hVc0nuyhXdMkq+4wmjMkej3e9I2Fba7nm/UaPQjA+fFKP+Rx8sSAdsxQ9/WE32a/rhbJ
         rjzZJs6RZ37Fz2UhLY3RXNTFddjfxRNHK3jAmQRAMyHSm88s7rSNLwdA9fjtCsxglLdS
         MjBoFXmq7Bx6SNrLUvYqVeSSYZFQ+snjGpKvxue+GIBt538Enq5umUVA60Xwg+ZXTtEn
         orpYKZbgKAHOHE1UJNi+QDVxbRY+5YUzL9WQ6AgILD6P9BM98ogOtBjK4cYWNWM5IM7Y
         9tyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778624349; x=1779229149;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=05b0Mo0L8S3zIayLtoQennVKsKWEYnmx7u2V9ZuLDes=;
        b=VQhz/fIy000fqSjh3UOUnDgy+8eYcn2Qtyl4nz0J6bAyjtM3Q3wv8+ikH4INatthTp
         FvvRPYRnZi+VL6fZ3GB5rfiVHZjS/qgVEuo9S2cGCrpv9FBQNSOgBhvdkF3kLYxRXAGk
         65mmAHs+IEAKB0jla9NLJs8hyBtRgqyrb07d2RHGqa1quTGmBjeaCV6kwp9Li7GhZu6J
         0u4jDr/YvMMlnNPxBQD+INYCqYHz2aVIXJiWDPwhYE4AcxyxTfakQE9tXzy4Ivp5LiAK
         cqh7P5YdOihWCuiBOe9L7GQQhu0yYKns3k4jNPJwhhNS9hHb/Pj4ZPhDt9DLq/QBCWQU
         OTIA==
X-Forwarded-Encrypted: i=1; AFNElJ/AftFKP85xN/RPnXHQy4N9W/owD/OWHNK78kFgW+HRm2/KfqEf3Oy1ln7k3im9kAzh+hMKc6XGt7e0pHNHIQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwtuBYurY92caeFLnkHODgfkpoXUSqa5IDERLUW61SRJu2AJIlP
	ZYoBOaohbA5yXShquOHeZK9ft58y9A9YAlrtW8PcpsSoxxPbumwVje4J
X-Gm-Gg: Acq92OE9QGyOhyJV/M84OVvlRGD0w+LoJemkviRSf+UlWtcEkI69wVMDBMbUuGZ1wJY
	OFmatB38o9pbkk78g2S8gEJT3Wu0yYNt162o9OJH1ADU2kdwdawBBy3sWklyr/gvoyRt4LALON/
	pqki7G7261HkvZU3BcB6WiJGyLtGUEodlQMFrjFGgJX2trmYN12WtZjpVAcLVjAPP9pWyIqQJe9
	Wx+lB1Jklqz62LvKh90GqPTvPMGHEYHGlsiYxQOwkbXFVSn6yt0aEgxH0NrRSIWw+zxsCwqS/02
	MpYKaWYxd84VVWlCV76ISrszrBVcr1cgMVwg2K+s+n9c53ic9rvklPm9k871WqXzGBpGkS84+u9
	tbou85aMgOjjZX5NP4FYzqcrXRHVgOf7h4dDCgbVI2rmsKgjo7GOAD6vB18V6KIvXKHOyFQt4Fr
	5uodjDPeLW9MkmCITX8Hz7BlvxzUh1TCk=
X-Received: by 2002:a05:6809:109:20b0:482:a821:8f2b with SMTP id 5614622812f47-482a821a427mr1151437b6e.18.1778624348568;
        Tue, 12 May 2026 15:19:08 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-47c76986f87sm23291473b6e.13.2026.05.12.15.19.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 May 2026 15:19:07 -0700 (PDT)
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
Subject: [PATCH V6 06/11] iio: imu: inv_icm42607: Add Buffer support for icm42607
Date: Tue, 12 May 2026 17:16:27 -0500
Message-ID: <20260512221634.256747-7-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260512221634.256747-1-macroalpha82@gmail.com>
References: <20260512221634.256747-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260512_151909_916842_CB5D918E 
X-CRM114-Status: GOOD (  27.98  )
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

Add all FIFO parsing and reading functions to support
inv_icm42607 hardware.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/iio/imu/inv_icm42607/Makefile         |   1 +
 drivers/iio/imu/inv_icm42607/inv_icm42607.h   |  27 +
 .../imu/inv_icm42607/inv_icm42607_buffer.c    | 486 ++++++++++++++++++
 .../imu/inv_icm42607/inv_icm42607_buffer.h    |  93 ++++
 .../iio/imu/inv_icm42607/inv_icm42607_core.c  |  54 +-
 5 files changed, 660 insertions(+), 1 deletion(-)
 create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_buffer.c
 create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_buffer.h

diff --git a/drivers/iio/imu/inv_icm42607/Makefile b/drivers/iio/imu/inv_icm42607/Makefile
index be109102e203..3c9d08509793 100644
--- a/drivers/iio/imu/inv_icm42607/Makefile
+++ b/drivers/iio/imu/inv_icm42607/Makefile
@@ -2,6 +2,7 @@
 
 obj-$(CONFIG_INV_ICM42607) += inv-icm42607.o
 inv-icm42607-y += inv_icm42607_core.o
+inv-icm42607-y += inv_icm42607_buffer.o
 
 obj-$(CONFIG_INV_ICM42607_I2C) += inv-icm42607-i2c.o
 inv-icm42607-i2c-y += inv_icm42607_i2c.o
diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607.h b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
index 5f37999e39a5..b00ee6a4d451 100644
--- a/drivers/iio/imu/inv_icm42607/inv_icm42607.h
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
@@ -14,6 +14,10 @@
 #include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
 
+#include <linux/iio/common/inv_sensors_timestamp.h>
+
+#include "inv_icm42607_buffer.h"
+
 /* serial bus slew rates */
 enum inv_icm42607_slew_rate {
 	INV_ICM42607_SLEW_RATE_20_60NS,
@@ -84,6 +88,7 @@ struct inv_icm42607_sensor_conf {
 	int odr;
 	int filter;
 };
+#define INV_ICM42607_SENSOR_CONF_INIT		{-1, -1, -1, -1}
 
 struct inv_icm42607_conf {
 	struct inv_icm42607_sensor_conf gyro;
@@ -114,6 +119,10 @@ struct inv_icm42607_suspended {
  *  @orientation:	sensor chip orientation relative to main hardware.
  *  @conf:		chip sensors configurations.
  *  @suspended:		suspended sensors configuration.
+ *  @indio_gyro:	gyroscope IIO device.
+ *  @indio_accel:	accelerometer IIO device.
+ *  @fifo:		FIFO management structure.
+ *  @buffer:		data transfer buffer aligned for DMA.
  */
 struct inv_icm42607_state {
 	struct mutex lock;
@@ -125,6 +134,22 @@ struct inv_icm42607_state {
 	struct iio_mount_matrix orientation;
 	struct inv_icm42607_conf conf;
 	struct inv_icm42607_suspended suspended;
+	struct iio_dev *indio_gyro;
+	struct iio_dev *indio_accel;
+	struct inv_icm42607_fifo fifo;
+	__be16 buffer[3] __aligned(IIO_DMA_MINALIGN);
+};
+
+/**
+ * struct inv_icm42607_sensor_state - sensor state variables
+ * @power_mode:		sensor requested power mode (for common frequencies)
+ * @filter:		sensor filter.
+ * @ts:			timestamp module states.
+ */
+struct inv_icm42607_sensor_state {
+	enum inv_icm42607_sensor_mode power_mode;
+	int filter;
+	struct inv_sensors_timestamp ts;
 };
 
 /* Virtual register addresses: @bank on MSB (4 upper bits), @address on LSB */
@@ -352,6 +377,8 @@ extern const struct inv_icm42607_hw inv_icm42607_hw_data;
 extern const struct inv_icm42607_hw inv_icm42607p_hw_data;
 extern const struct dev_pm_ops inv_icm42607_pm_ops;
 
+u32 inv_icm42607_odr_to_period(enum inv_icm42607_odr odr);
+
 int inv_icm42607_core_probe(struct regmap *regmap, const struct inv_icm42607_hw *hw,
 			    inv_icm42607_bus_setup bus_setup);
 
diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_buffer.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_buffer.c
new file mode 100644
index 000000000000..0919b4241241
--- /dev/null
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_buffer.c
@@ -0,0 +1,486 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2026 InvenSense, Inc.
+ */
+
+#include <linux/delay.h>
+#include <linux/iio/buffer.h>
+#include <linux/iio/iio.h>
+#include <linux/minmax.h>
+#include <linux/mutex.h>
+#include <linux/pm_runtime.h>
+#include <linux/regmap.h>
+
+#include <linux/iio/common/inv_sensors_timestamp.h>
+
+#include "inv_icm42607.h"
+#include "inv_icm42607_buffer.h"
+
+/* FIFO header: 1 byte */
+#define INV_ICM42607_FIFO_HEADER_MSG		BIT(7)
+#define INV_ICM42607_FIFO_HEADER_ACCEL		BIT(6)
+#define INV_ICM42607_FIFO_HEADER_GYRO		BIT(5)
+#define INV_ICM42607_FIFO_HEADER_TMST_FSYNC	GENMASK(3, 2)
+#define INV_ICM42607_FIFO_HEADER_ODR_ACCEL	BIT(1)
+#define INV_ICM42607_FIFO_HEADER_ODR_GYRO	BIT(0)
+
+struct inv_icm42607_fifo_1sensor_packet {
+	u8 header;
+	struct inv_icm42607_fifo_sensor_data data;
+	s8 temp;
+} __packed;
+
+struct inv_icm42607_fifo_2sensors_packet {
+	u8 header;
+	struct inv_icm42607_fifo_sensor_data accel;
+	struct inv_icm42607_fifo_sensor_data gyro;
+	s8 temp;
+	__be16 timestamp;
+} __packed;
+
+ssize_t inv_icm42607_fifo_decode_packet(const void *packet, const void **accel,
+					const void **gyro, const int8_t **temp,
+					const void **timestamp)
+{
+	const struct inv_icm42607_fifo_1sensor_packet *pack1 = packet;
+	const struct inv_icm42607_fifo_2sensors_packet *pack2 = packet;
+	u8 header = *((const u8 *)packet);
+
+	/* FIFO empty */
+	if (header & INV_ICM42607_FIFO_HEADER_MSG) {
+		*accel = NULL;
+		*gyro = NULL;
+		*temp = NULL;
+		*timestamp = NULL;
+		return 0;
+	}
+
+	/* accel + gyro */
+	if ((header & INV_ICM42607_FIFO_HEADER_ACCEL) &&
+	    (header & INV_ICM42607_FIFO_HEADER_GYRO)) {
+		*accel = &pack2->accel;
+		*gyro = &pack2->gyro;
+		*temp = &pack2->temp;
+		*timestamp = &pack2->timestamp;
+		return INV_ICM42607_FIFO_2SENSORS_PACKET_SIZE;
+	}
+
+	/* accel only */
+	if (header & INV_ICM42607_FIFO_HEADER_ACCEL) {
+		*accel = &pack1->data;
+		*gyro = NULL;
+		*temp = &pack1->temp;
+		*timestamp = NULL;
+		return INV_ICM42607_FIFO_1SENSOR_PACKET_SIZE;
+	}
+
+	/* gyro only */
+	if (header & INV_ICM42607_FIFO_HEADER_GYRO) {
+		*accel = NULL;
+		*gyro = &pack1->data;
+		*temp = &pack1->temp;
+		*timestamp = NULL;
+		return INV_ICM42607_FIFO_1SENSOR_PACKET_SIZE;
+	}
+
+	/* invalid packet if here */
+	return -EINVAL;
+}
+
+void inv_icm42607_buffer_update_fifo_period(struct inv_icm42607_state *st)
+{
+	u32 period_gyro, period_accel;
+
+	if (st->fifo.en & INV_ICM42607_SENSOR_GYRO)
+		period_gyro = inv_icm42607_odr_to_period(st->conf.gyro.odr);
+	else
+		period_gyro = U32_MAX;
+
+	if (st->fifo.en & INV_ICM42607_SENSOR_ACCEL)
+		period_accel = inv_icm42607_odr_to_period(st->conf.accel.odr);
+	else
+		period_accel = U32_MAX;
+
+	st->fifo.period = min(period_gyro, period_accel);
+}
+
+int inv_icm42607_buffer_set_fifo_en(struct inv_icm42607_state *st,
+				    unsigned int fifo_en)
+{
+	unsigned int val;
+	int ret;
+
+	/* update FIFO EN bits for accel and gyro */
+	val = 0;
+	if (fifo_en & INV_ICM42607_SENSOR_GYRO)
+		val |= INV_ICM42607_FIFO_CONFIG1_MODE;
+	if (fifo_en & INV_ICM42607_SENSOR_ACCEL)
+		val |= INV_ICM42607_FIFO_CONFIG1_MODE;
+	if (fifo_en & INV_ICM42607_SENSOR_TEMP)
+		val |= INV_ICM42607_FIFO_CONFIG1_MODE;
+
+	ret = regmap_write(st->map, INV_ICM42607_REG_FIFO_CONFIG1, val);
+	if (ret)
+		return ret;
+
+	st->fifo.en = fifo_en;
+	inv_icm42607_buffer_update_fifo_period(st);
+
+	return 0;
+}
+
+static size_t inv_icm42607_get_packet_size(unsigned int fifo_en)
+{
+	size_t packet_size;
+
+	if ((fifo_en & INV_ICM42607_SENSOR_GYRO) &&
+	    (fifo_en & INV_ICM42607_SENSOR_ACCEL))
+		packet_size = INV_ICM42607_FIFO_2SENSORS_PACKET_SIZE;
+	else
+		packet_size = INV_ICM42607_FIFO_1SENSOR_PACKET_SIZE;
+
+	return packet_size;
+}
+
+static unsigned int inv_icm42607_wm_truncate(unsigned int watermark,
+					     size_t packet_size)
+{
+	size_t wm_size;
+
+	wm_size = watermark * packet_size;
+	wm_size = min(wm_size, INV_ICM42607_FIFO_WATERMARK_MAX);
+
+	return wm_size / packet_size;
+}
+
+/**
+ * inv_icm42607_buffer_update_watermark - update watermark FIFO threshold
+ * @st:	driver internal state
+ *
+ * Returns 0 on success, a negative error code otherwise.
+ */
+int inv_icm42607_buffer_update_watermark(struct inv_icm42607_state *st)
+{
+	const struct device *dev = regmap_get_device(st->map);
+	unsigned int wm_gyro, wm_accel, watermark;
+	u32 latency_gyro, latency_accel, latency;
+	u32 period_gyro, period_accel;
+	size_t packet_size, wm_size;
+	__le16 raw_wm;
+	bool restore;
+	int ret;
+
+	packet_size = inv_icm42607_get_packet_size(st->fifo.en);
+
+	/* compute sensors latency, depending on sensor watermark and odr */
+	wm_gyro = inv_icm42607_wm_truncate(st->fifo.watermark.gyro, packet_size);
+	wm_accel = inv_icm42607_wm_truncate(st->fifo.watermark.accel, packet_size);
+	/* use us for odr to avoid overflow using 32 bits values */
+	period_gyro = inv_icm42607_odr_to_period(st->conf.gyro.odr) / 1000UL;
+	period_accel = inv_icm42607_odr_to_period(st->conf.accel.odr) / 1000UL;
+	latency_gyro = period_gyro * wm_gyro;
+	latency_accel = period_accel * wm_accel;
+
+	/* 0 value for watermark means that the sensor is turned off */
+	if (wm_gyro == 0 && wm_accel == 0)
+		return 0;
+
+	if (latency_gyro == 0) {
+		watermark = wm_accel;
+		st->fifo.watermark.eff_accel = wm_accel;
+	} else if (latency_accel == 0) {
+		watermark = wm_gyro;
+		st->fifo.watermark.eff_gyro = wm_gyro;
+	} else {
+		/* compute the smallest latency that is a multiple of both */
+		if (latency_gyro <= latency_accel)
+			latency = latency_gyro - (latency_accel % latency_gyro);
+		else
+			latency = latency_accel - (latency_gyro % latency_accel);
+		/* all this works because periods are multiple of each others */
+		watermark = latency / min(period_gyro, period_accel);
+		watermark = max(watermark, 1);
+		/* update effective watermark */
+		st->fifo.watermark.eff_gyro = max(latency / period_gyro, 1);
+		st->fifo.watermark.eff_accel = max(latency / period_accel, 1);
+	}
+
+	/* changing FIFO watermark requires to turn off watermark interrupt */
+	ret = regmap_update_bits_check(st->map, INV_ICM42607_REG_INT_SOURCE0,
+				       INV_ICM42607_INT_SOURCE0_FIFO_THS_INT1_EN,
+				       0, &restore);
+	if (ret)
+		return ret;
+
+	/* compute watermark value in bytes */
+	wm_size = watermark * packet_size;
+	raw_wm = INV_ICM42607_FIFO_WATERMARK_VAL(wm_size);
+	memcpy(st->buffer, &raw_wm, sizeof(raw_wm));
+	ret = regmap_bulk_write(st->map, INV_ICM42607_REG_FIFO_CONFIG2,
+				st->buffer, sizeof(raw_wm));
+	if (ret) {
+		dev_err(dev, "Unable to change watermark value: %d\n", ret);
+		if (restore)
+			regmap_update_bits(st->map, INV_ICM42607_REG_INT_SOURCE0,
+					   INV_ICM42607_INT_SOURCE0_FIFO_THS_INT1_EN,
+					   INV_ICM42607_INT_SOURCE0_FIFO_THS_INT1_EN);
+		return ret;
+	}
+
+	/* restore watermark interrupt */
+	if (restore) {
+		ret = regmap_update_bits(st->map, INV_ICM42607_REG_INT_SOURCE0,
+					 INV_ICM42607_INT_SOURCE0_FIFO_THS_INT1_EN,
+					 INV_ICM42607_INT_SOURCE0_FIFO_THS_INT1_EN);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static int inv_icm42607_buffer_preenable(struct iio_dev *indio_dev)
+{
+	struct inv_icm42607_state *st = iio_device_get_drvdata(indio_dev);
+	struct inv_icm42607_sensor_state *sensor_st = iio_priv(indio_dev);
+	struct inv_sensors_timestamp *ts = &sensor_st->ts;
+	struct device *dev = regmap_get_device(st->map);
+	int ret;
+
+	ret = pm_runtime_resume_and_get(dev);
+	if (ret)
+		return ret;
+
+	guard(mutex)(&st->lock);
+	inv_sensors_timestamp_reset(ts);
+
+	return 0;
+}
+
+/*
+ * update_scan_mode callback is turning sensors on and setting data FIFO enable
+ * bits.
+ */
+static int inv_icm42607_buffer_postenable(struct iio_dev *indio_dev)
+{
+	struct inv_icm42607_state *st = iio_device_get_drvdata(indio_dev);
+	int ret;
+
+	guard(mutex)(&st->lock);
+
+	/* exit if FIFO is already on */
+	if (st->fifo.on) {
+		st->fifo.on++;
+		return 0;
+	}
+
+	/* set FIFO threshold interrupt */
+	ret = regmap_set_bits(st->map, INV_ICM42607_REG_INT_SOURCE0,
+			      INV_ICM42607_INT_SOURCE0_FIFO_THS_INT1_EN);
+	if (ret)
+		return ret;
+
+	/* flush FIFO data */
+	ret = regmap_write(st->map, INV_ICM42607_REG_SIGNAL_PATH_RESET,
+			   INV_ICM42607_SIGNAL_PATH_RESET_FIFO_FLUSH);
+	if (ret)
+		return ret;
+
+	/* set FIFO in streaming mode */
+	ret = regmap_write(st->map, INV_ICM42607_REG_FIFO_CONFIG1,
+			   INV_ICM42607_FIFO_CONFIG1_MODE);
+	if (ret)
+		return ret;
+
+	/* workaround: first read of FIFO count after reset is always 0 */
+	ret = regmap_bulk_read(st->map, INV_ICM42607_REG_FIFO_COUNTH,
+			       st->buffer, sizeof(__be16));
+	if (ret)
+		return ret;
+
+	st->fifo.on++;
+
+	return 0;
+}
+
+static int inv_icm42607_buffer_predisable(struct iio_dev *indio_dev)
+{
+	struct inv_icm42607_state *st = iio_device_get_drvdata(indio_dev);
+	int ret;
+
+	guard(mutex)(&st->lock);
+
+	if (st->fifo.on > 1) {
+		st->fifo.on--;
+		return 0;
+	}
+
+	/* set FIFO in bypass mode */
+	ret = regmap_write(st->map, INV_ICM42607_REG_FIFO_CONFIG1,
+			   INV_ICM42607_FIFO_CONFIG1_BYPASS);
+	if (ret)
+		return ret;
+
+	/* flush FIFO data */
+	ret = regmap_write(st->map, INV_ICM42607_REG_SIGNAL_PATH_RESET,
+			   INV_ICM42607_SIGNAL_PATH_RESET_FIFO_FLUSH);
+	if (ret)
+		return ret;
+
+	/* disable FIFO threshold interrupt */
+	ret = regmap_update_bits(st->map, INV_ICM42607_REG_INT_SOURCE0,
+				 INV_ICM42607_INT_SOURCE0_FIFO_THS_INT1_EN, 0);
+	if (ret)
+		return ret;
+
+	/*
+	 * FIFO should only be 1 at this point, so explicitly set it to 0
+	 * instead of decrementing it.
+	 */
+	st->fifo.on = 0;
+
+	return 0;
+}
+
+static int inv_icm42607_buffer_postdisable(struct iio_dev *indio_dev)
+{
+	struct inv_icm42607_state *st = iio_device_get_drvdata(indio_dev);
+	struct device *dev = regmap_get_device(st->map);
+	unsigned int sensor;
+	unsigned int *watermark;
+	unsigned int sleep_temp = 0;
+	unsigned int sleep_sensor = 0;
+	unsigned int sleep;
+	int ret;
+
+	if (indio_dev == st->indio_gyro) {
+		sensor = INV_ICM42607_SENSOR_GYRO;
+		watermark = &st->fifo.watermark.gyro;
+	} else if (indio_dev == st->indio_accel) {
+		sensor = INV_ICM42607_SENSOR_ACCEL;
+		watermark = &st->fifo.watermark.accel;
+	} else {
+		return -EINVAL;
+	}
+
+	mutex_lock(&st->lock);
+
+	ret = inv_icm42607_buffer_set_fifo_en(st, st->fifo.en & ~sensor);
+	if (ret)
+		goto out_unlock;
+
+	*watermark = 0;
+	ret = inv_icm42607_buffer_update_watermark(st);
+	if (ret)
+		goto out_unlock;
+
+out_unlock:
+	mutex_unlock(&st->lock);
+
+	/* sleep maximum required time */
+	sleep = max(sleep_sensor, sleep_temp);
+	if (sleep)
+		msleep(sleep);
+
+	pm_runtime_put_autosuspend(dev);
+
+	return ret;
+}
+
+const struct iio_buffer_setup_ops inv_icm42607_buffer_ops = {
+	.preenable = inv_icm42607_buffer_preenable,
+	.postenable = inv_icm42607_buffer_postenable,
+	.predisable = inv_icm42607_buffer_predisable,
+	.postdisable = inv_icm42607_buffer_postdisable,
+};
+
+int inv_icm42607_buffer_fifo_read(struct inv_icm42607_state *st,
+				  unsigned int max)
+{
+	const void *accel, *gyro, *timestamp;
+	size_t i, max_count;
+	const s8 *temp;
+	ssize_t size;
+	int ret;
+
+	guard(mutex)(&st->lock);
+
+	/* reset all samples counters */
+	st->fifo.count = 0;
+	st->fifo.nb.gyro = 0;
+	st->fifo.nb.accel = 0;
+	st->fifo.nb.total = 0;
+
+	/* compute maximum FIFO read size */
+	if (max == 0)
+		max_count = sizeof(st->fifo.data);
+	else
+		max_count = min((max * inv_icm42607_get_packet_size(st->fifo.en)),
+				sizeof(st->fifo.data));
+
+	/* read FIFO count value */
+	ret = regmap_bulk_read(st->map, INV_ICM42607_REG_FIFO_COUNTH,
+			       st->buffer, sizeof(u8) * 3);
+	if (ret)
+		return ret;
+	st->fifo.count = be16_to_cpup(st->buffer);
+
+	/* check and clamp FIFO count value */
+	if (st->fifo.count == 0)
+		return 0;
+
+	st->fifo.count = min(st->fifo.count, max_count);
+
+	/* read all FIFO data in internal buffer */
+	ret = regmap_noinc_read(st->map, INV_ICM42607_REG_FIFO_DATA,
+				st->fifo.data, st->fifo.count);
+	if (ret)
+		return ret;
+
+	/* compute number of samples for each sensor */
+	for (i = 0; i < st->fifo.count && i + size > st->fifo.count; i += size) {
+		size = inv_icm42607_fifo_decode_packet(&st->fifo.data[i],
+				&accel, &gyro, &temp, &timestamp);
+		if (size <= 0)
+			break;
+		if (gyro != NULL && inv_icm42607_fifo_is_data_valid(gyro))
+			st->fifo.nb.gyro++;
+		if (accel != NULL && inv_icm42607_fifo_is_data_valid(accel))
+			st->fifo.nb.accel++;
+		st->fifo.nb.total++;
+	}
+
+	return 0;
+}
+
+int inv_icm42607_buffer_hwfifo_flush(struct inv_icm42607_state *st,
+				     unsigned int count)
+{
+	s64 gyro_ts, accel_ts;
+	int ret;
+
+	gyro_ts = iio_get_time_ns(st->indio_gyro);
+	accel_ts = iio_get_time_ns(st->indio_accel);
+
+	ret = inv_icm42607_buffer_fifo_read(st, count);
+
+	return ret;
+}
+
+int inv_icm42607_buffer_init(struct inv_icm42607_state *st)
+{
+	int ret;
+
+	st->fifo.watermark.eff_gyro = 1;
+	st->fifo.watermark.eff_accel = 1;
+
+	/* Configure FIFO_COUNT format in bytes and big endian */
+	ret = regmap_set_bits(st->map, INV_ICM42607_REG_INTF_CONFIG0,
+			      INV_ICM42607_INTF_CONFIG0_FIFO_COUNT_ENDIAN);
+	if (ret)
+		return ret;
+
+	/* Initialize FIFO in bypass mode */
+	return regmap_write(st->map, INV_ICM42607_REG_FIFO_CONFIG1,
+			    INV_ICM42607_FIFO_CONFIG1_BYPASS);
+}
diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_buffer.h b/drivers/iio/imu/inv_icm42607/inv_icm42607_buffer.h
new file mode 100644
index 000000000000..b77deb66f8bd
--- /dev/null
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_buffer.h
@@ -0,0 +1,93 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright (C) 2026 InvenSense, Inc.
+ */
+
+#ifndef INV_ICM42607_BUFFER_H_
+#define INV_ICM42607_BUFFER_H_
+
+#include <linux/bitops.h>
+
+struct inv_icm42607_state;
+
+#define INV_ICM42607_SENSOR_GYRO	BIT(0)
+#define INV_ICM42607_SENSOR_ACCEL	BIT(1)
+#define INV_ICM42607_SENSOR_TEMP	BIT(2)
+
+/**
+ * struct inv_icm42607_fifo - FIFO state variables
+ * @on:		reference counter for FIFO on.
+ * @en:		bits field of INV_ICM42607_SENSOR_* for FIFO EN bits.
+ * @period:	FIFO internal period.
+ * @watermark:	watermark configuration values for accel and gyro.
+ * @count:	number of bytes in the FIFO data buffer.
+ * @nb:		gyro, accel and total samples in the FIFO data buffer.
+ * @data:	FIFO data buffer aligned for DMA (2kB + 32 bytes of read cache).
+ */
+struct inv_icm42607_fifo {
+	unsigned int on;
+	unsigned int en;
+	u32 period;
+	struct {
+		unsigned int gyro;
+		unsigned int accel;
+		unsigned int eff_gyro;
+		unsigned int eff_accel;
+	} watermark;
+	size_t count;
+	struct {
+		size_t gyro;
+		size_t accel;
+		size_t total;
+	} nb;
+	u8 data[2080] __aligned(IIO_DMA_MINALIGN);
+};
+
+/* FIFO data packet */
+struct inv_icm42607_fifo_sensor_data {
+	__be16 x;
+	__be16 y;
+	__be16 z;
+};
+
+#define INV_ICM42607_FIFO_DATA_INVALID		-32768
+
+static inline bool
+inv_icm42607_fifo_is_data_valid(const struct inv_icm42607_fifo_sensor_data *s)
+{
+	s16 x, y, z;
+
+	x = be16_to_cpu(s->x);
+	y = be16_to_cpu(s->y);
+	z = be16_to_cpu(s->z);
+
+	if (x == INV_ICM42607_FIFO_DATA_INVALID &&
+	    y == INV_ICM42607_FIFO_DATA_INVALID &&
+	    z == INV_ICM42607_FIFO_DATA_INVALID)
+		return false;
+
+	return true;
+}
+
+ssize_t inv_icm42607_fifo_decode_packet(const void *packet, const void **accel,
+					const void **gyro, const s8 **temp,
+					const void **timestamp);
+
+extern const struct iio_buffer_setup_ops inv_icm42607_buffer_ops;
+
+int inv_icm42607_buffer_init(struct inv_icm42607_state *st);
+
+void inv_icm42607_buffer_update_fifo_period(struct inv_icm42607_state *st);
+
+int inv_icm42607_buffer_set_fifo_en(struct inv_icm42607_state *st,
+				    unsigned int fifo_en);
+
+int inv_icm42607_buffer_update_watermark(struct inv_icm42607_state *st);
+
+int inv_icm42607_buffer_fifo_read(struct inv_icm42607_state *st,
+				  unsigned int max);
+
+int inv_icm42607_buffer_hwfifo_flush(struct inv_icm42607_state *st,
+				     unsigned int count);
+
+#endif
diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
index dfd2fed7bf1e..3b5d5722ae39 100644
--- a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
@@ -15,6 +15,7 @@
 #include <linux/regulator/consumer.h>
 
 #include "inv_icm42607.h"
+#include "inv_icm42607_buffer.h"
 
 static bool inv_icm42607_is_volatile_reg(struct device *dev, unsigned int reg)
 {
@@ -73,6 +74,40 @@ const struct inv_icm42607_hw inv_icm42607p_hw_data = {
 };
 EXPORT_SYMBOL_NS_GPL(inv_icm42607p_hw_data, "IIO_ICM42607");
 
+u32 inv_icm42607_odr_to_period(enum inv_icm42607_odr odr)
+{
+	static const u32 odr_periods[INV_ICM42607_ODR_NB] = {
+		/* Reserved values */
+		0, 0, 0, 0, 0,
+		/* 1600Hz */
+		625000,
+		/* 800Hz */
+		1250000,
+		/* 400Hz */
+		2500000,
+		/* 200Hz */
+		5000000,
+		/* 100 Hz */
+		10000000,
+		/* 50Hz */
+		20000000,
+		/* 25Hz */
+		40000000,
+		/* 12.5Hz */
+		80000000,
+		/* 6.25Hz */
+		160000000,
+		/* 3.125Hz */
+		320000000,
+		/* 1.5625Hz */
+		640000000,
+	};
+
+	odr = clamp(odr, INV_ICM42607_ODR_1600HZ, INV_ICM42607_ODR_1_5625HZ_LP);
+
+	return odr_periods[odr];
+}
+
 static int inv_icm42607_set_pwr_mgmt0(struct inv_icm42607_state *st,
 				      enum inv_icm42607_sensor_mode gyro,
 				      enum inv_icm42607_sensor_mode accel,
@@ -320,6 +355,11 @@ int inv_icm42607_core_probe(struct regmap *regmap, const struct inv_icm42607_hw
 	if (ret)
 		return ret;
 
+	/* Initialize buffer/FIFO handling */
+	ret = inv_icm42607_buffer_init(st);
+	if (ret)
+		return ret;
+
 	ret = devm_pm_runtime_set_active_enabled(dev);
 	if (ret)
 		return ret;
@@ -345,6 +385,13 @@ static int inv_icm42607_suspend(struct device *dev)
 	if (pm_runtime_suspended(dev))
 		return 0;
 
+	if (st->fifo.on) {
+		ret = regmap_write(st->map, INV_ICM42607_REG_FIFO_CONFIG1,
+				   INV_ICM42607_FIFO_CONFIG1_BYPASS);
+		if (ret)
+			return ret;
+	}
+
 	ret = inv_icm42607_set_pwr_mgmt0(st, INV_ICM42607_SENSOR_MODE_OFF,
 					 INV_ICM42607_SENSOR_MODE_OFF,
 					 false, NULL);
@@ -373,7 +420,12 @@ static int inv_icm42607_resume(struct device *dev)
 	if (ret)
 		return ret;
 
-	/* Nothing else to restore at this time. */
+	if (st->fifo.on) {
+		ret = regmap_write(st->map, INV_ICM42607_REG_FIFO_CONFIG1,
+				   INV_ICM42607_FIFO_CONFIG1_MODE);
+		if (ret)
+			return ret;
+	}
 
 	return 0;
 }
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
