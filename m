Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7350C71136
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jun 2025 23:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z+D8uSxYCGGTWp0pAAvE2LplSyE3DYL7Id/eM2qVSZM=; b=CLJsk+fb452YPU
	QwQKLaJ8EPMhgi/i4l5stN13DjNNxZQeWeP/A3Xk4e69zW3rEN0GSGTGtwxZuewfBTBtx30y2qjuI
	xYuXnXAY77DASMpIMoizcVAybObpiEflhX4Kri83DN1Z6dCipLX86Tg9033YNg9TCsSQzXgzuPz4p
	dMnrFEeYjeTo8BxSqOpigDDBFTVfskysNf7lFWYMlfshGr3zEVByJpHo83MnyxXjm2721phG+48vo
	FBmUHUJMetaH+d/vmwj1W5alceMxyoyFB7w+rZWs54YQ30BNGcBgjBVXyNSoZwaGEOIBUovpLfcDD
	bDAaM4YhOSLhAGtwOYjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPVC4-0000000Biax-1xU7;
	Wed, 11 Jun 2025 23:49:20 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPU9m-0000000BVfN-35gG
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Jun 2025 22:42:55 +0000
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-4080548891fso111156b6e.3
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Jun 2025 15:42:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749681774; x=1750286574; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0GqXAUC5ztniIogZLpwpNEvpFvqt5l5bmngIYMTHsoc=;
        b=l0HjuM/dcw0eWim1TwnJk8ndjDaB4Hkn/xCoFZSLXw/RZaggZLSRrJidHpGJLnwrlo
         64OEYvrd/n4ZorqSp/b1q4nBZYzeQW9nF7Jza9lNXPVErg9ePm65izgJ3M5CcOTg6yMT
         xq6hWLtVcGi2TqjSAQsWWQefP9i0W5EQSxCv4hU3ArYuHEwoFWf2vNwFLLTbb7wM4+we
         sV6ROW1sc8Z3BDlQPq8mFxkGFQ4J8Kmxv9j6GLKfoptOPJRmi2KBlcTR46EtI6y1w1Zh
         Wl7QVJwWLi6ObF4Pm0NGN4GeVJBquvdAVMoxt/Rvbq3vfT6CbPqu4hYCqwODqX9qjcsz
         ORBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749681774; x=1750286574;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0GqXAUC5ztniIogZLpwpNEvpFvqt5l5bmngIYMTHsoc=;
        b=ARtzBuAcTbfp3HhcYGgkRg8cyT2kDpX6JfAg4DodrxRNiKTQcrgahIfJzJ7tcSzSq5
         W6RL9Xn1DEoM5xGvqSzpQIDNX/oJ90UAP2pNAcwVoinN8Zt5eVnxvAKljtBPMOm/lnfD
         rCLptG6Q2asH6hdm+i6HzklpdPIZdcUpGNHSAhueFoXm9sMWQQTZfvpDYxrasn42nICC
         dZhkAGdh8J/Vkt9ou/JyX9XhSIEQeu+zcUz9TEEo3BF7RbsZJ7i+4cTV/O2KGi8jMUwQ
         ZJ+eRCptoawdz4libHdbgVeExbXZoDwvFABewkC9As6FJPUbJ68CDu3bM248TURNMmJQ
         cakA==
X-Forwarded-Encrypted: i=1; AJvYcCVKdntCIZZzgkubca9pzvkpOwoxyLNbj7n1XYr3gcT5k0287KkGVrUWwzLA0FVxY/4KusmRWvHex0QZNsNpEQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzM7KxEAp+I9qqikno1M3VvjOIjtZ5fzezIy9sdCzYo+tJ8QraR
	GE7oXGOdRIeK48e2xPqKF1nVA7oBTbD/lfC+HWVPYFkdqwuennsGG542I+4EXfDBBLI=
