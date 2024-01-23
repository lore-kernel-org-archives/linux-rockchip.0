Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46A6FC47DDB
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jan 2024 21:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YsD1RVfw1fcDbAZ6+zDitvGhkXkZqH/a1L67rfR1jZk=; b=r/vbZQ/7JmgbG8
	F9BIecNNoUMizN2Uhc0aTmnj15peew5thdgW9ceh62h/gCaHOTO9qvtimj9WKg7wvqxhFpQ49NSst
	U+0gbvUx/g9RZUQEtCvOkHPTSbyk6n+33c5PtmQHu4NDafZJE1yis41EPklshJgyT/81FnT1wHxls
	tzhuiGiiKcjTDTov5acDo5RDaz8uUnZ532hNt9PJEn8Vj5tI2RDuf0VPTop2qbShdy1TrVyhLsocK
	lHLTiZDl85E5PLXZSUW1vZlFsM/QtLBHXKL14EKAoU4VzOjzO9t8RE2QN8r3IIupNpjbLCgPjU+91
	Y0Tnq8U+VvSTARzWw9ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSODw-000Vmz-1T;
	Tue, 23 Jan 2024 21:22:24 +0000
Received: from mail-oa1-f50.google.com ([209.85.160.50])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSODt-000Vjv-2Q
	for linux-rockchip@lists.infradead.org;
	Tue, 23 Jan 2024 21:22:22 +0000
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-206689895bfso2448252fac.1
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Jan 2024 13:22:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706044879; x=1706649679; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sWxTTmvypeY8hSwgGVw3+bFVkwR+7Vq8EoTW4jvNu7c=;
        b=dWxSDac37PH/5pgBj2NVwj8jZWvNKYJKF+h9Tp+6zsG7VqfeptKNVBUhBLNCT08F4u
         9XcEP5Qi8x2YCv2zn5W3+/WNSGajW+CmMJ45GuAhj2OUCQUUeK8fYKZHV+XokFRjpCY9
         JNl+nYCdWIpI0jFrMVzO7w9b8Mg8kTRssJtUguxxrDi3wXhulDAR9JCvKBbM8QcjzZ22
         DXZRK0F4HaCylJSl06k9N4NC9upViqnp4Ud5kIp1V8jS6xxxXsgNOyeQvhuo2RCM0nrA
         sVQC9WnR/G8BzmwNQt7ovliS5jSg3V316i/3M/q/30dT4vAcfe3lp1sUZe8ZmhEWYIBk
         LsSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706044879; x=1706649679;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sWxTTmvypeY8hSwgGVw3+bFVkwR+7Vq8EoTW4jvNu7c=;
        b=MEyIJY8lrcllfWZAFNYFSIxdZQBOeqhsPcYsBnyY/OZy3Y9gdPQtsmyJtrFh1RVllS
         PTaDTQ8m0ZdSnFuriFiBlPXwzhwDYMaJK014etJkQtrAu7XSd4iFOS4lgrd3aANwHw27
         DMbCpVnlI1rSQNE7FjPdHY+5GSX0v7BQ6rMpRmV5wbDwNq6ZcRkd4OO633UQxbIrnXBt
         Dlbp0FGyxqatxIruOuSYeQVCoLxjBVid+KjkiPhZo2d0W7+UIHVQsMXT1SdO9VMWRZio
         OrbL+5Upt1KZTiAcxC/V/p3McI/cBgiLoYHHxGzzgX2hT/NcEumDcZRxdurcU5b7wEL3
         MPAQ==
X-Gm-Message-State: AOJu0YwICeAaTTlsDsB3Ze0vPq9GBV6osSAp6QEyiSirYsqD/p0YqQF6
	PKeslcaz8cLwUVlQnrhCnVZPnfyo4DNjciaLM/tUnmFE0wJCoQ9/k0Hg30vP
X-Google-Smtp-Source: AGHT+IGK/VUGFNkHOBl97RvjCZ8ZfMUgIf4+aEkpbywEmMngm6YKO5SFrej9dQQ0OsyV/C7fuiv0gw==
X-Received: by 2002:a05:6870:ac25:b0:214:7225:a0af with SMTP id kw37-20020a056870ac2500b002147225a0afmr1938740oab.84.1706044878940;
        Tue, 23 Jan 2024 13:21:18 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id w2-20020a9d4502000000b006dc6e40ba97sm2265770ote.72.2024.01.23.13.21.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 13:21:18 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/4] dt-bindings: arm: rockchip: Add Anbernic RG-Arc
Date: Tue, 23 Jan 2024 15:21:09 -0600
Message-Id: <20240123212111.202146-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240123212111.202146-1-macroalpha82@gmail.com>
References: <20240123212111.202146-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_132221_797030_5E88E425 
X-CRM114-Status: UNSURE (   8.28  )
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

Add the Anbernic RG-Arc S and RG-Arc D devices, and consolidate
all Anbernic RK3566 based devices under a single description.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/arm/rockchip.yaml     | 31 ++++++-------------
 1 file changed, 9 insertions(+), 22 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5cf5cbef2cf5..5592fdc85b9e 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -37,29 +37,16 @@ properties:
               - anbernic,rg351v
           - const: rockchip,rk3326
 
-      - description: Anbernic RG353P
+      - description: Anbernic RK3566 Handheld Gaming Console
         items:
-          - const: anbernic,rg353p
-          - const: rockchip,rk3566
-
-      - description: Anbernic RG353PS
-        items:
-          - const: anbernic,rg353ps
-          - const: rockchip,rk3566
-
-      - description: Anbernic RG353V
-        items:
-          - const: anbernic,rg353v
-          - const: rockchip,rk3566
-
-      - description: Anbernic RG353VS
-        items:
-          - const: anbernic,rg353vs
-          - const: rockchip,rk3566
-
-      - description: Anbernic RG503
-        items:
-          - const: anbernic,rg503
+          - enum:
+              - anbernic,rg353p
+              - anbernic,rg353ps
+              - anbernic,rg353v
+              - anbernic,rg353vs
+              - anbernic,rg503
+              - anbernic,rg-arc-d
+              - anbernic,rg-arc-s
           - const: rockchip,rk3566
 
       - description: Asus Tinker board
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
