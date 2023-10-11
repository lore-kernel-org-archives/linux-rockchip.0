Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD07DCDB46E
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Oct 2023 22:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CmxRnLrIzgC8nNVBuDGdvjL5fpAkeX883/+B69w4A4s=; b=2ezhXEVAPHLTsG
	/vDRP5byGB4hzPR+ej6/PGdJkGpYKNIML4JY6eSCeq5wJPb/uZ+S3DEZjIXhQiCotyrjCFNzr3DIw
	mIWwRD+DyvQxPvog0715pFn23E374k1OFTlNbEbe9ohdOgovlgz/ifVBOON4zXCiQFsxdEg6g3dxX
	UhFoD3lONwa/X3Mj7a6+EXQ7whzuVnKEPsfIfYP4D0gKoymYJWoLZ8O0fE/aVg6zIkK7b17oEbU3m
	n1zS9RZur1tgeYC9wtmtD8qwMDS1VyrNwfnRTob2yy6NvxE7EuZFj9bCFe1jXtv8CbwoBJESVdeQT
	C2eC6RSDRdipb1qidVwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqi9x-00GseU-1e;
	Wed, 11 Oct 2023 22:58:33 +0000
Received: from mail-io1-xd2f.google.com ([2607:f8b0:4864:20::d2f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqi9t-00GsbJ-0i;
	Wed, 11 Oct 2023 22:58:31 +0000
Received: by mail-io1-xd2f.google.com with SMTP id ca18e2360f4ac-79fa425855cso17128239f.2;
        Wed, 11 Oct 2023 15:58:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697065107; x=1697669907; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pRyXfw6oDnrYF/zDNW5wWAwbCqim2kPOLkomEzubNKA=;
        b=DPDuXxJFLiyJp5+FRlhv9DjowV1UlALrDGGgVycvb/EiQTgpne+g3JRXwDXShB3R2W
         lrSVETwYjhoQ0zVJD0ENe2AQHN7G5EcgdJjER6oxRh2RSYZo8+/IIgKlWmT566g29db3
         B6lQXk/1TWSsv0jqx/01+mPsz41ElPyQAU0lf82HYC/hpKFoNAoMe+CLuv2fOre24nDe
         T+Caiuy3rnFqImbgYTuJMm9iFrePzqF7gMQNqa3cQ1ygVbjTU87r9/6c9eujFs5EVuWZ
         rckL03Mmae9kqMl+4ZoYx/sd3y6NP0haKhYTY9phoa1KUJB8Y1kv5uLp6cIO7rHBhQse
         uCTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697065107; x=1697669907;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pRyXfw6oDnrYF/zDNW5wWAwbCqim2kPOLkomEzubNKA=;
        b=sYs1jvaA5Ry2JsyaqzuKCXOJuunoxbYWsG9pknfZJbpFC8Lp2PfcUFx29momVk5F7z
         edsb43vIBxVV637U2u6UkpYScnVIXQ8rrsVoUY15RbeqA4zTyMVzLvout4MGKOIEsT0c
         6Ad57p2l58jDflpqKxkMS0gU75CKvYC6ViPoYzbbp+/htSKWLbBO69wBmEdjswQSEYYJ
         Sc5hDWddvT8nf8E9GAFzTrusTUGmO5gKteDuifYbLyYW6NYUhyfcNq7zYbA+EStPa812
         OXiNJGILSkdsiaAxrth81CXO5+3XqlRo4Brjg5YK8xbhRahd3Q4QTFvONDX+YtJxPAF4
         YAeA==
X-Gm-Message-State: AOJu0Ywk+52hCY08g873s1W2DyW8RpeC5btWB08S12+1R4PU4Eaz6iQW
	PKV0CAhP27Gd9rXFKyO2oAPcM1jBh9qNIg==
X-Google-Smtp-Source: AGHT+IGr33e6DeCq1Es2U6HxAMuQ4JLQ/vv/kv6x+u7LSh3/UX9r/b7JjU6RiJK1gSoGoaNV1TnVrA==
X-Received: by 2002:a05:6602:29a3:b0:785:d4f5:2225 with SMTP id u3-20020a05660229a300b00785d4f52225mr26077672ios.19.1697065107372;
        Wed, 11 Oct 2023 15:58:27 -0700 (PDT)
Received: from celestia.nettie.lan ([2001:470:42c4:101:fcdc:5119:7b2f:72b3])
        by smtp.gmail.com with ESMTPSA id dq15-20020a0566384d0f00b0043a1f6dc8d4sm3632691jab.4.2023.10.11.15.58.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Oct 2023 15:58:27 -0700 (PDT)
From: Sam Edwards <cfsworks@gmail.com>
X-Google-Original-From: Sam Edwards <CFSworks@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	=?UTF-8?q?Daniel=20Kukie=C5=82a?= <daniel@kukiela.pl>,
	Sven Rademakers <sven.rademakers@gmail.com>,
	Lokesh Poovaragan <loki@gimmeapis.com>,
	Sam Edwards <CFSworks@gmail.com>
Subject: [PATCH v2 2/3] dt-bindings: arm: rockchip: Add Turing RK1
Date: Wed, 11 Oct 2023 16:58:22 -0600
Message-ID: <20231011225823.2542262-3-CFSworks@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231011225823.2542262-1-CFSworks@gmail.com>
References: <20231011225823.2542262-1-CFSworks@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231011_155829_258227_EFEA68A2 
X-CRM114-Status: UNSURE (   8.40  )
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

Add the Turing RK1, a Jetson-compatible system-on-module (SoM)
powered by RK3588, from Turing Machines, Inc.

Signed-off-by: Sam Edwards <CFSworks@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ca5389862887..13b6cdc5ef82 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -870,6 +870,11 @@ properties:
           - const: tronsmart,orion-r68-meta
           - const: rockchip,rk3368
 
+      - description: Turing RK1
+        items:
+          - const: turing,rk1
+          - const: rockchip,rk3588
+
       - description: Xunlong Orange Pi R1 Plus / LTS
         items:
           - enum:
-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
