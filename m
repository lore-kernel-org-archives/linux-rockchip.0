Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1673C71135
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jun 2025 23:42:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NJobJNjFaEU5Jdoz2MfH1pqxTZAyieRAEA+zKwD5+lw=; b=amZ0quZFG2iGG9
	OnOTEhs1ilSMkSxJhqt6tTfl828fTDqIJ7hnfSPnZBLHUFFpx6/pe4WxTIi5KGdVXUN9cDJiNX/mf
	lFakzfW2FopmcomVOE0DC4E7gv9blXJ9yXwyV/hXOBUAn3uM3IqMPDVTeXpFLPO+zIqM4z0ZHq1xZ
	cEDvhPbpIPGwqahwzI54ks9IzXpe81xdAI+RGNIFzzlJzCKwBMWu+1sBNHNAyuNkNfLAeYa4HhIAK
	nOYQUCH/Q1Et/tegSBJgT0A+9SusU48IV57ZjHvKnepNi2L1ZaHtX9c2nJ7jLpXiqkXyS1A2m5Xxf
	kToDoVbw8hB8hIZ0QCmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPV5G-0000000BhDE-29zE;
	Wed, 11 Jun 2025 23:42:18 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPU9d-0000000BVZ6-2w49
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Jun 2025 22:42:47 +0000
Received: by mail-oi1-x22e.google.com with SMTP id 5614622812f47-404a5f4cdedso100855b6e.0
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Jun 2025 15:42:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749681765; x=1750286565; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l2UNg6SvTUsLvS4xPi0bVdlEHCiUbwbx1DnGSz9PULU=;
        b=a43XKKhYVgyoGYueabw+bWpvu47tE7GprvkLwXQTv4kHIvFSn4BHSLgEKY0euNLUDZ
         84bq56XKBhQEeP+DE3VN6c14dGh2p2eeQtE4pA7IB/TBhzXzEsJZMO3G4g+jkwwfxGvQ
         6K2WBHW8yOS0VlUUG7UjBWvvMupQMdTKLktauZcLVum3oKiPpJaHPlFP13scqjFX1XNR
         NyvWof2+4HseF+OD6ELmtyplBgmQzYjW9pvKAjlHueduSYYxozH45qQjnUZ/A8Lbz+KR
         ZePb8jTQEcbMG+2OA2pm1NKJVd9kJRLeyQhtgKkHnaa5Bybqt792d8fQzbdJf2f3H+aN
         CKGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749681765; x=1750286565;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l2UNg6SvTUsLvS4xPi0bVdlEHCiUbwbx1DnGSz9PULU=;
        b=VZU9ph0z4SHKW0tqSWNTiaYVvgDnYDxE8qxol5n86KcXmv2TLx+tgVoU4C8avXGQ9s
         1GHgWmeQNCVAEJM22KhQcqSqXY14OPqCnMj9h5cUsYmX0GZbvSLQ2nAlN3Zi73S/bZsV
         2wUCoCDQ5qw5G54aPVaTm4/GHm2UAa6VK4HYebvuYfZlpEF/i4RtRBpoz7kqO/EEZnDu
         wQhLiRgOQt2sALhOFaPoQnZ/rZriQeQd/Z3U98kVXgYl+gqVLz2LCFCRnYM2Wd0wHbtm
         0DE+xhVPbWIY7SD6on/DuvbvUv2GlhPRlYPPG1MBu6zspySgXxZoyIbZXx7/0/InuTK1
         IrVw==
X-Forwarded-Encrypted: i=1; AJvYcCWm8GUov9t3xMX4a7Cv1/JeQD/dsOhpkZmPUufmMYMZ2v+2X0L1gRNQ8IfhyucivejU+9mkhl3k0vy70Jt+RQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxbldjw2ADgEnzntKmBw4oLZCg5TimI2M3sxB+hGWAgUewqLQM9
	3ZUvWikqCta7fG2Tpsm+IqGmK2inLgMi5U6+2t73erSl3CqFIqUxtj/soHbsi1tI1ac=
