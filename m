Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80B41C43334
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Jul 2022 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lKfg+TxF6y3bfqp+p1SdDZs2OzS+GD6N5aW1edKyVDI=; b=PWMw05odsMkYFv
	ejf10e8R0xJUInFsskMEyl1sluunoiGwabO/CwEjQerFG0aSfgGeDG9ol7L/NorSmzCk7MZOuvKON
	dzhCzz1ITfLMMu/6SRlR4Q9UFBdOnL1QwS5P5nWQc+nqiXOJZLNdUZNK83NF7D5DwBKKAZcCULVF2
	gf8e+nTS1g7cZdudNzVG6Y7yyb42OFAOU/gyvH1A62w7XIhGUSuWs+ip7UuSXZ007jEaNRMXrRXCA
	Mn8QmBYvBX0R4FDrWmZrfvQtsPwVVdoDNiD9eDYjivCc36C6TPwYRG3ylu0wizxE8mFVYHPK6YI9t
	pu+yPYn/fZq6L9s4wtUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFMEa-007Gz6-0H; Sat, 23 Jul 2022 21:00:24 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFM0E-0078tg-2Y
	for linux-rockchip@lists.infradead.org; Sat, 23 Jul 2022 20:45:37 +0000
Received: by mail-pj1-x1036.google.com with SMTP id pc13so7085272pjb.4
        for <linux-rockchip@lists.infradead.org>; Sat, 23 Jul 2022 13:45:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=By1PmGJhnJpqlUnI/OhTGBYhiWbD2tJfoz3WanLvr0M=;
        b=EjxuH6gL/ZjSugCxSKxC/73F7xnjyzGVaEiWNjv4WM4X/Z+ia1QpzIRryHowrCwPuh
         MtkFHmgTDZD1wbEyrxhic4M/aUCguF9yP/HbII0o1gKH6WATn3OeVZeWdewuOlDm6YVs
         QtWJye0/9dwrql8KzdYi4NOg4pdKimJzIxMWs+CcuWuVhHP/6S3roUhiKzfM0vYbSdNf
         qnaDChYZjQMNm2xIOeLHvI1nZ6mHq/sKRGJYA8WB4QlixwS3nYdB1fOqBP52LvdnE0Fg
         ew0kUuaGL/W3a22wgrA1oLA/tExKuQ4aEITf1ZrngGcnPbLKpXlPHnq9RQ3vifAd0c16
         u1FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=By1PmGJhnJpqlUnI/OhTGBYhiWbD2tJfoz3WanLvr0M=;
        b=l0/M+vZxhLqhRMLKelMLMGEwK70RIgzoAsmQ/Gkqj13KpoB62qTDhMQ+2X642yjKrL
         EvIwuKm3L1OD5s2Co+bxBNjBNw7KJas4At+k/n9z/ZVmEgWma6YpdKepggtz8zQ8K51b
         EgnsJ7/i/CYWKeS7hUcUA68XQiCcT7b0opiiUBMr6Lc05TrbgytLx0Yoac8THYUmurFf
         CBk42NPZ2kgs61d60gzXK2FcKleyFBTY5sRVbu+d/N36kzlmH1oILgkVpxHEIE+9U23z
         dwstsTTMIZkRsg78Adk7kwsrmuFTT5IJXr7SCU25T/a+E7QJgfOvkVF+g1h52YYLaoXR
         ZKeg==
X-Gm-Message-State: AJIora93sqXYIT+MZYI/9dkJ+lgs0aSBRqLHl7h6HKIcNVorGb3fFBG8
	o5424x8IQAbNFgpxjftBJ8iexw==
X-Google-Smtp-Source: AGRyM1vcRfDUEu8EwOOKAsqhBJnofOirUdybwFoJ+u24pZOb347uVRhd+B2MtzSlji4Nl5jVdJI1CA==
X-Received: by 2002:a17:902:e746:b0:16c:4eb6:915d with SMTP id p6-20020a170902e74600b0016c4eb6915dmr5580869plf.106.1658609133652;
        Sat, 23 Jul 2022 13:45:33 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:a406:cc30:f4ec:f10a])
        by smtp.gmail.com with ESMTPSA id u14-20020a170902e80e00b0016a6caacaefsm6187950plg.103.2022.07.23.13.45.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jul 2022 13:45:33 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 19/22] dt-bindings: arm: rockchip: Add Edgeble AI Edge Compute Module 0 Carrier
Date: Sun, 24 Jul 2022 02:13:32 +0530
Message-Id: <20220723204335.750095-20-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220723204335.750095-1-jagan@edgeble.ai>
References: <20220723204335.750095-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220723_134534_177886_C794B58B 
X-CRM114-Status: UNSURE (   9.68  )
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

Edge Compute Module 0 is a 96boards SoM-CB compute module based
on Rockchip RV1126 from Edgeble AI.

Edge Compute Module 0 Carrier board is an industrial form factor
evaluation board from Edgeble AI.

Edge Compute Module 0 needs to mount on top of this evaluation board
for creating complete Edge Compute Module 0 Carrier board.

Add dt-bindings for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index cf9eb1e8326a..2a4b7f2d018f 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -65,6 +65,12 @@ properties:
           - const: chipspark,rayeager-px2
           - const: rockchip,rk3066a
 
+      - description: Edgeble AI Edge Compute Module 0 SoM based boards
+        items:
+          - const: edgeble,edge-compute-module-0-carrier  # Edgeble AI Edge Compute Module 0 Carrier
+          - const: edgeble,edge-compute-module-0          # Edgeble AI Edge Compute Module 0 SoM
+          - const: rockchip,rv1126
+
       - description: Elgin RV1108 R1
         items:
           - const: elgin,rv1108-r1
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
