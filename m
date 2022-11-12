Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96025C433FE
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Nov 2022 14:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IEq1GpW+4dE/ikiI2eKOFXegY2Yvy2b+w0NVXufEOX4=; b=Z68i8eexjX4Elj
	KCG2XL1f4XkZMUAFP9TpHmddniXe2t/YRiVLwxWgJdDVX0om6Gby3ejGfQBOnRkA6O0EJSMRroaxm
	oCE2T4v6S8JcOjgX7Sp7h5KSZ8j0mgqPdL7q0HBr5ZmEwJ0BcC1326Qe5qAXQNihz9gisB5mwiLiN
	UJopeB43y5nXf1TUj3fKSOxZTz8LbxEGfSZhKrp+5HLZDY37HEa3p/HzrW2nH++0sT1CM03x4WbJ2
	ALnOeW1NJqVX8UIua6C2LV/YM9N1VRrxdY2i/6ZJDqfIxKelezzQb+0iQo9AdUHRamyFjec9uuVc8
	C4NSTiORT/Rt7cxEantg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otrLt-0060uu-FO; Sat, 12 Nov 2022 14:19:21 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otrLb-0060fR-Kp; Sat, 12 Nov 2022 14:19:05 +0000
Received: by mail-ed1-x534.google.com with SMTP id a13so11342374edj.0;
        Sat, 12 Nov 2022 06:19:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dRLnk3UcVriiraB+P5IRs9+XnPrK8g6dmPwsFT/Y3Ks=;
        b=ZzjQvb6yC78EAfhunPN6d8ba3LHQwChp5KaYFkOf+9F87B/GSbqttEzVj37P+ys10Q
         a1u5dUHKaGXdQ7ROzn9Fvg/gyzxqwq0zceCu3XpjNW8fC6dC7Iyz6DubjrOxaCB3pY+P
         3Zd9FFBkVmgd26TmAzlNUGmjDq/agv5AiBe65+Mk5TyY8mkU9Y22fT+hsfFEQKTVUB8C
         RV2lC5AZc7mFYJ472qE0hzPSseBvp8FxU1ajMLjTdVC3s1mciBTImUp8irG32iZ4YaSu
         y7t+i8plDBaUjgdHNvWO4CI+8z2BqXzKp3d5hSxCv0vt65OVpu2/WafTHiwg/OGouayL
         sV8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dRLnk3UcVriiraB+P5IRs9+XnPrK8g6dmPwsFT/Y3Ks=;
        b=qrA7WopauM93Ss0bekEA+er70sZgcYqi/17oemc3K9Kgsi3loXDWAefohcOBt7VLO1
         AEihFULicSTnoPRtS/GkdQ6tMXjbpKvsBl4yFE2o42Ssp8Mcdl7YopUbFVd8vkgIfGVN
         MX24wvJSaCHFgtr7rGf75pAxrx0aYC4+QR0CMI/CFArnvW9wXU16ZB3jkFy5NLdYnRY5
         b9Kzy5CEUgNZWnlj+2BvXQK1pLfitTlTMZht5vY2ZRVxkPPYUjKZe0y56SByETH1Gh4o
         G0+16ZbcTbN74ot9IUvsbmr9JP1L/Ohf0UbkIJQFL16A309EeUz3wPsiyGkWG5PrCc2k
         RA6A==
X-Gm-Message-State: ANoB5pnpag7ygcQ0djL3xCAfBSpj1GXmCUYeI/GU3e2NEa8AE85ztjf+
	571LmP0XT+hdavXHiojaBoA=
X-Google-Smtp-Source: AA0mqf68OYlc243BhIdPd4cmVHG+SNwILgvN9C8cy/jDJox8cBeKUIOu2CzFB6mCgJe6y0Bffp5SXg==
X-Received: by 2002:a05:6402:35c4:b0:462:fb18:3b45 with SMTP id z4-20020a05640235c400b00462fb183b45mr5377350edc.243.1668262741471;
        Sat, 12 Nov 2022 06:19:01 -0800 (PST)
Received: from localhost.localdomain (83.31.120.236.ipv4.supernova.orange.pl. [83.31.120.236])
        by smtp.gmail.com with ESMTPSA id g21-20020a50ee15000000b004677b1b1a70sm1050148eds.61.2022.11.12.06.19.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Nov 2022 06:19:01 -0800 (PST)
From: Maya Matuszczyk <maccraft123mc@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: =?UTF-8?q?Jo=C3=A3o=20H=20=2E=20Spies?= <jhlspies@gmail.com>,
	Chris Morgan <macroalpha82@gmail.com>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/5] dt-bindings: arm: rockchip: Add more RK3326 devices
Date: Sat, 12 Nov 2022 15:18:38 +0100
Message-Id: <20221112141840.516224-3-maccraft123mc@gmail.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221112141840.516224-1-maccraft123mc@gmail.com>
References: <20221112141840.516224-1-maccraft123mc@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221112_061903_753506_618EE4AE 
X-CRM114-Status: UNSURE (   8.49  )
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

Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
---
 .../devicetree/bindings/arm/rockchip.yaml         | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index c6c69a4e3777..d2748826cf39 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -30,6 +30,11 @@ properties:
           - const: amarula,vyasa-rk3288
           - const: rockchip,rk3288
 
+      - description: Anbernic RG351M
+        items:
+          - const: anbernic,rg351m
+          - const: rockchip,rk3326
+
       - description: Anbernic RG353P
         items:
           - const: anbernic,rg353p
@@ -468,6 +473,16 @@ properties:
           - const: hardkernel,rk3326-odroid-go2
           - const: rockchip,rk3326
 
+      - description: Hardkernel Odroid Go Advance Black Edition
+        items:
+          - const: hardkernel,rk3326-odroid-go2-v11
+          - const: rockchip,rk3326
+
+      - description: Hardkernel Odroid Go Super
+        items:
+          - const: hardkernel,rk3326-odroid-go3
+          - const: rockchip,rk3326
+
       - description: Hugsun X99 TV Box
         items:
           - const: hugsun,x99
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
