Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E086CCCA464
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 10:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ccI/zI9vo50zZgm63SHRn6gssaIVUUJGeOvMyy9kLdw=; b=pNyWZNYLJ811eS
	gK3a46W19kOOyAIf7ypScULOsJo4/MDWIQDlxolciL/d+FLe/TnPm9sxMDpsyYqtar0NNitSCE4MY
	dvNg8DVpxpbKmoYmKIbuOp3bM+UnYECqsVVDD0msYKXX+TwEHYtyoie9woA0tlERtmjdPhVPYJSvb
	1nnX33WlSTlxdXS910jsNKCGIdkZkfYKFOizsC3wqLZS/Pif65sKb8mUfgBW/7WAxSVm0lB4x8YWe
	xVLDhWJOwVO5I9Y9EeFhFlbSmnE81qFDbVgkWNYfM83uWnnXvL3iOIk1Ia47v9kh64yBqC/owS+yv
	kw8I86QxbCLZVtSxEF4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfD8-00000002cuu-3bpo;
	Fri, 16 Oct 2026 10:30:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfD6-00000002csJ-40WB
	for linux-rockchip@bombadil.infradead.org;
	Fri, 16 Oct 2026 10:30:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=7C5jMvL4BZCrVCkE7uNmOmEvbc8VSHqIMhSM8aawM+4=; b=lm6zF6GmnIIOKGfY/SHFiAsJqg
	JCs85fONeCnbpsIuLzqBCYWIVMrDhE/sB5ydW+6nrt/bADxm+DTrm3OSITgEag+NKaU8eUm+QRxd3
	2PgGfSshX/83ChLi8H3tnFEAPDoatx5Te7KhWt9SHg8PINtCkM3+zHB0xDMhaW3u5wff4IJY9NJQk
	mT9rlX93RcqmFMEiwlWw1wZNrk0YRMqh/okf8rSnFBrc9PSc0deziRjNLYeZjoeBsnWuMzhG5Vj9N
	N5XzZ39QrvtQDqTfuEaBeXXKR9Zz3DnLxuDa5CTY5eH1plk07pzeIDX+fgeF6N3VMl4eAdoNwgu/0
	YHW9OmHQ==;
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHfCy-00000001NoD-0LBm
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Oct 2026 10:30:47 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-c2a4e013a44so481801866b.2
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Oct 2026 03:30:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792146638; x=1792751438; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=7C5jMvL4BZCrVCkE7uNmOmEvbc8VSHqIMhSM8aawM+4=;
        b=C6V3ImT+wy3kHVPmiZqrccxnfjSmzC+TWILEdhAVS64SU2YIGt/PEt6L76ITJBvgI7
         TPye6k8zgD01QGC45ruiUCM2zIVIiQEuN+lwpBxWxG8SmdwtO9nn7Lvp+tJRl89A2pUi
         sNlkeccydxQobypXrFQ6s1cvEFWkcZxVjVO82cGpbyG4p5//iZ1NPzCGMqHi0vDyQa7k
         9+fq8Yx4PduumIdCw7gHPytFZOgKBzYEtZ+oOSRTk5hy+QRZKXc3AhHfPhRwT3HOAvoo
         DKo1pUxrIlqY6TvMJuOp+vp+u1ME0h+mNQBUUigsOfbsAtYFPEyF6tt4J9NIviR97DWR
         f/FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792146638; x=1792751438;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=7C5jMvL4BZCrVCkE7uNmOmEvbc8VSHqIMhSM8aawM+4=;
        b=Anxh5f8j0X9vos9S6QedSYvaXbsf2T6+dXpbPoQ0ZfO5gFkmyGgmnYAi0d6ILmz/al
         o91dg6xyKDzDWYhJGw4bqOa5MMGLBlf0pQq+2WI3P2Lbgz7wShy8IOxPNm7phZMHAte9
         r5lNBdMW9joPx6IohM1ZjSu50rD6XSC4/6q5DCVS2LREZ/yPJ2fE8Cbuuxm3SXCDVjT/
         tmtunlt4F1ysvEwGTXmtv1WUddNJsseluF6vEFhx503Ib66gmVeW3UMhigtGeBTJcHzh
         oDY5ZHLWfmvtZnsVZmcX8MfmDfqRJypGCyVC8ktEi4XbTrEwb6aa70CcBYaYKoYornnq
         9UMw==
