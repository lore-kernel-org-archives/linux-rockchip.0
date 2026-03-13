Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F045105F7A2
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Mar 2026 13:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HYIvUx0eBE9Cscl28+UA0RU8FyzJ41XF3SH3/9Qjnsg=; b=ZaN2V8Q+xTgWEq
	n8x390CigjrDTDiJ11pMIrOksvelrQQpPt11xmKic67zHzSZ1qS1lTheSmimOcV5LFIusVrl6gUMO
	/JcLvi5hOqdTK9qWV5PGHgiHnl0EbKLsxtR7OJQpNXZvpcJV88PcCIbJnT7SHI+aCRpPHBYWgXv0+
	S6n0kSANc5qiG4CKZ3oTC0ex26gJWzhXHcFPmgDaT3YrdqD4Ie9x97bJOlgS7Hq9luDwWSZyPtNLs
	ly6cjj6mSiTpcldmq0F78Km2tJ+Wz3ApjKW0loQI2AnkwVmu0Ibam6ZszwUUFSqVpyje+Z+Pt4998
	L33p1EuZubL5WHJV5yug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12IW-00000000BOA-0foh;
	Fri, 13 Mar 2026 13:11:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12IT-00000000BLq-0yli
	for linux-rockchip@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:11:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=eS5sv0UBOGHpIO5uY3YOxKqzDuk8BU/Ch3wu8qyg9oY=; b=GmyCBglJQ9Hm2xApRkK8gE4OY/
	Nvg/z4EgfJaHw2daoHGiT5KzCt5O9Z8be1cQ9D7v/Jx1967DqqqEcm6+BpjUOD5cwvEeDJPPAJHIF
	82sx0dqcrruuOin57+y4EKNM2kfTo0iF86x5D0kci6V3kjr0b9GlWc09YuqPByN/JY4+iG1lhc5Dt
	vB0UVO1Eyz18Zk6SGXtNM0EPO68rWqfjJGQoeMo7IaBrTqVNnXus3eXsEtasesOwLy9BcXlLiaWOw
	1Xp9tyVDMPnJbVqDGk/C5GexWdbfE9hDNwJIip7ZEUBjZleMNG2RbrqU2EqHQwBHfmEUtSKoVZ5na
	Po/2Aybg==;
Received: from mail-dy1-x132f.google.com ([2607:f8b0:4864:20::132f])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12IQ-00000003Kwa-01Kg
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Mar 2026 13:11:19 +0000
Received: by mail-dy1-x132f.google.com with SMTP id 5a478bee46e88-2bdfc4b191fso2490764eec.1
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Mar 2026 06:11:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773407476; x=1774012276; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eS5sv0UBOGHpIO5uY3YOxKqzDuk8BU/Ch3wu8qyg9oY=;
        b=N/oU1hnDY5f53dyCmvWdHsIyWSAtwABui09Auk69mRRbXzusK7Pifp2Pd1meNBX6EV
         Cr1sJSCKx4nlpq2x1rMGVczNYYc84jB1sHC9UvlcOFBeYzfu5CCRVEJsp+WgXvH4LSMZ
         /ZvrC8e5YeStmc3mzXn2GgsbqPK3ZLypvgrfKaRCVHFSYeoEXV9gajEsSLI2szH9x2F5
         eb1V2RJ/Wjrs/44LQ/LfqDFCvvjJvbQVU9YDfxhEa9TifvAdjKsaKRDODiu4pLCY4fma
         MRoT93zsqxKV8xQV62yHtPPveZsJhyQQ7eBjz3fBwLjQkKJFA43pVWZ9DTjZJ3grgMFx
         eOig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773407476; x=1774012276;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eS5sv0UBOGHpIO5uY3YOxKqzDuk8BU/Ch3wu8qyg9oY=;
        b=l03qTGwL0D6lhgz/HDUlkUQElJvLclzBenVG1ByRjksKt1COdmzaCE7yXf6x95Vt6u
         VUPZbcN8pIDINq7BRB9Nu8tqwyrjdu0JTu/1Cy6pBf3ZtFaEEWnMzCurIEpC7NsXcKeY
         xPE8xFBBEtALgweWb4xrsxhOZyNKqgMCggJ3TKZ9FhYYIbU2CmtpX4So0KJTYiFunqAN
         xjFPAbMdxIAkVg/t16LZ/+zy53XoK9otWQI2EqdDReVh3lK4jAHryrGxXX47pGuYTTub
         RTZJIFIWskM5c3cCiGO4bxLTBpHumnyF7q93iE7+OiOXM88h9732MN5wd9egDh0lWLvL
         wk6A==
