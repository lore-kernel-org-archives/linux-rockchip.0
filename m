Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75201C71135
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jun 2025 00:02:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5x1wF1MMzb+OuqdLHEQAnYYJc8rMDjjBhlw6QGGkrU0=; b=qZebZGjrQbBNNP
	CiFKYSGtr31F8pkc5u7uHzYlLgdbnZudZrXyAq/eO3MrP0RbC6+kDHYp0buuvKB7jQG+HxuEz52Nq
	Whro1ATF5CBFIrKkU2/Dv6w5O7p+oxATrVyyA/tL11rh1leRVrUZfMZx+ayWt3UanwJG2QvFdfaYE
	aVz+BgBwyC/pPVM9uxNtZWfczIx5/jt3ALzigMb4Y9OBSW/7tR2uGjV5o8RE9sKTAEEGvPDVwk+pJ
	N1j5ItH5eb//yMkVv1BN+85NlniJs4Yt7rNDC9LDpAzol7VgrAEo2STQ4qW+wyAshiND1fx7oDKM/
	EbGdZueyVL/o8+sNgTTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPVOi-0000000Bjzd-0Bzz;
	Thu, 12 Jun 2025 00:02:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPU9y-0000000BVpG-1fft
	for linux-rockchip@bombadil.infradead.org;
	Wed, 11 Jun 2025 22:43:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=0/fyvlcVM1ITpV4doxg6wZond1KIaJ0G2TrYPww/yVY=; b=Bh/1pJq2LqiABd2mSqDhE58SDP
	dFzmJy2+OoLxT79Cm8hT3dQv8MRT1uG5YipSRK6GaOz04jeGp0A9nlB3rCE/nLkTDH0i9Qxsr6WAB
	BRgiAjpEapPvaCRuZ6EHtux+5mh95Dxpfo8o2sq8Eu6rfJv/jk/zVrXQ7OmdSp3yA7M0bDSfIftED
	Uq1C+yZ96OV2l6/23zOkRpgmmwd/PGeOo0srb8vP+FJb7awyhgX8FVmHtR6M+7lrnEbG8Y0aIV9Uj
	AMCrxhg4ax7Usitm3w6ZhpnCSVgAbvOXFOo+IR2vpypXLPttiwG6S5sUiEFEVIl7wPjbvYJc03Bth
	jI8b7pbA==;
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPU9v-00000002X2q-1YPx
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Jun 2025 22:43:05 +0000
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-407aac76036so195687b6e.1
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Jun 2025 15:43:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749681780; x=1750286580; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0/fyvlcVM1ITpV4doxg6wZond1KIaJ0G2TrYPww/yVY=;
        b=PZGvfwfdp9MMQb254Zc8I32qEx/UWDGZq8OaHS+XOn0gzfgwq6vTJQz3v7gE7VwSXh
         8vuYGKh1zn2WtiELH5HsX7Nqie9hM9voJxFk374IQwvnuPQz7CXZj/0FBeYOnPexkQVc
         3eMZ0HRGGbORT+4C7TJ/P52LVk0Gi2ADmhJKJPBKx2XJF694WaHknfXPblR4i0X3v3hZ
         CHsYYHfHPKccqF3bfZttHyViiOhbUQmSzdhxBp/BCsQazRzWi1/5bbpqXarOFuCyQGQ9
         2t54VzF+ht8la9ieAVfWmBBrntIjw3DHzvzMT5RVqCxDecKg0QzBsLolxKqcwh283Y9q
         eNNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749681780; x=1750286580;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0/fyvlcVM1ITpV4doxg6wZond1KIaJ0G2TrYPww/yVY=;
        b=BH5dwarAQ8cj6skoggmN+kxKWkV68HJCIdztZG13VoiSyIwHA1T5KzgCspD3utNQgn
         Xa7q4OYtYB6HhpPylbEibG4i5wY9rMjsI2bOGf9aBoFbMV/qOQH1X8puGvIwIHvgDIjo
         yJsxydeYVN6hzJmXHu8L8BCs+bn9A6fC96jAIzOzsIDSy/flIFZ+PPWhHFx2X85MeDiX
         NRg63eK7O+YUwMmqgSKYnTnnDUF7pb74gAkdwG2Bk1E/1uVUC0BRDPIGqt8/lFPmRDOf
         zTVGXcsj+DIgUX4PN+2S5lWptI/XbAZb5hexMyGFGQpZmbktFJ2whOCyXgmJL4EdcA+o
         PCVA==
