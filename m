Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA8EFC04A95
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Oct 2022 12:42:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jUNaWyvmSJZKD/Ow4fTOqEMad8Mo77ODuZ6BzKJ/rGI=; b=AvESQcfPuqZs94
	DarmrUoZ2a3Oq9tqTbIIecSVUCPdaRkWiyGbTbjCTI5niIfhI2ctbfQXGkcFhkiZruQudh7DrjPaa
	mdRslDr4wL0ivfK6v8Qi6M7V89J+vPE3Df74+A442MqJNb8ZeG2xUF2XRdEAxoLCCuEKqAqku1Gcd
	YnZEuOGRvMSXBBn/D4rCsGr5hyCczGb4DNk663XYQalqd72AbOuNUHUjvFjiH5OQaevjE3h0wu6rs
	/cUGDR34C7EexKoqTwsnoXMnQRrd6ZB1joiq2IV26fBCSEeYGg+l0bBC3/fquH/CobuKWH+ebOXHd
	1miPRFvS/sDY3BTr2SBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onJFy-005E8l-92; Tue, 25 Oct 2022 12:42:10 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onJFm-005E1k-5I; Tue, 25 Oct 2022 12:41:59 +0000
Received: by mail-wr1-x429.google.com with SMTP id o4so12392912wrq.6;
        Tue, 25 Oct 2022 05:41:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ElsXKifGPu+xWV5kp4Q++GnbWWKLpxXO2HTLVtO10F0=;
        b=HHau6xvD/rOVqNP6ObIxSLZ9tnj+QB3yZIBup+RJEu6HUeGApKsCbQg71GXp4WHpP1
         HeFb1s2MCV1T3pQc9zhYMbzja1i/iUogcuOd4ki2KtMh2nACc5tX5fxsuYV2uywXyQU8
         fIE4FU9pD8162SSETLavaz6p0DxVFO59t8uPJtGqLWgoimkuzYOK7U9Ss123dNaQ8Aaa
         35EVE8YbSiUjK9/tNd9xNViE4PEoZ2LA3d4nf/7vC7A/V8RNXS3Rc3gdP4z1gm0NEhee
         CqhgL3zs7MNbwytp/PiGRGhyRkWPmqRe9hHZotjX0JR0+3nikKGZ1CeLe+/gYnQdnZVW
         ISDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ElsXKifGPu+xWV5kp4Q++GnbWWKLpxXO2HTLVtO10F0=;
        b=u+3S7Rnqt5ApIZOIjKrg2DyJ7xUAS/vK8cJuFUhlSfQXto4D2KWTYCTeJsaXecgLwg
         3xGLDVVPx7GA4kC47jygrV3PUvA9YVW3BJU5v4/prWvFGMla02zPhKWj+5mX1kSrLI0M
         wt2iWThyOsulhlRoSYBpDra97usYRzH59/dulO/YmC9LUx/jUTsLBfRBHtJGIAPDoo/c
         p899TLjxJMLWx2OSYiLsxN9Sxx7ugLNCJFGeteqiZzcf1jwvDZqh8WOXNWVNnFoEJJPQ
         M3nVq/JINvOQS4GVm5sghVC6gJZ2b6fRrwbXqMSXfe8Fna0jYSJcus7FCiFi8fzlB4RI
         QpPQ==
X-Gm-Message-State: ACrzQf1TwH7FLgWgY1hvWQUqSk6/Hr9TN0Apg49CsOEzgX2Xg5qioBBL
	P8Rfe1zdETT3n1JfKnbWc0k=
X-Google-Smtp-Source: AMsMyM4kI+X+FZY7+WMg564s3kMyQmXgsKWXajfJpp1On9XiNlJ/mym/OBtcbcEgIGxZXcTFg4DEdw==
X-Received: by 2002:a7b:c048:0:b0:3b4:fb26:f0f3 with SMTP id u8-20020a7bc048000000b003b4fb26f0f3mr48434995wmc.115.1666701715943;
        Tue, 25 Oct 2022 05:41:55 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id ay19-20020a05600c1e1300b003a1980d55c4sm11250664wmb.47.2022.10.25.05.41.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Oct 2022 05:41:55 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] ASoC: dt-bindings: rockchip: i2s-tdm: Make grf property optional
Date: Tue, 25 Oct 2022 14:41:29 +0200
Message-Id: <20221025124132.399729-2-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221025124132.399729-1-frattaroli.nicolas@gmail.com>
References: <20221025124132.399729-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221025_054158_220359_C0D59B2A 
X-CRM114-Status: GOOD (  10.99  )
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

Turns out most things don't require the GRF, so making the property
optional is the obvious move.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml b/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
index 6a7c004bef17..8646cdc692d7 100644
--- a/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
+++ b/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
@@ -135,7 +135,6 @@ required:
   - clock-names
   - resets
   - reset-names
-  - rockchip,grf
   - "#sound-dai-cells"
 
 additionalProperties: false
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
