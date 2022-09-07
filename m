Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6ABD7C38145
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Sep 2022 16:08:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YQdboQSardbFgQT3ghamA19dIdC4qX1No1e6H/zQPyA=; b=l7oT+IR9QuG8vi
	8FhoEYw+ltWvlqYHtBMk5YpyMjA+CR+u34iXbX5vdVtW4Vx7yOAvh09dRANaWhBO3X4DQOLEjUlfH
	ocPP3ZaJwpJVKRrUMkeTrjaABQpPh3qT7ZrW6B8rtHGkucIFnNsp4Ti56Z6Rt4+z8ZoC/P+fgxa7n
	hTZX1b7tkYi3dYD/5lDrF3Z5kjDcbiggGtQpflOnGZQHCH+dGe61eYv+Sfs7ia9ViQBGsX0XrHkjq
	6ri4Y1P6a9c/WDKOqu5ln+JszXIV2RDHDGWleOMdc5Sgg3XIjgoGH3fvUIUhXCSAqRHcw+RBnOUN1
	fHLIF7bVyUwtEp68UoxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVxaz-007bxo-It; Wed, 07 Sep 2022 16:08:09 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVxWH-007Z72-GH
	for linux-rockchip@lists.infradead.org; Wed, 07 Sep 2022 16:03:18 +0000
Received: by mail-pg1-x536.google.com with SMTP id r17so1583418pgr.7
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Sep 2022 09:03:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=10hU+FWY9QXTirOrTAxAp9Ez2CZEN3B5Cws47AST3uc=;
        b=6nTTO0NAgS3AYyhSQeVhc+C2LFonJ/jC8bw6cjF0GF0fWpvvGT/d5SnnMJjiH/6Fjt
         MNfL7hSILb9qJBjRohyD3i1Zwkeank/BMsF0yekO8iWOttKDwJNSyLkBmYPJw4rK/Rmv
         Yk7o2mytSulyjf0vFEAuZfTrdRwV2utXWTivblbwUBkP1ERjke+Ck+xpDpuba19V4Cx5
         RAtJccG/vo+jf+qW44/wLxaizDHk67pYryhUFJgBZaoNfdOmteOyx/eUebEOpl2XSzp9
         lR1Nfz0dcNpz83euNfDtARWMq1W2vLn7UiqadMhGbAbeur7e2RHgGmN9ADw6CQN1nkzf
         SG/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=10hU+FWY9QXTirOrTAxAp9Ez2CZEN3B5Cws47AST3uc=;
        b=DMCwd8X2aKbJ42n6AUdN3IIGvhOSEEgCPeE20uWGIgDP1rCy1J2pbf6bhqzpIER4Xx
         PlF8kefzDAWwFUachCra+TOS+DfpYSliwZsBrmpINKQJryw8QrZiJb0MZNMVucuseGLs
         xRRL9YkDjhxsbFu2VE12KgcSI2PvyF3+SibhS+XSDcE0aVLjOT5fM0fszXk6unclHprl
         iHXEZqaZvj+nJeEasOESaxBhlbwawazOanh119PFZTXaaf80CInjJxIiOR7WIiwxMP57
         bL6OilY2KeXA6ZKmMc46zQLZUpW7NMZlTWo5gLNF98Si/o0+4KCRRV6hClaRV+NrECFJ
         JrbQ==
X-Gm-Message-State: ACgBeo09HEyrNpjHH6lbtUy3OaK95TdOYrlNEbKB7YD+Lr64am5Mi5of
	pmyucBURreWiv3DYyvpVidyL1g==
X-Google-Smtp-Source: AA6agR7U8Uc785YI9VUpIkKhPK4q0qv7j//86WL4+Neys/bEgjsw+KPgg61Ac60JO88a4ldDCofcxA==
X-Received: by 2002:a62:1b12:0:b0:536:715c:4d96 with SMTP id b18-20020a621b12000000b00536715c4d96mr4499354pfb.77.1662566594540;
        Wed, 07 Sep 2022 09:03:14 -0700 (PDT)
Received: from localhost.localdomain ([23.27.44.184])
        by smtp.gmail.com with ESMTPSA id x13-20020a17090a1f8d00b001f510175984sm14919719pja.41.2022.09.07.09.03.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 09:03:14 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v4 11/13] dt-bindings: arm: rockchip: Add Edgeble AI Edge Compute Module 0 Carrier
Date: Wed,  7 Sep 2022 21:32:05 +0530
Message-Id: <20220907160207.3845791-12-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220907160207.3845791-1-jagan@edgeble.ai>
References: <20220907160207.3845791-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_090317_555880_B23A46DD 
X-CRM114-Status: UNSURE (   9.78  )
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

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v4:
- rebase on -next 
Changes for v3:
- none
Changes for v2:
- collect Ron ack

 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5c1b9f0e4cc1..7f1abbef8408 100644
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
