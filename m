Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2719DC71135
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jun 2025 23:47:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ksny4hDiCp9jbkLEOSNS9noGxZwv/QKLcgJoagE5Fco=; b=c2SSbvH5J57oI0
	V/irRy1wZnMcFWOiDaa6PgdcQGFWE6dmf456081cmYBuW6A49HhHld8TC7pizBc+hy8lyaZnil6Wc
	Db6FgvyK78RXSIq2AibXJD/CU82k93rOTzTftfTPpwz8JsIE2/z1qj38GJ1u7apRwXCDa5ui6PCu2
	TVaQBc8Eeo1RrpXELlYB4I9TLD8F+S0lqH/HAWnHtOijlsgxXVG5fUtIlIeY2PI1gXXn6HhlLxtz1
	rcJpKvFWa/NZUh+pkz4EvUoLOZ0Oug1mOvirk6w/hxhav7QVGi6+oUakKuJIwFvjdR/LiZTTDG0MB
	PhwMHXUholXEaOaRt3uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPV9z-0000000BiJP-0M8c;
	Wed, 11 Jun 2025 23:47:11 +0000
Received: from mail-oi1-x22d.google.com ([2607:f8b0:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPU9l-0000000BVeD-2grk
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Jun 2025 22:42:54 +0000
Received: by mail-oi1-x22d.google.com with SMTP id 5614622812f47-4067b7d7e52so92968b6e.2
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Jun 2025 15:42:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749681773; x=1750286573; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JmCWs2rPIbc+6BQsfR6o7xw9HuF4FDfGQAsK57gqrg8=;
        b=dvd5Iddai+O1LmfuvIhzFNH7IIEoDPwpOUOE8IXfNkx5CpKMdeMrEnNAekvtFehAas
         Mnk5OoJ1GiNXWykhAr94ORV6a1/f7XXjDhs9Nr0X1D8XQ/C1CcfiQmioX4F+OmSOsoja
         kc4zBwPm5RNDrudTiaLxDAkmM5XrT9219P8Z2wlsMRaroAs1BvcGJE6bqNbHqFiD7s/J
         K0ULEGch3nz3Me605AEjzP0bVcbOilWgMqjZncaw8Oxuqa55+TobdXayD9jdCkwyPvKe
         sqUTj3M5ESNeqE1PBaI3F5aEKZXO31iOirP317ughhUnUN0M1LlZDKAIp6iWZBox/USb
         5iKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749681773; x=1750286573;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JmCWs2rPIbc+6BQsfR6o7xw9HuF4FDfGQAsK57gqrg8=;
        b=Hg4Hn0kGCarZHmX3uSnsUsDeL7W8MBfGcmYQVgd2iIgoCaagogmK+/olqa5+xEhdNH
         nLrgUcD0/5NW6v7HVqvLxR+B1JaBlOxE1OdppqwtzFQd9CLfjFhfgPUNp1YcNDdmbTx/
         mexm8KA/cio08mJi9ia4slkG4V45Sch2LNsTHb5HN0Y2K0WNMlW96S/KMIat8EtdyLKC
         qrywYLSCkGObbMhYGLJuZPU0uYcnOpDvyh7SbNVVRIRJBI2jYEkLubnjh3vJc4XmHlAR
         vgip5decE3/71rWiX+8TNOg70Ag5de3NR/3+9GNB9z4MuUZxw3rK1WPgtzrtmHQdZ+qV
         r7AQ==
X-Forwarded-Encrypted: i=1; AJvYcCWbKCzxXQjLkIO2G8hj3yIhyxCzTAREF9i8Imw7Li1sDC5GSMDTx7Q5KMAEiGIyZdFJhhGZrt33uJOYAfa5Kw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx8fWhTlc2Peqq6pF275OavMLiT4YaHwL6wlTtAtbiBCUzIo7nK
	zmgx21kATpzev2lcUOw64DZqeu297RGuIk8Y8suOVzdDMlohFH5SwT6oPKYX9y8x7r8=
X-Gm-Gg: ASbGnct7p7zKpTWiv5FRV01qaBF30q4tf2GnXDuLYE+Y57/0tSA5BXrOwmeBeif7hkf
	xvKfShBM/10T3Ssrbq+mDUx1wmTpR5tURAjMWQYpiUljTy+WpVjs4ODTefKdUpSsbqQ95Ew3/SG
	yltQkVQU+gLcEsizdfwQRWJlMnPti2Eg94TbPOa2Etqgyrcwalbr0XgdE+CKJqwdXTWWgdm3kUK
	xSB+qwVo5vTKT7zun6MuDc+qv5E0sw3Dtp1lih6cDKBP5khQWumkmpW4bepxZ2ezhwPZ9cEzUc9
	6LhAJ12laMFEPKS1i2bJpynjz8wrnryp9JPDuUitY6z2z/E3tNqJufx/7FNvWweiwmBI
X-Google-Smtp-Source: AGHT+IHa8L4p8ghK5RcETbtRoE4Tgd0/CyY2JEUEIAGMkjSxYcjGiB/P1+veFGOZJrjbwtHUeltfLg==
X-Received: by 2002:a05:6808:2012:b0:402:b0f:4ccc with SMTP id 5614622812f47-40a65fefd04mr787770b6e.16.1749681772858;
        Wed, 11 Jun 2025 15:42:52 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:1d00:4753:719f:673f:547c])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40a682fbf05sm24684b6e.32.2025.06.11.15.42.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 15:42:52 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Wed, 11 Jun 2025 17:39:10 -0500
