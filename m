Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E58EAC71135
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jun 2025 23:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oxbKGoSZtIHWWXoaORBQsdnPTqJrkDG5iKILNvUGgMk=; b=Xr4mOMV0xPb95X
	ClXlEqMCsyBusLOf4IWBZiURMBCaq0Xt6DJeBfkMQx81XSzSe1+ISnN5V98dNc+XbAYdIFPJycgO0
	hIgvf142Mi/TuIlUHEwsC2nu2sThx8UjqRWjISRqTbtnJKGqshJ3hZ5A3qUtECnK/PSMkHcc+9+To
	az5bPVNXow+bSotYonwbhgf3K6o4xhRyUYQRooNcRTX5V0HPD3kD7toatDH48PdVbxUxTsCaKLa7m
	PDLEu6eDfEPPSLN7FkKlq4RQdH069K3z8QT6gKd52myDxymsG/E6REJ6hxSgqqUWvERgSGeKe6uWR
	dNtv4sPG1lFCX/jYIfQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPVEB-0000000Bio0-35uB;
	Wed, 11 Jun 2025 23:51:31 +0000
Received: from mail-oi1-x22d.google.com ([2607:f8b0:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPU9o-0000000BVh9-3le5
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Jun 2025 22:42:58 +0000
Received: by mail-oi1-x22d.google.com with SMTP id 5614622812f47-4067106dd56so209087b6e.3
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Jun 2025 15:42:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749681776; x=1750286576; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O49HniDCuoXMC9eMwPqBiAeGw4w5v2Vl7zSDG8FL1hA=;
        b=w/Ili8YLO/c6NCGJEMFLBh2EFMfWG87d9nlne+tcmvZio28vWJlT3BasbT4wlRmd3l
         FzJ07zpk6bvH/LSPay6GNLA7xrnB7fdW0Nwv+X21kHo7DmUY/HOAscpU1nWHYoWUXeRf
         nQ8s1S1bA8v4yWBViP39gB53G/TezdZbXzekdoaclqahnSkeEN2xYbx0kGdkOhpQFNO8
         9RhTnDUobdnEpTFmRw6tSL2EAPcrSUEmXfAaP1E9QFgLa2aup59ykkGCiUUf6Y9JqqAN
         AfDFgqC+6y4qsBAkVMWyXUSIj2nReRQiswt+Z9YaG3GMi6v+pct9DBI3c9hVOQQPHTp7
         1Yaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749681776; x=1750286576;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O49HniDCuoXMC9eMwPqBiAeGw4w5v2Vl7zSDG8FL1hA=;
        b=Hx1D4E8Yx0LjoE2heYmCT3jWCISEsNByKEdbPN8BxgjndpS00NZm+UhN3dGPgnV+Xi
         7N9vKnTQtJH/Cq5TeR0CZuQNwgMT39qFl7vPtY8Wyo1iA5sXtNc+9mly33T5a3rTl0Sk
         2n7s3Ag3ZthfTYJjo8u+WvYKNDZWo0VUaUXmOp50micmckV9lkFwqdUmeJgU0JTHcAJh
         Q5Nz+ZYVfCrPup2kprCWesoPcuvYHPb0FpCNxc5TdFjE5P3ktldp4nHcx38965QwdRIh
         D0Vc18eoIcqt/Ql/aAOELtIXKFnash3RiKqFOldHslXeFRvTLIHjUN8CHghOrB3aAmFg
         TvHw==
X-Forwarded-Encrypted: i=1; AJvYcCVDjzQQB6bwDqaRhZngBiGiTsakx+w9hOjs/Vq/3WhtpLBXOKWIbnitk/7Mg38ijdoHHv2Hq8smjd7h8ZDPPg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz8Ir/FzhaCA9KQ+8O9JeKlUu+e95PNtQEo3ulR1O3RSkfriRo8
	U2YU7XQOB32ACD/c9hyrKIaLlWDahEitUTuTktt1j59PaaqchiFGekqOxdKKsXGsO+w=
X-Gm-Gg: ASbGncseG2KDaOp+Bc5U08Z1W7yoJniQTbeqRcWH//aZaGWkwQAZa8J1C3PVEAT73eo
	/TQH0wTfBM/noAAs07eT8eAc4r0pbP61LxZa5wzorPfuOMjRTZCJo0X9bzJqIolt2UBHd9Hi3y5
	9HBY7D2ZSO8HFrZp36BkISPhDlB5zya0HwKXCC1eeFrbH4gAPZrz85FgQELG072eU0JAEFVqw+x
	g0jJjNtvdF3NVOxnDrKtM+uq177NjZK9V58LE87EJOO+P+AayFEXZ+SCOrNHtWJmCXRS9HmvzC/
	ZQEwYPLIfcR4Q4gAO1c8tLUzapHn3+9qGNeEfVPJxiQhqy6ZRwsNeApyxC84M5p4KKBn
X-Google-Smtp-Source: AGHT+IEdXlTs5BQlKqDRA2XR9le0U//SvE0Qifl3mfGztXMmWUlblRQ96qzrlkvIsB1m096LadrsCQ==
X-Received: by 2002:a05:6808:180c:b0:409:f8e:7282 with SMTP id 5614622812f47-40a65f87782mr956229b6e.5.1749681776215;
        Wed, 11 Jun 2025 15:42:56 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:1d00:4753:719f:673f:547c])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40a682fbf05sm24684b6e.32.2025.06.11.15.42.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 15:42:55 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Wed, 11 Jun 2025 17:39:12 -0500
