Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5247BC71141
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jun 2025 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gc0anXogBa9t1T1sjqP03QJd9gaYijzxxCxDxfQmkWw=; b=oPLqobSBPVhPwh
	hyF6vbupFij+7kaU2OqXAcSPoEbPY+cyJDyyxDRIoI67jCtkIYKMnqvWp5MskGNMO8tX5aGW8ti5D
	efszgXP2MgsCmIUD+9ssmdsuMsl4czJIZh92bpK6MhNP+MypurCYv2tvwl4fvrB6el0NzjEMGhgq6
	6dx6ynXdyZ8pZQYIYOdmaZSBKbWK4INT3uEMJJ06rby/BN+Ot/DuZa0yDVAPR35H/D8FEjBmj0mr4
	NRl4OL0G3J+4PDu5Cuw/IZy1Kx5Fd6xeV4pFSvDDm1k9VTY7NHYYWaBnFbhiOg6+SiDfESpOIErU0
	EpVRXKKJcKpDC4djGEJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPVR3-0000000Bkdc-0hd9;
	Thu, 12 Jun 2025 00:04:49 +0000
Received: from mail-ot1-x329.google.com ([2607:f8b0:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPUA1-0000000BVrp-1JyL
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Jun 2025 22:43:10 +0000
Received: by mail-ot1-x329.google.com with SMTP id 46e09a7af769-73044329768so285488a34.3
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Jun 2025 15:43:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749681788; x=1750286588; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wFtBqHig8Fed23T8+cfJndFoBL4sOX9Nb3YXu3tizw8=;
        b=bQ29/D6WhGPMPyCgJN9c5p9QoXt6gADPgCpRG/kO3gR120YFThalPuknbgXQLw/Lkk
         xQTs2uMmmT8hcdnyyuNd68G2gpLt2UA0DuJejSRxsFRE4rL3A6jNxYWj5ulKM4IVdPXL
         1XuQDozJhzP1k4M/+LyoRdqicloH458NwUUPioNwFIKOKSZhNfY/xNd1WCkTRfUm+5M6
         F3HYpZFLiSoZi9yvh/xlODK8zKWANxDMq7Ph0EDgZoIc8lYsx3sztmGJ1W8d3zIBoJum
         8qBT0ueWrsypLQ82bcRyyv470be8PC0J4TA9kk9Ka5MMSoKlx0/MUNPg0w91v6XhTyLf
         3OVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749681788; x=1750286588;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wFtBqHig8Fed23T8+cfJndFoBL4sOX9Nb3YXu3tizw8=;
        b=k2RiYvJOSJ1gppW51E0xWqp54muWh3N2oPRqd715HmYGwzlNHVaL9tRvp3GTkwyBex
         D5YtJumahURkMFmvFk8oNlwUBS2qhJa7t8y5VhgBLth7wM49HhlnRiK1i0JN9DIyqLG3
         3djwowK34Z00xiqlIFz4XX1tOr5CQKhfoNra+EfFhXZq7ksldUd3YXxTBNH1OSv4eHRS
         BYp1kdBJLJjk04uYwXIC8Oj3molaoWcW2NMDaT/MvdV6vKae+bBOtksG83KC0+blaQ5e
         NVQXTxz+oe1SUpNIOYtm3fJvqUJZMJdNGJS3MK0s8ZO/mItPbNET5sVnkH2EFsargbBj
         iK/g==
X-Forwarded-Encrypted: i=1; AJvYcCU9a0iZgmhqz6CCUXldmNUvHhKDOPRiK1bjCjywIwoH15Xl+ybBrtYVMafzy5FmicBeW1tohkRqEWHbPuUkdA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzQYdOeddoldBfnDYfmWeoVWwZxl0liabSa4mWSm0dbXE50lUlu
	flfPHQqXUsGsv6R9yc8lVH9S6aMyCuHtO3YCkmLoUN3n25LDubYsVJyBZEJYQ2vLaJE=
X-Gm-Gg: ASbGncuFp0ZjLUCBJYzdveRU1HhbdPP1Pp3xDg+KmvmL6WZyB8pwuWqi3rCE1L+Uf6E
	mT2465C45qV9Yw/puyuE0KsvlCzqS9+KJBW5YTBCFSAPOiYsAlqvTSVotYnaJpRjJc5X478hmzq
	i0ubGAj8B4drY7ueZ/qGizMiMWfRiGVRYluYimW2l30XJ+axTcpRM8cZlgZoV3ABD2b6OkjWT8t
	Kd8djsDeg4einoV5kNnM7RSAaHgmdoyTRUedpW3KuG7SOmaNRiFTXa4LIukOTeEnKLTwc/5nt0L
	j4ZZEFN8QKVBv1l0T6uyFiLazC1VTU7gwaNLCLpCU8xrffmFDfamuBqNP0h1Nr73sjnD
X-Google-Smtp-Source: AGHT+IG5W7kH4+hxgdGC5cYojtw65mnpGPuM8rfmDxflahn9sv2QuWNjrWb24/1rv7CIa/pXKjlkYg==
X-Received: by 2002:a05:6808:238c:b0:406:72ad:bb6b with SMTP id 5614622812f47-40a66adbc50mr575420b6e.37.1749681788466;
        Wed, 11 Jun 2025 15:43:08 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:1d00:4753:719f:673f:547c])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40a682fbf05sm24684b6e.32.2025.06.11.15.43.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 15:43:08 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Wed, 11 Jun 2025 17:39:19 -0500
