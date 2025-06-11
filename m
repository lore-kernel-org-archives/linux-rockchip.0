Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59022C71135
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jun 2025 23:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pXiPuGPdPlq1rIYtALgIH4cQpmjkmXT1AfYWzYuExN0=; b=3wYqOH6ikWJ1me
	heyBcyT0CnhD9RCjwgvKUhenA9GxhhTswzxjjy5nd+xV6IPam0eMWzvAlm0theNh0y887MDhh3s+Q
	TeNaRbWanI5okVdHuOpUl23RE6KgrX20LqtG8/Q0LIp859nD56tv/MxSgNxO8Eqs47JFSLPLAmwCs
	qFLA8JgkIVNVpka5XlC58449aWc3PwlPGAJqM9SGHzVuS3HaBpA3YgNWEN7Dj4s4t/Y8tGhM6EYE9
	1VGs7zuJo8n+kS54v/r0ZK9+50HM+qOSdLaI59KZQ6zwDvxYy8iwdBKNweXFRoQlRcdFq2lqKUV2k
	pawctdoZN6Ndph4SlsnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPUm0-0000000BfEe-35mR;
	Wed, 11 Jun 2025 23:22:24 +0000
Received: from mail-oi1-x231.google.com ([2607:f8b0:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPU9F-0000000BVKz-2rkk
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Jun 2025 22:42:23 +0000
Received: by mail-oi1-x231.google.com with SMTP id 5614622812f47-40a4de1753fso197442b6e.1
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Jun 2025 15:42:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749681741; x=1750286541; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=it4RuztzhdZ8XnjsMEgLrvbjv0hSp4aT2tXycz5bWd4=;
        b=QqBgNG/9DLUTv2hp+/RNIdSCXWAqzMlZWbj1sz4A0VX3znHTMiQR2R9yC6ddZ4Bs7/
         SK4U2atgmeHg5cp2hIt8X0yod1fYXnZuUqC6yNbe4vup3ScRsv/8+H4BPkiVA1KSjam3
         06x11JrJs27OIBcifcHehtuxuo3qzp2FoDebW5QbVn1gIx3oTDBKWBUPTAnxdj7iqanX
         DSA4jWu1lcoveVMdAU/n6cTl0bqADes72Z1r/lx0LcCBnUOxsF0Vy+8Jo3D4Zpm3jxCZ
         LwfCNh2zUKDEEOAG2QQVuRJqBmQ0w46iVaJngTicPVBIboyRoJCm+l7T9ErllS0CyeoJ
         41MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749681741; x=1750286541;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=it4RuztzhdZ8XnjsMEgLrvbjv0hSp4aT2tXycz5bWd4=;
        b=Yw/ouLHZtaIZAAlrd6e7ooA+6vjJc5q1JvoAzNMMwDHHFvvHCW/wec4qN883Y1GFal
         M/MYRzyzmDvETmsQ/g6gYuenOnnA7ZXO5BLJwnG6/bzXnQTds6YZ4ZL923WhSQbw/Mjl
         3KcVZWJnKPi2i0v6eQdCGu1IDyMWh9JKwKuXGu0YiBlWzTfjfC8QqfhbouKq/fE9CBnY
         ljDYTmyKWrkuZ2L5pzKi/C2cmkcLYw3I9XtBgeUeHyweLouNG9sKWJQl7+CmwtxzR7bb
         disqWeKANYJrGxYkcXSjD76IAK53SzTjGwSy2QBmOPjk1QbztfCKqjx80vJDTxRn56dQ
         fbAQ==
X-Forwarded-Encrypted: i=1; AJvYcCXYyXhYaO9rHp9+onGjvV9i0FO4UNpcY2KZrlH+ty5JOWHF0WXftLFq23ZXxTlTu/IvHJThSPZEpSKnkX4rqg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx2gIIeq9S8rIiBzBCGVGy4DS/fHyyVoS2IHrk2X3tJr0O3dBNw
	aSEJniOfkMKjElQsnE+IGOafnZhcrwB4kaeNwOfYH/M/J1knRnU2yKicoReb0H5+byQ=
X-Gm-Gg: ASbGnctXzvzSsIfj9yCGbb3bxBuShZQarkrcN/iHTQjRaUESJc4QVgpQQSADSHYOiWs
	CDD6Dy1uJM4csqXi3ihNidUpPMgjKUk6TbS+5uBYPSYyEAHNDYfE0Nrta2v3LrXUiRa+SVwVUxm
	y8ZYG7VG2eAV0DzWU4bkyoamF0hSGEm96dlp3j9FbymTZxBKkBwVk2weRKgr5sX3rgYPsx77oWP
	8dvR/8QyJc0WdnqyKAI92VjJ9dn1rWD4HtDQqUbYBBnNDJJb/V2rmBstOGxph3NdG0C9e16bOfe
	uMbHpsJ5eNrhs6TdTwl9wr086c86F/oCYwKjFMLOekszn76dZFafjDckqcfhFfI7IaWn
X-Google-Smtp-Source: AGHT+IGNZz5p3ryOjEvuo2EytJHiwibtf40ayr30CzxMgaTKJOSM2lK2oXZ9zl2uyt/uz+jI4tTCtg==
X-Received: by 2002:a05:6808:4fe9:b0:3f8:18a3:b1cc with SMTP id 5614622812f47-40a6603250bmr879166b6e.12.1749681740764;
        Wed, 11 Jun 2025 15:42:20 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:1d00:4753:719f:673f:547c])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40a682fbf05sm24684b6e.32.2025.06.11.15.42.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 15:42:19 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Wed, 11 Jun 2025 17:38:55 -0500
