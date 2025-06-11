Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3C3AC71141
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jun 2025 23:42:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aKGKj5UED/VV64MzFTAmfKbuCRRej9/H+DYB++LoV6g=; b=loEqZ51JMktvzK
	wMW3Q0Lxe2lSMaiIoMv1sJQxXGK6yclAjE8V029QT76Kb49ubrDssGrdS9YS8x98jBLF3yeNFlZDq
	IOr4B0jXJFiW7wd3+eOJCDNSBavHkW7Svue0JFhl+Qd9HQLzp2xEHzPjBXIf1dQWNiKnBPslGfmqn
	o8mZqISPDED5GP/fDVHqr1aq8CoA0iI1wV6SLd8u28E2rfxKqUBoqJLdFVqxpF6VUnfyUlIT5Ez5G
	WWVYDFfckfev/tsQXI2J8+ZlyY7Ji1YhQr+slOmOxFSVcNvj0frIStDZ/XJW5XovFl6i3jwcKYKM5
	uF03oVMEKn5Gia009dIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPV5b-0000000BhHH-45eC;
	Wed, 11 Jun 2025 23:42:39 +0000
Received: from mail-oi1-x231.google.com ([2607:f8b0:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPU9j-0000000BVd4-1WXw
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Jun 2025 22:42:53 +0000
Received: by mail-oi1-x231.google.com with SMTP id 5614622812f47-407aaace4daso173730b6e.2
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Jun 2025 15:42:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749681770; x=1750286570; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nl3LqMpYZe7rL10QvcxF4QXnsqo21gvi2tg2ycz1DlM=;
        b=ZKHN+OVpjAp6g+kvyE99GO945nLIpMJMhSk6u3JlW7dN9TOUpftq3CK8G51RJJfPlS
         m7TgjbzRZbs1Wy2fuOA4N/Hf8tLQmHDuy905ZF1uiVh+nUytA0yRxDRMTQat1ZLpgmkc
         XQxHkdWHv3pNk++o5waWc/cfkf9/p8YtJc1HYs4NFRgca1sMNiiYmRozLUSaiNgVno83
         uzqAU9drjO34isaNgtf7w0SdcCHAwFLtaupThcW9mkci82n4Ap1fjw1P7TxYp/znmmm4
         NyuD8kpsn9q7Z7bJpvGEUTQ9TLY4s+VUAJfx59per2W5nEaHXNN3fBjJ8mRfmDSob3Wc
         debA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749681770; x=1750286570;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nl3LqMpYZe7rL10QvcxF4QXnsqo21gvi2tg2ycz1DlM=;
        b=GAItPI1SXO3R4axLF8TJ0VGnZJM3YxSnIaX8/rRpFIn9hFyedV4bW3Lmta5Tp7UOqE
         05YvK0XOUTBO9/0f+p5/kqoIWh5+30NaFRsRdGKrzEJozDfKH3sge5fk7P4x08kyT28M
         Kaoh/3lifL7ZqLgHlEENG+5hWBWAhKYUT9aWpuQ+OxdQ6rmpelFaMHpeRraxsoEI7sFz
         fN9K4EWHzpPLmwI1c4kFcF6mQXdF+ZcnIz88kz3p50qgv6aeNNqZNjhEN5KGUT6wZSbs
         YDEy3sT9qfFCu/PsYMZlaZ5kRslQtTvfQHMB7guKSZj+X0YB592OMC3GNhc+CgDcHzMR
         aCNA==
X-Forwarded-Encrypted: i=1; AJvYcCWjVMHlhkpnNaCnELwwT0x/X4GqVxreYVeslzuxfgZ9rFLGMaD5e043qZNUHIvhRWLu9jFuzt0w82kgfCBFjA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxWMz/u75YZv6DmrPBTvTHUf5YZFmCKOACR50JnpX1k9wczqJk8
	zSm1vdGfaCv/o2oNS4SNQVv2pHTy79Q7cbnj7thPP3LkJV3Pskab5lRh51BiUz7l6dA=
X-Gm-Gg: ASbGncsy/vrzYIoALSHyWYc2erryNPLEgzT8JpnwVrN6oVGNS0/E/xTjndZTfDU5yJn
	SnliFUVeL7TPzYFhogcHRCqLwJoQXlyWTNcFKX4k7GoY0BfH730pO73Spco6ArroGKLatbTJXyR
	U0dJRA1qHsZxqUeeI1stmcIKqyH6Qo8D8qtWYLJ6AnMRX9rewx7zlR41rw40EQ7rmQqT9kpW0LU
	rRXIBYWJVMkqkwhyqgUY0616LlpssyfckpCL47pFpwzqagkQBDE+tbhHFPC7j93wqGDGDxCeUgk
	IpeyKoMlofOTL4/HLANUkzfVabXWbKVTvkMkRLiWd/jCfXSdVb2bxuLEhVC21nhwwfIO
X-Google-Smtp-Source: AGHT+IEZSzWZ0MLiN0yyfGFrwS0RNkzhIod27nlhwUlhO/mElQY328781XuzrgNg/ZcIzQzVUMXtHA==
X-Received: by 2002:a05:6808:219a:b0:406:6fe7:37c1 with SMTP id 5614622812f47-40a66b32e32mr548422b6e.28.1749681770650;
        Wed, 11 Jun 2025 15:42:50 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:1d00:4753:719f:673f:547c])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40a682fbf05sm24684b6e.32.2025.06.11.15.42.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 15:42:50 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Wed, 11 Jun 2025 17:39:09 -0500
