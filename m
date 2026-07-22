Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F590C531BC
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jul 2026 17:00:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+I340v2dF0ddEn3DOeqn4BQyZmpRGYT7SDQ+NQlj5E=; b=3xjN8kr0syjYkz
	Fd0gNjDUeb3Vck/PfduJH0iDUPzWQn1IHLVZ9zAkDjcHQQiJulwIdR5VrpC9K0ni7BsEfGK7Xa6hw
	XKis5QZA6XfTNNYCT8l/JId8lUeG7HKiYHK6Dowc2Vh8ygBp0045ECRs5NfPmwFO4UU3pWGZldCui
	0kU5Dn6odaKTFUC1kNQComj6SsWOA0NflrgT+E5yCWXImsZj9SWwWv7CMmgEArHQPE1QwgztCjZvV
	Rb76b7KnSTg0pVkVmDAwREj16XfmITo2g2JIkhdqVQx1g09nK0PNYCH5OsafuGNHro64QDa2U/WVh
	E2+5DHNvzZOakuBjjwGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmaJH-0000000CPLL-1FZZ;
	Wed, 22 Jul 2026 17:00:43 +0000
Received: from mail-oi1-x230.google.com ([2607:f8b0:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmaJE-0000000CPJ9-2of1
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Jul 2026 17:00:42 +0000
Received: by mail-oi1-x230.google.com with SMTP id 5614622812f47-4a40bcc8d69so8247786b6e.3
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Jul 2026 10:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784739640; x=1785344440; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kgs1gTYKZ+euqFobW4W1LJ9utvsV9nn5CKlGcDBeRcM=;
        b=cKCdXng5+NhcQwHXbJFBVkAcRY70WHdHnGlctRzCqPB90rAi2EbnkM6I1d8Yw/m1b+
         NgHUkMa+saJVJxyAqscMqJ+i+XP3aPS2L4mybOJbfYDPqd+Zq9Rm0S/pGFjE17/yzNbP
         GjbHG0mRdgsbToq0nlFF7tn/9a9ymZZ6IpdZhP0ujaZ1zGfPiJNPPTJOgCl9JkcAiHVJ
         +IeVRlY4BWEDDVntd+G3CtS74+ZjJ3cv+jVMNWq3utbVfakyE8Q87to+0eMkM4X/QrZ1
         ud9BctaFVAewk7p9WAUXca1mPhzf5qjq+bAl9sHRrAh0Tr8poboBqx3pOvOCPG73hKeU
         aeDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784739640; x=1785344440;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=kgs1gTYKZ+euqFobW4W1LJ9utvsV9nn5CKlGcDBeRcM=;
        b=EgOp9Iaogq7rLmMX9xam7LR5mYwUpiJoZLQJTH6ldoQmKcYRnYZR7xoTmLsDnPLToB
         MtX9GCXxYmbeZe5FBZtZSbCZ10bQxq71Zbd0de7zxbFiJyf6w4xOR5GgjP4wacj+LY/7
         ztvHioZjRF+Q39miwNS3RSzXvjbQk3gZGmAtM13996TItYtYGXhxlFSAy4k/5ci9/b88
         UtgiyLa1LdC5E2klQDIslKPsL66ASc8yyX0kTCd1eKZ14XqsRaJsa1ObjFV0mq94SZpU
         pHvOMSb/BzbNFlRGj3UbuAlI/TUsql4qW8sYR2pfdT7lI4hfGPhOx8cE3Zvq+hg9OnD/
         r/Hw==
X-Gm-Message-State: AOJu0Yz1Tk8w/eeMpaLO3Ro2/QEzPEzaWpBeO8oZivLaBKOEdxbWtidD
	Qus6cr59+5qwGUF6ZDx12EdnSyoECZYRtZmaOwRGo2HDxIlnLr2G7ehyi1pHLQ==
X-Gm-Gg: AR+sD11ZVtIwAAYY8Izx2uGrf4ypY1OR0QUFScIk4EiZ3ycxPmr44wEfTTR3NiGYz+M
	URmBw9pF3FUrlb5PCiWR3BJichGtgogKsvfvabNN5yJKqc6rAMwScPR7sYmZms3iIj/3jseb2QJ
	iJlNrpSedN9xyL/8F0Ao2/dlxZ47Z/GooZ41r6fmHmEiwd1vC+ZU5HwTBXDfv/K4Xv46ilhKe/7
	9kq+Oimm0KcmWLabWUeu9x2en0s407kZNQ6u4zedrW1oFPMNdOKjcz2oVr8OeVWyZ3zTJHjH6n9
	KtAlhScYuxky8djhBSZjd99oo8niCnir7sa/qJrXl+oaKTeW59BQupDLn2l5DM844pcQPLJRMhb
	20bZq/EYDTILnnyb2kYrVsUjVOY1r1E++DRBhQU5hLHpcDJpkEQIfd3WpwiESFUvxiN9hQizT2v
	UYULzN1OyokH4=
X-Received: by 2002:a05:6808:3445:b0:48a:3f80:ee55 with SMTP id 5614622812f47-4a4d049f732mr13420078b6e.26.1784739639887;
        Wed, 22 Jul 2026 10:00:39 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4ab0e9af0afsm1399619b6e.12.2026.07.22.10.00.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2026 10:00:38 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	xsf@rock-chips.com,
	sre@kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH V9 3/4] dt-bindings: arm: rockchip: Add Anbernic RG Vita-Pro
Date: Wed, 22 Jul 2026 11:58:05 -0500
Message-ID: <20260722165806.161020-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260722165806.161020-1-macroalpha82@gmail.com>
References: <20260722165806.161020-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_100040_713180_4BB80819 
X-CRM114-Status: UNSURE (   8.39  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add compatible string for the Anbernic RG Vita-Pro.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1a9dde18626d..b8babe9d3a26 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -66,6 +66,12 @@ properties:
               - anbernic,rg-ds
           - const: rockchip,rk3568
 
+      - description: Anbernic RK3576 Handheld Gaming Console
+        items:
+          - enum:
+              - anbernic,rg-vita-pro
+          - const: rockchip,rk3576
+
       - description: Ariaboard Photonicat
         items:
           - const: ariaboard,photonicat
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