X-Gm-Gg: ASbGnctnOstSm6zT+fnKpRO3ty4RJza5HJOUro+uM51C1suJNXvf1PviW1JYxRdtq2I
	25GRdciERqfMAk9tXmERpHu/+StDnROM1gcl1k1b4c4LVI07U26Lw+D74KyXUmA3hwLUc312IC8
	/mVPgeA/jPd55EG68+6+19wfvfGrGEN7MviXoSj2fPV+NOevTfUT3fYXjlOKRg5BuHI1fZDd039
	dKTp+HzOHxq6U28qpw+KFWDy4fXDMoh9x64f7e/BslJpMnPFCh3729jl8fhuwyX3bD7OLLd32+W
	7UFgCg0LlHGZN+xHRbThzeOF+4ARiDUxjZMz26FRVYSPCVYniZBZgdxYcFMUz6Ga/PCo
X-Google-Smtp-Source: AGHT+IFtdjG7FJlzUxyoQdzNSopQXJAu7gY8CXP2Gzp1csbup6tf9jsf+umiF0SzQmKRhZKr02rKRw==
X-Received: by 2002:a05:6808:23c2:b0:407:a47e:6e43 with SMTP id 5614622812f47-40a65f9214fmr957924b6e.1.1749681765005;
        Wed, 11 Jun 2025 15:42:45 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:1d00:4753:719f:673f:547c])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40a682fbf05sm24684b6e.32.2025.06.11.15.42.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 15:42:44 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Wed, 11 Jun 2025 17:39:06 -0500
Subject: [PATCH 14/28] iio: chemical: sunrise_co2: use = { } instead of
 memset()
MIME-Version: 1.0
Message-Id: <20250611-iio-zero-init-stack-with-instead-of-memset-v1-14-ebb2d0a24302@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1423; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=/BUF3sI3UgUZuWXo/TdJaTMxjYqN2OTvccYkHdo0CWU=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBoSgXgx0zbHn3Oo3OHG9JE4qdzOSIeNJ0xKf9sX
 wnfAW8aNIqJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaEoF4AAKCRDCzCAB/wGP
 wKEOB/4rZj/0DQjmcBcARn4a2juCsZtjNAGxZS6Gnnpvb9lBcZ/M7WLd2TJ1FU4tng8kNtGsdpl
 xxpYcw9zUa03RA+T15dk478hNrBOrf2769q/x+Z1ASRK6yXK3oE8+pjK5cy1Um2YQXRWQEm59/3
 /79KeHDmQDe11sPIhDQI+6E6v3n71Dc3Iy4yldkp7noMM0+e6hb79BqwrA5FGzOlOZWqtZlPc2T
 +cXsU8GS8cJdJPtJ2N+qcs/bXCjapsQgI4a2JVuet7WD3ZhgXF0vk5hcotnb2Rx0o1conJ7TdH3
 UiMPLiwJFamoQtn4+HaIKDh9EXnxtMphf1igA9vqBfUQt1tI
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_154245_791064_05E11A9D 
X-CRM114-Status: GOOD (  11.33  )
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
 drivers/iio/chemical/sunrise_co2.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/iio/chemical/sunrise_co2.c b/drivers/iio/chemical/sunrise_co2.c
index af79efde37e89170128ef9351bf1ad8b993d4a2d..158be9d798d26199cfb40ef0d294f967ba8a737f 100644
--- a/drivers/iio/chemical/sunrise_co2.c
+++ b/drivers/iio/chemical/sunrise_co2.c
@@ -51,13 +51,12 @@ static int sunrise_regmap_read(void *context, const void *reg_buf,
 {
 	struct i2c_client *client = context;
 	struct sunrise_dev *sunrise = i2c_get_clientdata(client);
-	union i2c_smbus_data data;
+	union i2c_smbus_data data = { };
 	int ret;
 
 	if (reg_size != 1 || !val_size)
 		return -EINVAL;
 
-	memset(&data, 0, sizeof(data));
 	data.block[0] = val_size;
 
 	/*
@@ -88,14 +87,13 @@ static int sunrise_regmap_write(void *context, const void *val_buf, size_t count
 {
 	struct i2c_client *client = context;
 	struct sunrise_dev *sunrise = i2c_get_clientdata(client);
-	union i2c_smbus_data data;
+	union i2c_smbus_data data = { };
 
 	/* Discard reg address from values count. */
 	if (!count)
 		return -EINVAL;
 	count--;
 
-	memset(&data, 0, sizeof(data));
 	data.block[0] = count;
 	memcpy(&data.block[1], (u8 *)val_buf + 1, count);
 

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