Subject: [PATCH 17/28] iio: imu: inv_mpu6050: use = { } instead of memset()
MIME-Version: 1.0
Message-Id: <20250611-iio-zero-init-stack-with-instead-of-memset-v1-17-ebb2d0a24302@baylibre.com>
References: <20250611-iio-zero-init-stack-with-instead-of-memset-v1-0-ebb2d0a24302@baylibre.com>
In-Reply-To: <20250611-iio-zero-init-stack-with-instead-of-memset-v1-0-ebb2d0a24302@baylibre.com>
To: Michael Hennerich <michael.hennerich@analog.com>, 
 Lars-Peter Clausen <lars@metafoo.de>, Jonathan Cameron <jic23@kernel.org>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Francesco Dolcini <francesco@dolcini.it>, 
 =?utf-8?q?Jo=C3=A3o_Paulo_Gon=C3=A7alves?= <jpaulo.silvagoncalves@gmail.com>, 
 =?utf-8?q?Leonard_G=C3=B6hrs?= <l.goehrs@pengutronix.de>, 
 kernel@pengutronix.de, Oleksij Rempel <o.rempel@pengutronix.de>, 
 Roan van Dijk <roan@protonic.nl>, 
 Tomasz Duszynski <tomasz.duszynski@octakon.com>, 
 Jacopo Mondi <jacopo@jmondi.org>, 
 Jean-Baptiste Maneyrol <jean-baptiste.maneyrol@tdk.com>, 
 Mudit Sharma <muditsharma.info@gmail.com>, 
 Javier Carrasco <javier.carrasco.cruz@gmail.com>, 
 =?utf-8?q?Ond=C5=99ej_Jirman?= <megi@xff.cz>, 
 Andreas Klinger <ak@it-klinger.de>, 
 Petre Rodan <petre.rodan@subdimension.ro>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2147; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=NMgmVVL3w5aWTWvBC+xusdF+bAVkf9GZ8B3SAIKd/as=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBoSgX0U8uxbbKAo49fqrCappc+c/T/hCIP3Y0dC
 FOJqlflsliJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaEoF9AAKCRDCzCAB/wGP
 wL4lB/9xRpYrOL5Dj/pVmFpiHVwrPZM5pGRIEo0tTLcH/Q5JOsLHQ5o/dbIirg/cJUikFfWLQ1G
 B7dqgu1hAl2Md4Pk6GklQzFpnaL0IqNcpDktycC3rp7CqezQvYDEGRcuC/yUKNmBLrL1HXOhMRu
 dFj7jXb/+0YU55sXaMa1UFfO2HiipdgqV0VoMprzCz8d6D6awosWDwQteOQXp56VLuseeqIvY5D
 bhcFYRq6FJO79v0KxUsdYYvTaGAhGGdrxJMabQ/o+fRiSHpy1dkzRXUnLMkM+Qf/Fgbfp1xFNWk
 WGqVvxJtN90stHJuDSbPGOqyJqWTW5GIY/9TYdSUXGc8gS0j
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_154252_255652_5A5C6073 
X-CRM114-Status: GOOD (  12.07  )
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

Use { } instead of memset() to zero-initialize stack memory to simplify
the code.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/iio/imu/inv_mpu6050/inv_mpu_acpi.c | 4 +---
 drivers/iio/imu/inv_mpu6050/inv_mpu_ring.c | 6 ++----
 2 files changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/iio/imu/inv_mpu6050/inv_mpu_acpi.c b/drivers/iio/imu/inv_mpu6050/inv_mpu_acpi.c
index a9bcf02e5b43fac0e210c6f78816a3c042b52f3d..460792ed27e03192464066dfa088734f0b6b1cdf 100644
--- a/drivers/iio/imu/inv_mpu6050/inv_mpu_acpi.c
+++ b/drivers/iio/imu/inv_mpu6050/inv_mpu_acpi.c
@@ -130,12 +130,10 @@ int inv_mpu_acpi_create_mux_client(struct i2c_client *client)
 
 	st->mux_client = NULL;
 	if (adev) {
-		struct i2c_board_info info;
+		struct i2c_board_info info = { };
 		struct i2c_client *mux_client;
 		int ret = -1;
 
-		memset(&info, 0, sizeof(info));
-
 		dmi_check_system(inv_mpu_dev_list);
 		switch (matched_product_name) {
 		case INV_MPU_ASUS_T100TA:
diff --git a/drivers/iio/imu/inv_mpu6050/inv_mpu_ring.c b/drivers/iio/imu/inv_mpu6050/inv_mpu_ring.c
index 273196e647a2b5a4860e18cfa34a088c773540e4..c4c11124f92f7fa6730e7443e3be67d920b8c115 100644
--- a/drivers/iio/imu/inv_mpu6050/inv_mpu_ring.c
+++ b/drivers/iio/imu/inv_mpu6050/inv_mpu_ring.c
@@ -50,7 +50,8 @@ irqreturn_t inv_mpu6050_read_fifo(int irq, void *p)
 	u16 fifo_count;
 	u32 fifo_period;
 	s64 timestamp;
-	u8 data[INV_MPU6050_OUTPUT_DATA_SIZE] __aligned(8);
+	/* clear internal data buffer for avoiding kernel data leak */
+	u8 data[INV_MPU6050_OUTPUT_DATA_SIZE] __aligned(8) = { };
 	size_t i, nb;
 
 	mutex_lock(&st->lock);
@@ -103,9 +104,6 @@ irqreturn_t inv_mpu6050_read_fifo(int irq, void *p)
 	inv_sensors_timestamp_interrupt(&st->timestamp, 1, pf->timestamp);
 	inv_sensors_timestamp_apply_odr(&st->timestamp, fifo_period, 1, 0);
 
-	/* clear internal data buffer for avoiding kernel data leak */
-	memset(data, 0, sizeof(data));
-
 	/* read all data once and process every samples */
 	result = regmap_noinc_read(st->map, st->reg->fifo_r_w, st->data, fifo_count);
 	if (result)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