Subject: [PATCH 20/28] iio: light: opt4060: use = { } instead of memset()
MIME-Version: 1.0
Message-Id: <20250611-iio-zero-init-stack-with-instead-of-memset-v1-20-ebb2d0a24302@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1055; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=u68bZZMO/JKUz2mz6KZxBlhHkEylsEbUz83VhCyRYl4=;
 b=owGbwMvMwMV46IwC43/G/gOMp9WSGDK82DgYtDNtb2gx3z7l0jyT+eHvDe25Ny/eC02uWrn1Y
 Ct3oj9PJ6MxCwMjF4OsmCLLG4mb85L4mq/NuZExA2YQKxPYFC5OAZjIHWH2f3bdcxonrJAMav7A
 XffFu02lOFatYYFB7CF7t92HHtwV1csJuGihoZXQqzjn9qFVwQ9lw6WjTz/KejJDP9U9zPVrSVd
 FI6OcwCrLffXZi7bwHns3aafaxnuO18SbZz42r7q3SNX/4t5VaVwdlmdCG1e/YlOZNq/SJHTm1b
 6D+oXG06fdm+A7z+KTCU+oXc0f3u8ab+avuiHZGW8WcF/yQc2Kvd6bNgqbneTXPqugcUbhajePp
 EmfdwGzmsgpxSwm/ZdqT8JD1yvJaf4XW2u/8qFBW/Mx9Tn3HWZaHeLU2JRZ4bDydVbTlvcc7xlc
 pgl9PKq54uvTWCH/WaeKFt2rffq43yDVPalMb2os24pjAA==
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_154256_961707_9B787DD1 
X-CRM114-Status: GOOD (  11.30  )
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
 drivers/iio/light/opt4060.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/iio/light/opt4060.c b/drivers/iio/light/opt4060.c
index f4085020e03ebadb2b91db3212449db82d738ebd..3c927149bd256b392ed8d1bfa9847788981ef2f0 100644
--- a/drivers/iio/light/opt4060.c
+++ b/drivers/iio/light/opt4060.c
@@ -1083,7 +1083,7 @@ static irqreturn_t opt4060_trigger_handler(int irq, void *p)
 	struct  {
 		u32 chan[OPT4060_NUM_CHANS];
 		aligned_s64 ts;
-	} raw;
+	} raw = { };
 	int i = 0;
 	int chan, ret;
 
@@ -1091,8 +1091,6 @@ static irqreturn_t opt4060_trigger_handler(int irq, void *p)
 	if (iio_trigger_validate_own_device(idev->trig, idev))
 		opt4060_trigger_new_samples(idev);
 
-	memset(&raw, 0, sizeof(raw));
-
 	iio_for_each_active_channel(idev, chan) {
 		if (chan == OPT4060_ILLUM)
 			ret = opt4060_calc_illuminance(chip, &raw.chan[i++]);

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
