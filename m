Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9187CC433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Nov 2022 18:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PwAkQye9k8NQB1zzASXVrn2nuCyIZClkuxwjy0mUHyE=; b=I42m6SCdx9LUY+
	R3KOJXCOgz9Pyyt9tvx0Lt8kb8DLsMm4SQEyFAj+rVxaCx9huP+m4g7u8Ak4GCuii59pii3vU1KRi
	2jqiU7zalAk8B3ZgU2U95Y/fQItT6Olciowk6rtcLmIeZ4j9JSxwCQauqEn7y3RRuq2kIIH/02OWl
	3VuFT69ZyDtbn+RfHTTODD0N0RsZzMKU09NhJxoG0KU8McH/7ZLdniQ79SPcgLYApjToPSX94B3o3
	p0knhsognqzT/yXfpOo96dhxwnjGiQYIMZv5xv0MpDCgvLmXmPxfoTUPlkvcvH1xMtlgySX/5vd5t
	FsYV98LpoP4v+Bfe1nnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxuZy-001fRv-Ny; Wed, 23 Nov 2022 18:34:38 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxuYE-001ekY-R8
	for linux-rockchip@lists.infradead.org; Wed, 23 Nov 2022 18:32:52 +0000
Received: by mail-pj1-x1032.google.com with SMTP id mv18so8907647pjb.0
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Nov 2022 10:32:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=98wheFol2bxYOds/S3rYvESqO5xCxCAPSpTtFrQMTLY=;
        b=vo9sB7Zqb5TcH96l27l15NhxzCZpy0Z+zIDca5M8ypVzWGNOxHp92yRrA0idYw56kC
         7+1bq/h2EMxDZhBxcrPPK8ekvaVY5xauFQLosYnObSlvdH3mJxZBv+pBxOTP1tam9hva
         6j7UpWMYCTasnvamMrAu8g7RhSf77S6Tjef27fiOQPU1yk756JlH+1K60tKj8on6hYmd
         bvY+Gp/RbNld3ZOWJ861WrmVCIrzKC2S2CAaQfgVyGmICXLimyet0C/DdnU0KM8UJUtp
         LTbHrJcZP7JMZVWPVyqgs1+exKJFT2WYH2hVjcXij3zg5Uyvg5dphAgVJsLhJRIDX11p
         FjbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=98wheFol2bxYOds/S3rYvESqO5xCxCAPSpTtFrQMTLY=;
        b=r8cDhiJq+RcVQhQmrkDfmbBe4gj6Oh9Oyx4R3jX96U/l2RsJiy8QbMZaa4MMrSF97d
         AOU+MprDp1vp3rlmCbWQb/fVNDmdSaeIoXJ+2SoLEydzRoMo81DMJ34XVKun08a78gB8
         NzqtOmmlm7FEoP+mZCMh6EBV8ZzNnilyObfdfj01dbxRmgpb6/ufihdr9u9+dxNIyLY+
         Ox0bMgpPKAzKjLSlPbeSeDnQ1AEE6lDjzgH3wlfcq8n82Sf3ZuLqzQgFmp8g6qEEZ6gU
         KfSUes8URUR/XaM6L0QJB8ZcNpRhqmE/KJ343s900D/HCUJjCFQNUNH0udi7BjBTtKgH
         QtKA==
X-Gm-Message-State: ANoB5pmAMQMpcSrS7gRx4Mtee8jUKK6Rkj8UhHuCNlhLaGQTL/fSas77
	9vqREusQrVVCo1+DNWQUh6cPxQ==
X-Google-Smtp-Source: AA0mqf7Sjmwo8EVLBkmoT2RgqIlVBPy+YLIVAyyiVasCOA91VnoZNvOEp+LBTzVoZHSG6XiZ9Cc7sg==
X-Received: by 2002:a17:902:8212:b0:187:2430:d37d with SMTP id x18-20020a170902821200b001872430d37dmr22727404pln.28.1669228368822;
        Wed, 23 Nov 2022 10:32:48 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:a055:fcc4:4677:827])
        by smtp.gmail.com with ESMTPSA id x3-20020aa79403000000b0056d2317455bsm13006732pfo.7.2022.11.23.10.32.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 10:32:48 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Johan Jonker <jbx6244@gmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v8 1/8] dt-bindings: arm: rockchip: Add pmu compatible for rv1126
Date: Thu, 24 Nov 2022 00:01:17 +0530
Message-Id: <20221123183124.6911-2-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221123183124.6911-1-jagan@edgeble.ai>
References: <20221123183124.6911-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_103250_902238_59E437AB 
X-CRM114-Status: UNSURE (   9.25  )
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

Add PMU compatible string for rockchip rv1126.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v8:
- add Krzysztof ack
Changes for v7:
- new patch

 Documentation/devicetree/bindings/arm/rockchip/pmu.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
index 8c73bc7f4009..b79c81cd9f0e 100644
--- a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
@@ -27,6 +27,7 @@ select:
           - rockchip,rk3399-pmu
           - rockchip,rk3568-pmu
           - rockchip,rk3588-pmu
+          - rockchip,rv1126-pmu
 
   required:
     - compatible
@@ -43,6 +44,7 @@ properties:
           - rockchip,rk3399-pmu
           - rockchip,rk3568-pmu
           - rockchip,rk3588-pmu
+          - rockchip,rv1126-pmu
       - const: syscon
       - const: simple-mfd
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
