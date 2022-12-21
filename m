Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44149C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Dec 2022 15:30:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=rpkyoAGhHn7hC5yY/JP//ruCf0thYVqoj0mwgxyMog0=; b=AaE+qMhl0KmZGu
	YRQzWJXwABgdozfLt3D6Kny5+7kWrZAp6sTwBauupj2xjY1Ym6exY4nh20gX1zwYENHgSS31QHR50
	Xk1dPaTgNyBR4XYeM2hdgdI0AA1R+rh3PmdoL6q34CESo6wBkTjCqgQ02jOE7e/oLq+20wI6xM52n
	nuG62Jp/ZvLYxGJBLBnEkBss4eoX0PxPA8rCNh4kEx0gfL34T9ax+iDIGU9mL408E9XKylzkdqzt+
	IdpotQk2iWrJpAen+a5rzFsd7t2w7gIjxRydSPDdQXTf81EnY93V4XoMIjsHMn12OnnmLPcgQJu/J
	d08Hzh8IpliCOXNHdfDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p812c-00GIoi-8p; Wed, 21 Dec 2022 15:29:58 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8110-00GHVS-V4; Wed, 21 Dec 2022 15:28:20 +0000
Received: by mail-pj1-x1032.google.com with SMTP id t11-20020a17090a024b00b0021932afece4so2615679pje.5;
        Wed, 21 Dec 2022 07:28:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eYiGrmsD33kbnsC1ctFQkhOOqCnqOHmLKFShgn5msm0=;
        b=ddULDEk4aFIBRpVQGJf/LiUqsqilBAOqohYWi5YH9liOMfvZAEDwd7V+igocRJbBZQ
         2bkO6suNIZ81FH87TNvaCnGt1fB6ExalhtQQGMy68agNX4YfubxzhIlslG58YCTRFsMP
         TASlmvsNnK0n4B0CII7PcaxXng2ZccWiIyGIi53A90YlqpAQUXEHq3qIfRXysxoImvtx
         cKcsbojt12+xce/qKy2B4QZf75Oxb5vSjIwt0niKgAnQEozpYaqTtZjGHGEmScHfcxRl
         ol+F7F9C+v2lST7hFNs38tLZ3Q0i3VlOUEmOaTUSPXMGCnMng/vIW4rCaCU8U1dd8JCL
         euWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eYiGrmsD33kbnsC1ctFQkhOOqCnqOHmLKFShgn5msm0=;
        b=VR36HYzzVo0oqumby3Ff4fpF5f2ouWFLz9pqWSawlPb+fiKQ5MSG8y4yYAgiC1yir8
         pkd8v5uRgcL4hBhUxFqToYv1AsPWstohyP/FdXtwfHk7NPQJXQjLBm4Xtuji7sovdlfm
         QID+mGGOmP7Iz32oNnc8mBjRgVDGSlDwRnVjnKy6A0mgOKtHGf0ji3px1sVRZ96l6xZx
         3fmZEhxzZ2BRMkXoaIP2QxgwCRFQI1UFuPaZfPAusv9Ad/JoXmIrdTIhIbEX7BsMWhnd
         AV345mf/tSTM56rQM3hMBP2VOIx+R8x7pPzrbHrcZPAz2qtyDXqZXtbxDrcPDXT7BNGW
         /U9g==
X-Gm-Message-State: AFqh2krUvP9um65sADfFrD0xAdcfuUx1l4BF85BDYsh00amDIwyT4LA1
	FdW7YnYqCroPZHeaHMwbry8=
X-Google-Smtp-Source: AMrXdXuacBsZ/+BjXRVU1Pqg+B3KRM9iYoWZonRqGmi5+ayp1KDsY51OG8dwkITMV5kMONbCZ5hqbw==
X-Received: by 2002:a17:902:c401:b0:189:ba1f:b168 with SMTP id k1-20020a170902c40100b00189ba1fb168mr3376489plk.1.1671636498117;
        Wed, 21 Dec 2022 07:28:18 -0800 (PST)
Received: from VM-66-53-centos ([43.132.141.8])
        by smtp.gmail.com with ESMTPSA id p1-20020a170902e74100b00189bf5deda3sm11630438plf.133.2022.12.21.07.28.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Dec 2022 07:28:17 -0800 (PST)
Date: Wed, 21 Dec 2022 23:28:14 +0800
From: Yuteng Zhong <zonyitoo@gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Yuteng Zhong <zonyitoo@gmail.com>,
	Wenhao Cui <lasstp5011@gmail.com>
Subject: [PATCH v7 2/2] dt-bindings: arm: rockchip: Add EmbedFire LubanCat 1
Message-ID: <Y6MmDmbCDGtl3xQd@VM-66-53-centos>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y6MlrbGKiIVc6tXt@VM-66-53-centos>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221221_072819_047550_E350FB97 
X-CRM114-Status: UNSURE (   9.70  )
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

From: Wenhao Cui <lasstp5011@gmail.com>

Add devicetree binding documentation for the EmbedFire LubanCat 1.

Signed-off-by: Wenhao Cui <lasstp5011@gmail.com>
Signed-off-by: Yuteng Zhong <zonyitoo@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 88ff4422a8c1..058ed707f3cd 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -95,6 +95,11 @@ properties:
           - const: elgin,rv1108-r1
           - const: rockchip,rv1108
 
+      - description: EmbedFire LubanCat 1
+        items:
+          - const: embedfire,lubancat-1
+          - const: rockchip,rk3566
+
       - description: Engicam PX30.Core C.TOUCH 2.0
         items:
           - const: engicam,px30-core-ctouch2
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
