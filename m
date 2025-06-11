Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E06DBC71136
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jun 2025 23:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WJ54O2FZZ03g8Rcccm+wzatB3W/2Ouo/AJkxlMmeu18=; b=cU9Mcerwzj0fAo
	7recjOwCIXT17ved6Ky3zFtI6KqgZYHtt7swNh9+UgrVDj5pYa9VpdkcbwA296meXLW5kjWaLu8B1
	ZA3at+0yfuq5oMh36F3sNCun76L8I0czBqD+Sc9DjZ825iWMRTPc8lWTpne2TD4kKs4w9QmFTeRT6
	eXu1KfEydFBiGNJ+Ag83YrWvdn/tCbz3oAU672GLa/nm4r76kvB/XxxVo1eCPu90PUiY51kziDdk2
	jw9QmQuWeE2NDucy1VJMmzduvgbreGhmIbFNyfEMZsg8s3R6KDw+aCOnsLjlBH/YZTaEsyjp72wz/
	iUVs047dmAdXucZgJYlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPUqD-0000000Bfd2-2yiP;
	Wed, 11 Jun 2025 23:26:45 +0000
Received: from mail-oi1-x230.google.com ([2607:f8b0:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPU9M-0000000BVO6-09VM
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Jun 2025 22:42:29 +0000
Received: by mail-oi1-x230.google.com with SMTP id 5614622812f47-4080548891fso111061b6e.3
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Jun 2025 15:42:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749681747; x=1750286547; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Dxd93MXVamZ7ztUFC194OTJH1bC4/5rgbs/4bZ7YxEg=;
        b=AXmwOMllRjLt8mw6B+vesoh7SoY6THIDIwox0l2E0Glpj1gIMC0BNpCJeIbnUxTGFQ
         7a6fb3Q/2nydXyPO4Ng/m0MwWKjC0KGR/k1WiKgr2T3jyEXGiS2O4c8ZjVXQNr+g4UuC
         Iy5NRLvcj8V4H3Kw2bUWTAuWjpR/Cf1WWMDju+Y53LEFxwJhdowY7hgrX+d7O6JTsTVj
         6db9Y/qSW7h9Q+QEIKS3k9i2a3Xz1dw+p0NzYQVw9dTPEVHeJd8dUqyKJ/gBRt9eKV9B
         D9oYCOv0WA9QdUoP+D6Vx4w8QBrtl8KNMtaO61UIZat7MvNqGldRpqHQ3WLZU4feVvNV
         u5+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749681747; x=1750286547;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Dxd93MXVamZ7ztUFC194OTJH1bC4/5rgbs/4bZ7YxEg=;
        b=gxvGuBL0BV1yt773Ej4AaHEEXZozdwNhBfBcZ5pZmGHSo6vFLDyUhtAOYVHX6ZK75M
         mSnB31iRSmqO7Em52FeANZdCH9hJwMi/Qn/hjv6PH0sdWAMRWoqTx/RIq3tANwgLctsz
         CjfMOvZ8VCtGAFNV/E38CtDEix8xc/CzzvPUvk879E+sygF00Mya+cNAQ8VDoPx+emab
         aPMaFBUgKVCJstAi00OBIaBftvujgyIhN5PnpxemDis3ZyLW+AKA+79c97bZguIvWIAC
         uWYjRxLC6Z8engQXrUA5EF0Fv1K/FFQNVnR9sjAdMQjdCk72rZwOnNIStdDm+4EaEBu1
         AU1A==
X-Forwarded-Encrypted: i=1; AJvYcCV2fGyXa5bsAxNCB/jmF3Jwh1p434bR0yx+3cErNhUS/BFuAgWHh5KNYHPaLdIXbRwfeWIvH/t+m9NYCzGFNQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyf2oBh3mUZ54LOVR+7rMdbVPpitTKK7vS7D2iXDTsqZumJXsgH
	D9aX8nYveVgMVU6UIXrfunmnj4OZA6WFhHWZjQ/9g3w7NcnFG+UwgtoltToHtTg/tPI=
X-Gm-Gg: ASbGncvR9jGi09yZThASWup1cvTaPt1G9gD78p5QBhV4BXvV9Ek+FYwdvkMZFf9GwKz
	3pjD6g9DfKL2jwAGRFfntbH/Z6mRCakslHbi0upiao+gmjJlQdmdlkuEGHgH6srDoGTvoe1Wqet
	p2ewXP2Zz4EoEKQl6zJ6cnVeejzkrFLXAvsSXdLEEPajuQTNXuVZefFmgKAWihiU+x1k3nu5smn
	BaK4d66i0UPiqveL9o8YYxLE5wq+zj5AfPnKurAoJ8U+JM9Xke+HWkneavWmkD3B3TGnCYqNh6v
	hZ7yxou+eZXRH9rmaGvj0yV5gY/iaV6/MmerUoreBZaPSy5hFD081jEiYZMCUN1deoPthfUP0DE
	s25Q=
X-Google-Smtp-Source: AGHT+IFQBThN9gqVMuv0yZV4fKxfsQN3C7pn2YLNqV1M+RISkP7nir8q7A3hG/2ChnbAzLdY1TtRyw==
X-Received: by 2002:a05:6808:6349:b0:402:1016:e9cf with SMTP id 5614622812f47-40a5d1640c9mr2811691b6e.34.1749681747387;
        Wed, 11 Jun 2025 15:42:27 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:1d00:4753:719f:673f:547c])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40a682fbf05sm24684b6e.32.2025.06.11.15.42.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 15:42:27 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Wed, 11 Jun 2025 17:38:58 -0500