X-Forwarded-Encrypted: i=1; AJvYcCUT1kdMPy9k557n6rLaL4+9FvMP3e19EMWDOxcNuiz2N01K3fV2lBWtKS9FCsdr+/ZlcQREnRkPUHLWpv3Gvw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4xIxzl+CZsijpo16zqYX3BKQsz/GGrMX+EkGZ0I/2wWqKogGA
	EYR+xW4uDJ2KWoK2j+hrjdEYBRT7Rphknup8MKZ8iE7QSRJX02Z1CfaGoOstubhA57w=
X-Gm-Gg: ASbGncs2bRze6sCvvzPCZJwQ4+MKtAJ/KNp6C6KySMcv8V1RvdJXCKO+MN3kXv+CklB
	Q+NLvi2EWhNxR8IbRYn1hSOhwkZB3wRGhgcfA6OCg5Gwc3UZ1n1Oe3pgZEeuGrv9wPyU0RNQKZy
	66hovGWMB+Hv8rk6fvN8AUBaKMKu5xG2sj05VY0Am/tsMUCkk+s80hsf4254bQ1NPkGoAMgxVO0
	n/qltei+DYljXPoGu3HhXWe0JX/XCmcekmAVpXnxaRpYy/V2aHsiDKj6PjiIbimDOe5u1QXVq4B
	N47kfQWMAxeIixs9agsFmBezyTQIZA9qn9R+tV/kEcONQpv/W9Wc2JyTbwPIQHj9V/P9
X-Google-Smtp-Source: AGHT+IG6Fb6ruVGlbHN4wGtZayIBTNPpt4aY0XQOYZxYfr6Numkaii3iELBWcumofDFYzCahxlkCgA==
X-Received: by 2002:a05:6808:199b:b0:404:f14a:1345 with SMTP id 5614622812f47-40a66b0ca19mr438688b6e.20.1749681780657;
        Wed, 11 Jun 2025 15:43:00 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:1d00:4753:719f:673f:547c])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40a682fbf05sm24684b6e.32.2025.06.11.15.42.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 15:43:00 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Wed, 11 Jun 2025 17:39:15 -0500
Subject: [PATCH 23/28] iio: pressure: bmp280: use = { } instead of memset()
MIME-Version: 1.0
Message-Id: <20250611-iio-zero-init-stack-with-instead-of-memset-v1-23-ebb2d0a24302@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=940; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=jR04YIdN9O2ZMn6ou5NomkQoDwMcMUyRaU/L4iFhuwQ=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBoSgYdm0BKld1aGwa/n8Ufra0S7lpef2bRmG8sm
 XrxLOEC2AGJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaEoGHQAKCRDCzCAB/wGP
 wHmNB/9z/ZKAzqrCy6jCj9Nu3CwEx8km3zZWktgGGSTTwtSfGw/x5LdCO3sFLygxQWItan+1Ich
 yO8fN+fnbDRpUq82KyKlfgXYeZ2fx7BLOWimk7amjtwwGL7GwFtoDG6M4WAYuoSlfZDY4Z559WI
 avlUzdpOOZ0uGVROXj1yJsI9B8t1XZCb7Vcuz9L61yMgAPtHcR5MOGVBvenewxkzOS4/+HGapl9
 U67xnC/8UibkMOEViHKdq5RBSx4DBeDzP4zUfHQD1dbiPQO+Rqo8SfdFfQMLRFMpM2NE1QQXecV
 eoiNvbO76iaTybSyC3JuboXfNbd7tzFGUfKYhLRg4vDgwf0R
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_234303_558294_E3983381 
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
 drivers/iio/pressure/bmp280-core.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/iio/pressure/bmp280-core.c b/drivers/iio/pressure/bmp280-core.c
index f37f20776c89173b0b2a8e28be0ef9aa30ceea53..74505c9ec1a08cf3ffdb55bf578d40ede3cc5d00 100644
--- a/drivers/iio/pressure/bmp280-core.c
+++ b/drivers/iio/pressure/bmp280-core.c
@@ -1234,12 +1234,9 @@ static irqreturn_t bme280_trigger_handler(int irq, void *p)
 		s32 comp_temp;
 		u32 comp_humidity;
 		aligned_s64 timestamp;
-	} buffer;
+	} buffer = { }; /* Don't leak uninitialized stack to userspace. */
 	int ret;
 
-	/* Don't leak uninitialized stack to userspace. */
-	memset(&buffer, 0, sizeof(buffer));
-
 	guard(mutex)(&data->lock);
 
 	/* Burst read data registers */

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
