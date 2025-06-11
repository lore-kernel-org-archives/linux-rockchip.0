Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA2ECC71136
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jun 2025 23:24:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NyEvlbbKKzaLbFJFgscdqvDkguhnuVIM1i0VW2vSIw8=; b=gwiXoSzXkN23yA
	2ToMyUz3IW1xQ/2AK6C1N1lPAw734sfeinSjufCD9jF98nelwpBKepOar3Kh34k2V8/jw7jfEKgxd
	CLNNav/bUL4SGkhb40yM7aNb8aGMHrKKODNMJ7Lx7yvK2dTXOehrmz8VymlK/Mf5GL7rnTEAj1/Oc
	0X0Gpob8FP0Z8p1rtO0hBUpF/Y+XiUjWcP1nK3g3yTeQxi03daKG2ut6t2tfyNgp61jp09WRdTj4v
	fKTelKidaQvM5p93DlUW+wD6xY/lvY/Hp6pJjW+jKJU+0sdyz9y1+NEkjj+v77sSaegTitqoA9PtV
	9FKJlO+kMISWk7PVSGyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPUo7-0000000BfMe-0DYI;
	Wed, 11 Jun 2025 23:24:35 +0000
Received: from mail-ot1-x32f.google.com ([2607:f8b0:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPU9I-0000000BVMM-3v5H
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Jun 2025 22:42:26 +0000
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-7304efb4b3bso237572a34.0
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Jun 2025 15:42:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749681744; x=1750286544; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s2fS10WGm/NgAzKDhSHbfRTkjHM/qI8657OmZeiqRck=;
        b=eMCyUri3PK6NAqJ09c+xt9QBcVdZPY6J1H8G3B3ry/iDcEg41WOdKZm5k2zxTb7i/e
         MxVXiYMXB8bJplRHtD6iQ0KncDoH/bjde3EN0NU6LaOXdlg0MPz+k97gSvSAa+AkN7TU
         L5gwpxRaRx3HC1yIsVnFgwrbcaJC/fpTQPEA6+tVQYo9k0GfTsilJ90jTsQRkpPRikOV
         BulmeOW2mW/pG1wdwUKJtsxFXEbcQtg6VNIbWyOHEP+4VQhO47EUeuqs2f23aW8JXLiv
         D5octRGCMWJEUABNjHJFqTqG0+uOJh+VDbFCF4KHtOjoH4JNk5N/LtsJG3DsS8Ak/5yb
         gKnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749681744; x=1750286544;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s2fS10WGm/NgAzKDhSHbfRTkjHM/qI8657OmZeiqRck=;
        b=Osu0sB2gEXI8eCR8KRbeNncDGUWw51vvqSdxamqAP6KN3yUEcFtaoRqdT/MqqJsXYZ
         Sm3Q6e/+ghqpBLMBg02E5V5La7mPGLrme9jzUk5HUwmIvqyrh+bvLwbXXVVuMgvxLHcK
         OelAOY/5/KPP1Wksn+6lJb9QHXt3sD9kts5vXLQJfWlCtfQ9tjIJc8WjTGvTh5MLB2rn
         pFS/8EfDx5VZURKrND+Xze2A7hKK0b8qLvTkoR1iYVKe827rVeUJFepykqGefLnN8I46
         BKt6WGOJKkanIm1AE8P/c2CTkuR11iGhvXQmDIwvYoefiJLgzAfPx3PzqqC7R+ckUWI4
         XsYA==
X-Forwarded-Encrypted: i=1; AJvYcCU6KJtKtXVZYjqM5lTMbrDBVYI2mg8shUTqOT6ghSMXwIkEjx4pPjIsAar30t+0dJJGsVy1m6COICfS/EffKw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx5h+waqHC71WWlc7VUx1YW/+19lv8Ou6Hmz7zbitrDLlHSjUvD
	gkRTmQmJdIqbz/LFHM7n5ilHai3gZXefj57aT/TnWr+d/G1shBx5nzAcxUseldtUmkg=
X-Gm-Gg: ASbGnctAipdFcM9iLbPAUDTZaBwbupNoLV5kif5EAsu/+cL6wmZRt1B0bNlkk5+YRXR
	jxQmaVuBbi0Vf6AOBx9k9NuDRwuwewql40fFRLsVR+x2ARTXBy6c9Oai4CHH36Qc9mDTX9YRnVH
	XjYarhaoDaeohOZfboLWc7wy/9scIUXHkbrqVOgXuExDk+7+3A5cUCW+flyGqA4yvmuqyB82QJi
	GKFoyb1gYk4IF+upPSF5/ZXqBaZi/6i/6bw3XX3mCTsRimH79kqsrzAqX7SisqNvESKTpGr053n
	3XX86MnVSnZwyqoIDE/6NW/C2WeCw74QU9W0ecOB8tBeV8uWFyLP3YhuOiUtugkEa2o3
X-Google-Smtp-Source: AGHT+IFjlERueVRup/Jao17hhnugkq7j+GiRg2h8bJth2v9G/6rcI2wGbyBF567ki5XFEPby/lqVcQ==
X-Received: by 2002:a05:6808:1782:b0:40a:54f8:2cac with SMTP id 5614622812f47-40a5d171b8fmr3897834b6e.37.1749681743953;
        Wed, 11 Jun 2025 15:42:23 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:1d00:4753:719f:673f:547c])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40a682fbf05sm24684b6e.32.2025.06.11.15.42.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 15:42:22 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Wed, 11 Jun 2025 17:38:56 -0500
