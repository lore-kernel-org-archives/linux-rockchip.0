Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DDFDC25B08
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Aug 2022 20:50:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eUVa4b+oIPvX69bCQnf4BKUiNC1kdHmt5tes/MIHxmI=; b=lNqWguuVAXTcwL
	Eu91kvHooyTvGkSgGxBPZ+z/9Kk/tG+aW0obM4X3h/GmnWXw8anzRtjlUWBxdTaxy+6n4vkBA7GIS
	L5Y/LseXhc3Latrs5Ut9QQQO7JGZFpwnkTtQ6uoh7bRnSlBe5wXiBbcajmk5NMNFSXsICS/bPka97
	HLdZU2DuqXlwGyo4TT3EiLYDBtD2adsN/D+2Y2U1Z3tLtFDOLMkU8cPTveXZDSdY1HpszqEqTJci6
	N+Z0yOKxTKU39BeEbrquad/HM9X5rAXScjOTBWkPIfou58q1hagETFXloOkjFlOWYTVlb5JhX1f8W
	xhcIUSiRVHQXEdJAbOuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOPzO-006ami-Ip; Wed, 17 Aug 2022 20:50:10 +0000
Received: from mail-oa1-x31.google.com ([2001:4860:4864:20::31])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOPzK-006ais-1f
	for linux-rockchip@lists.infradead.org; Wed, 17 Aug 2022 20:50:08 +0000
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-11c59785966so2819619fac.11
        for <linux-rockchip@lists.infradead.org>; Wed, 17 Aug 2022 13:50:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=EzydeiK2zIhx0eqIxNSYVpGVWZrlc+mmJsHlThpyKlQ=;
        b=ONTVnI7wUuNC/hSmZ0CSdNn47jNVFQeZFQJNT4+t44UEkHNtkA24LnE/T3/srLB7nl
         csmWHXX/7HPMBWYzoKkoPEQ7wwMCc/+sr1IJt9QK9+LneJSDiaQGIp9Q3RyAmpWqF4ge
         5XcrSI1u/zB0twdXG9yDV8Er58CQh9m81LiFbhITmxJIIm/j3sOzmPrVAGNg0/mmFQwn
         uw0/pYlpmlhFOLhT0pF3SrcTRurRpmawGyMO7Zp85Y3UhOrLLAxVsmV6lu0CbO3HLUzJ
         Z1l8TLCCElK05q92fJebDZESQL/5k+KbynrPCBlfCkFbhPU6cY0x3/qrTKrdFgE0qUrn
         7oFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=EzydeiK2zIhx0eqIxNSYVpGVWZrlc+mmJsHlThpyKlQ=;
        b=C7N6SPW/pbSKZADTAqzhjN15vvBiK8f63aetPqk61Z4IhI9wa4Tk1yKmcobmdNDsOH
         2IumAbjz17+3L9k/UkdFhXH7Ww6mr1tq89PNvtAAkrKh6pKSnJfXJHjXQ8ks0t8L1yhz
         QlRrFCsRf0BG6ZojBgtvI/FYvlhcGyEXpsWClxFmn2t1Z2RBnuKTOJuAb/cMHLUXK/uP
         v+0VfK1yxYjV7F2vXVJB0hqEKm/d86iBKnFniivXA9YAiQVLeKMzY4QZ4Z7oRxusfSne
         GKvj+wSMnPt0tne7ygO9zIxijOdgM47ccNTbL51NeVUhsfyBixRwYEUTowskyPNP6geK
         ZJQw==
X-Gm-Message-State: ACgBeo0bdeB7JYPm9frcfPrpJWf57arwHCuAkJLp4Vx7YlR/dRq0CDF9
	kCwsB7uZyWpjvwVOtY/OcOySIeyRrFg=
X-Google-Smtp-Source: AA6agR4+5xv1EjhCtBw95fvCC9uVgDSRUDPwLb0NpVec0oO9CR++/Czpkr8WO7JZXzZAETmUX/XWWA==
X-Received: by 2002:a05:6870:479a:b0:fe:3958:813e with SMTP id c26-20020a056870479a00b000fe3958813emr2635561oaq.279.1660769402573;
        Wed, 17 Aug 2022 13:50:02 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id o66-20020acad745000000b00342d2d79a98sm3203321oig.42.2022.08.17.13.50.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Aug 2022 13:50:02 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	pgwipeout@gmail.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/3] dt-bindings: arm: rockchip: Add Anbernic RG353 and RG503
Date: Wed, 17 Aug 2022 15:49:53 -0500
Message-Id: <20220817204954.28135-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220817204954.28135-1-macroalpha82@gmail.com>
References: <20220817204954.28135-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_135006_116153_4819155D 
X-CRM114-Status: UNSURE (   8.03  )
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

Add entry for the Anbernic RG353 and RG503 handheld devices.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 7811ba64149c..9026963694f0 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -30,6 +30,16 @@ properties:
           - const: amarula,vyasa-rk3288
           - const: rockchip,rk3288
 
+      - description: Anbernic RG353
+        items:
+          - const: anbernic,rg353
+          - const: rockchip,rk3566
+
+      - description: Anbernic RG503
+        items:
+          - const: anbernic,rg503
+          - const: rockchip,rk3566
+
       - description: Asus Tinker board
         items:
           - const: asus,rk3288-tinker
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
