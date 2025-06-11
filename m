Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81733C71135
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jun 2025 23:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nuCxGdOf3XRFIg3GgGC0vvbXOLG7ap5c6tBN2g6VaBw=; b=FWdAEoVbIH6vb4
	gAPHrH/WqfJZTOKqU7Jxl4jTTr35yjGOaphnpdjmB3zObdewWfINlhpvcDJWQrsktCt2Mfk3vMHvG
	HlAWoyY5Q/QKPvjtYyE8XRdAOJDG000Le3Ri/MlrnMld9rg1uw/uguad5iEzlF8uyJSMRya1gIfQc
	DflZKC2fmE2orXjIThyWIF0+gr71V4Obz20bpWMSCkzcRm7uGISRzEt2ZCGMz3dhgcUMtv0Ppv5no
	V6TjjDOSuiy7AiA1bw/wYp4uoyLSUq3U59pvqTzCAXt91VTwpbUMu11ULd9fgcYkphyphqbrfcvTc
	c12cAPSHd8lxPArYK0qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPUsK-0000000Bfmw-0X2A;
	Wed, 11 Jun 2025 23:28:56 +0000
Received: from mail-oi1-x22d.google.com ([2607:f8b0:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPU9P-0000000BVPw-1lMy
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Jun 2025 22:42:32 +0000
Received: by mail-oi1-x22d.google.com with SMTP id 5614622812f47-407a3c0654aso185369b6e.3
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Jun 2025 15:42:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749681751; x=1750286551; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wPyCAeDwGaZFGchY0PBly99ut+lLVqj8mqClvHcxWU8=;
        b=bc1ewna9x/sM5roVBra5w5ji7iQQdK0LyblZvso84q0mbJ6lwqFezQMX9ur0GUXJHy
         MiFU26qUpmuOXtN4O/46+ULGXL+Os0pGLaH80YU6h848CTQZ5O1mwSG6XtX0+hc7uo4K
         ZntdT9SlfSy1xaVIoLlLf3GIm9JCUPpntlxjiMPMz5MFJQQqT3EIUv7EMlfNI8I44rY3
         WkH9leLFXqCCsI/Tt1HXANiJgDsTf2ZuCO0xLBnLXP9t/0Z96k1G1oPg/LIx5Bnvo0hs
         aiG4GPTYgqoo2Ikmw+xwzvZ5ESxv5PHFuFVx5JfXJfEPeII4C1dN7lOzUTKG1N1LYIaD
         xmuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749681751; x=1750286551;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wPyCAeDwGaZFGchY0PBly99ut+lLVqj8mqClvHcxWU8=;
        b=asDkOmUiL5kmRJYd33+7LHDM/AVV9VeVKtOZsBaO1HD3Q7BATxxE8+IOvKLECSsalq
         ru8Euc5dVOp+dix7tT1wQofW08fblktMTE1okZxSBGbMHluucrIy4DrdDC81ZHy1GPlR
         dcXWXB3alhm9CP3AcV3QvI0OMC0UL549J1ZaeMRjQgUsDrhHgDtILPtj+LIkoUQNZbyw
         XDhndseZBlcTeSg7sDADPF5s+5tvvukzyjkxAAJsQwqZHJM4k8X0l42R6TqtW3M1ki43
         d9uk2pVuNzqzAZ0aPcNNpBpO8i3bDZxkgZi+YPgyl0XjVjhlPw4mjFjUAgwvttGSHxYB
         JkhA==
X-Forwarded-Encrypted: i=1; AJvYcCVH5OpqzyclgVb4XsDuO2d88kbZ251HsKePtEWk/CJWKBDUlKaD+6HpQ3tBSXAZRRWmNzgv0wTlptH7ALQtHQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwXOMACyEDPVlxnk7Gdfz9axubvFmY14iwTfrfbHSo1Ehd8EfkA
	2bDSVwoR8beqSiNiemqPJ1veF3hNrgKVKBaTLotco6T3HK91wPGD04g/janwZtoQIfo=
X-Gm-Gg: ASbGnctMca6EZPMi2k3uwLxbRKQ3fpzOH+La79xy/CZ1u9uxWtpQLfQ2jwevLYy/weJ
	DtYqIgEvIzIQ7HR+XNhJrTWOjc3vVbyf5bydM/2DHofIDEXP1fAa4Dd7BK5Q7xnixYA+jXhjdTr
	aJ9y3Kh+8/gA3qzoqQH8ousf5LSlFqTULkxE/kYUQseyC0uxi6FKPcjE1Nqbu27en0AgK43nV4y
	2IxhUMXQfmbkC0BsrR3Npl1rCdUokhiAxFcbN3yBzReHK5ICh3znydvG7NfdSR11tdI6UHx2bIC
	hdzlp8tp3QMWKrWmW/Biyt3fB1KVSA/vFx8NTEk6TweI/lD+ja0x0aptuLUn4Ls7e4mX
X-Google-Smtp-Source: AGHT+IGnJ7SCSrcoLGGDHLkeFWZl+xwmv56WaGassXNMfNwjd3I20gGItGHx1iX1x1Me2SDAPUpVcQ==
X-Received: by 2002:a05:6808:178d:b0:403:3370:4768 with SMTP id 5614622812f47-40a5d05539amr3930457b6e.5.1749681750679;
        Wed, 11 Jun 2025 15:42:30 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:1d00:4753:719f:673f:547c])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40a682fbf05sm24684b6e.32.2025.06.11.15.42.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 15:42:29 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Wed, 11 Jun 2025 17:38:59 -0500
