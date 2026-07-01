Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4816EC43458
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Jul 2026 16:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E3BFOug+5utGqr2svj6zabwXdBn7eyTObCOe+44NJGA=; b=qgye8R2HNlQV72
	fS8sJsbGEbcvRDolpztTO5OMxJdQ3uGXq6pDdeLP/dTja1+Ucc7k4qd8WwPLb27GbIqzcluyV50cF
	HovTz8qWYlpjY/tMNVsAwjAerDa6fWZGX/nB7vfrQjJhHi16JDdSsrbyN4zvjxaYO/J3kizQXWzvK
	1ogyjjVYAwk+S4MG8AvvcRlb4Tb29nojTmO3KRjzUTzBhNXWSdAy2ajPx/mHlOeKQpFN7K4nkDAQS
	kYrD1VXTUWylqPlXdBbju5r4YthuL4A69RXN+q0tmKOwxEPM4eXg0NgTqa9AteNOirOFkSdko1Ee8
	NY9cSCpHLdtn0COCvBEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wey5Y-00000002Zm9-03BR;
	Wed, 01 Jul 2026 16:47:04 +0000
Received: from mail-pj2-x00.google.com ([2607:f8b0:4864:39::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wey5U-00000002ZkV-1UVV
	for linux-rockchip@lists.infradead.org;
	Wed, 01 Jul 2026 16:47:02 +0000
Received: by mail-pj2-x00.google.com with SMTP id d9443c01a7336-2c980d7d6a1so2040575ad.0
        for <linux-rockchip@lists.infradead.org>; Wed, 01 Jul 2026 09:47:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782924419; x=1783529219; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kX4f21jjda4cufwsAQRS21Bz34ikOLxX1Fk3vMjHh/s=;
        b=BBHwlnOsBJ8GRSD9ApKXVXqEA4jDTLXg5iDlxwEtDqUAbk50mfhFN1/d0Qrvef9SjB
         bFr3lQMJ8LzQHHBaBNW2U/e7JEamZOuQPD547Ufp1znLLTx9VAnwiATy5Pqhloo+FzDN
         U9egmm/t5kYQ9bVFOQUb6B7qsxr/M4h1yJ+ubob7B8dEboQaYmIwTwt8yuWMLtPLlojp
         VwC/bdmA1tli752oD3twKEil2Fueqv5kogzOkYqR8qS2a3mGz/czVAEowQSoXkm5c3lW
         gv09Vt2vOZlCxTPR9pwPnId4i0fGGCLLR0Yd44e97vEJJJYg0WWat2DM7NGhekX9A/kO
         ooXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782924419; x=1783529219;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kX4f21jjda4cufwsAQRS21Bz34ikOLxX1Fk3vMjHh/s=;
        b=abt0C/KYun5xOqBvb1Q8uwHLfwfMf9W2/Z6dolOjgy3g3G88HZp8oYLnpbkKe5WbNU
         tP8lxbfCquz7DxUvnNK8IhkThMq22JYd1OlDU1DW7VTFmfEsQ3VIUiy1bb1OVuY66GVG
         5gskSRigkNKwD8kydyxOHvUNVZMKJlHD7k5cHrGQG6TN436oLzP394Fiy/XQvL/XfAIj
         u7226O0x+PkO1wcMyFIZqlLgOWyPL4/aTyJ7xr/MczejQwXH9A3spSyLzOSn0dMeKF4q
         xvaaytbFbKg8SbB2UXpnyP/P2r0+xG9L28qgI98KWS182bqFVkFWSYwhebIIhsd5Emu2
         4iyA==
X-Forwarded-Encrypted: i=1; AHgh+Rq6Srn9/5AvNmn9kkVAmqYKxkeFCNo/934GZOqOlJSf/XqWRnVUI8iMghhomoPWaO63thwmJShyXu4laSk8bw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyGMBcDX4thSV3H4zY8DOHSJnZVHmmDh/3X/JGHjxlyep+19iK/
	q536LHyA3tE7bxCML0CcM+/iuVw+96CPpB1jv173fat9Z8RcW1FTg0ID
X-Gm-Gg: AfdE7ckRb0D1FbHDUTumDYQe5j4toXYuL4vxkxNV7wEYKWCf1i5P9qAFZoNJSem/QUv
	OpP2MUGj5dqtmlLAhZ4ueZc/0m/FDUuMUVpgPwOLgfKyA4NRu+X/Bv+I12U/3xEDAQ7yUCpILw5
	NUD2xjuRlpAXtxg+vlFapsok86xYL0IwMUvl70dS1PIn1FEcEnCrAkCNpkpmbSizR/BCJ2OeyH5
	9VGq7CZmAquNbB0CHzhVvP02RlBYFpB+SwD6OwfiG4EpPxta84kSdwXGqceAoFj+MLnfC5xFVIs
	/x8Zj9cEpMm1F7T6CUf41hU90MvxU0NnGP8I+8mB+ATOGIZIueut0jIu0BL9hc+7JzeItDffvWg
	rlG0+WuV7OCur7N8DdHNqwA0vNh6AZn2vSTf760r9oR2ooOzGLq4o8WEJLYLUIoG8ESC+vkfaKS
	bDPqR1BxNwwDs=
X-Received: by 2002:a17:903:1a2b:b0:2c6:a772:7e43 with SMTP id d9443c01a7336-2ca7e6a6731mr28150095ad.18.1782924419477;
        Wed, 01 Jul 2026 09:46:59 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ca9a911f4csm985015ad.29.2026.07.01.09.46.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jul 2026 09:46:58 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v3 1/3] dt-bindings: vendor-prefixes: Add graperain
Date: Thu,  2 Jul 2026 00:45:43 +0800
Message-ID: <20260701164543.3967388-5-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260701164543.3967388-3-coiaprant@gmail.com>
References: <20260701164543.3967388-3-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_094700_394362_5CDBF0F0 
X-CRM114-Status: UNSURE (   8.42  )
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

Add graperain to the vendor prefixes.

Link: https://www.graperain.cn/ (China)
Link: https://www.graperain.com/ (Global)

Signed-off-by: Coia Prant <coiaprant@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 396044f368e7c..641a37c0debc9 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -682,6 +682,8 @@ patternProperties:
     description: Goramo Gorecki
   "^gplus,.*":
     description: GPLUS
+  "^graperain,.*":
+    description: Shenzhen Graperain Technology Co., Ltd.
   "^grinn,.*":
     description: Grinn
   "^grmn,.*":
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