Subject: [PATCH 27/28] iio: proximity: irsd200: use = { } instead of
 memset()
MIME-Version: 1.0
Message-Id: <20250611-iio-zero-init-stack-with-instead-of-memset-v1-27-ebb2d0a24302@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=797; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=H2LBBJsUJiIc60MPGSJU2UBb5KBWsOEZhj5u9YgC6RQ=;
 b=kA0DAAoBwswgAf8Bj8AByyZiAGhKBjfIgQfT+NI7ZBHF6EqEZASLyMpQI6Xmjd023Z/HVL55R
 YkBMwQAAQoAHRYhBOwY2Z5iDoPWnNhomMLMIAH/AY/ABQJoSgY3AAoJEMLMIAH/AY/A1PwH/1/i
 g0gWTD7ZaRxp/hx7awW+jIFoQGzh6qTEbYue/UlgwqG8WG/qXLGJtE2TMNEr4xak/0DjEmHUQi0
 6TuTAR57tOQGCcFyvgFcpEHWGzydpL1M2UuzsT6SrTEkw8xRBk1Sjru/5SPcKg3fG0YQNSV0u/u
 y6b5ToQ6S7Fyrp/CQ9iLat82yU2B4m6UeVvKbVnUqQKf5W6irfzYAIiHsGm0U6Vt2JB0bw/xENa
 0AvOII7wKZ+yCTn68OJNIUuuO2GriVCbnOFFVj9k1xyiFlL1+f/o9rELPgpsoL23p4rJAR11ciY
 NhG+Uu1ETT3wLhRDyyFvmrfMPWxajwsHHsexQU0=
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_154309_359780_39877C96 
X-CRM114-Status: GOOD (  11.15  )
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
 drivers/iio/proximity/irsd200.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/iio/proximity/irsd200.c b/drivers/iio/proximity/irsd200.c
index 5e751fb0b12fb2167f4d11e814915cb2761ab9bf..253e4aef22fbdca84a0f8393d6f423385c8dcda8 100644
--- a/drivers/iio/proximity/irsd200.c
+++ b/drivers/iio/proximity/irsd200.c
@@ -763,10 +763,9 @@ static irqreturn_t irsd200_trigger_handler(int irq, void *pollf)
 	struct {
 		s16 channel;
 		aligned_s64 ts;
-	} scan;
+	} scan = { };
 	int ret;
 
-	memset(&scan, 0, sizeof(scan));
 	ret = irsd200_read_data(data, &scan.channel);
 	if (ret)
 		goto end;

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
