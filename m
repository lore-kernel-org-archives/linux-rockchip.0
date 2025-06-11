Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6BE5C71136
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jun 2025 23:53:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JeG6YVbkLpQJin57re8hZu4P/kUa7qgolziLQY7Z/FU=; b=spKVmNDaHhI5Dh
	UlEphuPwcrv8zWuMLu7niv0NuH/v6G9OeOdEDzxZyYpNvHHgjXlN0XYsHvMwsV4gLSBYwin8FIf6F
	+WoZmeN96FzAkasOaeKeSmW+IpCP9+e2VpzNS8a+RvfrD2uH3QqpNn4WZcgYRGiM8zrnX/aEnnVy9
	ZczdMueBbBkOSrW87EauWR1VxF8r6SmX7DPJvYepJeSuudMN94/8Km7jj/tiMjUr6hSv2gJNuWBg7
	65fM4q8XhXb7M201DAhhqADTowJ1CqY6FqVJW/T0HZLUiJHyptn6MSX6IqkE1IrTvji9Qb7SXgvtr
	q6UHbCiz7Ee1/EneYmDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPVGI-0000000Bj6B-34ZC;
	Wed, 11 Jun 2025 23:53:42 +0000
Received: from mail-oi1-x232.google.com ([2607:f8b0:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPU9s-0000000BVjp-0qAR
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Jun 2025 22:43:01 +0000
Received: by mail-oi1-x232.google.com with SMTP id 5614622812f47-4080548891fso111182b6e.3
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Jun 2025 15:43:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749681779; x=1750286579; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9PHi9Zj9Ui/Tog0J9ameekJ7BZTN9ebJ9txjTOhyyok=;
        b=qpQkDkQ2nGwVeoX2driqS1Y1RPdPjdT3QYissF9FisDgmDrxj+WCZaO9NbKtcEbd9n
         66NNBTa5xp1DK0XwoelTASV/9nPF2Jpg7MXfYvj9LKyJYCqXf+CrFDRGbMBQKfitirhr
         6PQMAH5A+Vst1jRebInYvwP3zEknDZGds6OpzM6iC7sCjmliLGHUdmoVOxhntblPfXMM
         pP0VjPFerKD1OXAq93A0gWbwGEnpMfvr59Pxqmk2slOoi7QQgbkYU/lXYWtO/OqOKXUc
         T28k5x5JdLU9ITUOm9Dvm4/tu64SmJE5xdilAHyhm4876Rh0Wu4pv3A0V8cuyUxUxFn5
         y8Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749681779; x=1750286579;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9PHi9Zj9Ui/Tog0J9ameekJ7BZTN9ebJ9txjTOhyyok=;
        b=s67UYKn767jbOn28FNaR+SDQHGnmti9wK1oYRlBtj/bZRooDkcpM2tGY2mpkZy2+jP
         1FTi+abl8pgi2pGuxAX12ILMN3wsazT+qdzx6FzPzSQ7aFdqpcQ7vFBncs5cCXBycHU1
         jvkr8PD0wYfH2uXcZb0NedXJlFBWjGdy7sDxsh1orf4pFORP9SMDZ7axCb08SLhIlM6I
         M9hGosCJX3uUFG2t8flh7SUjNSgMCthuwKCEh/G1yjJJ7foyI5p2ycYM17sQvct9wFs3
         BYRkn4Dk4U5igsmbdoWC3VtiAKPd5U/i+S9uPNaylDf0NUSn3WKjVpywaQGdW/XrTVM9
         WXzg==
X-Forwarded-Encrypted: i=1; AJvYcCWOnzYduW/nL56EgnQBTeedpT8/KyrlZwzaNMMvC9DiRttQv1oACBPLvuxujVfZmvctM34CmTC8gDNfJSpNrA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzrptTD4vCGnNj9KtZ1D2OWuYD88A7uSwmDA5gw0U7aS28w0d0M
	zPYAWXtkmdSmg9twmULR3Jl1W1jX2rfrf0e+dZWUKOfL1JWhSrupdVE/i60JWS+FUxw=
X-Gm-Gg: ASbGncvg60e4eRLsKhh50XKcDNbI/FRGt27pm6iBoXsKnRrDfQ0HEu551YQ5cW77eYP
	3SBN9SiVYFUN6zuhTHekEyt7IAvh6fLKgdnOzCt6Ri9t6SRDFS3O+Rh0bIx8Lzi/NeJcYFNvtQL
	3F+JdBa7TeVLbr7CxJWLb/SkyXE8O9puTyfrXdPFT9oQZPM+4VG33vj41W2o0rUDAB2hcNtj+xk
	rzH42cdmGAPjnjIrpIu5K1tQulxPjgte+20QNpIlvtSdgRdqDLXW9pImIH5PRYCa6v+0M9864ra
	Z+nWEOFtcEvRdTJFgDGU6uscBJQCCZN5DcJuQ22KcZ2OJ2C6iSofTVaxvPWavUx1KTp+
X-Google-Smtp-Source: AGHT+IHKzyRz68sxYKViKX8XxVgxmO81ZgT2dv14jVru2VvIasYx7regY5fkOkngJzDhuEAN/YPCrQ==
X-Received: by 2002:a05:6808:23c3:b0:408:e68d:975a with SMTP id 5614622812f47-40a5d16d77fmr3602477b6e.39.1749681779529;
        Wed, 11 Jun 2025 15:42:59 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:1d00:4753:719f:673f:547c])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40a682fbf05sm24684b6e.32.2025.06.11.15.42.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 15:42:59 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Wed, 11 Jun 2025 17:39:14 -0500
