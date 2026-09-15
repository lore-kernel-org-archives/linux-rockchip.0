Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76F8BC88E7F
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2026 12:39:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sSYwmfl1V92exnMF4pxlZzX6eTSZTyalCZB5WFLxt5A=; b=D/IerfVKzAiqc7
	3clcww4nl+0oZxD8sQXbWsQur9N3uSB3oOR30rqcmjMePObJghKXKQWPBue/ldxOXoEOYiRev+y6S
	b6xQcql3CYR0Th2sg6bFTlKAIYqsv/Ox2dWQi3EwJ2WP0ZFnLOvVRtr5U5s/vkQdqaxzPzcC1hs3K
	+OYikvAjvOEyr5bpY2IQGARbujwaRYF+PNUKfjiPDiYFECXO3gTk9Pah+wL6ySz8XOClx5AMqEShi
	tKuDSU+AQE0zBoWjLLmNAL6UvuLrLT9FKjsxCU6uBpbGRmFscmzoriumi0cwYOuEjeplHjDKC0phL
	Za1M//xmV1Lar6zghXFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6SRr-00000006YT1-06Tk;
	Tue, 15 Sep 2026 12:39:43 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6SRo-00000006YJk-1Q0w
	for linux-rockchip@bombadil.infradead.org;
	Tue, 15 Sep 2026 12:39:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=TJZ0PecvDJzl0BEu7eLa+JMyHq2Op9t0/swrRCuqxn8=; b=cN1JlraUxVNmyWjx/psSkais47
	sEVTeh2lHDey938XYuHYHqGTKYjburnPMMQhhs2TTUbZsz3f/KGKMQw7LwP/Qwbct8+2ZQkujM5y7
	9a4Wuz2eK9P00Rn52+pIcnnSXPCljKO7W5Yybb9f/c37jxUynbjp8WXD+4BFxp52rhabkY5knRj6h
	UJFegk8ddrTbWeLPNIgjW4Lcn5r7DgxRzQrbZ012C2oNVPF1IjroGM8wCOb9KiuH0vR8SLJZUA22E
	3GfOKdXN3TirK+yiyL3gp1xFJVKqBD8YumG8fg6T4Zc6uhYwM5XIGFvlO+pF1lD/9/NAWC/WgsKo9
	O16X34FQ==;
Received: from mail-pj2-f11.google.com ([74.125.227.139])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x6SRj-00000006kS6-48Lp
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Sep 2026 12:39:39 +0000
Received: by mail-pj2-f11.google.com with SMTP id 98e67ed59e1d1-398a0a87595so4266186a91.1
        for <linux-rockchip@lists.infradead.org>; Tue, 15 Sep 2026 05:39:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789475973; x=1790080773; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=TJZ0PecvDJzl0BEu7eLa+JMyHq2Op9t0/swrRCuqxn8=;
        b=UwKnVIZeq896dMeM/z1UpV2y1xSzeqX7B9eRYk9+UXUgjP7HdNcchJ3FJ/5WNS0kYk
         /FVDf653vcPq3fEja4M2xYZ7mR0RX3lQbmg9eTXYFj9IdRgsrKyhu8/NEKIEIrjZ019U
         8vAvS//AM4q/0u/nVNbY325ICRWvP1TP7/QJz0r/KjfebaFCHiyU3/QxrZxXL1U5Zvuo
         zMY4LBTJNxJhU/zESoRDnrhaxRJkvQnn0dNtbFSneE5RoUxdc96kl3hia7qx5m119l1e
         scXNpTL+1igU1HhLSTTFj3Z7tXyap4rG2ksOqr2jun7hZkPkrHu2GHxsNKk0J8kjalMH
         PMiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789475973; x=1790080773;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=TJZ0PecvDJzl0BEu7eLa+JMyHq2Op9t0/swrRCuqxn8=;
        b=XGJ/DwFUEFz6FCsJU809k2/2b6z9TcP0s2aW7t9MPve6SHNaz1nV4hthkywSyOciS/
         xN+fIehausMyZCTVQu59Xaz+ytLrMsM9HTI34oQFyRkMzyB/P4ScpNfTVstW3wSzMs0d
         qg+JMbmM747WxTJdjNYwHplMHXd7OICAe4OLRW4f3dDOKvSfPJr0f7sD+yCIZdhgiDyE
         PD1RXjC8pbSZ0l4PQO4MYKKYPyRYLsQO7RbJp4awkqB9z2Et/pk8AD/D0wzQEQxEju49
         ldrf/jjxDcW+16YuOR0UTqDJuQPbDwXx68E2Q4hrF/tO5KaBVy0LHm2GAaFzQ6Z7oM0M
         hfDg==
X-Forwarded-Encrypted: i=1; AKwUvBxarDsAflQZ1Jxq0px2+P4W2myQ5/poGRaHFlWMMAoRsUpfz/YUMZWLEyrC+1/89dYQgSflcNKZZoEuoxcMvQ==@lists.infradead.org
X-Gm-Message-State: AFuF++lyAX42zXlo4ViUgmwnuU6nV3JErci1PKUfXaOh4MNBQlQiqH98
	HGtmc2Ao5UnizTTPsJ59RQp1lM15U2CRWgt0LU0kJRL5NR8fSGVdmLof
X-Gm-Gg: AYBFou28F258Q1BYpGy8VwIwr9kO+k2y1NemTMNwbkyIUN0lAbSzcANIoyNVEFyXMZQ
	SfOlGcC/GHbyx2D5vpNqWEWZwmR9dvLubyEWEGI8T5/H9RAzhW8T62vM+ddROWnMlOXoSRbENOI
	/a5bnFsvE+vnV1+wEMP1AKqnZTVMLOlXrFGWh8Qm/KsWGomFTp07Bx5Zxm2CEEUYxDOvtSl8sZg
	Do5bp5o/onNiIeuu2u5+R+JBrWn5MSHUrcsjJBFaMxNuyliWXfmY0d3B8/TtnHAciBWerAHefU6
	dtPzUL/lSIXuVK6oQgg3qHUj8FxyXHt8tx4EL+CV3+O2kUoDHuwenRwg1cpqZmxJSvOJgbsKu+u
	ab7UDeduSLY1/inX/51KzZogQODZ2dHchsGOSCXGqlav8y4pnBAa8k4GZeyxmpFGSb8x6P6anrb
	e22IrstY2lT/ombmyn/+H9LJSY3EfJoJWPc/jt6FQ/zHsHbB3rMrMKKn8ZaSjFYN5oq5neLIw=
X-Received: by 2002:a17:90b:1e41:b0:398:b1eb:136c with SMTP id 98e67ed59e1d1-39e10e2e451mr1383583a91.9.1789475973476;
        Tue, 15 Sep 2026 05:39:33 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39dfdd28acbsm5307259a91.10.2026.09.15.05.39.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 05:39:32 -0700 (PDT)
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
Subject: [PATCH net-next v6 08/11] dt-bindings: net: rockchip-dwmac: document pcs-handle
Date: Tue, 15 Sep 2026 20:37:57 +0800
Message-ID: <20260915123802.1561724-9-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260915123802.1561724-1-coiaprant@gmail.com>
References: <20260915123802.1561724-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_133937_478828_F89C0F1D 
X-CRM114-Status: UNSURE (   9.39  )
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
