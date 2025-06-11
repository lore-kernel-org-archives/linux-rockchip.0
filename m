Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D49E4C71141
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jun 2025 23:53:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BAS/GpBawx0hVMTRYSvPQlo8MNwcS3tLl3w6NS2CySA=; b=sQGUjcL8QdPFHR
	0r/+8DeI/fv4dkwroDy29d1ogiJRoseBus8lH9rIQf/Xo9Mbnuk8R8EVcFn5GELdkUCl2vNBtInzt
	W0Lpy/7cDycgEFDNo5iMKIGyRMKtt+sQkUKq6PVMMnGqabqEYcS8u922RRqI25bGS0HXsoPHGt2ww
	FZjFhFIvRdMy/EZcwoEJupSNk1rYaJDzpvwkP5P8uOesBN/nUgo/q0rHo8sMq9nljWSkWqqJ41VSL
	UPhqLNVjPLwqGSDxvsahZe6sYdElOoJcrGv9rhs5nUi29raB9+JJLJLxlVgbflaDR0vfHTtLAKpUd
	Zt54SFgy0Q2JitWfTe4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPVGH-0000000Bj5N-3Cn8;
	Wed, 11 Jun 2025 23:53:41 +0000
Received: from mail-oi1-x232.google.com ([2607:f8b0:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPU9r-0000000BVic-0Hbo
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Jun 2025 22:43:00 +0000
Received: by mail-oi1-x232.google.com with SMTP id 5614622812f47-4067106dd56so209102b6e.3
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Jun 2025 15:42:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749681778; x=1750286578; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7gNeyiiatnOg12pB5RbWcv5kPhqcJXqPYg/9AFCOdp0=;
        b=S3N01YpkCaoLjlMooEKzbhBwDCofDN1T749AmvusSbI0kMStYKZKhKe+Yt5YEq4IBj
         n3lOwJbF9V5cf5QHSxnDdBViyI10thRfUUv7f3qtf5ktW1JbP7ojur2DOeSVANVksea3
         mCE9dhi+27dQRRyD021FftaCfhg3rr6QMeroNQwyG7gV7f7BfsxJ7DUlxGKoilNlMF+k
         yJDgvf17akjZNwplZuv5eYQjwiXP9kqDxEu5yU0811sqeYv4HrUnLz+atf2dQhllzgQK
         X+gbCQQkWmIQntc1YSIKnGLGdoyDlUrxs+3hC61kQhLWWuhOev18YM5UEDFcW4wuWLDU
         Y69g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749681778; x=1750286578;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7gNeyiiatnOg12pB5RbWcv5kPhqcJXqPYg/9AFCOdp0=;
        b=VTZnMLA9pIp2XVu8STvEPJdse+W3qQXZXivFkb21zAaLZh6I99l8A0CetBy89PqWYF
         6Z63r2kXEFV488ZG0YITB8c0dWu6IYNXYRqoo2Egn0imP6rVNJwMcUE/bZw9D+f6AD7Y
         y0GIaK/h3fYcB1DIqxBFwak8jkwiGPkObsZeTENkxpAIcK0wjNv6lZUYzR6NMLGXQO/i
         5xffy3od9whZ7BSCqIEqKlBi1VQE3M+XRr4nlJDI0Iy6tBUlHEf/86e/XfRGm62KHdZE
         je90STeW0hdfDq8yE4sywPoPSETBESxsijfufS3zMtLwUhCoNnQgGP0zJ4RQb4+bgDcD
         bb4A==
X-Forwarded-Encrypted: i=1; AJvYcCWxbY5ukts7BmJ1q0o/l34yj6Bv4qtJ9leS6LjF3iXIp3uWWZ18vVSRsfgHBY7qsMZRlESm5PdiCedh6/D/Ew==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywhg4DVgasp/fqDCUpWhccCyfo3CcqKraLUNfjHg9QFqOuS5TsP
	lcyALuotbwiwshmrxIzIFQ/e3VRfC52fMzG0bswvho8ctzxaNhe0jnYxv4HcpEk6DHZMVXeS/8E
	DPA0N
X-Gm-Gg: ASbGncueCO5d7ptw6wGIsI21783Us7/UuJTA5UQgTkSl6EuLbfLu8aNZ+GQAJ3SuLxO
	DCKrulBH+t96zyl9GsXO4tzyCy4QSh9PdS1tbGse14iOIC0n+c9rHxqfODbBUjjd1QgJU5Y0SSh
	VBR+kTAyNRNnREKKP/qp9jE83//CZJsqMdXiOCgfcehNryemFYG2QsjIqHbr2K/UT5FwUcvjylc
	sgZhc8io0TR8HFwNTRWdcf88QOy78NXIXr5mCNQU9aKqKxXughYDzwfz5f+gBxrJfdW55Hd1Wd7
	OUKIdBdy8yWCoPJvga18/hulPSyN6UX1vPJ68TQVJBTtsJ+8fYdhvkHcx3+wR6ygPckz
X-Google-Smtp-Source: AGHT+IF8vLl1oZyRXlNmWN4+7O4lpLib8z/LRQvjmS2nfSR+pVwcY8I2vpYyrg4nGSIO9hYnaIgubg==
X-Received: by 2002:a05:6808:2395:b0:406:59f3:738d with SMTP id 5614622812f47-40a65f82d85mr1058633b6e.4.1749681778380;
        Wed, 11 Jun 2025 15:42:58 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:1d00:4753:719f:673f:547c])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40a682fbf05sm24684b6e.32.2025.06.11.15.42.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 15:42:57 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Wed, 11 Jun 2025 17:39:13 -0500
