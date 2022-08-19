Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8F9AC32771
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Aug 2022 22:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T7WrK0fCyW5FuqW1oNiANRJABdaCDe6aNvwIopz9BfM=; b=nR0t59/Sa71rcU
	kPNvcpJFSnOv9bG757wAnKcoL+AhcWWKUMzQ5iO3YQntOGRQ1UCLBK8j/ei2bJhW86R3AjfGBzep/
	XlVmrQ3UH+799gzqkliQJEtn86eb6PGfRVjaUY4KFGTOe03Mk7Tn+NPYCEkDRGGvmECuIieqj1Br7
	IqU5FGU4kc9kAyZGiPVdyVjLaKOwwi8ECxjot/g639kOXbLqKl1iD82iCO7uF8gJce1AdTRjXz+cl
	DTvA7AzbrkIgddKE+l1S0ZjJdPxjt0seM2xB2y1yiOf3Yy9yQ7EbUpQ4WbZniLSf9Ou02PSau0CLn
	U2/WV2MX/0CxfhbrPjlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPAQr-00Cqr3-4E; Fri, 19 Aug 2022 22:25:37 +0000
Received: from mail-oi1-x229.google.com ([2607:f8b0:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPAQm-00Cqnj-4b
	for linux-rockchip@lists.infradead.org; Fri, 19 Aug 2022 22:25:33 +0000
Received: by mail-oi1-x229.google.com with SMTP id c185so6201996oia.7
        for <linux-rockchip@lists.infradead.org>; Fri, 19 Aug 2022 15:25:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=nltXdNcFX6Gm5RkRCgm94nUZvKBm+MVKRVe6GCZWuEU=;
        b=HKBAzUO+Swga0loEQtsoZkdSdIozZZhKG/jN24zOKSJGnt4J+W9sllpQENThzj4qkN
         A2ifv81esgB/abK1JVsSxdHNmAgegGhj4NWS1RoUkop6S9O6WTpwbpq9qiBN4Q43pZHk
         GG3hwU32JFXBeB5kHGNgTjy0ShTlXIQzWapU64UXA3dMbvLCC1Xsi7bCBXwsKHtEaOXB
         mHfbE2TmfYKmZorOplzWCIJP7l23RK5jQ4NFy8RAedYO4n7UMZ+0mYad2b5DqDBVuF8m
         cnSV/W3w+dH0cvCBxus96pWx1PLuzSxusHIkfq4WFSE6q6zqjrVPDq0/WJqIbVrV5VGo
         YWOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=nltXdNcFX6Gm5RkRCgm94nUZvKBm+MVKRVe6GCZWuEU=;
        b=ygj99D9F+CxaJIDxnUQ/p2Mw/lHZDOupm7Md6EtoIOj42hVX1o0VJyaf6IdWdzCPr1
         2YdE4XeNoWQRT+5jPUL9AvhkAbQvCTHMYwERqrj59nvigJByZT3N5rTOwGas2bAbq2pt
         j2+8O3KwwBFcE9kt0Vq+thGHxX0aVj6968XjpVIX5Srzz8YI0zBgxEDOJC6UFpIJRRop
         kW6YtNmnPG8TvikNDK3hVChWwK9Di2S5M664weh8WYirw8DmQPkC1zWs4liUiWDwpbEW
         aDMBL9aun2qWTc/7vgkbgBuLVZJNvQOb015lUmeYUYeimbTcms5aFjGWJ/yowLY6h1De
         eiIg==
X-Gm-Message-State: ACgBeo1BL6lzbim3dJ49xaJAyTHfZhUlgnAg77eiEzznr1E60bIY+gaD
	FqXQYFzV4iubYfiUzHPencc=
X-Google-Smtp-Source: AA6agR4TS+8/UtC8HLgmqsmjF2+QODCrI4MnBaiACnskYpYlrUhupnt/PuHUhe3IKfsRnAPjut2LBA==
X-Received: by 2002:a05:6808:2087:b0:343:6e94:64c9 with SMTP id s7-20020a056808208700b003436e9464c9mr4271868oiw.270.1660947929904;
        Fri, 19 Aug 2022 15:25:29 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id ca15-20020a056830610f00b0061d31170573sm1470497otb.20.2022.08.19.15.25.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Aug 2022 15:25:28 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	pgwipeout@gmail.com,
	cphealy@gmail.com,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/3] dt-bindings: vendor-prefixes: add Anbernic
Date: Fri, 19 Aug 2022 17:25:18 -0500
Message-Id: <20220819222520.3069-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220819222520.3069-1-macroalpha82@gmail.com>
References: <20220819222520.3069-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220819_152532_213162_F66F48AC 
X-CRM114-Status: UNSURE (   7.85  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Anbernic designs and manufactures portable gaming systems.
https://anbernic.com/

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 2f0151e9f6be..2a5a98d6fdda 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -105,6 +105,8 @@ patternProperties:
     description: AMS-Taos Inc.
   "^analogix,.*":
     description: Analogix Semiconductor, Inc.
+  "^anbernic,.*":
+    description: Anbernic
   "^andestech,.*":
     description: Andes Technology Corporation
   "^anvo,.*":
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
