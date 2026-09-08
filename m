Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D13DC79F82
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Sep 2026 23:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Dn9cMso7TLQBriHqOg/qUE+VZUkWaBGuy55kpqInFfk=; b=IH/jLa7IlytdMp
	aa+mxhxRNzSlXsmGBqfx6l21uqwmfHGfir+WfLJY7dqNUWBaVUD3a12pinIS10hPilpBnAGi6nq3N
	RCGn1wwNnG7ZzIRFiYITi1AI6HC4LW4eWKdaPaP2EE+Im9CnkQFddP4IeL2wAsiwvasBpu0+7Zsjo
	7iatLMiHs3Gm0b91Ybc2o4QW9VsWzf48mLz1DPSmjHbf9rRDucPaHUfR2wiMnLk+Ba9xyi7u3NIDL
	eqU6KCvgl61vkxAjtlATywxpapP29grYvJgn4oJ02Wn2m1wrZeTn6zsQGTx0kwNNf9wCvoYmFmS1x
	JLL1vaV0wXYQ0Tu9SNXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x45i0-0000000AT7t-2YC6;
	Tue, 08 Sep 2026 23:58:36 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x45hx-0000000AT7B-2vAs
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Sep 2026 23:58:34 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-5b523efb0bfso3902410e87.3
        for <linux-rockchip@lists.infradead.org>; Tue, 08 Sep 2026 16:58:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788911911; x=1789516711; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=vWeV1W6gcuI/MozGquhzyefyDY1CKq1VISFtq6ltYNM=;
        b=BQjfu0uHUyhmUFFdTF7Ev9WnkG4ZHp9IhvDPDP4FsAK8T9BKWIiRn9ust88s1TQnwF
         ekEWbVg+oKUCYm4jBsKkwp8/Ta/RZnCjcmgtXXp8nrNGt8yOZmD3nqOBZ8NbAQqRW4SQ
         dBoUtDdShQaKgwSc4qLKLnTaVCcIxjWYahX3UdL4Qr/txzkoOxuaxQm2sUqqq4HHqquQ
         0yOkMbLIixK/4Vvm9jLtsIqz+Ce3AfyvJDwcGhnCe/lkhrlXYXf5IQuEY6Rv/9EBHRnO
         b49rVJwWU2vIHKHsCTQmeA4V5ux0SVutCfBBDmojxjWLD6Yv6aN6gwCOI/ATT+yxPjOQ
         mTfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788911911; x=1789516711;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=vWeV1W6gcuI/MozGquhzyefyDY1CKq1VISFtq6ltYNM=;
        b=YnrNQWdyzV829JeAQNdLlESPH8KY/AAfh1NrXS3FTZF2ur0Py0GTOLyCvf2bEvwHXf
         8rOnZCMDXXC2g9uQBLBEDTZinrCiwC2wyR7TdmXSy7z+FoBwBks8wNyJM1ECTtkiBAal
         QPDOw7Uz5Levz9Oa5HpqupM5Ih551LVJzUu2FN9cgAbgoCI6h0uBh8YDKmebFDzIbtug
         V6zIGZDuo4cma1gfQRlrcpHdMiNVU5gLpv6O7pGI6LRtLE2tJDthkugZ8yn6AS4/yecI
         iUeLJdfDbL1PT3wCXZTjrH7hwPYtsez/RVq272cQIenu9gxP7UJ04M6iHaf3cnfuTeE5
         8MVw==
X-Forwarded-Encrypted: i=1; AKwUvBy980HFDr1wpv+NNJ4wGAdI6FiXp5B3YLpuGhE72KhQK7LErCO2OIPIf5orFj7Pi4hDt1VdTjJ81G3UmLz50Q==@lists.infradead.org
X-Gm-Message-State: AFuF++lGHyAy+0QrvTv8cAeF3T7CUbEJnc88nqyHLUs1Re2u13Nl6Djs
	odatiChCZb8Uin0fgOIckEM2dYSRE6QpDPf60WCBqhfjmz4lHo51c7Uz
X-Gm-Gg: AYBFou3gsNSQLQi0WCHd6/wG2nMw4doUpqN8hqIEb3J6SSO3bCq7g1ezAlzELY7p7/t
	IuqN7u/3XW8dQGxeN5LSe0QWWkg+SEtwlY5g5Bmnje3vpoZ8WN8f2nc8dHses4GHVE9zapVCbyB
	FE62Z8fD6PQb76SyQfa/dftmSyb05UQSrJmrce5tbdWsrOzily5UoHrw6xphqcJk33geLGbKRkR
	2fvgLlzbZ9tD9NpW9+Se0ybwXZHO/pMuym2GHdhM9rO11Zen/wz1zklPNU+7r3vQsKVd3HlhKoX
	LWrpIHRbLIP0PdS7iywEkHZ4vHs2o32I63B8NmP7ZYUiM5NuRaLttGeFVJzL8InNMUZHKS3zvNw
	mieIvIfRiMA005iTO/XGnX/po6XmbNBdKlaOqzBQrZEA0Xja0OB4oAt+pLrNmLJ/Vb8/090pWDB
	xWVQJY3GXlYZle8PAICtg5vJQPeKY60qDD8m5UYkeh1R07DQVKXcvzSyByqSPJp2ZQBHfxWtcoy
	mY=
X-Received: by 2002:a05:6512:3e27:b0:5b6:424:2b08 with SMTP id 2adb3069b0e04-5b616f5875dmr10045629e87.33.1788911910601;
        Tue, 08 Sep 2026 16:58:30 -0700 (PDT)
Received: from KAS (94-29-32-34.dynamic.spd-mgts.ru. [94.29.32.34])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b765652d3esm127328e87.59.2026.09.08.16.58.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2026 16:58:30 -0700 (PDT)
From: Andrey Korshunov <razor1702@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add FriendlyElec NanoPi R28S
Date: Wed,  9 Sep 2026 02:58:22 +0300
Message-ID: <20260908235824.665-1-razor1702@gmail.com>
X-Mailer: git-send-email 2.54.0.windows.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_165833_792620_3BD6EE91 
X-CRM114-Status: UNSURE (   8.59  )
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

The NanoPi R28S is a router board from FriendlyElec with the Rockchip
RK3528A SoC.

Signed-off-by: Andrey Korshunov <razor1702@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index a799bb843..1d937795a 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -340,6 +340,11 @@ properties:
               - friendlyarm,nanopi-r2s-plus
           - const: rockchip,rk3328
 
+      - description: FriendlyElec NanoPi R28S
+        items:
+          - const: friendlyarm,nanopi-r28s
+          - const: rockchip,rk3528
+
       - description: FriendlyElec NanoPi R3S
         items:
           - const: friendlyarm,nanopi-r3s

base-commit: df2908090cda368b01ff43709f51890076c56157
-- 
2.54.0.windows.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
