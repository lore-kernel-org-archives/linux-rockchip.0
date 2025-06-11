Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE133C71135
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jun 2025 23:45:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1lxJc9uUwrgb6XdcKkE8E6J7SnoERCGXqgOnBg2AMjg=; b=GrCT50zz3y9E+u
	XTteWxw9z15vpXIysHCkOhprb9tlV2ZqcTSph4uUbr6O6YvSR3dnhbd1+VxkQz5CsXSQs1KTgnnNT
	AYv5KntlTxtFJnq3T504ZXbtlJWtBvmeFu0SAByH1+OkmsD4KXUscAqgaF/C5UHP/5qhdhrL60c2F
	jM4Xjg7zlm3UhBtIHN60Sy2tktWkJj0OZqqC1BBpBYCH/GiHLkfOtozwnFX19sDi4YU+cvRA39bF5
	3R21zureftIsJf5a7AxS8j8+2cHryXAd8kxwQaDKE7Gq5oAynYHZYRAbaUUJWbIh5CBqyY6K0nFCW
	IcVYUm7iuhZRLHTug0IA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPV7r-0000000Bhdx-2tZe;
	Wed, 11 Jun 2025 23:44:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPU9m-0000000BVeL-1yBQ
	for linux-rockchip@bombadil.infradead.org;
	Wed, 11 Jun 2025 22:42:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=LiF2DulFgRfRNMjiDxreAgm5rKmLlr34bZCxk6U0CK4=; b=U6CkRcBSJc4FxmGTJOTQDwv245
	auS7jtrNPVcgVsoaxIQcJLIpSsSLeKMrJmFNjIAUCtrAsTrQAZa9XoJE0Yhbh+n7Pl1jk8c/mKYrF
	ON7FJ/Ocg2GfV8EFlRVJwNGzFWncvHiOVUL2/TMZAUb8SOmtkHQB0zD7v3ECwynL7NNO7tCwTXbLj
	58vGJZYLNiVz1Mi2RiUgqWW3y2FuSte5+f33QanSfMo4emQSdciVrZflhn5wnM7oc9jRJ3xkjQBG6
	5ZlVEXoXln5xk3oMZSQO4Vi5EtOD+mtfs3Zp+4N83qr3Ss6A6KaMwqzQe/LquIES/Q6Vh2judRslh
	GVLgKM/w==;
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPU9i-00000002X1a-2Nlx
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Jun 2025 22:42:53 +0000
Received: by mail-ot1-x32b.google.com with SMTP id 46e09a7af769-72ecb4d9a10so322626a34.3
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Jun 2025 15:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749681766; x=1750286566; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LiF2DulFgRfRNMjiDxreAgm5rKmLlr34bZCxk6U0CK4=;
        b=BB/oli3idsNzvPUmElI7XYXzyQd4PL4ptTm+w0bTMkiSpuHvLBNJrUKozFhuqHK4Jb
         QsoFJHsnafmxor5PJbZqaVpNLYfVa2ehOwbo5i5+P2/h6q4kfN6NVRyL3wZiB0xuIxu3
         H3e/KpHvOmO7V0iBwbkvEMbUrADp/0ahn8ojSKJOl5oZuwxFxOTFuB87XWS1yNgbsumT
         TM83AJg7/t/lOfhbqdc86Hl9IkuQXzZHCS+Pvl6dEoFLfbrf0mD7ArP4Wfz8kY7Vbr+g
         ekH0ojtWgapnmdw1uA1SCc62LMyQnrd35q+OQlxwtcD+KslWEsnAFt16VGZruf4TF+Ac
         ErZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749681766; x=1750286566;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LiF2DulFgRfRNMjiDxreAgm5rKmLlr34bZCxk6U0CK4=;
        b=qsETCCGKzARThVKS+nFIqrV/EAlruNYVfabi2nnWpcKvc/PhCTRqt33ivcTig1uSzy
         vn6CebfHZ7C41zkNbu0d89qc2k9gG00XZnmbZ1PN9E7QZ7YvR9dosKa9eUlGxGcXMEPk
         mAM4xERqj0aPyehr9vPEfpZHUZiZQW6F/28NI5400WCOCKxIyH8V6GMhFWzoYzVmNN8S
         clji2b64PFIT30Hde828G2J02rCjPvZRQ4Ox3gRy1dQW77BhvDIr2xLbQPr5QoJ1wqcx
         5cuiwRa8oPGAXFwFhsF9nwSF6i1Ku0PI6AuPbHiunIPXEwVfE82tJhAEGvA3BI7g8Tpl
         /Mow==