Subject: [PATCH 22/28] iio: magnetometer: af8133j: use = { } instead of
 memset()
MIME-Version: 1.0
Message-Id: <20250611-iio-zero-init-stack-with-instead-of-memset-v1-22-ebb2d0a24302@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=844; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=xfo+bLocNZ+ozgq43j0BzWHfY2nDbmMn7PxtgVZEL70=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBoSgYWPB3M7jW6HKeyERo49D2SpKAeHri46eI38
 JoL31MTT0qJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaEoGFgAKCRDCzCAB/wGP
 wPxgB/4grQvzDDyOnubC62RgBYgnw4jtW3rdAB2FG1+1ydj+0Kc43YVQztNQF+icooBBlvW5j6N
 FW4PY0Jeb0BTh9RBuXKyG7mMFgvtMx2dCggSrx6hB5UNgMYZODfVp8yw6VONYvXU+buhtXgt4D5
 qL/YfV2XT8KRBLCxk4K8o1NYevnW1tnYG/R126JosvMtbVgCNw/Dbk+m7jsH2CsB8vsr8KKQ478
 5DeyGyUBFsSiEiiP5NsqpdPDx4vcHq+LZBr9Fw0hANxaUoTgY5IhgMrcEJHSqPr5+gW9TzxR2uX
 6JcYo6fVBZyMpzSdbUsTuPWPLE/Fi7MLc5KlUVIbd9h5rmxW
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_154300_252100_398B7643 
X-CRM114-Status: GOOD (  10.70  )
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
 drivers/iio/magnetometer/af8133j.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/iio/magnetometer/af8133j.c b/drivers/iio/magnetometer/af8133j.c
index 192ba2da94e299d9a223a33bf15f9d6e6c29f6c7..b1768c3aa8f33c6e95e770a27f55cb357e6ac6f4 100644
--- a/drivers/iio/magnetometer/af8133j.c
+++ b/drivers/iio/magnetometer/af8133j.c
@@ -361,11 +361,9 @@ static irqreturn_t af8133j_trigger_handler(int irq, void *p)
 	struct {
 		__le16 values[3];
 		aligned_s64 timestamp;
-	} sample;
+	} sample = { };
 	int ret;
 
-	memset(&sample, 0, sizeof(sample));
-
 	ret = af8133j_read_measurement(data, sample.values);
 	if (ret)
 		goto out_done;

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
