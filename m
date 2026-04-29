Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D35A3CCF9E3
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Apr 2026 02:47:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FbjpEuJPT91Lcu2cgdGZ4iuaIUjPBHpMEWVral2UTLk=; b=Zh/dW5bPLywPx2
	+N8AUksvqN4DrhS6h4H9KmR3LZNhKqDxPSNYZ4QJgP9SdgTH83p0mqXYE5D6N/uVPdlGYdgshXjpM
	qgJhkLglnOSuaLKPsoafqDzXQIR7WrbKfjfW4pUQUEGVC8PHSiSduo5/QOhXNz909QREE0uNakIEY
	LkZHzbqn8PdvgKbdt+amjuxPjpLPnatYPGUmj9DheoGyhgFBEkEYRVGCm5WtLr3Mti+A89JVi2lZS
	OKdZIKnp32q7lHXOAprhVeTOHy8HHyuqeamtz44R5Qij61mgumkwunS+bQUE8dVOnM/e8q1Zh+/NI
	2KPMpl6gGCVCmeOS3xzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHuxo-00000002nmZ-00WJ;
	Wed, 29 Apr 2026 02:47:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHuxn-00000002nlr-0Xet
	for linux-rockchip@bombadil.infradead.org;
	Wed, 29 Apr 2026 02:47:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=wBzxrwb3u6aAy65Ew28k5XS4vquizRynMypljlvuLRY=; b=q5nXJWWMA5LuCp9pXEp1t2rnkQ
	VFLSI2R1NsrpMwi0S4TsyUyg8ZwIldG82w0qzqr5rW+rwAXZnX3S8ARPJlAIgIv4rlQIl0Y2IpQNU
	70Ln5ltDULVnLE3wTEdNZZw0IiJQVcjnNlzReFDffHHRskJTxL7Bi2xjQnb5U+vZ0/9oJRTRUN7vl
	JCa4SaUYGr5K5QwgI07PNnJpr6G4QNfxIz+mfsC8BXdiWRx/RdlmJvstIBwSIAixjM0ngyUx6QWnX
	3H6SoQ8koLhym1dytG/MF73HveMbyVeuBuMSxkcE0BjsB+kPwF5jrNKmfl2amrSF4f5wTW8d00tGx
	LgelBb4g==;
Received: from mail-ot1-x363.google.com ([2607:f8b0:4864:20::363])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHuxi-00000004UqA-31IE
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Apr 2026 02:47:46 +0000
Received: by mail-ot1-x363.google.com with SMTP id 46e09a7af769-7de7dc85b74so2461255a34.2
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2026 19:47:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1777430861; x=1778035661; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wBzxrwb3u6aAy65Ew28k5XS4vquizRynMypljlvuLRY=;
        b=QE8Ox4RiebXLXRRZdUUN8sOqdgTuUKvu2UFl+nPP5Bo2uPGkQWf+HUh/zZaCUCH/wG
         +kW8DuyGTlwqYzLq16sjXZ5rM6KvLMseFXGtXhPoKqyIlbuH7iNBexCaqV08MmV1+RFP
         vJOVn4f1QBx9Had+rxB20t4Dh+wPBJhG1H3FaZF1wG6gMkmewry9bD1arPXKxYshs1IL
         s1KBnxcmLhLmVZpglbsB14pSmQPW0oFca7YNKtdmMcSiA4XvPlYDUEY+kG1j/LqWx9ui
         9d9DdTaVfVkz4zLn9WCA8+PPe/QJJ6nIBbaK2/gSYakurADWyYk0K4C6Nv+yNf5rmSoB
         6XdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777430861; x=1778035661;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wBzxrwb3u6aAy65Ew28k5XS4vquizRynMypljlvuLRY=;
        b=GNgcDij+uaxjgnr0NdF6u/Nt+LpKicT41MgBd9/c1a0mp3x+Ix2Xw9Nua1HDG966d5
         QKv1uEtPmdc/nlIPOf7rOQaH6bden4PxhvLYkPGWob8LNFbogFwYpzKnrCEWqpPJc8xJ
         Qvu6zNI0PyfTMqWkmDtzs3SVwMDRfqHORfUHUYsMH0DFW4hZ12xrXFWkGi34r/VgpqJy
         O312z5CyGMyFovTB/0D5XL4jhmQbEserK3i33kOKqyi+MHC28xSseS3Goo01pqjtQFz0
         uqPFVbqd2ZdRiWMSXNNR1GrX81+V9HI2dsKOyhxmnx2vDm/uulMVjYtVmQTVsRrW1ToN
         GEZA==
