Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B045C71135
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jun 2025 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c0swBOMpg8aPMwh81JaGwl0AmeRfVj0AyyRSr/oLiFo=; b=3iMjdqT0ReKKld
	4QeL+7zlNf6/pwvlykBv7oVELRvFKQD64PpRNBfAQHRbO25HkMpraLpaLiVrH9j8XIIVQSEh7lSNm
	UeC2d+Nr0+A0RMET1c1Aj1e4WecxYTrbrvO4l6oon3dBr13y/PkGQZV3jrpjdAbnAIvJF3kve+GaF
	GNpiNNWInZEu039UfVZArbf4Su6rFWnv2ZRJvRrYwjRexKZdl/Ym+9x9mrTgx5CK/DyRxA0syDOwu
	tco9wdpvU/fq52v9GEw1zc9M23twpFieL0YL7CZydktqud/ywPrjUQeKiQ15lGjlDaAkqAmrB32G/
	Y3lSu2KRIF+tGVoYGyrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPVR3-0000000Bkdq-292P;
	Thu, 12 Jun 2025 00:04:49 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPUA2-0000000BVtF-14R8
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Jun 2025 22:43:11 +0000
Received: by mail-oi1-x22e.google.com with SMTP id 5614622812f47-4079f80ff0fso864970b6e.1
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Jun 2025 15:43:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749681789; x=1750286589; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sIUkxS3NJlxCBqe+Jr2tfFFp8ENb+E8Z8dAwWew1sZ4=;
        b=XLbFcytzf6zhLn6sxss7XV9h592mI5p1cyNXQLBaBs0VrZSKLrmdJ4xPsvr5z7GUuh
         IRMMi6aEFS3d+syTS7N3LPaJ3dhG6K+91byWu/odkcFNwpWPojFTogFEwfqdeOev68wW
         xJ2xKCJgLZlFzH09E1SvIJ45ubPY/pT1rXvtwLgU9vE1LaOV+bMXDJp+vtdELD9rJBYi
         71DECesa4Ntpr1tUe9O0KLxDd7XrKGaybWiyryRN68YnZZHQjjiGjha+rFumeqOR7jRp
         xrWuwnDW8QWctSpIUYjVZbpZf2MRo2Zg7ArHtzoErnXAxm4pOBpuYO4gqk8LLw/CWnYo
         MwAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749681789; x=1750286589;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sIUkxS3NJlxCBqe+Jr2tfFFp8ENb+E8Z8dAwWew1sZ4=;
        b=uC06+9qFDZdsyJ5hyszgqm4ootgeWF84ORNNr7t815tW8odzV6jQAjuytJ9kEnwHzz
         oTFCKMT36wZE2934gez+mLsOIO5PDs3v+LD+ytjrOa2fAkh8e5GIl2Dt5sMGtI2pOZVY
         v0ExNGVBY1Br0ijy7pInM40CoMTKQl9B0RTBv7YFrj0NslNsuOgcKhgtzinwV9fJLxzx
         OmZ8ZYv+srRxj5PkzQIppK+Eo4CKikkg6DHU6Rbe9IyytA2gBAOUSvjX3QnHgRwRL9IH
         cXXaWiXv+NDHecw4STZCb2fv4UpPW36QyBB5cDVVlsUl21rr2MutsMV8qnSnXfoZpvPL
         U5vg==
X-Forwarded-Encrypted: i=1; AJvYcCW89O83u4BrCQdmGSDDQHhjhYYXIE+2sJuXGNLKSRIHd7FZRNBTrFChWWJiDxszoV0x/CIpmLsMrH8nXS3Czg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzOx0nkhIK3yYIL/VLB0k90G70YIjxL5dXrfq/opf7GxdTqKsSX
	Sh/1GnDGYHGU4G8ZbcL1kZAWkNqqZ7sOE3RQkE953802vQpL6qkfPVv39hkoqa0C770=
