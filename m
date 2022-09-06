Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB417ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Sep 2022 17:51:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L26QxLJ4uLppEuaV/jptJTzESKQEAHGJwwqI1L4ZJgU=; b=NAFeJAOsmBxtfB
	1glnF5AJVmB/KNFWpB/FLr7nulhB222f0XBdx/UNIjHA1bxuknZW74R1g/bC/o+4N+3nI+ALbrkOF
	OCiLZotDKu3NnkxE0P+kSzL/rABHU0cLwZkbPDuIlnoYiJ0/ZLmJwtqsVz0Jrk/BBOjgeLRS0jysA
	dEVn+A43bi16AXgsqof+uCrFNGnqT3pPFEPrrT60wGndjXNflutaVvL9MkV83OXyTeP92WVm+Es6T
	SRvJVet1Z7zM84TFcuLPmGUqLmd8xDPkJ6gU9gtKmAGdNnm1yyuseSweTQZHp7rUIK9qoU3RZNZlU
	wNL+dbtphN+rv2EWe32Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVcjH-00G7oV-7g; Tue, 06 Sep 2022 17:51:19 +0000
Received: from mail-oo1-xc33.google.com ([2607:f8b0:4864:20::c33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVcgZ-00G6Bb-JC; Tue, 06 Sep 2022 17:48:33 +0000
Received: by mail-oo1-xc33.google.com with SMTP id a1-20020a4ab101000000b0044acf001f83so2042794ooo.10;
        Tue, 06 Sep 2022 10:48:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=qnSptJt7AFNWmzxMCkqf7MrpKQxtkc2Z0kVrcaCyyfQ=;
        b=Wer2x+YDFov3Deacn/WiARefcJWmuHOcvu2uP8uH8+YdERSLxscCoKSkGDvR/R/xIz
         y6pjcAsh9vvhPRRma4ObkA5ANV8a2Du/wiEFC97ViE0Xwtco+qwg9xnHSo3R/yStTDCY
         LvpEdpHin/RU7d4o1ZEhrKoFlsKRfQ6iJPN8PdfbBChtz1hKAfOeqXAfHetBQB3nJ41M
         CCH9a4EIkMKsEbOqRjQ0FSqW9Hpv0fLSh31VvFdEBWIvVNRjnTOvdROnTzAz2fgYDXf3
         pfYqLzBahOfYEjtF5+c8vTF+rjlWfxILejZcSjyq1ykvyA3TPVM/fq8LhwXdEabTNFVf
         Qm2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=qnSptJt7AFNWmzxMCkqf7MrpKQxtkc2Z0kVrcaCyyfQ=;
        b=OUL+7XPoNTu/41FbpqjgSU6nM0Hedqa48V2UcWSSKqbnPWDhq1bCKHDwAwgq+GOd3t
         Rga9Ugc7maHe7NA0O0ohcspNDgqn6te9uASpvokcoIuat22TV0xgx4yLpS7VWpfBLL4u
         uFb7LdvQKcplekb0zbBv5zaS0EGlHLLCTJQcBex3dilnM37akucrw69Uc2o+1UE+ric5
         eZngb65CwgcMsvNP9U+MkPDMnPdLXPLcwKQZzA9oeFUJAtG7HAiXkDu1Y6GLU9ufL6yj
         S9curTTdsbJnqNe1UuQwySjQpIhVHbnpOPn03ObaDr0ydyCjBXbw0OUEWzR39Pb8kSRG
         Vgag==
X-Gm-Message-State: ACgBeo1lPH+Id/+MxpqwtE9YErARFYfOalGF4oKoWUDeo5ZWTZ7LH4bF
	7YNQ43PrYO/dwUVu3ebKTvR4pBcekLQ=
X-Google-Smtp-Source: AA6agR7QdeMD60yDHlEgNwk83J8km40Qr5XTioo9P1Fu6QVKPdibmHtPFNzCY/x6hkmeQ/qdtBZjug==
X-Received: by 2002:a4a:bb19:0:b0:44a:9cda:56a1 with SMTP id f25-20020a4abb19000000b0044a9cda56a1mr18660613oop.14.1662486510547;
        Tue, 06 Sep 2022 10:48:30 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id o186-20020aca41c3000000b00344afa2b08bsm5568065oia.26.2022.09.06.10.48.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 10:48:30 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	cl@rock-chips.com,
	s.hauer@pengutronix.de,
	pgwipeout@gmail.com,
	vkoul@kernel.org,
	kishon@ti.com,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	daniel@ffwll.ch,
	airlied@linux.ie,
	heiko@sntech.de,
	hjc@rock-chips.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v2 2/5] dt-bindings: phy-rockchip-inno-dsidphy: add compatible for rk3568
Date: Tue,  6 Sep 2022 12:48:20 -0500
Message-Id: <20220906174823.28561-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220906174823.28561-1-macroalpha82@gmail.com>
References: <20220906174823.28561-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220906_104831_798910_80E5FDAE 
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

From: Chris Morgan <macromorgan@hotmail.com>

Add a compatible string for the rk3568 dsi-dphy.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
index 8a3032a3bd73..5c35e5ceec0b 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
@@ -18,6 +18,7 @@ properties:
       - rockchip,px30-dsi-dphy
       - rockchip,rk3128-dsi-dphy
       - rockchip,rk3368-dsi-dphy
+      - rockchip,rk3568-dsi-dphy
 
   reg:
     maxItems: 1
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
