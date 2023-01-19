Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EFCAC46467
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jan 2023 18:51:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1cRiu0pXSg2SRgHeNeSUCFfkqOnZlQUvYXtKvI+h43Y=; b=TDUlIqM1pnfZjJ
	sB8cXJescngymBO5MNT2hyKv/03Zin6uwfrnjRrWZPsQa4pu2ci6Yl1CGSgsfvQSSXtNRwLe3l3U6
	p5iUgYxvlkIIbOdFNYexOmdbUvwWq6qa9Db3Td5msBD0Mx6+dI/4CYpAod9xEokJBJ8ii4TSuSGjT
	oGDNwCngCNt/My/cpGPXNzoqov9v2LJqFN1d/xg1SCca0YIIRCKrHQ/AjLPzZ7dekr3bUqecFU95u
	lBMar1cC4gmNC/H60UvLEwAXgCKqA6ye7XvbzefDs3bu5Xd2eliyKkA0B7quCkYdutWNNQ4CR97UE
	n4Bo8J8xjmD8ibo6N8vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIZzz-006erF-Cb; Thu, 19 Jan 2023 18:50:55 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIZyf-006e9U-9m; Thu, 19 Jan 2023 18:49:34 +0000
Received: by mail-lf1-x12b.google.com with SMTP id x40so4520488lfu.12;
        Thu, 19 Jan 2023 10:49:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OFat64LMoXDYuRBJ5PYrBQ4w2KeQw9mnd+EpUQW2z98=;
        b=Smx7EiRZr0YFLFdiLbw9CGyQYH5KkwXlCnXcJXZVaw24v8CD2LwOklq3XKkYwQAf9L
         4eceQvdoqisR5BsqY9Ne3XFyEVzhktoK4W/68XSZYFHdGLZlAuP2Yb1ICYtV7eJK7Adz
         zxbeQvDMm29TiPJ7ZMbEkCf1RcLeoAs9R0kW14sbx/5rjqSlbR9zaCirDouEDdg2GW6L
         IOXdzIfg7p33PhAn9eJ9Ng3jwa/UjdU7ZKKQMMAbBJ7dkWKPIU+4tC48u1SY81+chX2P
         rICN1Q5mgGAe8s9KP/ZO1ptMg8lGTGO3bdeqMenCmrgnlP/OjSkN/XVw1JqCouw7Kshw
         QV7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OFat64LMoXDYuRBJ5PYrBQ4w2KeQw9mnd+EpUQW2z98=;
        b=s/AnSMADp4tWYK7soc6Gbh5YMqmwllikykThX4zOsFeKiokGYl7mPUrWd+ppn8TB4Q
         lnP451LfLTycM5PkN/UBpsZ8lWt9qsN8Jcmyz5IJIj6fuwAUqhjcRvHvxdehwCZhdCCg
         YsD/7D9ETD3TZrdqwj0sJiRymT7kYehaZKeJ1uAfcv0gy67iWrb+pXXQ4inOiyVe7WTo
         nKCwaR1tp9bY0rmCT5Abp2SthAIJZiyQhJCLJjRsB/mnrxAVNP7xKLxVgxifs1OwxrJT
         sS9FCGc2ZGy+axBrR/Z9H71dCFmobq3eOd0Gm7v/2woUzp7YNkhME4ftxYWPXlpOdf56
         hoMA==
X-Gm-Message-State: AFqh2kpYcFSfuzDiZA7Ym40hI99uNzGVG9iIt2D6SK0AN2X9CLOkvw7w
	V3YEbwVnfDM1yYUdv75tOz0=
X-Google-Smtp-Source: AMrXdXsS73pkCKlic27wdJ6t/u2GF8WN5cOENCK0syWt1LSQd2eWuZ+/51FXuUHtnDJ3XgjSGs8C2Q==
X-Received: by 2002:a05:6512:2529:b0:4d2:9f92:a145 with SMTP id be41-20020a056512252900b004d29f92a145mr7462574lfb.50.1674154172862;
        Thu, 19 Jan 2023 10:49:32 -0800 (PST)
Received: from U19.ag.local (static.187.76.181.135.clients.your-server.de. [135.181.76.187])
        by smtp.gmail.com with ESMTPSA id b31-20020a0565120b9f00b004d30752a561sm2112737lfv.298.2023.01.19.10.49.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jan 2023 10:49:32 -0800 (PST)
From: Alibek Omarov <a1ba.omarov@gmail.com>
To: 
Cc: a1ba.omarov@gmail.com,
	alexander.sverdlin@siemens.com,
	macromorgan@hotmail.com,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Peter Geis <pgwipeout@gmail.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Alex Bee <knaerzche@gmail.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Frank Wunderlich <frank-w@public-files.de>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] dt-bindings: display: rockchip-lvds: add compatible string for RK3568
Date: Thu, 19 Jan 2023 21:48:05 +0300
Message-Id: <20230119184807.171132-4-a1ba.omarov@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230119184807.171132-1-a1ba.omarov@gmail.com>
References: <20230119184807.171132-1-a1ba.omarov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230119_104933_403591_66EA4848 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
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

RK3568 SoCs have a single LVDS output, that use PHY shared by two display
pipelines: LVDS and MIPI DSI.

Signed-off-by: Alibek Omarov <a1ba.omarov@gmail.com>
---
 .../devicetree/bindings/display/rockchip/rockchip-lvds.txt       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt b/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
index aaf8c44cf90f..ec8a8d05368a 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
@@ -5,6 +5,7 @@ Required properties:
 - compatible: matching the soc type, one of
 	- "rockchip,rk3288-lvds";
 	- "rockchip,px30-lvds";
+	- "rockchip,rk3568-lvds";
 
 - reg: physical base address of the controller and length
 	of memory mapped region.
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