X-Gm-Gg: ASbGncuHVxhcVtRMHQZOClVNTphvIGKYnlT2FL2FIBRb2nKM2ahin7K8jdWsLlIPWwI
	hnHNGqse5DtA2TSN5nu61PkKHDV0sN8KXXwYRrlKuJn+qAp8CwEhm0u4+yCYRDq9s2hrZn8NNfu
	AGoh7K7P3H3K2IpRhljO7W+oPrzmbMe592bulDXgq5FKXB2+HKz48itkYnLvB0cg7Ak4qy+3kDw
	9IGwhh+SfUqhMof6+6TFK+A67yOuJJExIbtEfTBHOkTlOPwwFASAYCFbCTiijMlJwxM95Ca1GrM
	O8YQPQoPXjb5uOcG1B6LfBCp1/QXXXAdlb/sIS6LJ7pAjGjorI1mS/C7v+TwgKnb+Oy7
X-Google-Smtp-Source: AGHT+IEnYQuuP7+Ed1yUnqPwBXcm60N0HbHjFFI1Q30n3CnvRs0c1N7PubAsOKk34Bxp6isS1gHJpw==
X-Received: by 2002:a05:6808:181e:b0:408:fef8:9c91 with SMTP id 5614622812f47-40a65fee5edmr1014965b6e.5.1749681789569;
        Wed, 11 Jun 2025 15:43:09 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:1d00:4753:719f:673f:547c])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40a682fbf05sm24684b6e.32.2025.06.11.15.43.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 15:43:09 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Wed, 11 Jun 2025 17:39:20 -0500
Subject: [PATCH 28/28] iio: temperature: tmp006: use = { } instead of
 memset()
MIME-Version: 1.0
Message-Id: <20250611-iio-zero-init-stack-with-instead-of-memset-v1-28-ebb2d0a24302@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=825; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=PE+CsjhnIQN3X+3KjjOXuO9jk19Iju+HayM9vpAuU1M=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBoSgY9GS1AXDDpXtL3P/xEFQ0nsgDvgF6m8S2Ri
 XNCmUul8aiJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaEoGPQAKCRDCzCAB/wGP
 wPyqB/9hXsNHRRXkGxsp4YsM2uNtCavgRRTmB64f/KIXhTDYL1RBaHe1kfKU8iu4OLH+gBGaKt6
 aamU7fhFYq9DAZMXKztJTGp4Bn5UPjmsyGKezfM1KqyY5wXinyUHqiDAa6WFesxPAWSYBW4YhuL
 jjsA4pN6Yl0BLbsYRN061SYdEaoiVyNw5oLsxaeCRQCpjdYZ5kEyewIQcC9SYSb8m8YhpDprTXv
 WqEiMd/n7RM4kkOE1jWOSNJ+od1fajr5bI6tF+f2LNjMT5hE/qs1NYFOOBiY+WfrvFrl3aPqZc7
 060EeNImTcoO1iHforX5lOBvZ5p77oTZs6uZ7OSYFtt07WgK
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_154310_316941_6C7D255D 
X-CRM114-Status: GOOD (  10.84  )
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
 drivers/iio/temperature/tmp006.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/iio/temperature/tmp006.c b/drivers/iio/temperature/tmp006.c
index 29bff9d8859d017e1b59536c531f732a2d749631..10bd3f221929d1b58b7e6a6bd9a75d5d068edf84 100644
--- a/drivers/iio/temperature/tmp006.c
+++ b/drivers/iio/temperature/tmp006.c
@@ -254,11 +254,9 @@ static irqreturn_t tmp006_trigger_handler(int irq, void *p)
 	struct {
 		s16 channels[2];
 		aligned_s64 ts;
-	} scan;
+	} scan = { };
 	s32 ret;
 
-	memset(&scan, 0, sizeof(scan));
-
 	ret = i2c_smbus_read_word_data(data->client, TMP006_VOBJECT);
 	if (ret < 0)
 		goto err;

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