Subject: [PATCH 18/28] iio: light: bh1745: use = { } instead of memset()
MIME-Version: 1.0
Message-Id: <20250611-iio-zero-init-stack-with-instead-of-memset-v1-18-ebb2d0a24302@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=886; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=1a1blIlRZxXXjSZuCkjoNDJp58C2THl7ge1s5EwPmWg=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBoSgX65p3M31ivm9edVoF5bPU2YQFaJOkLpO/9G
 NBCVXlam2GJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaEoF+gAKCRDCzCAB/wGP
 wKzJB/907gw1xbojUL7cRNV/Dvgd0LFSxeZkF4YblcJ1Yz+0c2MtUIyS92I6I5pOn/tKJvqNWm3
 OJOzaJPV5qKYrztW7M9TNbQF8w9s9S/NwhajVc2tfvREV9bUA9SsTt65nWfJsDEEMb5Tq5278q2
 viPYYE2utKUiiA9yuxNfadtti+HV121T5zIS21mLLJ7f4ljjG9JLUI5k982MU+LRZnDJv3R6wlu
 X0mnXF+c+v+zAcup7pDNFWHXfGocmoqTfVT0p82kir3SPpz+xWHvyBSjJQUCFWQzPq8AVKiHYjn
 TyEpUDtbkf/uLkdvNbw7yzOY0jwiJn6iUuvFkTVih0RpJrWB
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_154253_715114_46E4DD34 
X-CRM114-Status: GOOD (  11.09  )
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
 drivers/iio/light/bh1745.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/iio/light/bh1745.c b/drivers/iio/light/bh1745.c
index 56ab5fe90ff9128035cf25948bba1589492e66e4..4e9bd8f831f7834dbcdbc5df4931f473d277d814 100644
--- a/drivers/iio/light/bh1745.c
+++ b/drivers/iio/light/bh1745.c
@@ -740,14 +740,12 @@ static irqreturn_t bh1745_trigger_handler(int interrupt, void *p)
 	struct {
 		u16 chans[4];
 		aligned_s64 timestamp;
-	} scan;
+	} scan = { };
 	u16 value;
 	int ret;
 	int i;
 	int j = 0;
 
-	memset(&scan, 0, sizeof(scan));
-
 	iio_for_each_active_channel(indio_dev, i) {
 		ret = regmap_bulk_read(data->regmap, BH1745_RED_LSB + 2 * i,
 				       &value, 2);

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