X-Forwarded-Encrypted: i=1; AKwUvBwvdNqM+oG3RRE/x9t0rZ6noAgzFUC7AQVP5YQH8QvypZngSeFaGw7jaSBcUItc+ieXF4/VbrlO8KAyNkgXnA==@lists.infradead.org
X-Gm-Message-State: AFq9FYI2W7x/2B+COJ+/Blgl05b8juDm39CTGILvRjt3zwqldKOOmoK1
	P9Lji06JvoxQheRBtmZ2abXo1JkkJLAXU1ifQpfoOyc0te3UsonMyG+X
X-Gm-Gg: AYBFou0Zy24auxThauqCotCZJeM1YA7TOQ+1RmzToWoD14DUTcbv/8hi6M5mYF0vjke
	T1mGS2BHzXcK3qE0Zrlb54YoO+7Ba1lR8U40RgI6nvKHH+J5Bt66Tp6QK2Hw5hYEAQfSJTZ4G8R
	aftKRiATNZ1gR8gJ6QC7tOX8XhMRIgCSN6YyWq9NZQBjfFVKvZQjHa/UM3cE+ux54h8amph+4RS
	jchJpul/HyJ/weaDoP6Ewyn/Pmnc2zuxq8Z0TdRaXfKcsmhdXzT/dokGBZb3VXyNKaqfhvOMuGX
	+dzXqvfcpsn7q2DZPjUreT3VaQXDEckknLNfMGjrqdpjwpwGK0b7kOHdMNmZGdFIkD0U+DXngTW
	nXGrHHUCX8FqlI7mQMxdPjinFW+QTiE8UW8aoLxJC1KOGGDNBg2ZdRQ3+rhCJEUq9GG+B1k00e+
	jkoqNsvYTYWA9Jlr5NQX+Rp7Xq9eMGgctUeAQdN5UpIrNY5UhQAOkzRWGPZ/2iXWVXRttjPHcHJ
	BeK3z0l4AqQ
X-Received: by 2002:a17:907:9411:b0:c2e:3464:6e36 with SMTP id a640c23a62f3a-c31a9ff9da2mr1920745966b.41.1792146637456;
        Fri, 16 Oct 2026 03:30:37 -0700 (PDT)
Received: from localhost.localdomain ([193.107.16.241])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c40912ce133sm60613866b.31.2026.10.16.03.30.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 03:30:37 -0700 (PDT)
From: Dmitry Yashin <dmt.yashin@gmail.com>
Date: Fri, 16 Oct 2026 15:29:34 +0500
Subject: [PATCH v2 2/5] dt-bindings: arm: rockchip: add Forlinx FET3568-C
MIME-Version: 1.0
Message-Id: <20261016-ok3568-c-v2-2-068d68430e6d@gmail.com>
References: <20261016-ok3568-c-v2-0-068d68430e6d@gmail.com>
In-Reply-To: <20261016-ok3568-c-v2-0-068d68430e6d@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Johannes Berg <johannes@sipsolutions.net>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Dmitry Yashin <dmt.yashin@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792146625; l=1181;
 i=dmt.yashin@gmail.com; s=20260930; h=from:subject:message-id;
 bh=pPsEz//R/5mbHWtInqzwe95ndZ3s89rfdZjnVNEV7dE=;
 b=4huMP0THyaTfkAsa/Z+xPB2qx+6GFhboW2FltactI3p9iSfU3lYO2xAjfuB9+FMcO7kUieeHH
 l2JDbETJyivDuimoNKHkJiyCmq2Wn3+4BD3xvC2ez4gNDyW3iWzZIMx
X-Developer-Key: i=dmt.yashin@gmail.com; a=ed25519;
 pk=vBe9jaaOEH5bQEvfzb1tWOlz3AMIcXCu/GL/CdlwJco=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_113040_250710_1DE5C88A 
X-CRM114-Status: UNSURE (   9.01  )
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

FET3568-C is an System on Module made by Forlinx based on Rockchip RK3568.
This SoM used by OK3568-C Board.

FET3568-C features:
- Rockchip RK3568
- DDR4 1/2/4/8 GB
- eMMC 8/16/32/64 GB
- RK809 PMIC

Add devicetree binding for Forlinx FET3568-C SoM.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Dmitry Yashin <dmt.yashin@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index a799bb843f74..30a6794861cc 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -324,6 +324,13 @@ properties:
           - const: firefly,rk3568-roc-pc
           - const: rockchip,rk3568
 
+      - description: Forlinx FET3568-C SoM
+        items:
+          - enum:
+              - forlinx,ok3568-c
+          - const: forlinx,fet3568-c
+          - const: rockchip,rk3568
+
       - description: Forlinx FET3588-C SoM
         items:
           - enum:

-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
