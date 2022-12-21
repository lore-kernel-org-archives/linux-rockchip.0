Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD9A2C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Dec 2022 05:53:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=AtJmqRBsZWPfPDHEM4xF3rH/l9RuWQjfEW9t7tlzlYc=; b=XknlTeBxRFr7M7
	Pk2Azzz4SB7ADpfVTxqfaVyf11kHOZorONXNfbaxlTmI2iN/1jatbd4+wDf608O1L1xC/LJcMiwAD
	4f+GW3NczVJFAiUWD6W1u+Nqwb/QHgrcmJumwMXVpEGfXMXH1cLLWIfNCLbnUAuiIQLZXr4gqfYJq
	70GaHtKazugpjR7lgqFvV0NtShlu3hxXFDBNsvJghS5Pqc4zJ954BjdsVqNUDn8jxXaHdvC+a6p5g
	Mf8C2wGdBKZi7Ztj75Ffew7srmncqba/9wW4YydprkbIMZXUE9z0nxxsVrIsfuogNfMkvAqTdsDh5
	nzJqUSgucdVtj0525baw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7s2L-00AEn3-WA; Wed, 21 Dec 2022 05:53:06 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7s1l-00AEOX-5v; Wed, 21 Dec 2022 05:52:30 +0000
Received: by mail-pf1-x436.google.com with SMTP id n3so9958579pfq.10;
        Tue, 20 Dec 2022 21:52:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9y7vTaoTo9o+JdWAFPFAlEafYcyYlhQjz5DqmnkuKJk=;
        b=j8d1gvhF8hecKiDysPSjqZZ4ugb+m9nFh6rGhwrS7ZuiNG3EeZnNw0IphSdLA1WgwS
         lBsoYpe7yplmmXheLFBeeqHRD0LGfZKiTiU0QXu9RS059Fgt48EymgC7rG4+/owrm29E
         eSLzUnXfsqCGN36JGZ5BXpsgR5V33sljdczdn982mQAChVb/asQqb6pBw+rK3ikSwePo
         6sPJMLij7oHgVjPcwpk+eQMQrPvaDdqMF3ISGi8nx8gSXShWv9p9fmk3toA0HhB/uUSe
         8hM58iTSrVCKjs4tuGJqA8BNJ/HuPMleJ2bHQ7VjQC/fTbXK2KblU0LAJRbELRbkEH9K
         Q9hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9y7vTaoTo9o+JdWAFPFAlEafYcyYlhQjz5DqmnkuKJk=;
        b=M6y36+ht2CXkyRUwrVB9OVXLj4gmLtoyaDSwzAnAQf+0a7FkxP+BF66DrKXOWds9o0
         M4V2hhANtbXK8s+OjMw1l6e9lpw3lOsZ/1Iuetg94Ta0hmgpO4UAZ1TxhsWSYeZWW/I3
         wlUASd/hm/jKIGIMiDxyhlw52qgYT7rlNfx7+fx8BZoUiJFeF5EixwZ/Kv2ESzZgZGRR
         qgAWA14LB/U0+laWaVl2sxBl/bdfZKhJkVyZ9djTYBTmw1/D+wCmYw6lEsegUuCBjRIc
         Il+An1DaJP97hIOTKYG+UwKFkzJm/JJn4TKl1gBPAU4Yomn2SB1N/Beo7i5UqzOqXHKT
         La2w==
X-Gm-Message-State: AFqh2krOMLs0/CthYfTKwQ7DaK4lR2dHCxnb4XAiQC03Ble3dc8uJkyt
	4HCIRM724+yP69CKC4IXrds=
X-Google-Smtp-Source: AMrXdXvhf5ms2kPruq/C1NKfP3TPEEKfe1SiGyJdRIXkZ+UfYpl8EgIGVcikXTdg7BR/iR3L0FsZ1Q==
X-Received: by 2002:a62:506:0:b0:56c:7216:fbc6 with SMTP id 6-20020a620506000000b0056c7216fbc6mr1004541pff.30.1671601944234;
        Tue, 20 Dec 2022 21:52:24 -0800 (PST)
Received: from VM-66-53-centos ([43.132.141.4])
        by smtp.gmail.com with ESMTPSA id x128-20020a626386000000b005767cb32fdasm9633824pfb.188.2022.12.20.21.52.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Dec 2022 21:52:23 -0800 (PST)
Date: Wed, 21 Dec 2022 13:52:20 +0800
From: Yuteng Zhong <zonyitoo@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Yuteng Zhong <zonyitoo@gmail.com>, DHDAXCW <lasstp5011@gmail.com>
Subject: [PATCH v4 2/2] dt-bindings: arm: rockchip: Add EmbedFire LubanCat 1
Message-ID: <Y6KfFEChA67E7oX/@VM-66-53-centos>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y6KdvAlWLMG4whJh@VM-66-53-centos>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221220_215229_467230_DBFDF2B9 
X-CRM114-Status: UNSURE (   9.20  )
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

from: DHDAXCW <lasstp5011@gmail.com>

LubanCat 1 is a Rockchip RK3566 SBC based
is developed by EmbedFire Electronics Co., Ltd.
Mini Linux Card Type Cheap Computer Development Board

Signed-off-by: Yuteng Zhong <zonyitoo@gmail.com>
Signed-off-by: DHDAXCW <lasstp5011@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 88ff4422a8c1..84d39a3a8843 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -781,6 +781,11 @@ properties:
           - const: rockchip,rk3568-bpi-r2pro
           - const: rockchip,rk3568
 
+      - description: EmbedFire LubanCat 1
+        items:
+          - const: embedfire,lubancat-1
+          - const: rockchip,rk3566
+
 additionalProperties: true
 
 ...
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
