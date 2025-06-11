Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC779C71136
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jun 2025 23:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XiAOG0tEoDUlIrFPAXNeqdjCe68677SbIxs1iFtUdg8=; b=XVkYH5WJm3zNyS
	VLG5Nw3BYALylm7aA2zp93xoKZmMZ5poUMomnJ6IL3O4BhXPkcbRCHF+KBToFFUaqjCH5tmpREFtH
	6EZ8BrkCJZoPjX3vcnM+Gtr2Kt16TEDAcp26FemwuuBJ2kDIZknv/GHRoMOR2H5EftjXAXzDeqa6G
	gHVZIBt7WUZxnCCEqXbm9bqeLNPfIwvwimC2OewG6WuqA04t9lNYbmfbjoJ3Vio77GwPLp+79NRA0
	iMpHXzMNk2vDk4uRfgEOB/wsRYXPElr95wGmWqsK5XNED7iq5Pog4WctnffS+S1SmEfX12jlYgLFA
	yiRjnEv6RlNj7Bv3kOIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPV4v-0000000Bh5H-38oS;
	Wed, 11 Jun 2025 23:41:57 +0000
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPU9a-0000000BVX3-1xMG
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Jun 2025 22:42:44 +0000
Received: by mail-oi1-x236.google.com with SMTP id 5614622812f47-407a3c0654aso185454b6e.3
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Jun 2025 15:42:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749681762; x=1750286562; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1+AXM43LJmcTiZ4+XLqifo1WeAnz6FejMu0e+/VkXQ4=;
        b=XA6TFG5Qq5k/ua4TuoW+FQZMPMP75zpoO+lS3nmQ0wopySq045K5HGar60p4p+4q0w
         rW2/nNvta2vOzRboP6MidYvHk4r+nRUIdC91Q8wBzEouU7bMVyC3wEYa5FjOm0xphDjA
         7drjF38kanfMwJMPZaYTIczhhJgQ5tOxZG4h8VZw/VAvYm4imm5NhB/ZjA8yK8vAi3cY
         j2mgSDrTH1fNqeJciKeaw44GAUhL0CgbUW7KjWzJBTbqgEBB4nJMP5m1htCPGOdWEFlt
         HzSdUmxVjOxug+TEX/YgqAFmtmFFId6M4g/9W06cuhZcyp7AgWTGqdTp0Yu3/4SZrbf3
         rBZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749681762; x=1750286562;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1+AXM43LJmcTiZ4+XLqifo1WeAnz6FejMu0e+/VkXQ4=;
        b=fQkxbKpeR1TlxPCgYL7bValwp36zC9l0eC5qyY5kxZnJRVqMFmFzJe2OpUmiaL2KxC
         reSOgFmkLR/78nTWNscCc32ovzzXDsaFks2XBPgW/jn331k81iuW9Xh1I0vExZrU3R3f
         2WfvuhNkAls2t0p2j1KexuO5iPfYv5VnJDA8dh5DNzpVjL28urCOpyvush5S8dE8jsHa
         1KVWqrzSpWBn3WWhL2gTBndLgRvirH9tRUH4e0hcVMY07b8O27TCgPdqg9yp513MWTwH
         6hhNYysH6RGDzR9IdkZW/yL+YOVIga4lXS1F7TjPCewncAzk/IeWt6IjW+N9pBwMDbWn
         yKRQ==
X-Forwarded-Encrypted: i=1; AJvYcCV9nT+I7SPa/q95WEUuMFTR7kSHf+bOWGibl3e216QXTNl1uGXsQid0dHDfu3IwOIaCJtqiDjhYidVAogsUIQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyofvXtX8OcMTJcNCvQpFkW19XfxVjMI8qQ137m/syR2yz9RO3s
	ieBHPVnaarVgb1133mmQ2uwppcW/DpTBT9uYU+uHnSGT0kR5Pc3IzmUzNwelcPZ2hiA=