X-Gm-Gg: ASbGncuhy5HCeeZwcaJQB6CY1d+rVRupdkXb/U83sXDDBC/ZBZ0gU3zDgDdR0EXFzN/
	5fHhsf0T7PAdVJPS/Vd+qnLMgJ+ODwQlJnPy3qAI9etODpFhLKBOkLXnPbRwF/mmjaeWRl2BTqQ
	PH5KGSj1Y4R3IwAf5wMpr3ciho1mHtGiWrUAZk8zehmTd5n5p/v0u5AE5WmdAcLKRHRWwTmMb6B
	3rwAktzNqPdFTNU6CUBBLwMRpIsAu8XPGOjbhl2olvah/B9eVwfSDa68w8UF/n0z2rYHVAGxDak
	QBMGI+4a3IHSySO7FfJYhafbeLlKNVhoiTRjJ948zIEDhBKTJDcEshFCrW+N0UU1IJFo
X-Google-Smtp-Source: AGHT+IEno7iivJ7V9DJ4jS9BfN9qMtC3Kbpn1hoqPd/0X7I8V1hxaDUFP1SUYvG7cJTjWfN6V3+JZg==
X-Received: by 2002:a05:6808:1a10:b0:406:6fd3:ff13 with SMTP id 5614622812f47-40a5d127d4amr3587773b6e.25.1749681774060;
        Wed, 11 Jun 2025 15:42:54 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:1d00:4753:719f:673f:547c])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40a682fbf05sm24684b6e.32.2025.06.11.15.42.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 15:42:53 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Wed, 11 Jun 2025 17:39:11 -0500
Subject: [PATCH 19/28] iio: light: ltr501: use = { } instead of memset()
MIME-Version: 1.0
Message-Id: <20250611-iio-zero-init-stack-with-instead-of-memset-v1-19-ebb2d0a24302@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=912; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=gCWBhc3n+k0rOzdOzNEkxMDkk/9qdZ4NyBLN5i838X4=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBoSgYBVhD9q4Dm7oGQ6HylErBkZw8NPS9LtGnpg
 QcqtFQcxeCJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaEoGAQAKCRDCzCAB/wGP
 wNsdCACOa3y5zsZO5jRJ6TXkHQFX74S3Nr/9bVgpmLdGxld4Z+7+JIvhiis7hU/SPgSfaXy1HEh
 ktDMqm+R/k9m6uW1HuOC7FUOZJLVTDEKAKUxRNRhp4bfH2LUFh/G/3GgfwO9f8PoXq/NmULXpda
 7A1aG/YSYU2eMZZHKx2FjIlroUI+Q0DIRxoJJRuaC+0ZUZnQcDdRFGU+SUR6ZUAwal16z0jOcSF
 j9VebgtqFrmJs6emiKebaukDj4wXBej4ZpE+d+H8FqpWL6gldFBpIJFLejRYOTZaFfnP4LO0Eri
 JrZp1IDGBtR97RjR801xEzHW4QUVCM5l/UjRUFcCLscdfHuy
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_154254_819961_BB323001 
X-CRM114-Status: GOOD (  11.26  )
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
 drivers/iio/light/ltr501.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/iio/light/ltr501.c b/drivers/iio/light/ltr501.c
index db0cc3642bd8010358de8515c24337d7385bce38..c14767472fbe8620ad59c8417d2ceff14f9485a6 100644
--- a/drivers/iio/light/ltr501.c
+++ b/drivers/iio/light/ltr501.c
@@ -1279,14 +1279,12 @@ static irqreturn_t ltr501_trigger_handler(int irq, void *p)
 	struct {
 		u16 channels[3];
 		aligned_s64 ts;
-	} scan;
+	} scan = { };
 	__le16 als_buf[2];
 	u8 mask = 0;
 	int j = 0;
 	int ret, psdata;
 
-	memset(&scan, 0, sizeof(scan));
-
 	/* figure out which data needs to be ready */
 	if (test_bit(0, indio_dev->active_scan_mask) ||
 	    test_bit(1, indio_dev->active_scan_mask))

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