X-Forwarded-Encrypted: i=1; AJvYcCXxoAZuC4uruT81BWzwxeZnJg+mTxq420t50kgM7i+0ICveGvRQvAnw3WykVqtTm4Bfd4jSw0r/jTNsVYQZdw==@lists.infradead.org
X-Gm-Message-State: AOJu0YykFUNXhMdZ2HTGqdyfWIBonV0j+WKzulLK4sQGS6mdfn5xkrHP
	dvu2PZcKV8Oe+XHjO/Fzki0hfmn/Slpgto49HNTpTEvp5jw+Tb3vj7xDtPWz3w==
X-Gm-Gg: ATEYQzwqe2fUSW20lG9YUrGY+ueWq4MKX0dfr1oeSa3p1e2Vdg0F7G4eSrID4Vrnfww
	sMXbNvHgx2HZYfgyoTOSPzqavL/Ro79XyHuIxZQW2KDzjd2Fa3dWJC/lGVfJDUZ/yj3pLpP7i/g
	gnBNsPRw8rnjQi4hDjdtZ90etZKW4yESSsu5sp+YZ3VsDPwxxHz76JUtcHbeSNctZC2x6qRVfL3
	PdRWjMm2LlV/C+MAUTCUR4RbDE+sYPEFaid124Lrg4cy6paYnvKoODa1ySqIVSL94MtToL+XRSL
	e4hAYIZy9Ai8QgolYDoriD1nQsPRCaNCv32TAcYH389kj8+nEeUAgyHcAy6FZz5lHdJX0eOUfKm
	b+lC18H2TRkYcd44lsWD6AQz0U2J3dM1kp4Mr+mlGIqdnlqZJ0zc0Rz81QxzkHlvfR1bdISJi+D
	2gLOfOLJagPAU4Lag8Nxeyo+XKkqlUBuXzaeOYyFfdtwJig50oHOpa5PvzOdUym1rfvkB2xEo4m
	RaP
X-Received: by 2002:a05:693c:6286:b0:2be:b2cf:cd34 with SMTP id 5a478bee46e88-2beb2cfda25mr328638eec.18.1773407475406;
        Fri, 13 Mar 2026 06:11:15 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:1b3:a803:148f:b6b5:4:db6e:9a2c])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2beab5702e5sm2602315eec.29.2026.03.13.06.11.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 06:11:13 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	shawn.lin@rock-chips.com,
	Fabio Estevam <festevam@nabladev.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v7 1/4] dt-bindings: soc: rockchip: grf: Add RV1103B compatibles
Date: Fri, 13 Mar 2026 10:10:55 -0300
Message-ID: <20260313131058.708361-1-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_131118_234329_554E8463 
X-CRM114-Status: UNSURE (   6.71  )
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

From: Fabio Estevam <festevam@nabladev.com>

Add the PMU GRF and IOC compatible strings for the RV1103B SoC.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
Changes since v6:
- None.

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 0b8e3294c83e..2cc43742b8e3 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -63,6 +63,7 @@ properties:
               - rockchip,rk3588-vo0-grf
               - rockchip,rk3588-vo1-grf
               - rockchip,rk3588-vop-grf
+              - rockchip,rv1103b-ioc
               - rockchip,rv1108-usbgrf
           - const: syscon
       - items:
@@ -98,6 +99,7 @@ properties:
               - rockchip,rk3576-pmu0-grf
               - rockchip,rk3576-usb2phy-grf
               - rockchip,rk3588-usb2phy-grf
+              - rockchip,rv1103b-pmu-grf
               - rockchip,rv1108-grf
               - rockchip,rv1108-pmugrf
               - rockchip,rv1126-grf
@@ -231,6 +233,7 @@ allOf:
               - rockchip,rk3036-grf
               - rockchip,rk3308-grf
               - rockchip,rk3368-pmugrf
+              - rockchip,rv1103b-pmu-grf
 
     then:
       properties:
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
