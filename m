Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC4E5CD8C9D
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jun 2026 06:10:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kXmPszPG6vWF/wKjRjCvgsAottVWDh4w3/pSmLw1/aQ=; b=MvtC/7SSuxh+s3
	6Zsa5wDB8b5GwErRJWnvywL9XQ4mA6BCh6qxDP6Jo06+qkW0W+6nsjcpAHRs51J32R47lgj1TtS0o
	uh2dy7i9gHj9xUxWOb/H3GEoPa2IwcaF3ZYUr5Lu8P8Hb9PJ1JFbiPWdQe3Ff3bTcRDSFWOuULjxJ
	8lFn028MMYZe65NNVqUJhqKHu2DvTvyQrPEL/EwtdPOzox7l6XmRYn7Z3aGDagx8p+8bZxnwgH2y8
	1lkwHdKtb1bzybWiG6rgz+esQxfQMHzyNn5m6oRGZeW3+WydIPv2xqHzTwhr6WFDL5gu5FDXxDO6z
	l5hx5bNUXbRMqu/sf8EQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWTBm-00000002sSs-0MVz;
	Mon, 08 Jun 2026 06:10:22 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWTBj-00000002sR1-0Ira
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Jun 2026 06:10:20 +0000
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-36d9794d82aso2700089a91.0
        for <linux-rockchip@lists.infradead.org>; Sun, 07 Jun 2026 23:10:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780899018; x=1781503818; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LDpSrlAQ9FmGRYSN7+/NziOaZpQDg6U0Jmn6QAw/EK4=;
        b=HPKPfCAYzJ1RFR+BwHeHVXAbKNld/aOIGGXz0Yn/INwefZTbzAeWa6tM6EYqy8XKY4
         x0F/+Ci0724ReJP6BEudT7DR+zFf400s90J2QNduoRG5uM0l4Gejn3HAIcUWCxNuaeVw
         dIPWwDS1ZAgnlPbKA9d64p0v49W3CNkHANodbYJXOd/3Gbby0U11DveGBumBjFNrWKeU
         TnwkDiFJp+AwL5Edcb1mtM/E4OduozBI79ZlKu9v2TAKZw6N3ZT1EgBnFoMnY6a88tmX
         dDX0M6MWqAWFBxvnH82J69JFRcsoKy6G2NokMPdY9aE4CO2FhPJzWta+7cwrecVhdT/V
         6bkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780899018; x=1781503818;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LDpSrlAQ9FmGRYSN7+/NziOaZpQDg6U0Jmn6QAw/EK4=;
        b=qfzRYxsvgXBOvb1ReL5jrjRlspeHFqqOlLMT69N38qUltY13k/rTtkxPMp36L79MeU
         VkuEkUapIA6jBTQPl1E52t+55DEaDBmEp5aybGBw86jzDeCBosC2a6WVVLbxjoSUZZkC
         k+oomr6B/KElc13BJE4mRafWQ1TSfohMB6vOzpnrcnpNez+qKagKw+HvuTIE450Max1N
         csYgVpExTsTBxHdN+0rBDjc0nrXWMC9JMe5byGUdlwC8Aa8aLguIm0MjaLMxUJ5Uwk91
         qG26bm0VAOHTZtS9/btyHyWVQ4Ia8HH9p+FkPaG2TYzK2IN5NYZcLV4P2N5y8pMzmYVM
         shjg==
X-Forwarded-Encrypted: i=1; AFNElJ+oQJATIAOvmocATwHN33LFZvP1vIwS0fCfRVqNBImZk6vDmbohSAVG+o+HTe5WStjTRhIMi0m3HYI3ZD8PbQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwZJ6E11OIkXGe9xcbU3HA2sEh0t4rdfuEArBk8v3BjFZcMYvyd
	1xilti6e9wUujAd8tVQw62M/N5nX+jjpr60hGf53SMRy54i26xOFNSvC
X-Gm-Gg: Acq92OGievgQlto5ldj0/8nu0asvBFovLbf3EN7rqCBM64/fP4EcSECdk+GKuBgFsQX
	HrUxlvpEniDf9JAY2RU4GvilCYwE9hwQPORde4LPd0snfbQkKNkVOS9PRewsZyBn+kS91Bz3u/h
	VtCgjJ1hHM2f+E0d/r8+hOsh524+WdGRPCclsRQy3CcBaOb32rxen9hDpRUL0DJfsClqAZZGmYz
	fkVUDa6bjTvrdbvV1eBrrDC/V0JCwgzRsPC20pG3x5q73BknVrFzz/1HMUDr+dtbQkgZu0UfInI
	8dVFtWkmQxDAaGR5tFuEJCHECcWXlfcLI7lm48IA/2QAdPHSH/rkK3xMFKRxtwaZh6gkb49xTLK
	p7UfHSIbnOmYfSz1mpEI7vRWZD9oFNT8VyeWHDusOpyLPizSduV+6oG2XT/S1GGXyLZROtDOSrj
	N6SGsFsphd1c+YMEjWjSC2L/ZG/JzFmbq8Z9+yEV++7UzNCxzqCqA=
X-Received: by 2002:a17:90b:5583:b0:36d:9e0b:3801 with SMTP id 98e67ed59e1d1-370ef0eae62mr16087415a91.8.1780899018315;
        Sun, 07 Jun 2026 23:10:18 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:9c6f:e28:3da8:7980])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36f6c668e98sm15065026a91.5.2026.06.07.23.10.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jun 2026 23:10:17 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v7 1/2] dt-bindings: arm: rockchip: add Vicharak Axon board
Date: Mon,  8 Jun 2026 11:39:39 +0530
Message-ID: <20260608060940.52549-2-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260608060940.52549-1-hrushirajg23@gmail.com>
References: <20260608060940.52549-1-hrushirajg23@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260607_231019_392347_6CC4BFAD 
X-CRM114-Status: UNSURE (   8.36  )
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

Add the device tree binding for the Vicharak Axon single-board
computer based on the Rockchip RK3588 SoC.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Hrushiraj Gandhi <hrushirajg23@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1a9dde18626d..b023d4cc9842 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1306,6 +1306,11 @@ properties:
           - const: turing,rk1
           - const: rockchip,rk3588
 
+      - description: Vicharak Axon
+        items:
+          - const: vicharak,axon
+          - const: rockchip,rk3588
+
       - description: WolfVision PF5 mainboard
         items:
           - const: wolfvision,rk3568-pf5
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