X-Gm-Gg: ASbGncuP0IldCoihiPrdYV/HA/1IX4LaVq2HMJ+7V+UZtIwlu+6rokUAH4AX8Fn69BX
	ZXN3PywKCrCUcGs55bVpRaDw22Ewdu/cbkgN8p87mBabMpLFzsyHxT6/oUqyxBJdcMNrB9WnPd3
	XjzSvlkQ8/yUj+KonQU35Q4zXrNLyZkEOs9A/ETIXUstqaYcsjrM1HTet+bPmSSlnVYs1zPYtJi
	rcrxWaOHYxrTNrgiCAd04qKXg6/gaK3Tgfd+o0iDAUMzo9DxBPZryYVuOUmY5gd5ZjH693VmgTB
	290MLO9nH1rujLYOlbWbHQdih1iopfDGFZmTbOsfRMheRJWhtviK7EYON6QXMnivhgQW
X-Google-Smtp-Source: AGHT+IFMMzvtGjq/XF9sKG5BGljgdifNq6jOybNnZI2VIWkdnxiv1hDecZPrcYLXm/jeBNerhjgiZw==
X-Received: by 2002:a05:6808:144f:b0:406:39b4:2232 with SMTP id 5614622812f47-40a5d053e13mr3229763b6e.3.1749681761758;
        Wed, 11 Jun 2025 15:42:41 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:1d00:4753:719f:673f:547c])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40a682fbf05sm24684b6e.32.2025.06.11.15.42.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 15:42:40 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Wed, 11 Jun 2025 17:39:04 -0500
Subject: [PATCH 12/28] iio: chemical: scd4x: use = { } instead of memset()
MIME-Version: 1.0
Message-Id: <20250611-iio-zero-init-stack-with-instead-of-memset-v1-12-ebb2d0a24302@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=810; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=w6sewnHJwVlZtUZ1XCEB4lsBcr4uySr0t3enC0nXMgo=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBoSgXTO0fwqvdhMYlsTHXtIYGob2RsszuHsUyLs
 SfL1LagKj+JATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaEoF0wAKCRDCzCAB/wGP
 wPZeCACIJ32MRJGFXAWVkUo7XJ8IPrL0OrDOVi8YV9Bz71zO9E1Xbt2tdxaHIRCxRXTjHv0+zxe
 w/o0PiRItwBJgVkYx0LCNcV0wRJiX/3SOXvkNIYHEjW/6bG5mIuft2mWy9pOWtFB1hHlRO5OHW0
 HRZV2jH97fcqcIdH9wSd/O5uzb2vY2Mv537m9vzG3NCE1EZ6ni5m4frRR2Ju3EquwZ5eFRMUZDk
 6TffT8htFYg5wCw+GGZ+kUM+ESDQvMFNiOZTKVDPOJtDl6Lepqk3gBrXVA5n8ijfXQPulfkc44L
 Ad5/aXu1TD4BBvsWqxbL+8KuoPFw5kwu1Q/N4uflwEd9cOV+
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_154242_516780_5D63A94A 
X-CRM114-Status: GOOD (  10.88  )
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
 drivers/iio/chemical/scd4x.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/iio/chemical/scd4x.c b/drivers/iio/chemical/scd4x.c
index 2463149519b6d82caede9c9b253942fa421fdd3c..8859f89fb2a942d940b1ba7adf202977df7b4ad6 100644
--- a/drivers/iio/chemical/scd4x.c
+++ b/drivers/iio/chemical/scd4x.c
@@ -665,10 +665,9 @@ static irqreturn_t scd4x_trigger_handler(int irq, void *p)
 	struct {
 		uint16_t data[3];
 		aligned_s64 ts;
-	} scan;
+	} scan = { };
 	int ret;
 
-	memset(&scan, 0, sizeof(scan));
 	mutex_lock(&state->lock);
 	ret = scd4x_read_poll(state, scan.data);
 	mutex_unlock(&state->lock);

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
