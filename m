Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34DB1C71135
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jun 2025 23:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JY6jh6WrfvPFDovrZjVHEWvxbHIHtMJrdgwNI93vo1w=; b=BdwrCxwy/Cb/l/
	ELkNqaK2rsi8pHo332WNcoO7yPtGca81kf9cy+HZ7wImP9BYUTC69TGqRYH6lLY7rKoZqL3YjpSOJ
	lq1BcSbBR3ZPoPN6DmxbW0Co4Fnc1k4q/lxaQQW8Y2FpWzge/T3bt+SvLZ1Xw14NfErtfFLC+fLXF
	ugyGYZmH9IZgi/FQW3v+mQkiRqlZqgy5PYJz2D2IZf/kRXE7FCJqAlHu2Q5WXzwU9OPJIIoT0LdTw
	lkxiZTvawEvG9tUSjCfLWDRGjC6cs4N0tjsP7ioFcE/MC4cyzz1dOcUIhhxmH7Ku836uugasFt/zy
	EjWkTXpHj7v9TuljyrbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPUhp-0000000Betc-2ZXE;
	Wed, 11 Jun 2025 23:18:05 +0000
Received: from mail-oi1-x22c.google.com ([2607:f8b0:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPU9D-0000000BVJo-16FE
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Jun 2025 22:42:20 +0000
Received: by mail-oi1-x22c.google.com with SMTP id 5614622812f47-401c43671ecso185319b6e.0
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Jun 2025 15:42:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749681738; x=1750286538; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2KWzRpEXlRaOQy2XtO3D8TKl0onTqF9JeInDK4cRjLg=;
        b=NUG62BSzE/+G40oX7mA86om3zZzYw/ur1qb0v3igExn3z031YC+LO93sKeVb2dR3b7
         k8tyAPeT17uJgz/APupKcdRgmqxZbZvtgSdXyJkSFGrmLP2glMDOruZ4+W7ScdN9T+to
         b+Ff82MozJ4LFSG+Rtac5HeMBF5lo7ninvrrt14kWFFV/stJX9MVCNKfJ5OEd49E1IGK
         5d69tzzVegutLCTW60tkLbhF2HzmhQY/fnkLwPZE3R6KMgR/yV+38Sd1oPtQuAJn0MRu
         3MN2RJrkRu2J+fFbstD+uO5i05jmCm3c3Qq+iiEYGjUKGsuLV/XFLZXkEShmGIp4fyaR
         08bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749681738; x=1750286538;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2KWzRpEXlRaOQy2XtO3D8TKl0onTqF9JeInDK4cRjLg=;
        b=h+CAdKsXeSXyV9aUH6GV+mbOcBY6ZYkDiIhDP8yeoWATua0nRPigh5SdnhAn2U66w9
         hkVbF92A+dQb5F5gODl9Mq/Qh0XvAow8ZTdfLEAX+gWo8vOUbyXSo6TJkAO2sSnSxn/Y
         b2wFPe9OF3HAWn3ZMymHGs1bS7fMcmKgv2BNo3AlOi1erUitzOG0fHHAMxbBZuaM/z5a
         KKUoQAZA3TMlbm59qNzDT1AX/2Y+MzSgjS8Iy3ZZqWJz7Hbh0vpNZLeH6t43vrDzEvyX
         QWp/76zlSErQQ0vf3ItqKaEOVQBP1CmPlcPL8nRid/TMbDJBrkgb1CnML+g3ILrW2ftF
         XTwQ==
X-Forwarded-Encrypted: i=1; AJvYcCUjqXcKUTXAsQ59kRlQJoHaLwZ+3avpCAEEviPQIr2+j7jUMnYj7lVZU3cGxNNvkxpZm9hlaWEUBz0UwWhJ2Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YwF217ZCgrpkAzERi6UhISiyPLnbcD9J0udlDPKjhEY4fQxJ6sb
	NX02PdD6t7UeBWT1VNi1USiGzgnW5LZx1Z4QEVyh+JTi3B1K3zuNcj+RID7wMigNQaE=
X-Gm-Gg: ASbGncsIPxwEBxKwaRWdKH2moUctq/qVNQWZX5VOe3KYMYxw3UvOUWeSa73FgbDXEG1
	n4g1vgfoNDJb2aOPRAyEYlzUNww+shaZ6Xg+UNyHegQqAcTUI6X5ZJb6riThPBnDPF2MRducmqD
	o7tW4UIfXQRR3RfgNyj09fdi0vojoW5bxZ9sM2yhqekAvu5m/zF2Y2tjxThjC8I/C8T4D1kA1LF
	/SIMSixuGQk90SYQRGgzHKdokDZU4U7HpbiH8FQIT0BjcjH//ohhXzm5/FPuX1+Rexhdmf7dH86
	uyyBUQVYYCe0Gx5NgSSfvzPyIX488cp6xT8iUnhQzeeZA1FUbSzYS/IMkbnjEcVmOnAq
X-Google-Smtp-Source: AGHT+IGUaZZsecRpS6ezZKLm+idnU2IVxpLfqAg4YSBuYkt3FpO3sNHyKbW5ao3Kw3MTkHa7seuNaQ==
X-Received: by 2002:a05:6808:23d2:b0:403:304:6b06 with SMTP id 5614622812f47-40a66015927mr932627b6e.10.1749681738571;
        Wed, 11 Jun 2025 15:42:18 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:1d00:4753:719f:673f:547c])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40a682fbf05sm24684b6e.32.2025.06.11.15.42.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 15:42:18 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Wed, 11 Jun 2025 17:38:54 -0500
