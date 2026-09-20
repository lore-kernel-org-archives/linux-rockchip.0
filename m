Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3A99C982D8
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Sep 2026 17:03:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X23w5rpAbUjaGp4USF2QORFb2E/PKuv+IGbCT5/Okis=; b=Pl45C257TY/mX4
	iYh9pb4CeM5oq9rMq+vlVLfRg78KvkIJgLKn/++kbtnl2jnZmpsXancyJvQYVyO9+l7R3I7h6GuwY
	6CIAOXFViNheUAlarK8Wtro8h1qwLYSvgjXmlHAsf2AcMoxCs+9t3zmqGg0QzxWTQ6L+uSyjZta4S
	IDzsxZT9Sp2CNyFV8AXfMoGdwf430dvlQaovp2v9dEmAGcSJaqxPdxS0uA/AMwWng7YJSnvjuUqV6
	NxElevzqzmjsTz8jffRtIfSsClKdFx/PPjmxcIygseVaJdSyS9mK9XoDEjmbuGP2ZgyQGswmR2p1v
	yeylGvUNw05t9a4NwqIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Kwn-000000009b5-0xlg;
	Sun, 20 Sep 2026 17:03:25 +0000
Received: from mail-pz2-x05.google.com ([2607:f8b0:4864:3b::5])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Kwh-000000009SN-1qfB
	for linux-rockchip@lists.infradead.org;
	Sun, 20 Sep 2026 17:03:23 +0000
Received: by mail-pz2-x05.google.com with SMTP id 41be03b00d2f7-cc1beca96deso1322059a12.0
        for <linux-rockchip@lists.infradead.org>; Sun, 20 Sep 2026 10:03:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789923799; x=1790528599; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=HWO0yYxZDPAwCYSgicIL5MDEtp9MsL193ldKBirIieA=;
        b=sgHEf02jSsY0Ltxt3ApYE7B1lbx0aisyEK9laAupHg4DftIWJEtas7ovIigUjHvcz2
         XLSzOx8ud4uNSvOcxy59+x+rhor3TFctREgdSnM8bJk1bPt9Na2ygYNK5wCoDM5ZbFel
         NlG3kQpWK1DXoWsZzWS9rcuXog20DeTlVXmEJptVKr5i0Kx3Odgnm/+jdoP1/+a42rlr
         g+tOX8u8pjSUgatfkd/EjzyTqDHkLYoWNBg/QEcvl0QM+B77CTT0MuCU6XwfnUNaBxtW
         NZnCebRj5t/QZKN59ryyQqr6rz0fdwmL85HkpFUlS0zgQ8o6Sx6gzgichPLMKcKulSVb
         CfFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789923799; x=1790528599;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=HWO0yYxZDPAwCYSgicIL5MDEtp9MsL193ldKBirIieA=;
        b=i2Qbq25n4NLC/w+lGJ96Qy6WC9E7OvpFfTzOhsWpnH6Q94ZKgylRk39lZgb3frc0+c
         5dWAclju8EHi/O9SX1YHnSkNS6L4X8pWjCzPZbPBVv5SrkB4qNCaaX5d3VRdf6p6f/Fd
         B32aEaxzMqxY4F/qcHntjKGNe3PBn0kWT8njJ0DThEL3adrBxgh9FpWmMVsTvUuys2i1
         ZPg8UzMPSFZVG/jzlNSXM2pqsAzVwTV4aRCpQu2r29i8MqU5gvOSbOQ7ocAMsNhk4Jgg
         K20LDPHz3+OJ10t21nSM8gd3Uq/82LXRm35SP8oxk9vAQs6yLO6vXO6hk/SCwWbwFix8
         +Ryw==
X-Forwarded-Encrypted: i=1; AKwUvBwaOWRnFzdAjqy6ELx155E3wwfusW2VTqDJ3xNW2vWp5YmlPGW2kStJ7RD87G07vktJTDQdjEUVn0MRN/C6pw==@lists.infradead.org
X-Gm-Message-State: AFuF++k0iQbrHa2Arvjwf75vJLc6jqTPIF6+oK+TRErwRlhjVPzN0j2j
	/AdEGLybgsbeMx86Y1YaTTHLy/g64nvWPgyhfk9vngbg2Gyfy/KefYsB
X-Gm-Gg: AYBFou3mV43TT4TlQrksc4kNw/GGT1J+LDGnbq23RZtzrwHIaSiv7fSzPcqO7vpBmGV
	+Vnlo+xg1lwy3/fKjVpub0LFmFF9m9xGxkS5YbAMk0o0zcuKH2I12VMtmxANyx/hvHgdlgPc6jI
	K8LrmuM1+Kl0pI2wfTFBxderC8kwG0063jB3O7Xeb4U+gbqflFFaJ1pi32uizofdwWLrJS5/lm3
	3CxUvC5zuHjDP9LpovWoZzp64CAVXaslqBGtajE/Vmwlt02MT9VlKx+Lxwc3avS2+SpZPMEyeA8
	/KqvEDKl0yS+sPdAb7MuH/ZxHH08DnhiUEpOSk469bbQFNYcqN8Bnd1IRDtbRiCdBe20x/M1HzT
	bwhdnzVPYqc7nDgNRJO/M01uW0HeB6HezLW007jg/9H1gHSI5PjMExkPHDvNQJZ9wZSuRH9me5s
	/qyqmLr/DshDvPMCblc7zjkJjWAvbepqqvKuaNc0YDUZfWZP9FnNcNH732/RYwqHKqU19Tdw==
X-Received: by 2002:a05:6a00:4b05:b0:878:34d7:6a33 with SMTP id d2e1a72fcca58-87834d76e0emr5109717b3a.39.1789923798674;
        Sun, 20 Sep 2026 10:03:18 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-877a9d07425sm2140646b3a.42.2026.09.20.10.03.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Sep 2026 10:03:16 -0700 (PDT)
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
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH net-next v9 08/11] dt-bindings: net: rockchip-dwmac: document pcs-handle
Date: Mon, 21 Sep 2026 01:01:12 +0800
Message-ID: <20260920170116.3624104-9-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260920170116.3624104-1-coiaprant@gmail.com>
References: <20260920170116.3624104-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_100319_610313_EDEF9CBC 
X-CRM114-Status: GOOD (  10.08  )
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

The Rockchip GMAC binding needs to describe the PCS reference used by
the SGMII support added later in this series. The property will be
parsed by rk_pcs_init(), and a missing phandle fails the probe. Add it
and require it when phy-mode is "sgmii" on rockchip,rk3568-gmac, the
only SoC in this binding that has SGMII support.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../bindings/net/rockchip-dwmac.yaml           | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
index 80c252845349c..bb7540e838033 100644
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
 
@@ -159,6 +165,18 @@ allOf:
         clocks:
           minItems: 5
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3568-gmac
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
