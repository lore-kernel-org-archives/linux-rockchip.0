Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1B31C88E65
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Sep 2026 19:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sSYwmfl1V92exnMF4pxlZzX6eTSZTyalCZB5WFLxt5A=; b=w+Z6V51Eby/Ff/
	yV+b9aYJl5X91VTTlhRkTsq6RESbHItAeercGSLi/xSU8VNHKmV7FEIn1+wq6kDSDRx2bHdPmsToI
	EC2YijcacAV2XQk6YwoC3rUdKYP54vl8MVRaZH26/W02DMf2pAYUfjzkw0A9/v1dQCOrvh4S602PH
	eq92kt6jhKAei4ZICtq+O1CUCKQfd8/nTVQhVcliAxlifOo3hGnkI+YEojnAyO6phGYBChlOkw5hB
	/4bzEnaXNOhrb+8SteksIrwxjI9rBJQfsC56VGeDU5zCvDZJNZ9z0Psn9Bk5MITjwveDIhZCOhBbY
	XPzq9N14ywPAG11ncyGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5pRh-00000001xhK-29Oo;
	Sun, 13 Sep 2026 19:00:57 +0000
Received: from mail-pj2-x05.google.com ([2607:f8b0:4864:39::5])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5pRd-00000001xbp-1r8K
	for linux-rockchip@lists.infradead.org;
	Sun, 13 Sep 2026 19:00:56 +0000
Received: by mail-pj2-x05.google.com with SMTP id d9443c01a7336-2d6fbdc8772so11702475ad.0
        for <linux-rockchip@lists.infradead.org>; Sun, 13 Sep 2026 12:00:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789326053; x=1789930853; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=TJZ0PecvDJzl0BEu7eLa+JMyHq2Op9t0/swrRCuqxn8=;
        b=iNaCGrcCmh/O60TbvEcUmhW5IlNcxomNzos7RtGteVEDrrgScUsaVq2whTyFM9lxix
         5OcXWuOfbs13wt4lWLOIv6uSIxOlHnRjF/DwD4CPyD2rGBrU64VryktdYbIcuKajVGcU
         ce226bUrnJ6HM9pFZOQBI27vdXjqIkKYDDb8b7Aj0jkQL6/u39nrV09jYeciDHQXI+KF
         ClWJnR8lH2uoTqRxC1W8vPZe00++QIjLuawU9agf0NKMnE7IvUvO7vRvuoUoUh/BfqH7
         D6W32JvXM9ZcQNCLNnUOIYuK/Zd/UpnRMo2Vc+iuQYtroL7WQzKrVul9funtehv8QXT3
         2uoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789326053; x=1789930853;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=TJZ0PecvDJzl0BEu7eLa+JMyHq2Op9t0/swrRCuqxn8=;
        b=Omq0Le1A5/50rgqWUew7VLOxFSiuyhQNTt+92txTvu6fG03NMXRRly2bDFC8o3M+yR
         PJGgYc1aiOv3jOvYfSHrMimeiu5OfAWlweAq2/rOZVDMr6LFc9qhWmL7lF0YapZPwagM
         8pHvlsFtqxwHYiCTafG4n25jQIeh2mk4m/eT+AUI605iMFs53f5Bx0F1uVNWe+rgZhpf
         UnE7UTy+r3F8tg6Mhh7t6bGsIFv6gnopWej5XmjzHIuxVEbH6lPP2FagWf0md7+eNI90
         POe/3V0TecTnqI7dsd9ebNKU7r4QwkiM29IyqI6Fdz1I6vQb/8qVFWg+h2yQCYCACW2N
         w2kA==
X-Forwarded-Encrypted: i=1; AKwUvByY4OXuUVslPWAGmHIFwjz0BEXiz56yzJp0HjVMl2uLe2J+x/f+6Qs3BT5Dk+STxoJWRmWRWb8eNPXiLwC9BQ==@lists.infradead.org
X-Gm-Message-State: AFuF++naAlH+9jbqC1OvAitfm2D2eMRe+Ud3Y1GzZTD1LAGTXbfBMTkt
	7ZIIN/XT1Nhd9JIIOgYnsDWWo3fF9kH69jZ+XqKeynM4zRAifpzz9WU2
X-Gm-Gg: AYBFou3+KDDU3VSnVCnIUxmgkpziYwvkid5Gre/VfzZ/e8FNGGw9nNdA3M7rda1PsIc
	VbLuPJNTCQXXtPseIDYCMeTg/bNS+BpVQbjnnbrE53/PX4zIGqekAAeBLZnLWJO8u736gDM0uVh
	6EmysVEoukoE89EFn1VEPA/WF6beJfiCb4Dr23OBzi9JuBhfzJBOtXkbnREqQaAISOFXxYFO3BJ
	q45v4Q4IAiMTef+l4eZV4bzSNuLe+tLrlEn6VnK+maZ6wL1fkLXa2j5rKlekeT2FXhsZQu4ZUCV
	1X8NJogbGbTzxNw2TLKraCxJ/gJrYlkb04hU8GqJtunIl6M6Buw0kXW7JDssvfDk4677ibKVKuO
	5hwmJRYuZqI/risgSbqV3caGiwRXbAIwj53cF4NpW6GFJKvBPVHAKtK2LuG9dVlSvKYPmhNpBfF
	z7/x50vxXOlTK+wZeKUwZ0ynIXKhRrn9ZWqHgISon5Nk/ql9Fo2hmYj8v37jsf9o6GKx6IIQ==
X-Received: by 2002:a17:902:ea0f:b0:2dd:319:c9ef with SMTP id d9443c01a7336-2dd2a1c41camr232853065ad.3.1789326052648;
        Sun, 13 Sep 2026 12:00:52 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2dd2cca6b7bsm36808655ad.3.2026.09.13.12.00.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 12:00:52 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Coia Prant <coiaprant@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH net-next v5 08/11] dt-bindings: net: rockchip-dwmac: document pcs-handle
Date: Mon, 14 Sep 2026 02:58:43 +0800
Message-ID: <20260913185849.907479-9-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260913185849.907479-1-coiaprant@gmail.com>
References: <20260913185849.907479-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_120053_530943_67030C9F 
X-CRM114-Status: UNSURE (   8.72  )
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

The Rockchip dwmac glue driver now supports SGMII on RK3568 and
requires a PCS, referenced through the "pcs-handle" property.  The
property is parsed by rk_pcs_init() and a missing phandle fails the
probe, so describe it in the binding and require it when phy-mode
is "sgmii".

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../devicetree/bindings/net/rockchip-dwmac.yaml   | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
index 80c252845349c..67b21ea77ec96 100644
--- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
@@ -120,6 +120,12 @@ properties:
     maximum: 0x7F
     default: 0x10
 
+  pcs-handle:
+    description:
+      Specifies a reference to a node representing the PCS device
+      connected to this GMAC. Required when phy-mode is "sgmii".
+    maxItems: 1
+
   phy-supply:
     description: PHY regulator
 
@@ -159,6 +165,15 @@ allOf:
         clocks:
           minItems: 5
 
+  - if:
+      properties:
+        phy-mode:
+          contains:
+            const: sgmii
+    then:
+      required:
+        - pcs-handle
+
 unevaluatedProperties: false
 
 examples:
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