Subject: [PATCH 07/28] iio: adc: stm32-adc: use = { } instead of memset()
MIME-Version: 1.0
Message-Id: <20250611-iio-zero-init-stack-with-instead-of-memset-v1-7-ebb2d0a24302@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1235; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=+7ef0opXHNBN2h0b3NWv84zYFhgTKH377f2j3if5pfQ=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBoSgWyAR0/NtALS5gQgsb6D+CiSxnqwsX+WEtuq
 AOohtpPO9eJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaEoFsgAKCRDCzCAB/wGP
 wDuGB/sHqLC2qkSS1PGNPlHGddzhPG/h6E+AJRBdBcDq5LES75oaDoNUp8YYjpUZ8xdWx6xXph9
 6s27b8H4wFgEqsmBhgTYtnLCeP9M5musN7+TAkf6nypK2UmTcK9fbVKTFJjTfgqDI2SlJXIgEQF
 9wZZHbHDOUxdLYBXmkPZKrjV+dIg1MvgLe+f0trGAuiVHPzEXT+jESYp6Bg8UvB9t0QQkNYXnP3
 hOfcMmO/eFMS/iKbzKKpfSQde3C42a5c/GPyzIqCLxiEhPIjQobMVq3UgCav5l44eRb1PJ9V2KC
 m6/9HkniYjZKtQ4qPcJc73pexbQoq3dz03m+kTljc/9Bt9Mw
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_154231_461242_65C4DFDC 
X-CRM114-Status: GOOD (  11.96  )
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
 drivers/iio/adc/stm32-adc.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/iio/adc/stm32-adc.c b/drivers/iio/adc/stm32-adc.c
index e84babf433853977b77aa283025f446353510a21..588c69e175f5129030eef9ebfe0eabb6412b1893 100644
--- a/drivers/iio/adc/stm32-adc.c
+++ b/drivers/iio/adc/stm32-adc.c
@@ -2470,7 +2470,7 @@ static int stm32_adc_chan_fw_init(struct iio_dev *indio_dev, bool timestamping)
 static int stm32_adc_dma_request(struct device *dev, struct iio_dev *indio_dev)
 {
 	struct stm32_adc *adc = iio_priv(indio_dev);
-	struct dma_slave_config config;
+	struct dma_slave_config config = { };
 	int ret;
 
 	adc->dma_chan = dma_request_chan(dev, "rx");
@@ -2494,7 +2494,6 @@ static int stm32_adc_dma_request(struct device *dev, struct iio_dev *indio_dev)
 	}
 
 	/* Configure DMA channel to read data register */
-	memset(&config, 0, sizeof(config));
 	config.src_addr = (dma_addr_t)adc->common->phys_base;
 	config.src_addr += adc->offset + adc->cfg->regs->dr;
 	config.src_addr_width = DMA_SLAVE_BUSWIDTH_2_BYTES;

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
