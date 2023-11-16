Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FB0AC072A2
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Nov 2023 00:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xd8AlH8XgKUXpAo7Z6gjuEdVditPCuthWaz/3SsLKMk=; b=C1qwbgSkOhooyl
	DjPk+d2GHehf/a+Ffzq9FtkEmPhPws917uhiekoqOK2kTXKFDi6gDPpIEWY6d6vVAyk236ZPJpOQo
	bt48ZS1IngP/N3bjuidHLQDPFJOCu+Y+u84uHf09mOtUo2vsR9/7HcKveZmH8+8O7yO2YgKyp/J5D
	NxVfFBXvYXzUIg1Pz+WpEm88QZwGur027jbaz1ea+yGvqP040lbvmP07hSEW3qwKEy+Fjls95l8pg
	TOqbX3mrhIWr4Tzkzc96sMQO3yfEgiGmqfRsjbTeYfIVZCmSkjBiSgai9V2xsOcE5P2PVmsEDTlt4
	g6PM3moiJ689r25SH7cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3Q4x-0023cE-2r;
	Thu, 16 Nov 2023 00:17:55 +0000
Received: from mail-oa1-x2f.google.com ([2001:4860:4864:20::2f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3Q4t-0023Ze-2p
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Nov 2023 00:17:53 +0000
Received: by mail-oa1-x2f.google.com with SMTP id 586e51a60fabf-1f03db0a410so123725fac.1
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Nov 2023 16:17:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700093870; x=1700698670; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+Tc3YJAqfIqDTHuog1Hz5PnyAu42zB2xLiKNLYokXpM=;
        b=MZzVK3uPJ3cBErNO6+G9XBC7e2ppx0H3p9zrd8Q+9z5zRaStYqZEGTmkoL18c/s4pf
         EmeGQNwbmshUMU2dbN9rpTsQlipt0olXpAesvs1nriPwuwLZJCL6QY/wQ/RFDAl1OJHg
         1zlZHN+GcdQh/Eox766J5tfMk+xcsocANbUeow1WWF2RCSwLeCOS4z1cWcVtDYTU4d6x
         TSCOMe9HK5hS0J7TacrO+5R8w3hXFbaSxrSNgL61UMoZ4/PvcifEdq7yDuf7aJLbFeg4
         RoRvaQz3IQB3qZ8QTnifTIEfIg6ftFv2BRbxcCm6kOxYBvHSC/flQ+IjmQmzMXJwYhoQ
         aL6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700093870; x=1700698670;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+Tc3YJAqfIqDTHuog1Hz5PnyAu42zB2xLiKNLYokXpM=;
        b=ZzMh0ZXtx86+M9vrZsDqnIi1FbPtROFC2PgLArPxvyzF+keq2S02NwP4PBCZFjw5YJ
         zY3HjdwIptmbWlMctp0X26C7v3pU2+M5OH1vvzANGsdSsGLxTmCIoVPALFv2pyUGKfFx
         r2s5Rn08LedR2OLyHPaJa/ebh4fXMxwDLICjD8yd7J9OQ+cxoPeqZZkdNYRufAFS6Z4E
         yqHDRBnnJs3U+A8b5SMnoKhI/lR3J4/5B0QpWuny07EDhvkDdQQCMlmqXJnzHVmJpPqR
         Hr2sH9Mge+DOL6p+bqUj9MGA3j1l02WKYYgbDv6w+WHOhjaTjhs5x2HNkipmisqcMsT2
         aWQQ==
X-Gm-Message-State: AOJu0YwA7GNQnLVyQMmw2JO32U3LCNQ7HgILrJHtUlw2bdS8I4hkhq9R
	70yPtQL95KYH08T/AjeR9w7B3TeU2Js=
X-Google-Smtp-Source: AGHT+IFLTYPG2sQjO84tzFuiebzB2LxW4EEUu+lO6YJqaMNF18JRW3+xebMH0nmwSWJxVNMOUoER4A==
X-Received: by 2002:a05:6870:4511:b0:1e9:54ef:4806 with SMTP id e17-20020a056870451100b001e954ef4806mr16831477oao.9.1700093870522;
        Wed, 15 Nov 2023 16:17:50 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id j18-20020a9d7d92000000b006c619f17669sm727117otn.74.2023.11.15.16.17.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Nov 2023 16:17:50 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH V3 4/6] dt-bindings: arm: rockchip: Add Powkiddy RK2023
Date: Wed, 15 Nov 2023 18:17:40 -0600
Message-Id: <20231116001742.2340646-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231116001742.2340646-1-macroalpha82@gmail.com>
References: <20231116001742.2340646-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231115_161751_912964_BE58F50F 
X-CRM114-Status: UNSURE (   8.75  )
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

The Powkiddy RK2023 is a handheld gaming device made by Powkiddy and
powered by the Rockchip RK3566 SoC. Group the Powkiddy RK3566 based
devices together as they are both extremely similar.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5f7c6c4aad8f..5b015c4ed775 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -674,9 +674,11 @@ properties:
           - const: pine64,soquartz
           - const: rockchip,rk3566
 
-      - description: Powkiddy RGB30
+      - description: Powkiddy RK3566 Handheld Gaming Console
         items:
-          - const: powkiddy,rgb30
+          - enum:
+              - powkiddy,rgb30
+              - powkiddy,rk2023
           - const: rockchip,rk3566
 
       - description: Radxa Compute Module 3(CM3)
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
