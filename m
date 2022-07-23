Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C3ADC43334
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Jul 2022 20:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GOOw+6gqpiiITbxfIPgcR0jYY7dobzxEjj3OZXFbaSI=; b=PhDICgHyza28kk
	5rIePZ04+pq7Jgmmi9EHI3UkdSsdQv3V1PhwKgzQYbSEmARr/gWUCJxH2Qd46lBI8TB24zpRb2uuB
	k6WurHW6PnmBHTgbqJzgow1S7ogxBgOdokkj0P+g55KF3ulOWVhxQLzbdyUzWalnHGMDbbfVEyQKt
	37mhTR+DwTMoGZT85acCyPr1NvEigMIGrhGkfPSHp+l2aoOIUuRGVVzaEJyJlUH0wtjhdqqW2rc9/
	rLK2RkdtbdtulY/rtlHEGeyCabn7u4sACAg+gvuHGOR+rNwT5XqYs4Vop4zkuvPs4XzT6Ar+LIwQl
	nbwGR5+/9wO3x/3HGrvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFLyo-0078Eq-S7; Sat, 23 Jul 2022 20:44:06 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFLyh-0078AL-GM
	for linux-rockchip@lists.infradead.org; Sat, 23 Jul 2022 20:44:00 +0000
Received: by mail-pj1-x1035.google.com with SMTP id gq7so7104113pjb.1
        for <linux-rockchip@lists.infradead.org>; Sat, 23 Jul 2022 13:43:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KBhOyhDoK3sxhLtcr8Xy+xT2jAn2a/kwO3uxKN05sS0=;
        b=BnpOTLo/dlg3zx1+DhN9Y3ZtHLiYxwWipI2wN9xjVNL9/ywvcab9bdZcIX2hAO44Nl
         PaazD4gPvcPaUI3Lt6/SwqBAblDx9wO/oCbjt0oaf6WaiGPTxYpYGXOHOqX7F+meTk2v
         YpVAnzVXkcW+P/2tMAuCKLFAD5AggBLM9HzEPpbAtpr7Jg2Gd3Zy9i4bWJi8+kuN/rQS
         RHS4pBPav7bY5dyMT6C1tpn9ajf/4urfSQwGf7xLQbIlx4jOLRiMrESDBPxjWECjlAHS
         RhHpWJE2rNJUa9D4X54FjrzZbQwbnkN7XDKFKBsXWfQ8faf7AEz/aYhKWHDXqjhAJEYh
         sVTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KBhOyhDoK3sxhLtcr8Xy+xT2jAn2a/kwO3uxKN05sS0=;
        b=mkzI5rlkmfrntCI6yB0XSI5grEhBKYaYoH+GWfqNRD8unejT1bJU9ep2nF+mPT0HFC
         GzwTZfIcl1rKKK8Ya+/j8xGZejcaC2YNOE6gtMLStZjsxsCql5lV+m9X/txklA8c3AY6
         hG3Er+kouaBRhn9K8U6IDdihhjiNe24L7uNaU6D67espB0A9dJTs8DqO4zPy3qFgARSu
         PXQZxc9lCzb7BLfkdpj/1D7qvpaPoF4u6s+Rdp7CrKNLv0BlTEYGMTDQ+RsboDB31xgq
         ui30V6ULW2gtpQaL4qrl2Cj8pLemNGytHwL2SeWVzacYetjBNEP+gL4hwgMeVyy/f+LP
         H3Zg==
X-Gm-Message-State: AJIora/fn6p4WV6oJvt4ytjZQeAgMP0LQg1cJ0L5nHYjlkjMc5eT+W2K
	huPaUK8DIEWsCRc4w4SwPGqE0w==
X-Google-Smtp-Source: AGRyM1scI/hKO4kb2xQTyhDjnZAYLF1xG2SbynAWTlHBX0aR2EbEtob087/GqSugK/X7/PvVWxOa2A==
X-Received: by 2002:a17:902:8494:b0:16b:fdca:1249 with SMTP id c20-20020a170902849400b0016bfdca1249mr5871077plo.97.1658609038244;
        Sat, 23 Jul 2022 13:43:58 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:a406:cc30:f4ec:f10a])
        by smtp.gmail.com with ESMTPSA id u14-20020a170902e80e00b0016a6caacaefsm6187950plg.103.2022.07.23.13.43.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jul 2022 13:43:57 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 01/22] dt-bindings: power: rockchip: Document RV1126 power-controller
Date: Sun, 24 Jul 2022 02:13:14 +0530
Message-Id: <20220723204335.750095-2-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220723204335.750095-1-jagan@edgeble.ai>
References: <20220723204335.750095-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220723_134359_565097_F728002C 
X-CRM114-Status: UNSURE (   9.43  )
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

Document dt-bindings for RV1126 power-controller.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 .../devicetree/bindings/power/rockchip,power-controller.yaml    | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
index 3deb0fc8dfd3..602f08a76f2c 100644
--- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
+++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
@@ -41,6 +41,7 @@ properties:
       - rockchip,rk3368-power-controller
       - rockchip,rk3399-power-controller
       - rockchip,rk3568-power-controller
+      - rockchip,rv1126-power-controller
 
   "#power-domain-cells":
     const: 1
@@ -119,6 +120,7 @@ $defs:
           "include/dt-bindings/power/rk3368-power.h"
           "include/dt-bindings/power/rk3399-power.h"
           "include/dt-bindings/power/rk3568-power.h"
+          "include/dt-bindings/power/rv1126-power.h"
 
       clocks:
         minItems: 1
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