X-Forwarded-Encrypted: i=1; AFNElJ+ngW2zHl/NK9VlvuJLbNN4ncMxKyDYnG6vNlknTFYPz6XHuQII6AmgVysaVUoxfiwzdPX/5t8+thysTPv/RQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxggkwlZgmdzUSKQJKlNhDRMAEk/lWsSfXazUuGRh5iSo625xy0
	TMx6t8gWFzWLy0xz/WOZ5zzYAZlxF/RNnz+H0cyewhS6v7TmmUEEYKhFrw4wzWeTssZ0f78Hrvp
	9SAS1PscFrVoyvPLFLm34K2AcXPMQZPS1lWG+
X-Gm-Gg: AeBDietPINUeagwV7rzMgu8+LtAoFYAhC/VWB8yGHuns/SmHT0ThaIPngKLDmOuWNCR
	i32Rvxng/WzTuSRu/dzgnoi7GcZju3S/m5juCxDwnAe0hxoJBxn5BlNVaqbfL5/8BkXhbypH1b8
	F9u/KqmZPuIIkay9eOYJ4pxCi/KM8Rj3tRddRe69l9WolY/5O/ap7Gyz3++zNCQyyaLg7UG65kL
	GFDa/vV77kWPNIOLqKnbKAh5oWlZ1yYYvX3RDXN/d9Jb54OlwssunhnPSBaNdM+hPHwmMDOwLdx
	XWLKZ6Hf3UJdhOojRomlddpLgActdaYhvsbyrWlMAVGItyaYW6EgIFEJ6Nh3rNDxv74kHnGQfjI
	lDTWc2F4jDbRF5/hb/I5p7clhgDORBEFPdrUVfopGbO7orAYpKlIvgY8=
X-Received: by 2002:a05:6820:1989:b0:696:25d4:1e62 with SMTP id 006d021491bc7-6966838808amr1245717eaf.2.1777430860769;
        Tue, 28 Apr 2026 19:47:40 -0700 (PDT)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id 586e51a60fabf-4340e711c00sm110958fac.5.2026.04.28.19.47.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Apr 2026 19:47:40 -0700 (PDT)
X-Relaying-Domain: ausil.us
From: Dennis Gilmore <dennis@ausil.us>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Alexey Charkov <alchark@gmail.com>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dennis Gilmore <dennis@ausil.us>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v9 1/4] dt-bindings: arm: rockchip: Add Orange Pi 5 Pro
Date: Tue, 28 Apr 2026 21:47:32 -0500
Message-ID: <20260429024737.544813-2-dennis@ausil.us>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260429024737.544813-1-dennis@ausil.us>
References: <20260429024737.544813-1-dennis@ausil.us>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260429_034742_952945_F1A1B15E 
X-CRM114-Status: UNSURE (   7.70  )
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

Add compatible string for the Orange Pi 5 Pro.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Dennis Gilmore <dennis@ausil.us>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1a9dde18626d..ec1303140600 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1338,6 +1338,7 @@ properties:
         items:
           - enum:
               - xunlong,orangepi-5
+              - xunlong,orangepi-5-pro
               - xunlong,orangepi-5b
           - const: rockchip,rk3588s
 
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
