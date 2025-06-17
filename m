Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19E3AC71136
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jun 2025 22:12:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xu3hBAlUKiRxvu91NleMXMcQlkVsmrE63j58hsbshFk=; b=ovpYx5JZkFbL0k
	bdWVteLSBv3hwSLl6mL1AepvX7VO6xnal/+PkdPfE29h5ZTqyAznP4d5WVwc/CmrjJGrS9Hlo+B7e
	rpli1LYOvAkEPEJXPpSGWud1xsjtA0/JBYiV0q4Iy6JDaMuPtUbaii6EVAhVnXBiBgqDZxzep11Zs
	bQwcPy8qdGZy6cKQmg1Sj4KRk/Y0aXlU3gLQfL2IWEpLpJFro3VhAHNWf93ALSshaIDCub2so1NPT
	gKUCcwThxcEkmwxuxFmj/c8osOAocHyh7OiwFyoQ5/RntfQYopmsMaVSFC0pjen8hydzzc1GI3BiS
	f37BaGjsRlP8PkhEH0mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uReXh-00000008UMV-03zi;
	Tue, 17 Jun 2025 22:12:33 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uReXe-00000008ULR-2yyA
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Jun 2025 22:12:31 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-23508d30142so73778555ad.0
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Jun 2025 15:12:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750198350; x=1750803150; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BGDiShgPaJ/KizI/MxA6K0aCKSZpsX1RUOoVfwBsQgM=;
        b=LGqhsthSSWWhfRhf9Z4wMUuZ/ZPuj0c9UylK8yRspMOkCegpJNML+8GKdlHjxeBJUP
         HrYuS7d9W6erEXiU4vJhBLhn9fRDWflP3fzmzz4yB+aoOS5nLwaj4Hwyw0pHY48/KXrt
         LUQGQjdPdbo1kiIPH/oAFwjtlOR8PKsgmpGaz8HNkFZ9sANslP1ngqTLNH+Un0eUoYlI
         Q33dzSO6pkWEb9VTgObdsG2fgc0OtvvZC4TFI3phJSvDJKbDce9uKbpb+QClTKIoO06o
         4Ihur4ttuBzDcAeYFCg/0DB8kYE9k/98RcrcOWu+M/r5dJsaPZJCLWrX5x0KQ3DNRoJg
         WE5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750198350; x=1750803150;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BGDiShgPaJ/KizI/MxA6K0aCKSZpsX1RUOoVfwBsQgM=;
        b=twmCb2nEM4dp6fjOIOkXDXNmBHm0jLRKvUlAbPdkrB8ViilXy+e38votNJuWViZlio
         XQeuY9O297dJoHfnjBeJE7v5lnb+b4N2udBroDpXyFD3jSKGbfmNeAr0L6OAgoCerf5P
         l5OcL7UMQ1CjNm8nSzLMz+1KAt32+IVlUWNo/NRQiGDh6+NBj6E3SnD7UOj0Ev2O7yrD
         xH0Bfpc7MvFd2ocSwfdUMaeRtHGR6ERBupWXUkLqNiC67Zd9rF4kaZ51VcSKGNcujf7W
         fUY6IQ5Y7iz2LThkJjyD7XhZshMaXjLa6puAkZ25yBdCXRT/sddEQcyVaLek+nRbNWRv
         nJEA==
X-Forwarded-Encrypted: i=1; AJvYcCVoDUANnFwHu9sr0kuRFgFfHMAURITm6zwroazHExsGuIBz6jiSqNApW7WaphLu+21pAmAHeKH6U8eZLWUzcw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzjcC3bbLmkV9UV3GAhXYOc+eC1NwfoPtB1qPUCPYt9Vod2uWZ5
	RgbrUL95OF7vptio/lTh5W9D6jVphCjh4MmWwzEiLiZ/3OM00pRKpt+T
X-Gm-Gg: ASbGncvY1vm35Qn8NTo/1RO4jr8J4JyIZCOsMOH1ET+6ARcBV0akkM5rup29X8Yy5Z7
	nwYNURI6I6GTwcexmutI00GXJj4bMdpid2oohCsAOu4MoW/G+ltwNAZddxNKoWRtxgnxLUhdToh
	ytiYFWC4r+lctzjgEAP0BMAqna7zx6g/uN02baS2sh94mqC7b7fKav1iiKaRcpjGmGpRVuK261Q
	iR97SIAUwfaIqwPh0dtqN4+IZRxWBz2U7gzedLAZauK6s/+YwQkJeBJ9U2xWwymBHXCQTJAUqCy
	Y3nLlNApAMlH1NX5H84xdffnjrVhc4qfrddN4KeZnbXM55/nuSj9ESYkupV6HA==
X-Google-Smtp-Source: AGHT+IF5l521joGviQ6qJ7mk1oRWLvrbnwKw8YQGDh+zR8SMoGmwQjIFoKO4osgO38XwuebWSt3R4A==
X-Received: by 2002:a17:902:ce89:b0:234:b743:c7a4 with SMTP id d9443c01a7336-2366b149510mr254790825ad.38.1750198349879;
        Tue, 17 Jun 2025 15:12:29 -0700 (PDT)
Received: from wash.local ([50.46.184.91])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2365de781c7sm85862635ad.128.2025.06.17.15.12.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 15:12:29 -0700 (PDT)
From: Joseph Kogut <joseph.kogut@gmail.com>
Date: Tue, 17 Jun 2025 15:11:59 -0700
Subject: [PATCH v5 1/3] dt-bindings: arm: rockchip: Add Radxa CM5 IO board
MIME-Version: 1.0
Message-Id: <20250617-rk3588s-cm5-io-dts-upstream-v5-1-8d96854a5bbd@gmail.com>
References: <20250617-rk3588s-cm5-io-dts-upstream-v5-0-8d96854a5bbd@gmail.com>
In-Reply-To: <20250617-rk3588s-cm5-io-dts-upstream-v5-0-8d96854a5bbd@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Jimmy Hon <honyuenkwun@gmail.com>
Cc: Steve deRosier <derosier@cal-sierra.com>, devicetree@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Joseph Kogut <joseph.kogut@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_151230_753931_AE4CE59E 
X-CRM114-Status: UNSURE (   7.84  )
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

Add device tree binding for the Radxa CM5 IO board.

This board is based on the rk3588s.

Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 650fb833d96ef67ea1bba33c0767777378a38fa7..64b0a0dfcf12a75af908ab723d5a4dd9bfba8167 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -840,6 +840,13 @@ properties:
           - const: radxa,cm3
           - const: rockchip,rk3566
 
+      - description: Radxa Compute Module 5 (CM5)
+        items:
+          - enum:
+              - radxa,cm5-io
+          - const: radxa,cm5
+          - const: rockchip,rk3588s
+
       - description: Radxa CM3 Industrial
         items:
           - enum:

-- 
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
