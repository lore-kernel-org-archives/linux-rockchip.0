Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BC47C71148
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jun 2025 23:26:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ah9kNFzE/AapWfcfUaUQx8djoHLgNuWxcRppy/RzRU0=; b=cmECEVYbwJ54ss
	DNXVLkePhchmx9wKTY33CbRlhj8L+c7AS0mriWc+y4htJH/3Q7ylD8T+f0pfHyyl6tC8WlN52aqHp
	JjzJfLOn8ncv/QOxGa4uXvx2P76s23U6HdFxhGzszuU2vTT5B7wiz4tWMlrIifiHRDy8OOio2IZ7r
	LmwoT2FrgREq/o//rkMS8SFoR04zM3CQfSACuKsozqylxfZlfet/2NzSqxd2tUOz8NyAPiYE/U+Rl
	L75DC4ECziXjJWh8Roc47Xzr74eG8AsBiETOPXZJ5eXFBgG75XJete64BSKbY4XntSHXIcm+s/T/l
	LUqJnU2Sv51DxUOugKoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPUqD-0000000BfcW-0GAr;
	Wed, 11 Jun 2025 23:26:45 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPU9K-0000000BVNH-3wsF
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Jun 2025 22:42:28 +0000
Received: by mail-oi1-x22e.google.com with SMTP id 5614622812f47-408fa4be483so198626b6e.0
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Jun 2025 15:42:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749681746; x=1750286546; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3nA/Lk9tPGfFaI22ceEDpAoxrxXFiJ/9IsqCSjqV/LI=;
        b=xxwipwCMbZPCDRKO3KmNrY5xQOyNUifOPNX++HjVV+lcNr3hL2KFNmdyJO7HrzACj2
         XrUtBGRZLrfYGl8D4kyaYY6z9g+MFYhE+s2/ZgG5jfaBuA1K89fUcdl8OPOt38u+GbPd
         OCkxDVChol19o2nfBweizxtd4heljBXqnCl1uw/pS0mDIVRQiQNvoLuUK7FW9neiPvOt
         uFrp56giZtR0/moJk8vQTsvCeSTdVILKzFP2oZ2AlufSPpAoM4rY/1Xx/1WHLWj9TEyQ
         bj8oOd2qZ0U796lYYUmRDkcL1cyekyf6c0htBwMQXgSxGxaaFZq9ZEa/otr6tAeDiofq
         AQow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749681746; x=1750286546;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3nA/Lk9tPGfFaI22ceEDpAoxrxXFiJ/9IsqCSjqV/LI=;
        b=ZSywpfL2XUGNQjAdN1zZxj3JPG6LQqSdTCf7dDSfqKeaiw4OLjlU76MO8fJs/VdS+d
         xrccRZp591qcpTgLY7ejfK/j0NYrDh+4RSXBQR+AtPIKVRPI2Umwwpaq8ZTeYnemUfi5
         VQ29RpFZHlrhgDUO7wLAgoCa5gwoHEfGiqivfHoJKutr27Rj8kmJ8KBWdUxJQQ/lMz5J
         6xnuUhgg/VHSLZomm9w8na2hHUsPyDl4OAk0YNx9KqWRLpwykR2nhLPzilrP9Ej7EVIx
         kOK9cw3+/IELoPRbBcikPiA7w29AIaxsi0utzdWOxBsyX0ydt3O+KjlmWNYLqbnCgpdG
         O3sg==
X-Forwarded-Encrypted: i=1; AJvYcCUY90MkSK2944w2vZto2gHpj82lG2ha8cABBGXM/Dt6i5N9OtF2MYhec0qwW56YIxwTKxoQYzeoEpuipljkVg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyallOoVUR76yZTuVOQPO9aM/lQWToCDU6BXb8PeV9foEGQsLEP
	L0Kq9yvi5TOqGHvL8Pt8OaG55LJmqH+7pKeeAbmCwKnZogjheqHTqr8h23+ifg0LixQ=
