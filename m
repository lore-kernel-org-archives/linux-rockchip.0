Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7D81C44507
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jul 2026 01:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x8bn4gpjqaAwoatYzXN7etIHhkcBgV68F2RZsZabmuM=; b=kkD9J94DQhneUv
	USQzfDIHvHZMVFA3Qj5+ojiE1XzQrH+PffL3dtZQ/k2JOISUqWqczjxFPjCF4XvuprFfDZvQ2qO+n
	urUzN1Ce7zHdC4s5Nf9ohQUL682+IkHw0/u+X4WioROV3FMxJ6DQJzkAmhgwlPQjA1YO+iCqsnfTp
	eeokUBQyNuzRLiq425UrAlF3hdeAxpdF/VUkgk28LD5Kn/LKPUEgmQSlaRh7iDvn3YUxqdquJlQCR
	31l62kaYbblwX5XJIW0s38QDxLkz+7gPkhIQZCNrP+Q36uZ//VYYjDsimBGKpnbBvRRSu/nAEQtKR
	sWJHUBNTOdiXOMnqvEQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkAuH-0000000GCE2-25T2;
	Thu, 16 Jul 2026 01:28:57 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkAuC-0000000GCBP-2dLY
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Jul 2026 01:28:53 +0000
Received: by mail-pf1-x444.google.com with SMTP id d2e1a72fcca58-84a2c90e383so60761b3a.0
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Jul 2026 18:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784165332; x=1784770132; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yWs04zmRhwhbYBG2seCp4kn9pc7wv+8tpSxzop/N42g=;
        b=O9tTS9t7urCKpdvd3svtlfdH6dCoeY0Hbi6aCjT46+y+tKZfgATOjwArYpvzUue4GG
         xHhm/5/fK9PcSbG6g/UNLRsZoaX4ZanealZFReDAatOFaYJSEqnjZyYNj2nEPo0qW/Rp
         mbyQsiqIO7fmDfvvWokoVRkFbsNt1Z+yRUp4et1E63TwiHfBx9OLJZywFSWW0hI+J0BR
         OMdJXyNZR2OS0K2T4l41U+Aq7ET5+CzCt9oSIYZE9CQusSdJRUIgyCCY+N9DIHu5lDFN
         ebFtbZS0vXib7iQGn22M/F8vG7p5t/bBUalqxxwIE1yOmgMcMI6T41/01gXDpTjQwaV0
         K9iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784165332; x=1784770132;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=yWs04zmRhwhbYBG2seCp4kn9pc7wv+8tpSxzop/N42g=;
        b=B/EuSaAzigBH82JgzyVVV8udMSjh4HrqYIXafBk6EX+uEUv0XBXPMqD4YAgYerCRxG
         k4Un+ywBWMgkU6bpZj0V3nBQc9j7+QZiUKiZlf6ItlnT35U/Uzk9J6Sx51Pp84dMF8qo
         Zrj6hP2OZrkb6U755rVTcWyz0oKc1SQzAAqcRHDGpzp3laxOXrnly17Cnh27DRwoAIji
         F6wRBFExCsa5vOPoyyaTIt5hkvDGDtdUspvM/D1dm93ozMMuPLivIROgdLwqFi0xbK8r
         2o4Eo0MYvXv1Vbrvfa7JZyOfGJFvgNmeQzaGe59IHThMcfSBGTG7tuaG9lLiGQa6SI4J
         h5VA==
X-Gm-Message-State: AOJu0YzyKu1C1wdgBJNzr2h5hnN6uXOwwpWl/OR2fvuIFB6DtQG59WzV
	C+Rsi4Dk2W9K8LbBCFB+N5oXuXiafD/iR1zqvXSBKXnaEodeUs6ZKIMjLmtuNhdFRIc=
X-Gm-Gg: AfdE7cnuYc2rbBnAkahg+JgWCAlozkwwGt9GN2SKb3PCnabg59GhnwO1BJwgK2uFh5y
	5CJRp7ufT4kvvwvPQZgd0dCIBl01l6RqhTBRANC54IabybP99LPyRVyRVnfSpuzwU53Urt+LmXK
	EON5jsL1b6ewTia9RwOJSQ7rtRFjgNCflZmF7VXoFByJxfIai+D/v66ie/jms7K0E4Mk+tEXwmJ
	XpDCerhl5PzxUHuoNf0LL87binrfZwH/0IzDcXXd+kfEXc1lCwWKECOLjprnSxQSSfjojBGRR/C
	3mn1NJ/MklATFZIeL1OzbIWWe9ESBXw6LtUmOBGPNW79HMb5xJiq/cDsOr3p14piHXfwauyv8EK
	udSXoq6YL1pEG0zldousy0jgL6spFlTDre1HWXbz0rRUnM0LGIsvHUqbyTVjydICVYGD5pzlNU1
	GocTRHcG9WGhdUBvAg3JfMkVE992U0JE4EbSNndHKkjoDIxfQLJ1R9do4xaKQ=
X-Received: by 2002:a05:6a00:1a93:b0:848:2f58:e1ec with SMTP id d2e1a72fcca58-84beb57d6e0mr419869b3a.39.1784165331660;
        Wed, 15 Jul 2026 18:28:51 -0700 (PDT)
Received: from ubuntu-gnu-linux-24-04-3.hub ([2407:7000:af23:3e00:3ca8:26ce:2345:363])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84a4ff2ea4csm3901362b3a.23.2026.07.15.18.28.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jul 2026 18:28:51 -0700 (PDT)
From: Jiaxing Hu <huhuvmb88@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add ArmSoM CM5 and CM5-IO
Date: Thu, 16 Jul 2026 13:28:37 +1200
Message-ID: <20260716012838.2353939-2-huhuvmb88@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260716012838.2353939-1-huhuvmb88@gmail.com>
References: <20260716012838.2353939-1-huhuvmb88@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_182852_691731_EA348175 
X-CRM114-Status: UNSURE (   8.00  )
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

Add compatibles for the ArmSoM CM5, an RK3576 compute module, and its
CM5-IO carrier board.

Signed-off-by: Jiaxing Hu <huhuvmb88@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1a9dde186..5c7697f4d 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -71,6 +71,13 @@ properties:
           - const: ariaboard,photonicat
           - const: rockchip,rk3568
 
+      - description: ArmSoM CM5 Module based boards
+        items:
+          - enum:
+              - armsom,cm5-io
+          - const: armsom,cm5
+          - const: rockchip,rk3576
+
       - description: ArmSoM Sige1 board
         items:
           - const: armsom,sige1
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
