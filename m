Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AC31CF9C6B
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Sep 2024 08:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ySZ+Dclmiy3dHgllX0V3uIHbSn7yYYfoctXqqUInwUg=; b=ajdxCHLtHO4QGd
	pctPR343n4eptVPGM3iz2UbAMA/6Qy2cqDLaqys5dPjCI5RLlRJZbiRKwRZsU4ImL5a2L4tVf9cQi
	vrgfBd4sot9pU5wODdkVXxNfTS8SBqpeUQZcDsULlvZPtFCPbnMMZWCUGxJoIi9MHYYJRyhluol6G
	y7Z84u833gVFzDOgXBf7BvoUKiavPFzzRj4vVw/jKsqOZ4s/Pg62PYfYYo86oFF9/9DXs5NTL181q
	dnp67nxeaD6yJn4zK22a+y0MkTnUFcAXB2ApETdNQZszdBhax/LFKCQMaHnpIyZZlrWRG3pfgR7zA
	IYXDdfilvP7930slo5Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1st1Kj-00000001gUU-1tgD;
	Tue, 24 Sep 2024 08:55:45 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st1KL-00000001gLj-0IHD;
	Tue, 24 Sep 2024 08:55:22 +0000
Received: by mail-pg1-x530.google.com with SMTP id 41be03b00d2f7-7d511e60be5so330436a12.0;
        Tue, 24 Sep 2024 01:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727168119; x=1727772919; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/FI1DcNAuH3qKf7n7Xl/ic4hrmrj7FMsL5tIw63tMgw=;
        b=lo6rVzVW9FnOkpNcGA+1qMfQVM61mOgc/lO30umngvIrTEJq341RO3KHSmDJz5Jtv1
         7S3h8t3Su8wyImT/cxmTmJsZMp57f+gZfeMvS9AsCJjC4Y9nGXInhfXlFYq+STWFRepe
         sItPNQL1sasjX22820r4eqzss9R/Wqd5h6IPo5PzTFTWQs4FG4Nk2+mttB3eCsGdegrr
         oSSX3XVQvb0ReLS7JdGa2kK9WZcEzyiMUFtvavFl9wiHp2tZ9M3uUsDmMAWP7NHE+VLq
         fKZh4Vr9+R/d3MTO5LGkwW3Z1mzJqWjGKtOQkrd4Hs+//7o0j8ZfvvFbkwNcsJRCdDWV
         h3Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727168119; x=1727772919;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/FI1DcNAuH3qKf7n7Xl/ic4hrmrj7FMsL5tIw63tMgw=;
        b=KskdHld1CDgVzfZPFafIGcLWzxy5kNGGQCJl9Rwfi8kxm21t5Li4OF+ArGzsc0g2iG
         Diky9U1m9gJJShqHiRqIEKG9N7E959HWxNNoYbaonU6nJ5svCzAyWBhJcAP7iLC8NC+i
         tFz3IeHgFUwKwf/9gvowGCrQoryr4vSvzjOGHSsoWCwSCHY8yWp/sB2nfKBKE81eHNn4
         EprRxI+XURZfa5/soJNbjdgcGPwGqAXN+JEldWnCrfzxCXjUwrS52PMPCoNkQ0gLPJCY
         d21j26wJm9zkgCxSTrA7D+amGUoz3GylAijCPi+Uj0xXXDlNCkKWsrKWjsAwe3kmA0pl
         wnqA==
X-Forwarded-Encrypted: i=1; AJvYcCWV26nhcjVXMCU+4G64Eet9JSPT7JnF5y0TckF4Q8caiVyEB4BxiXAbjKgxN6LeCxNysguoGdaop4bj5HNBD94=@lists.infradead.org, AJvYcCXpbsiMcg2HPFtUH6sCzmPC/rN/Ki5TfAY2Wz++jQD4ON3T+zflvO0lJa5th5SRpUMb2DRk1UtDyGKF1xwIIyeh@lists.infradead.org
X-Gm-Message-State: AOJu0YxuOux5n97+XpCAxyCSAsOGEgWcRYC6QTBkFe9vLy+8mJgBW+Cv
	eZrlU5uBu0JenP67Xx79bjCZ4emjsu/3rSHmWLAQbFcsx7C8TNzNTB5e2QmDspI=
X-Google-Smtp-Source: AGHT+IHxkIzwP+MOur8ldY/9lqikVaW+SAAtkZjc59TlE/i2ve5nhmTkBi3mBcZoS3Y1WtTQYnYdjg==
X-Received: by 2002:a05:6a20:430e:b0:1cf:4903:7f5f with SMTP id adf61e73a8af0-1d30a8bf46emr10200468637.1.1727168119286;
        Tue, 24 Sep 2024 01:55:19 -0700 (PDT)
Received: from localhost.localdomain ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71afc97c18bsm795090b3a.158.2024.09.24.01.55.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Sep 2024 01:55:18 -0700 (PDT)
From: Frank Wang <frawang.cn@gmail.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	william.wu@rock-chips.com,
	tim.chen@rock-chips.com,
	wmc@rock-chips.com,
	Frank Wang <frank.wang@rock-chips.com>
Subject: [PATCH v2 1/2] dt-bindings: phy: rockchip,inno-usb2phy: add rk3576
Date: Tue, 24 Sep 2024 16:55:09 +0800
Message-ID: <20240924085510.20863-1-frawang.cn@gmail.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_015521_142276_B394D0BD 
X-CRM114-Status: UNSURE (   9.63  )
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

From: Frank Wang <frank.wang@rock-chips.com>

Add compatible for the USB2 phy in the Rockchip RK3576 SoC.

Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
---
Changelog:
v2:
 - Categorize clock names by oneOf keyword.

v1:
 - https://patchwork.kernel.org/project/linux-phy/patch/20240923025326.10467-1-frank.wang@rock-chips.com/

 .../bindings/phy/rockchip,inno-usb2phy.yaml      | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
index 5254413137c64..8af4e0f8637fc 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
@@ -20,6 +20,7 @@ properties:
       - rockchip,rk3366-usb2phy
       - rockchip,rk3399-usb2phy
       - rockchip,rk3568-usb2phy
+      - rockchip,rk3576-usb2phy
       - rockchip,rk3588-usb2phy
       - rockchip,rv1108-usb2phy
 
@@ -34,10 +35,20 @@ properties:
     const: 0
 
   clocks:
-    maxItems: 1
+    minItems: 1
+    maxItems: 3
 
   clock-names:
-    const: phyclk
+    minItems: 1
+    maxItems: 3
+    items:
+      oneOf:
+        - description: aclk for USB MMU.
+          const: aclk
+        - description: aclk_slv for USB MMU.
+          const: aclk_slv
+        - description: PHY input reference clocks.
+          const: phyclk
 
   assigned-clocks:
     description:
@@ -143,6 +154,7 @@ allOf:
           contains:
             enum:
               - rockchip,rk3568-usb2phy
+              - rockchip,rk3576-usb2phy
               - rockchip,rk3588-usb2phy
 
     then:
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