X-Gm-Gg: ASbGncs6tlSm3zh1KrviQf1bdmAgWXrdRGVpxO3pMvhkjs4YJf9tNNglSZ9+I4JxDoA
	hivDxX4fH+UWodlI/eykf6AaZkEty80QHfeuvOrOCAphVE5yi5Xnrs0cmxpQXx62BCTcbHNMxl1
	54HxuRA+IdvWGjZuAV5zUJlO94YMScR8zDhYCKpUObUSedlH3qqD3ITd6Mde43dbAxHewJX/SXd
	FAbAj3rDREHeZ6eVpwNl3dw3KzK0KM7vxVvDWvSMu/mDmjUXCpkNOX8lAaz/ZD8SjoQ/NsJ5i1B
	S2n2WI7AusbByvO5yhxwNY4ODsA0A9Vs8Q+fu15b5r7h7zKlYJ4yrPH6NGBG+q7puW6b
X-Google-Smtp-Source: AGHT+IG0W8cN0RBqzvza6bDhDRqg08z0+EUeK0uOjK7EVtYqqJLeVsRO4zcpkxGJblg1Kp+3B4rIBQ==
X-Received: by 2002:a05:6808:2186:b0:403:3c95:3684 with SMTP id 5614622812f47-40a66a419c9mr505006b6e.1.1749681746196;
        Wed, 11 Jun 2025 15:42:26 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:1d00:4753:719f:673f:547c])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40a682fbf05sm24684b6e.32.2025.06.11.15.42.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 15:42:25 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Wed, 11 Jun 2025 17:38:57 -0500
Subject: [PATCH 05/28] iio: adc: rockchip_saradc: use = { } instead of
 memset()
MIME-Version: 1.0
Message-Id: <20250611-iio-zero-init-stack-with-instead-of-memset-v1-5-ebb2d0a24302@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=859; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=5Dt8chRh9Q9zFfR+o0HlVC5RLtjfsBgIEofeyEgWWKs=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBoSgWkPxj+ITtdzYFOhYRqZrV7rzI2N1a8bxnjv
 BHEMh8oTqiJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaEoFpAAKCRDCzCAB/wGP
 wPI1B/9lozodgbkP5rQVG6ALBHKR3d7hz5SMy/uywa3QBiiLmgj5QX1cAyGMFHI7hO3uO3aQSl/
 mDQT4eItTwkjzu/N/k2p6HIl0UyXa2lwFwPguAh6Fco94W+bqLyMiXXgd04TmGW4jedL9LbPCgY
 07pa9FRxuw8J6Kg4xZzUitsXeewyNtdFUuzGLvmvEY9oqh7A/1iuMLVZyNULwWAqpBbAvI4BDWY
 mrWqXne1TqcmnTZJBaLxnti67Z2+Kmlj8oL+TyU8uXKtKa9kYw2cN9r+8cjaEZt5I4qaauKXSq4
 I+XFZqyqUd67pwca8QgxuwJVoQn6LMRTdn54nn8A0dcTI+q1
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_154226_975558_B36B613E 
X-CRM114-Status: GOOD (  11.25  )
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
 drivers/iio/adc/rockchip_saradc.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
index 325e3747a1345c84cddcfe9a455da6ccf655447b..bd62daea0a3e5b879a8a970d107e3342fda7b8c0 100644
--- a/drivers/iio/adc/rockchip_saradc.c
+++ b/drivers/iio/adc/rockchip_saradc.c
@@ -404,12 +404,10 @@ static irqreturn_t rockchip_saradc_trigger_handler(int irq, void *p)
 	struct {
 		u16 values[SARADC_MAX_CHANNELS];
 		aligned_s64 timestamp;
-	} data;
+	} data = { };
 	int ret;
 	int i, j = 0;
 
-	memset(&data, 0, sizeof(data));
-
 	mutex_lock(&info->lock);
 
 	iio_for_each_active_channel(i_dev, i) {

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
