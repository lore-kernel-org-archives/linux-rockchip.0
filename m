Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9A7AC3DA78
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jan 2023 10:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9YlTYmnDhXoSdewbkWUesMa38olg5Nba3RzX6omhuzI=; b=jNfPUyD8ryODS/
	F7mlbaO80OFHqYtu+A0DxPpdW2jvuP1zItuuNmIG3xtIR4UPc/PzKQkPrC3tnAjaKzsK3sPz8EkfM
	Q9QcrbiAjQiDOGlhSZQvYuthHkAHJ+4yREYtGo5sfT0Ashget+QhqoH5jy0kn/SbYW/xp+amKnDv4
	uDawZnT83uoA5cDJlG6BqhejBJNQb69O486i36LT+ST32dhPhzETMrLId/EaFQYygeqWqITqA2gDt
	ak11BLZ2kKQgEYc1TmD/Tv+47zGYxRCjdbI/+fBMVfPbxwk98RoSeCM11J6bNRQiaIozEntXHrfZA
	a9sSEyekH4GYeMxHoocQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHjcj-00Drt8-93; Tue, 17 Jan 2023 10:55:25 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHjcg-00Drrt-Nc
	for linux-rockchip@lists.infradead.org; Tue, 17 Jan 2023 10:55:23 +0000
Received: by mail-pf1-x430.google.com with SMTP id 200so16962180pfx.7
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Jan 2023 02:55:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qOF7bx95Z8wnUFb9gD3h0pfpEaJ7VWuHHhX7nwVF1yA=;
        b=iVUkXXLpx1zGmybSOhB2rmec4ccs5M78Qz4iv3yo27AZAo4JIUr0w31F1IoYNQc/mO
         LnMjlzFLJTeWxRO7cvWzTk6eOGGpRnrbKy8r5xtAWOl3GzzwuTT1Y/oFKPEgUOTtgFW/
         jSgK3UlPMV40XAicWWR+P4wgQxncJibNbBGW4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qOF7bx95Z8wnUFb9gD3h0pfpEaJ7VWuHHhX7nwVF1yA=;
        b=ozIkqvu0UXsbV1KTJxVgyLe6LI5gRW2q7SPeaUXzoYF2Pdih0pQl3X5w0ifeUbp52H
         5WTUvWtjrVKoKzhDnT9VnClkQ4H1MuOAlZxHI2Z7UPKzv7nK2VG5pIXhR+nk0amS3p0S
         NrbMXjC4egQPFhIirXKzzLryWPT+PfeCDQyh7CwvoofAkoW/uPNgoelvnvC0q44i7o6J
         Gg+NutV5V0I52sPlDkjODzCp5jojUT7zDBWmba691pHp3wdbWRAehWHkxZbfmPR6zT0F
         Dx9tVxRsYkQnYGK9fq7vL49w5kcdAsyDH/frrMmogvvRQNh2bSNQFtI65swP69pUx1uX
         wWyA==
X-Gm-Message-State: AFqh2kqs9/lvw964OMLLffzSoIe3cJf96tzBujiJK613BKgT/U34iEXX
	N5XOppH7oAwDVYXcLbAA2tSB0w==
X-Google-Smtp-Source: AMrXdXsfzJ+YkkpEUjE+FWgc2BUm3mJP4q0oyf24OAl58Jt6dz6b8z5VwC6e0tj/Tu3mHymKP/zcQQ==
X-Received: by 2002:a62:1ac9:0:b0:57a:7b74:4ec5 with SMTP id a192-20020a621ac9000000b0057a7b744ec5mr3072066pfa.13.1673952920132;
        Tue, 17 Jan 2023 02:55:20 -0800 (PST)
Received: from localhost.localdomain ([45.249.78.214])
        by smtp.gmail.com with ESMTPSA id w65-20020a623044000000b0056c349f5c70sm19837413pfw.79.2023.01.17.02.55.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 02:55:19 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 1/7] dt-bindings: arm: rockchip: Add meaningful comments for Radxa CM3
Date: Tue, 17 Jan 2023 16:24:58 +0530
Message-Id: <20230117105504.18296-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_025522_802562_69333066 
X-CRM114-Status: GOOD (  12.32  )
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

Radxa produced several versions of the RK356x-based Compute modules
called Radxa Compute Module 3(CM3) for consumer and industrial use
with a variety of form factors.

So, adding meaningful comments on dt-bindings would help to understand
more about specific module relevance.

This patch is trying to add comments on existing CM3 bindings and
expecting the subsequent modules are following similar comments while
adding dt-bindings to it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 98afd7c6b8e6..3d3c59624483 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -621,11 +621,11 @@ properties:
           - const: pine64,soquartz
           - const: rockchip,rk3566
 
-      - description: Radxa Compute Module 3(CM3)
+      - description: Radxa Compute Module 3(CM3) SoM based boards
         items:
           - enum:
-              - radxa,radxa-cm3-io
-          - const: radxa,radxa-cm3
+              - radxa,radxa-cm3-io   # Radxa Compute Module 3(CM3) IO Board
+          - const: radxa,radxa-cm3   # Radxa Compute Module 3(CM3)
           - const: rockchip,rk3566
 
       - description: Radxa CM3 Industrial
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