X-Forwarded-Encrypted: i=1; AJvYcCUD8uXCyaAlrlBeWgjf3RuMWn0VFFdjx7nHNsoy32aRy/PaqdwVRP8nmyEmp3ZeaemBUE2sL87Af/X49W3++g==@lists.infradead.org
X-Gm-Message-State: AOJu0YxpqlrX4Alr5KuqPz7jGgTYg0XchH+0i0O12t0kpaZcxUxzt4Xn
	JaX7+pq8/KVHH7EeuEQH4AdDWmg5TvtDaOz+XhjYyRzHwPpvpNHFC8pz+lCWRIvYBm4=
X-Gm-Gg: ASbGncth2uOIlO93p4wJ5bNW+7K2r5upySIPJiyPrANdzDO+9NiTnptnpYMn0F7D0yb
	qc3btIKkyzab+goH+lfgmqYdaQ6bkYsb5luIX8I++8g0rDq2XVUBf19so5Fh8LSF+UbPHYNgE4N
	BZFULkY/aY6ryYoFS8nYxHJ7KNVTu4KK/qSycpDb5tDe/tPl0jptA0DRXt9/SC57kpFP6ZD6uo+
	oY/paaGsFZ66YnBMsbyRG0LTgBdCYGJDeCE6ji2ga1ydAsoBiooxux6KrWbUNDO1kL+xyZsZAZI
	Z3XfzV900GDAfvydFzQAgKzrZ8docEqZvenjPchJMyn0/hLR2maShTXTu9VgjvLSZxp3vDV+hqL
	Vxjs=
X-Google-Smtp-Source: AGHT+IGZSFpZmGlN0w2Un5vLT2W24kqk9q0DeivfstNV8sNtHQdO7UhGZijU6igQSf2A4dpARH8gnw==
X-Received: by 2002:a05:6808:3086:b0:403:3814:b2b1 with SMTP id 5614622812f47-40a5d081c0emr3858130b6e.10.1749681766169;
        Wed, 11 Jun 2025 15:42:46 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:1d00:4753:719f:673f:547c])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40a682fbf05sm24684b6e.32.2025.06.11.15.42.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 15:42:45 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Wed, 11 Jun 2025 17:39:07 -0500
Subject: [PATCH 15/28] iio: dac: ad3552r: use = { } instead of memset()
MIME-Version: 1.0
Message-Id: <20250611-iio-zero-init-stack-with-instead-of-memset-v1-15-ebb2d0a24302@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=915; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=UJXbN0f/Sc264QMDW6dBftvYOYfvz10QBoW4bFVFUX4=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBoSgXmmJnXqBUX52BnBQ8vdrjyxdthhoLPWdbRL
 R+WVVgUfXeJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaEoF5gAKCRDCzCAB/wGP
 wAHpB/9uvsuwsxPRCNHjRwNuY0qyeu9AO2EJoyNvSVzZWpvJJXh6el4lDtmSOYf7BNiSzxoL7GH
 ZA9fAXagxB/cnJd0lWxqHu6IllSBT9tS7KDugmBh+2loJ450FcplnrPuRlzFJx5QRs7XWieNUFB
 MXxCk/XXt6zIf+oAV23jZWywwUtyAzZ6IAh9PIHNdcMrm/xyZ/gKGv3UMTkLdL5rp5SJBwxh4cc
 00NEmMDVhDI8758T0v6AVJa5hRW1epfYSYXca9HF6od0VNpE0B2edgAefLgFuwdtJeZH/7Ms8qJ
 Qcdf79QFtQZEJjej/ETfZd9QxjJxo8qX5fR8v+r3taHVCkrk
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_234251_125579_4DF46370 
X-CRM114-Status: GOOD (  11.91  )
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
 drivers/iio/dac/ad3552r.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/iio/dac/ad3552r.c b/drivers/iio/dac/ad3552r.c
index a44b163f318315cec179aa2ac9d66883a327ebb9..93c33bc3e1be438c2e10c1ca990d8046ba87c9d0 100644
--- a/drivers/iio/dac/ad3552r.c
+++ b/drivers/iio/dac/ad3552r.c
@@ -293,10 +293,9 @@ static irqreturn_t ad3552r_trigger_handler(int irq, void *p)
 	struct iio_buffer *buf = indio_dev->buffer;
 	struct ad3552r_desc *dac = iio_priv(indio_dev);
 	/* Maximum size of a scan */
-	u8 buff[AD3552R_MAX_CH * AD3552R_MAX_REG_SIZE];
+	u8 buff[AD3552R_MAX_CH * AD3552R_MAX_REG_SIZE] = { };
 	int err;
 
-	memset(buff, 0, sizeof(buff));
 	err = iio_pop_from_buffer(buf, buff);
 	if (err)
 		goto end;

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