Subject: [PATCH 02/28] iio: accel: msa311: use = { } instead of memset()
MIME-Version: 1.0
Message-Id: <20250611-iio-zero-init-stack-with-instead-of-memset-v1-2-ebb2d0a24302@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=731; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=odIkwKy7IqDnChDxGqAGKTlpXL7zVUclleEfAo7/6gA=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBoSgWQWkEr5QWjTPvfNMocah7h8+meXXS5pWdsy
 5sDAkLdoOOJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaEoFkAAKCRDCzCAB/wGP
 wOi+B/sEIoa3eIWCvSKlVpRK8xGkIEyYTFb6Nq8IlqoeBNY05GGcL2a5hP1Gn/kmb+2MO6PapeI
 dB2wl0+dESiOgkcl+SenqcxbQRRAhbRbVRd1/Cqac8psYYmmgKDSdLHesmbAPsWPhWccCox/lvU
 N0jdZERcu8kxa9AJs3z5gfb7AoKrRAZR/Q31HaF9jMQZk9xrzgW6H7/w05EWYudtxJPdpOaPv9W
 5N4ONT005xNjYaL/6LuZKHCE9D7n0gCZPQTTr2LcZXOKPofYkVVrg6LAuac/UpQH45sM5Bykm/R
 cW7aI66fWEN0bBxgJ8Jh9VbYLcpVDvd8K/aZLgpoffJ0rwGm
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_154219_318527_C614E3B4 
X-CRM114-Status: GOOD (  10.83  )
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
 drivers/iio/accel/msa311.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/iio/accel/msa311.c b/drivers/iio/accel/msa311.c
index c31c53abc3d09f29d01efb7cfd31955cd88b9409..3e10225410e89a341411a75e544a890f45c8f55e 100644
--- a/drivers/iio/accel/msa311.c
+++ b/drivers/iio/accel/msa311.c
@@ -897,9 +897,7 @@ static irqreturn_t msa311_buffer_thread(int irq, void *p)
 	struct {
 		__le16 channels[MSA311_SI_Z + 1];
 		aligned_s64 ts;
-	} buf;
-
-	memset(&buf, 0, sizeof(buf));
+	} buf = { };
 
 	mutex_lock(&msa311->lock);
 

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
