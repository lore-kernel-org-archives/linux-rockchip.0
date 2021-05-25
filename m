Return-Path: <SRS0=lIs5=KU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCECDC4707F
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 15:48:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8BD5B610CB
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 15:48:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8BD5B610CB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vhpVM5QK3HYye19dLH20iRH9p12ouMwqb0T46vZZqHo=; b=bBiDBzn2kxQUQX
	zcZ0dK9zoYwXo8nGAYYCitItrEwFbeLJmtWBWbVOB0EvG0tZaPjXFveuMOq9Oq1qCZRJHjlLCySmQ
	Y4hpJDPKBkMZ/aIcxwXcBDJDQlUyeoaNt6NGhrTkDx6Qa0kz4YDFPXk8LTjuJwpwCmtCyE8x3K6DD
	yUQeUkIqJOLXLia/p1Y8NDgVKmOIvUTlmnJDjI+D3V3rfeDwBnt19is/QcBz/tlNY6oiHKHXhhGxo
	gZMqd2pMA5B+myWl7VYHHIBnqYJHuJb9oUrvEOChtqhzHKHunwabXyt+W6IKKDWidUO8sdmoZSk0p
	KqTrl0JUvgwxq4eUHlIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llZIH-0068aZ-2x; Tue, 25 May 2021 15:48:33 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llYtZ-005xVP-H3; Tue, 25 May 2021 15:23:03 +0000
Received: by mail-ed1-x52e.google.com with SMTP id i13so36714706edb.9;
 Tue, 25 May 2021 08:23:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ijn2PRPL849+JSabWw86AQic424WRwZ5K5EVNCYn+dM=;
 b=UnJHnkWW66vvZYjMiXcIOKwIXMHwm/QXQ0MkI2C4XmjPc57aMdGG+Bc3x+EDLBF81S
 l5Jcgt7SM0O9ZoeWJosMgoxX3QBgDxUSoIzgnmV6teH6iEgk9HlSi6udW8y3MQ0gJQzv
 UyYjeHVCIYke6ZVqwevqifvjBWCvzhsl5K5X9zvsNsiq9SRQIG+zhN2oHTgEhB/eePV9
 45tzDnpbMoUWevsOzFlZNDy5/+6XJgsOjGbbTmU+RKUQZSwUwwBEYqJ4/FGEji+B13Ax
 CRPyAA2o/rOKGWXBlc9K1qUnHki0zx9D4gXR8vsZ1sTcK3U7QB5zqIDukhrLHh5M7foP
 T+UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ijn2PRPL849+JSabWw86AQic424WRwZ5K5EVNCYn+dM=;
 b=dDn5L9DktHQJN5TYd5eNjufV1SbfYyJmXm2f88EZAOTgK4s94xNFYV5hwZCnwFYwEh
 dIsyCITBubRFHa+v81oNt6x24oZruHGNK6wQ/rkPdLZ6ClRj4w6JV1QkMJ487r5Z4/VX
 z7v02pyiSfK/dO7orca2OzfpGAWmytJtzLm5bMH2OoKNHaiHPOivoKe2pe5K4ntsVPPt
 X/zF/Az1e16XAFQfFmUoZ/idAG8qDR6N9k8o/bDA0P9xKqoptgdNlB7iS2O6w/+ApntY
 122EicpaN1RIG4Vz7g8ugJmDwoU/b4+UmhCFK6V++1xB8w6g3TRwRhciL+rCBMw046av
 9mTw==
X-Gm-Message-State: AOAM5315a1c31gsITdNww9AD3x49FgemKGQe86WWcIytjZi7m59qwngz
 eAJfJMJlTXq9uJ409gpQoA==
X-Google-Smtp-Source: ABdhPJxduAKmZWou/QxRJ6a6frDpt322X1s543PlVcFZw2wMuMVoUj7bTlccXKiF69JNF3SV/S8oRQ==
X-Received: by 2002:a50:fc91:: with SMTP id f17mr31484310edq.201.1621956179889; 
 Tue, 25 May 2021 08:22:59 -0700 (PDT)
Received: from localhost.localdomain ([2a02:810b:f40:e00:b55:da44:4fe2:2760])
 by smtp.googlemail.com with ESMTPSA id
 e23sm11212945eds.2.2021.05.25.08.22.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 May 2021 08:22:59 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Alex Bee <knaerzche@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: [PATCH 08/10] media: dt-bindings: media: rockchip-vpu: add new
 compatibles
Date: Tue, 25 May 2021 17:22:23 +0200
Message-Id: <20210525152225.154302-9-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210525152225.154302-1-knaerzche@gmail.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_082301_598387_7C22221D 
X-CRM114-Status: GOOD (  11.60  )
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

Add compatibles for RK3036, RK3066, RK3188 and RK3228. Also reflect the
changes to the additional clocks for RK3066/RK3188.

Checked with:
make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-vpu.yaml

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 .../bindings/media/rockchip-vpu.yaml          | 33 ++++++++++++++-----
 1 file changed, 25 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
index c81dbc3e8960..91a3278f33c2 100644
--- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
@@ -15,10 +15,19 @@ description:
 
 properties:
   compatible:
-    enum:
-      - rockchip,rk3288-vpu
-      - rockchip,rk3328-vpu
-      - rockchip,rk3399-vpu
+    oneOf:
+      - enum:
+        - rockchip,rk3036-vpu
+        - rockchip,rk3066-vpu
+        - rockchip,rk3288-vpu
+        - rockchip,rk3328-vpu
+        - rockchip,rk3399-vpu
+      - items:
+        - const: rockchip,rk3228-vpu
+        - const: rockchip,rk3399-vpu
+      - items:
+        - const: rockchip,rk3188-vpu
+        - const: rockchip,rk3066-vpu
 
   reg:
     maxItems: 1
@@ -35,12 +44,20 @@ properties:
           - const: vdpu
 
   clocks:
-    maxItems: 2
+    oneOf:
+      - maxItems: 2
+      - maxItems: 4
 
   clock-names:
-    items:
-      - const: aclk
-      - const: hclk
+    oneOf:
+      - items:
+        - const: aclk
+        - const: hclk
+      - items:
+        - const: aclk_vdpu
+        - const: hclk_vdpu
+        - const: aclk_vepu
+        - const: hclk_vepu
 
   power-domains:
     maxItems: 1
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