Subject: [PATCH 06/28] iio: adc: rtq6056: use = { } instead of memset()
MIME-Version: 1.0
Message-Id: <20250611-iio-zero-init-stack-with-instead-of-memset-v1-6-ebb2d0a24302@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=839; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=J89vMIrnHas95b9IQRpMB3abmxVy58q4+X2PR5Kxrzs=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBoSgWrluEPstsE3vfOa2602G4vDUiURfJwcuPmj
 Ecdin91id+JATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaEoFqwAKCRDCzCAB/wGP
 wPDzB/0ezOPNIM1GcdwSJUtoBdBzF+of4mq74dFA0f4iCvbOvAC9fCmCzg5hxL69oaeNJIKLKNN
 hwYn4bwrsFDn7hpTk4oxy+0yhbNBF3FS9rqxNmkw5sq+imc+Bge3o9MlimTvdYjRFeWz1olLBsK
 RujuQh/8d+BqbeBkJy6HGkvMCcyYr4HMiR32pZxq3ktZX1yG2QbvAfaGvOtFKtCjsFCh+x/0Tk1
 JzzUKytVoQDoqN/jeT+fEIYsymB+ELqIGIQ5jEtG2AOnEQdDR4Q/i73QIQnRhDjaJw/RzxhYyeY
 LG1BSqJLLtf/Qqw+97BIE+EwDDmTTolk2qkEpoqaZjPnMzDK
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_154228_086762_B221BFE9 
X-CRM114-Status: GOOD (  11.13  )
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
 drivers/iio/adc/rtq6056.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/iio/adc/rtq6056.c b/drivers/iio/adc/rtq6056.c
index 6ff47415a2221436b1fd548aa0bc070ba5fbb774..ad9738228b7f2db3f3b6cfc01fd97e43b579b687 100644
--- a/drivers/iio/adc/rtq6056.c
+++ b/drivers/iio/adc/rtq6056.c
@@ -645,12 +645,10 @@ static irqreturn_t rtq6056_buffer_trigger_handler(int irq, void *p)
 	struct {
 		u16 vals[RTQ6056_MAX_CHANNEL];
 		aligned_s64 timestamp;
-	} data;
+	} data = { };
 	unsigned int raw;
 	int i = 0, bit, ret;
 
-	memset(&data, 0, sizeof(data));
-
 	pm_runtime_get_sync(dev);
 
 	iio_for_each_active_channel(indio_dev, bit) {

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