Subject: [PATCH 21/28] iio: light: veml6030: use = { } instead of memset()
MIME-Version: 1.0
Message-Id: <20250611-iio-zero-init-stack-with-instead-of-memset-v1-21-ebb2d0a24302@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=804; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=iremmMu1ndnd7A4Ps07xEYpBZI14kNGzGGkmeue7GjM=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBoSgYP8WsYQcwPg/QZttEVQAubGL55qot8Hvrta
 PXX1og+vq+JATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaEoGDwAKCRDCzCAB/wGP
 wMjAB/9UreFKkkIj5dONnjnnK8DcB0PP9NwVYQE0mLIdoU7NMfJo1xDYNFB//ohFjvbKA3cP7xn
 TZULWqPy8UzorusrfpYLqSjNuqe/iSnOJUyt0URfEW+PFO2iBTYLbevM1E3jZs4OP3y1H9P0LkP
 lzFF9/gmEjEOZ8TX2HDvoHjSthCnmkIbB0rZgSAWzV2CtwsWAbz3cJmYxU45vdgfhXTi5o81ife
 +AQ7EmHHgG7cy49HOGnvublhmnWgpvoPulkVMW5/n7FkpryUfUCAzJ65gmUs/8B74qZPpycDA+E
 4e5skikbdS1v1z198Lxa16R09kc1jTul4iUxmi1lPrhTkD4C
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_154259_111458_EAF6192B 
X-CRM114-Status: GOOD (  10.74  )
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
 drivers/iio/light/veml6030.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/iio/light/veml6030.c b/drivers/iio/light/veml6030.c
index 473a9c3e32a3a53f373595a5113b47e795f5366c..0945f146bedbda79511e704158122acaac5e60c1 100644
--- a/drivers/iio/light/veml6030.c
+++ b/drivers/iio/light/veml6030.c
@@ -892,9 +892,7 @@ static irqreturn_t veml6030_trigger_handler(int irq, void *p)
 	struct {
 		u16 chans[2];
 		aligned_s64 timestamp;
-	} scan;
-
-	memset(&scan, 0, sizeof(scan));
+	} scan = { };
 
 	iio_for_each_active_channel(iio, ch) {
 		ret = regmap_read(data->regmap, VEML6030_REG_DATA(ch),

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
