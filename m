Return-Path: <SRS0=Ct0Y=KW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49A51C47089
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 17:04:54 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 129DD611F0
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 17:04:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 129DD611F0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OKy2yIJl1sqxE7M8TZxG5rWtfzg3hO6dsHPwARQHlVg=; b=FZqkCJbCs8ytqo
	DBMiOKXq37xJ2Gz+7We6niEU1bn/MFcJrj4F4lIQJanzEPO460ODKhFX5/yHpqKcMf89N3yu6UE6O
	VbIr2bo/WhBLKl6vgIlpbN330L3VX5VWeqW8leJNgNkOzam1LHcR1VDUdQy9S7pBVtwiXRhZDVWaY
	4FYpgemZ3maIHmULfkdeJ53Fj4wj9qdcw2/AIX5zDVPm5DhprnsntAUGAj0BLGbE2i16OwklwzC2Q
	YPNS43U33tfwvWUjQpwVswEEFU4T5HHpFZ/t3+a5afU8WmmgzgUq8xinNlDwNyO09EJRqt8t+u95G
	m8/peCWcNzN2l/PKJfew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmJRA-007uYw-Gl; Thu, 27 May 2021 17:04:48 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmICG-007KIL-LM; Thu, 27 May 2021 15:45:22 +0000
Received: by mail-ej1-x62e.google.com with SMTP id s22so763444ejv.12;
 Thu, 27 May 2021 08:45:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Rke4zQwPvrSuSlZA5HEJuyAjP5qkfCV7I4D9cjIxs6c=;
 b=IhhLJkbkySu4cWqS/Z/H/bB43kxmugCm8uX3SDcB3PMk2zlyRWdOPl294qaSyXcV1O
 Tnvo76yHG68UM2kWcagmaTUeM/nPwpueD4DPDJxgR8lO4TjE596+77kIMHDBL7Psu7DY
 w4UL3X3/4x6wbVkRD1CiU+TWL2K0r8E671J6TojDcLIKyjgsgvYMZvq/hdDhTILx0uTw
 HLaMoZgpG5UF3JPJOzUKw8bY/eGktXDu3tGuxwbbur/4IXj5zJ00D53vL5EIuZ+1Pzuy
 9ld8KCmw0KQY+KGPIDL05NUYPKZAK487zuL4HacIqM+OilwsYHsVes+2VTp6rUu4Ym4N
 TITA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Rke4zQwPvrSuSlZA5HEJuyAjP5qkfCV7I4D9cjIxs6c=;
 b=bZJ4whF8a147jMdyJlVV12PGeKmaNCChRjJoGRKDz/BlWIjZGGZPXKaHCC48RTl4Uw
 SQeyknhhAk2/MlygcGNfXI5uatyU1yGVfyweLQrerHV3ryD4l2gHYKMAuqwk8QgoPOKw
 w2NhU92O6pKkrF71DIAUKhuI9U3vN9UfM35rpcbTlcvEngMAtZxQ0W8fNRx02dGI0NBf
 2fs4pN+Svx68/0uPDHWqIEw4ne9mLLc8IAW81RUrhP4Lf9HyPwHVJDuDJwLQD/jY+tv2
 C+E58R7jrey59S9w2yvD01a0imNzt62qF/rxacFGiETqnzK9i0dDbzMqDpgIbVwlL5ev
 Us/g==
X-Gm-Message-State: AOAM5310WA5gma/68yBbe2+rJFnehv/vqL125ka4fGOshFOmYHe6Eqwc
 2Yy8Wh1xAziC7YKC0CYiZw==
X-Google-Smtp-Source: ABdhPJzDcSXjNz+YkIfCR+PlqAt+rPGWLPKLLQIrDZ52/YW4NUrVZD3RIgSXYkQPeuRufNcoJOB7Nw==
X-Received: by 2002:a17:907:7747:: with SMTP id
 kx7mr4525224ejc.400.1622130318547; 
 Thu, 27 May 2021 08:45:18 -0700 (PDT)
Received: from localhost.localdomain ([2a02:810b:f40:e00:fefd:4d98:c981:7f97])
 by smtp.googlemail.com with ESMTPSA id
 u6sm1178826ejr.55.2021.05.27.08.45.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 08:45:18 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Alex Bee <knaerzche@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 02/12] dt-bindings: media: rockchip-vpu: add new compatibles
Date: Thu, 27 May 2021 17:44:45 +0200
Message-Id: <20210527154455.358869-3-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210527154455.358869-1-knaerzche@gmail.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <20210527154455.358869-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_084520_737419_4EA06E79 
X-CRM114-Status: GOOD (  11.75  )
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

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---

 Changes in v2:
 - fix order
 - fix indentation
  
 .../bindings/media/rockchip-vpu.yaml          | 33 ++++++++++++++-----
 1 file changed, 25 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
index c81dbc3e8960..b88172a59de7 100644
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
+          - rockchip,rk3036-vpu
+          - rockchip,rk3066-vpu
+          - rockchip,rk3288-vpu
+          - rockchip,rk3328-vpu
+          - rockchip,rk3399-vpu
+      - items:
+          - const: rockchip,rk3188-vpu
+          - const: rockchip,rk3066-vpu
+      - items:
+          - const: rockchip,rk3228-vpu
+          - const: rockchip,rk3399-vpu
 
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
+          - const: aclk
+          - const: hclk
+      - items:
+          - const: aclk_vdpu
+          - const: hclk_vdpu
+          - const: aclk_vepu
+          - const: hclk_vepu
 
   power-domains:
     maxItems: 1
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
