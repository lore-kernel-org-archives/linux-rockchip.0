Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3071C4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 20 Apr 2024 03:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oEzXyT8GTwbmLne+zfOA3sTIrug1L01RgCbFKLPIslk=; b=ncR0gwVsfIOYkk
	hoSYDwfbgXCYxNVxNrZXJkegEIsGJa65obqIkQezD1NQkPLZzjzaffxQwaQACocp2XqktmQKZseDZ
	a+T1EGFaGPE2kfR2zk6JzsPbZMlUZjAw3dzElXj1Z9ZzfoZzd0AhLRvWONdIsGH1GyNO5kATYN4S+
	ARCMy//q3aM66CUhxqKm/+hLoesjntY0SurAEWOFsfM2FWGwvT1rSOBbsiyQs+5X/tVBvqHHO0cZG
	Du5jqd7EjwgmIFy09OPGg4DDedbfak0uNBMO+fFeaq/YonXh4GzmgIvjYK619xfJLV7VVi0EbdxY5
	kYXuvX8A+KGVYNGm0TIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ry1eq-00000007iPs-3Kjr;
	Sat, 20 Apr 2024 03:44:57 +0000
Received: from mail-oi1-x229.google.com ([2607:f8b0:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ry1eb-00000007iI9-1xTW;
	Sat, 20 Apr 2024 03:44:43 +0000
Received: by mail-oi1-x229.google.com with SMTP id 5614622812f47-3c7513a991cso134271b6e.1;
        Fri, 19 Apr 2024 20:44:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713584680; x=1714189480; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=75aJ1R46eppO8WQAJHm46Z0JaUnbnEd2ocOE2hNXu7g=;
        b=kUsTDoB4l6GToOJKpwicdOBw4SCt7ht90fNaPJB0OEVwI6VSk1aqHFKkQy9Mr2iy23
         PNe8ZPPaDB+zLt4LgZW/NGF/fac7m5o2oz6Lo1FN8Zf82flO2n7MY9bg3Cqw2mlrwqjp
         u6Cf1QOmAb4A2eLC3tKYHHbXyebo4HGOoocMrihcv3Bi7qsdMHNPFvqxvQR2NpGedzp7
         z+uA8OD7ieLLyhkzeWj8YLh8ypnqVyeu6ApbfrBzJNUAB0TrQx4NJn8lOSomeHY+6Anm
         yRykUogjORrZiFjQ1S33cZctui+TX2jauY1N69Pfii55wCnEaRBy+3Lv2f6hYT+ZH4/A
         DODQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713584680; x=1714189480;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=75aJ1R46eppO8WQAJHm46Z0JaUnbnEd2ocOE2hNXu7g=;
        b=rB6c2KWO1vxJ2dph8M38SeT59s8pBgciyl/GDTsfxpfCNNL1nWNCK2w63WgNGh0xg2
         dWAX4otRwMuRRaFCfMkp+dIPq2IUvb4Q+P911qG9JGUAl/n2Pw4/B9a1rtawuJF6TTGw
         B6/oVyiyLIPRbDnqHKlWxgqTsmHUEUU9XmdwoKPC5pQJluXO4jHE2uxY/VvQ/Jt14Dao
         Bod1ZzjjgrVPrAbLAz9h6pduCIGUjR/Xwc1y9AZuSaD1NbkD46aFVDrnJWsR4qcoDm9c
         PXtw9VUUghij3iy4ml1A9y3Kks6MMqo4CPgJJaTuTVYJT55ZX78FBEJKlcBus1otDHQ2
         W05Q==
X-Forwarded-Encrypted: i=1; AJvYcCXmH2gYxbJGDwvjcRu6qvcyEWPAbrHfWopPsqZYZXszzDvkiWdh4UpRESaRjAhz7nRdhLwIf/DcabKFeeJe2DVAGcFik6gkzzV3V+krOdoVCxr1jGaEZlF35EJO+Sn4kymWOuZl29Oek5/L+KCoatW+Fgwu6TuyOwQ=
X-Gm-Message-State: AOJu0Yx+pTUk3gCpTz9OChxJsTyoiDTSYfn/oYsvrL/oATUIbj5wOaYE
	73wl75Q79Scy7eaeP9eD+IwVqiZx+/fTNoYn6NFmzzSdr7HYku4lsr/7OmJKAjs=
X-Google-Smtp-Source: AGHT+IGUJLXcWh4FjwYI0/XbLE/c6K90L/I/blQ5uhd1uKtI4lxIHntSHKIz20eTT+o4tOnqAdEzLA==
X-Received: by 2002:a05:6808:1450:b0:3c6:fa20:6c04 with SMTP id x16-20020a056808145000b003c6fa206c04mr5641284oiv.38.1713584679727;
        Fri, 19 Apr 2024 20:44:39 -0700 (PDT)
Received: from localhost.localdomain ([221.220.135.251])
        by smtp.gmail.com with ESMTPSA id b9-20020a056a00114900b006eaaaf5e0a8sm4005633pfm.71.2024.04.19.20.44.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Apr 2024 20:44:39 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	liujianfeng1994@gmail.com,
	sfr@canb.auug.org.au,
	weizhao.ouyang@arm.com,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v5 2/3] dt-bindings: arm: rockchip: Add ArmSoM Sige7
Date: Sat, 20 Apr 2024 11:42:59 +0800
Message-Id: <20240420034300.176920-3-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240420034300.176920-1-liujianfeng1994@gmail.com>
References: <20240420034300.176920-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240419_204441_695165_0A2AA7B3 
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

Add devicetree binding for ArmSoM Sige7 board

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
Reviewed-by: Weizhao Ouyang <weizhao.ouyang@arm.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 4bd033ade..fd644e32c 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -49,6 +49,11 @@ properties:
               - anbernic,rg-arc-s
           - const: rockchip,rk3566

+      - description: ArmSoM Sige7 board
+        items:
+          - const: armsom,sige7
+          - const: rockchip,rk3588
+
       - description: Asus Tinker board
         items:
           - const: asus,rk3288-tinker
--
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
