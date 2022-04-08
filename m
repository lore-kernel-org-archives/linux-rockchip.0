Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 124C0C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Apr 2022 15:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=34rRsDs943Q394JBWdF2Lgp3t404jaLZsnheBDJ+NNA=; b=THdPv0HRozmsRu
	dweX2Tivo780GxQ6S1hYCW4JQQZoFbxqXiU9uieci/dBtnjhTvD/iwNrwDmS340uN388MlNKLH7RR
	hZPikExyLpL3rKIlnP+WyIykpwsQphstgxF31sMG/SvQusvklGRb5dECgOPBObbpC+vbShkciRJUU
	k9BwsGMOiyIpph/7rPetERBYMyvmqa8bmMPpJLe0NnCDPCzVgEpAFZE+O4/fMG8z2fQ/bk2NJC31b
	C9tzz5gEMoE31unBopcZDjwWXC0rmqna1r8g6os5JITh9O1jQ6EKc8Ch1F8BEKedzRSGELM5gbdBs
	PkpeSzcCjAp8LEJaE6Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncqIY-000C0p-Tq; Fri, 08 Apr 2022 15:13:18 +0000
Received: from mail-qt1-x82e.google.com ([2607:f8b0:4864:20::82e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncqI1-000Bjy-Vd; Fri, 08 Apr 2022 15:12:47 +0000
Received: by mail-qt1-x82e.google.com with SMTP id j21so11000898qta.0;
 Fri, 08 Apr 2022 08:12:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OhT3uuxxEHcPBuHXHb1jb3YfeT1PnX/kEpDmvODTxcw=;
 b=NsMM4YWVyUraCz/kt+F2EMVswAI3CaTU0YpNV/knTwNsdFgF08dAxMTCTEMQoYGxGX
 /atW6laRZ1rN3aittfIb6/7h+Hd0khonSfmlyPSPe9fLOej9LMJu94Mj68YwkOvNMMTL
 rtobblPenS1M3tLoC9l6b9JPo6TT12ypmDKX/kFC2kLyfaH0z+8MJl0pe1NHB6RlOel/
 j9OptSo03QbptL+cX3POeHQ20X9hrPfHEOsamD0HD13Ms1ZYZDlQGtYIY2r6IjNc9ZAU
 k0jPcUAx8G+aprnpSuF1E93o9lNl2iVt6VeSWJUTaWMdKPvSgPDFEJyV2XZGXD1b7RoL
 iqwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OhT3uuxxEHcPBuHXHb1jb3YfeT1PnX/kEpDmvODTxcw=;
 b=h2RVjcGprCMODS1yYeoFH7AGRuvjT2Hc91BKxigEBSHnlLEgsCasniLXhcTcWQDZT+
 2VlJLWQ2e5h203HLHkSxxhwLimLCuaG3ZUF53msihIQ+2h0vpw1gbt+If+1AZzHLi8hv
 LZiGYI85TX/L6wzWPx8YKalTJXLOq3mDZKkhNtGNyJxhjK6WPMK23VIcy08Qx5XKhIxH
 R3/PqztSmFhpzuFtS4jBYOxSne0HgtWVVJxFNp7ZyTNYL9QVfs6UqBsBhy6n5U7Tt9wc
 qz0W7mNDw1x0OHSLsRYa1S0nGdc181sJkN9yE/rsHlKp9C+2j/C4bdaHeOkEVojDQ7pe
 UgFQ==
X-Gm-Message-State: AOAM531LxVHaLn74somZGmm2cfkb9IDvFpyuSZLpgrm1Mg94IQ49wk7M
 OBjoEImjdDUeLxZQTsuq1vg=
X-Google-Smtp-Source: ABdhPJwl9PVVqdJdJKKdKDVS5ybYWrvIT/uqQnD+9OFv41VaukkHsOq0SWSPXzkAwkoNjLXPBPcz7Q==
X-Received: by 2002:ac8:43d1:0:b0:2ed:8a1:e13d with SMTP id
 w17-20020ac843d1000000b002ed08a1e13dmr2470593qtn.432.1649430762560; 
 Fri, 08 Apr 2022 08:12:42 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 191-20020a3707c8000000b0069a13545fcfsm2266052qkh.123.2022.04.08.08.12.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Apr 2022 08:12:42 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 1/5] dt-bindings: soc: grf: add rk3566-pipe-grf compatible
Date: Fri,  8 Apr 2022 11:12:33 -0400
Message-Id: <20220408151237.3165046-2-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220408151237.3165046-1-pgwipeout@gmail.com>
References: <20220408151237.3165046-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220408_081246_057064_D9FACFAD 
X-CRM114-Status: GOOD (  10.18  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The rk3566 requires special handling for the dwc3-otg clock in order for
the port to function correctly.
Add a binding for the rk3566-pipe-grf so we can handle setup with the
grf driver.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index b2ba7bed89b2..3be3cfd52f7b 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -15,6 +15,7 @@ properties:
       - items:
           - enum:
               - rockchip,rk3288-sgrf
+              - rockchip,rk3566-pipe-grf
               - rockchip,rk3568-usb2phy-grf
               - rockchip,rv1108-usbgrf
           - const: syscon
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
