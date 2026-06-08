Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4D4FCD8CAA
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jun 2026 17:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+I340v2dF0ddEn3DOeqn4BQyZmpRGYT7SDQ+NQlj5E=; b=Q9WE6RZdKBMU96
	4rm116a/g3yFpS4RPbiU89h2HwwBjjjUeA8QX1jbJwA4L2XOYEVrUKdBp+OFy/4+GxjpW8sMYqJxV
	EdffPT7SaW1wgX1QWrLVwyiWCAyhdEPIeJkI74GDkU44rsB/ua2/DvFWa0Q5ghVLj7fcutZNM32ys
	M1jYvsOXve0Rn0sTR71TKG+4xenj3NaqRxijVnQd8NHiZLWgZf6a9rJCkp3X9l5pJIfRT/o2RcmHO
	iMS0XiskTRnmli1KkaABDI3RThKFjBeQw2eah8dHD4NfOhorDzFkEq9P65uHiIRPv3tO6HtWLvp1L
	G9vDwUS6pnGrtO8W9fpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWeEI-00000004ETL-2Tjj;
	Mon, 08 Jun 2026 17:57:42 +0000
Received: from mail-oa1-x2c.google.com ([2001:4860:4864:20::2c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWeEG-00000004ER8-02r3
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Jun 2026 17:57:41 +0000
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-43bf9548df4so3244801fac.0
        for <linux-rockchip@lists.infradead.org>; Mon, 08 Jun 2026 10:57:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780941459; x=1781546259; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kgs1gTYKZ+euqFobW4W1LJ9utvsV9nn5CKlGcDBeRcM=;
        b=TCELCpZZ2rlsYWzoWNnK11MD+atOLsPM3Ssyb1Yp6KQDVl2r/ADKMVJ1gqg12Zowoz
         1yvth6XrZnm/H0rPsqJaCyXMmCGFj7hAK57gYGG26knzn/oo998tjaHYd1Lc2ijOLfhN
         VGK+KoOoS6VPQSNrptBordJdqxnDaES7x2cTnPSqAwDObROu1pPsSxbdDgnKzG4umx98
         k3foyf4IPatmGG/KCAqq/CExfuhWb76TvzqrAJepRSX3TxYQOquH/oFopMXAbZga60Yd
         /zorZ982MdE4IUupGeCPtBFMM5Fd4KPTw4xamHX1ECUrel6hBizyPVL+4fjrszzBqGGB
         m01g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780941459; x=1781546259;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kgs1gTYKZ+euqFobW4W1LJ9utvsV9nn5CKlGcDBeRcM=;
        b=MpwDiFWuYNxIBj4LTGUCQO4s1C+L6Edg8qbzZ2VgyK39QnlEArv3sFnkccZIserzBq
         E7HChJGLbn0jIKYGLormOQNFhabH0JXZUhfbKDnzWhrLVMxs78KwwlQ6OQAH/X0powsU
         wmH/qLWHexT4AngvgYd4psH7iF1QpjbnjHolHwYNWhGTAa/BkdjgdPf+ESYBpFJYUQBx
         0cWtTcKLs2HQT66zZyfL8taVqus+VocEOpYh2alztVwvFTYXBxqF56ueads8XfJOcFwm
         /MsOPyC0oBQpQW/LbqGQs7YkPj2WV6H9e+qia4Q3WVtkW47t88KaCXCjh7ONpu2KtNEn
         YeGg==
X-Gm-Message-State: AOJu0YzH19ajZ1GIkIDIAde6eLCeABHXI3mivMzax68i79p1GrgFnIe1
	WYcjm1GDbwSQaxJv9yZx5E3pF7meKQzUmuuj2GwSVRUiMJFnjlxdSJtBxGMb9s3j
X-Gm-Gg: Acq92OGyowQZ/hVstBqScjyMwTEFYm7DyPLTpLDi3QbFkruONJlCTIag7GWxeGt94LI
	sPjuYXS6vprsuTfSEfqBBS4bEPt8QQzypdZJZAgy7UWMfDHb73QlzoZ2l431YVzKGI2pPypZP8S
	iCV+m/S9f7NvK86GNiX26kHUiHHkTjWVk4X1Nx34T3f3RvtJZPVGGDdf/MYut6v55SGjSMBPHZ7
	PQLgtAQQvvg4uUr/yHtb56yOGk/Ta/oCI9S/BL6R2wuyyLKwLaKiLDzHC5nP1ubB98c6WKvSbmq
	Hn0+ZoowIWeJ/ijO0KyFftg7tZbpP5Li3+9NIbIVaxauSwz4aHrCr1omvGb8euIPk8IvMPo9jrH
	elvWNFZxO71YB92z504i81D/MH1cqxE+ujGLcWP2lEck9K+4731s0ZrN06tXU+MEAzvkAldJEN5
	Cz7M4m+TAV5R1fMKoDd+i4ZfoVtQKN3o3xR4uD1HQamQ==
X-Received: by 2002:a05:6871:6c0a:b0:430:3591:26c4 with SMTP id 586e51a60fabf-4413d6a1654mr9148000fac.7.1780941458671;
        Mon, 08 Jun 2026 10:57:38 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-440d8297395sm15214316fac.11.2026.06.08.10.57.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 10:57:37 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	xsf@rock-chips.com,
	sre@kernel.org,
	simona@ffwll.ch,
	airlied@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	jesszhan0024@gmail.com,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH V6 5/6] dt-bindings: arm: rockchip: Add Anbernic RG Vita-Pro
Date: Mon,  8 Jun 2026 12:55:20 -0500
Message-ID: <20260608175521.67449-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260608175521.67449-1-macroalpha82@gmail.com>
References: <20260608175521.67449-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_105740_043978_D59EE49C 
X-CRM114-Status: UNSURE (   8.31  )
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