Subject: [PATCH 03/28] iio: adc: dln2-adc: use = { } instead of memset()
MIME-Version: 1.0
Message-Id: <20250611-iio-zero-init-stack-with-instead-of-memset-v1-3-ebb2d0a24302@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1051; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=GVMTt5HV+6sU3Z7U1BlFtbwhTBkXJGR3/GKRAQsHmF8=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBoSgWXt88+FiMtb/ry4nJTdUhGkqkIB1L+peIvw
 BF0bdO4H0GJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaEoFlwAKCRDCzCAB/wGP
 wOiFCACM1Flijyrlz3Ef6dBSmJytrbKIx/vklETWdfDCxgwR2zDSTX9DMY/Av6gM1UoiYnRF3oF
 7aNaVMVunV9IUE2l696XaykH/jPIiR1wt6QjtWaDFVJgm8mdU7qE25z4A8m0SjqHGOePx0/mn4a
 VQidG4ET9kCPSiYMAX7fH+jc6NgevlNMrrYmCgPdpO4/Or9RGrSLyhebufoZoeKn/L+CoasNkBz
 Ss7ip82sa/hjy5YFdj15avGsrWFIqCVjLbKr5nP/k4kJFOUeDKQsJ37NFU85Z6iBC06G751GT3n
 MOCLdFgqv1rPFyxcOt4HLY50/hztFVr8zuzyZfjp6XcROfG5
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_154221_727600_CF9FEC44 
X-CRM114-Status: GOOD (  12.01  )
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
 drivers/iio/adc/dln2-adc.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/iio/adc/dln2-adc.c b/drivers/iio/adc/dln2-adc.c
index 9dbd2c87938c23d91fc93269763263fe73ed5206..5aea7644780f8b32ca6ed80b79afd07220d46a5c 100644
--- a/drivers/iio/adc/dln2-adc.c
+++ b/drivers/iio/adc/dln2-adc.c
@@ -467,7 +467,7 @@ static irqreturn_t dln2_adc_trigger_h(int irq, void *p)
 	struct {
 		__le16 values[DLN2_ADC_MAX_CHANNELS];
 		aligned_s64 timestamp_space;
-	} data;
+	} data = { };
 	struct dln2_adc_get_all_vals dev_data;
 	struct dln2_adc *dln2 = iio_priv(indio_dev);
 	const struct dln2_adc_demux_table *t;
@@ -479,8 +479,6 @@ static irqreturn_t dln2_adc_trigger_h(int irq, void *p)
 	if (ret < 0)
 		goto done;
 
-	memset(&data, 0, sizeof(data));
-
 	/* Demux operation */
 	for (i = 0; i < dln2->demux_count; ++i) {
 		t = &dln2->demux[i];

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