Subject: [PATCH 04/28] iio: adc: mt6360-adc: use = { } instead of memset()
MIME-Version: 1.0
Message-Id: <20250611-iio-zero-init-stack-with-instead-of-memset-v1-4-ebb2d0a24302@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=865; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=16CSBjTW3ADRr7MOYui8jO+Mhn4wtu5HebYIEym4zkw=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBoSgWdyp6TsgG9grzVt7c+wkMZGk5rY+tH83VPR
 hAY0b/nO7aJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaEoFnQAKCRDCzCAB/wGP
 wAQzB/9cinMYWAun9atmE8CTlRWjiF0B5MbkKSL06PlW5jHOfBbJnzoPpdU6t7b9ozExAUWagaM
 8JTlmB5ashMocc15UKPD4atXkaW+KR5WfIj1opieHDVgHgx5tmd+cF37qZ/nJC5bxm35Lt9TO9w
 SohEdmnhmSCLTGxX7ALcqjT+7vJ4mo1HUfReJvrXjzj1tz2LJzp5fNpa87BbHN8CzI4Xr7C2l86
 5jlpdI0UeHhGJxVurKzbrYb5jJijAbCw9gASQDR1HQ1jLcq7YXokcMk1qBSn3TLhRCg/3PlePTR
 TZtSE5eAx5o9+zFV8pz3++L/hWjP87mrPrk4KNrXiw1r2Lln
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_154224_988488_88194D18 
X-CRM114-Status: GOOD (  11.46  )
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
 drivers/iio/adc/mt6360-adc.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/iio/adc/mt6360-adc.c b/drivers/iio/adc/mt6360-adc.c
index f8e98b6fa7e923c6b73bedf9ca1c466e7a9c3c47..69b3569c90e5b665e1d2c59621df00d6142fbe9c 100644
--- a/drivers/iio/adc/mt6360-adc.c
+++ b/drivers/iio/adc/mt6360-adc.c
@@ -264,10 +264,9 @@ static irqreturn_t mt6360_adc_trigger_handler(int irq, void *p)
 	struct {
 		u16 values[MT6360_CHAN_MAX];
 		aligned_s64 timestamp;
-	} data;
+	} data = { };
 	int i = 0, bit, val, ret;
 
-	memset(&data, 0, sizeof(data));
 	iio_for_each_active_channel(indio_dev, bit) {
 		ret = mt6360_adc_read_channel(mad, bit, &val);
 		if (ret < 0) {

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
