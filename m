Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE6E9C04FFE
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 May 2024 15:24:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NOsNqUoCRkyfBPyWhzTpMuR9F2iGerE9BLYVP6GX1IY=; b=WyW43e+qlU3wmA
	vSOfTT9oVSp1VrJ4EWp3rQn9/oRczBQpGPTawZh563igmSWVAy+LjcxBVD6ud6EV6JXznak37rIWX
	cTt4A8Ip7OC1YjU/Y+7FgvJBNRqyuFBjZKDobNqd/OYbQ1JTvroG/bf6i8//BCtVSjOsyJZiTDoD9
	0QT2XNYyQtIEDcUSSgPbauoNo68Sin0qHA0ut6T1/Nk4VG8SOu095DYZn+wKAt8CIpABlk+nmOZ+q
	2tb9yJHED5zEGIRz6w/ky7Aaw+ze3ZczO5fLUOmK+QoRlarfaae1sQX10JuuYyUfsUDEMTe8S7KJw
	dellalaK2qX//9qoljCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6u12-0000000GJhY-1RBr;
	Tue, 14 May 2024 15:24:32 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6u0t-0000000GJZA-1INT;
	Tue, 14 May 2024 15:24:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1715700262;
	bh=p7nTz/Irz77RiCSjoigxmGbDz02q1CnibFJajp5cPw4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=tV5Hda4AXXSV+gBLPGXMrdFGL33+gcnuSGI60CBLFQtOcWSaYTb6XDVRRmGy4DC0E
	 08XVWtEfv8Unohji+Dqq4bAHaP2tmtAJMuAnPGHSFOHpmbjAA8rsGbveIBC14tUv9y
	 7uFM+yfjX/p8jWMKLEi/e9CXy3IBXc/IKg0WqXq3EowUuanIJZkCyjWfd8yr39kIG7
	 XT2tsD6I6RZ6bCCa3bc9g6V6lMmvQLE03pNbrU/XP9C9iat4iqBmSc4uYU8irRpcfn
	 zFZcoZwSWXhU7f098rg64RxI0HHBz+kyPTx1e62LNMDWfyH6PUOZ6vpopQCMLIQm2b
	 1HmBeCp4zPvJQ==
Received: from arisu.hitronhub.home (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 98D883782198;
	Tue, 14 May 2024 15:24:18 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH 3/3] dt-bindings: display: vop2: Add VP clock resets
Date: Tue, 14 May 2024 11:19:47 -0400
Message-ID: <20240514152328.21415-4-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240514152328.21415-1-detlev.casanova@collabora.com>
References: <20240514152328.21415-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240514_082423_500773_6E9D89DB 
X-CRM114-Status: UNSURE (   9.04  )
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

Add the documentation for VOP2 video ports reset clocks.
One reset can be set per video port.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 .../display/rockchip/rockchip-vop2.yaml       | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
index 2531726af306b..941fd059498d4 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
@@ -65,6 +65,22 @@ properties:
       - const: dclk_vp3
       - const: pclk_vop
 
+  resets:
+    minItems: 3
+    items:
+      - description: Pixel clock reset for video port 0.
+      - description: Pixel clock reset for video port 1.
+      - description: Pixel clock reset for video port 2.
+      - description: Pixel clock reset for video port 3.
+
+  reset-names:
+    minItems: 3
+    items:
+      - const: dclk_vp0
+      - const: dclk_vp1
+      - const: dclk_vp2
+      - const: dclk_vp3
+
   rockchip,grf:
     $ref: /schemas/types.yaml#/definitions/phandle
     description:
@@ -128,6 +144,11 @@ allOf:
         clock-names:
           minItems: 7
 
+        resets:
+          minItems: 4
+        reset-names:
+          minItems: 4
+
         ports:
           required:
             - port@0
@@ -183,6 +204,12 @@ examples:
                               "dclk_vp0",
                               "dclk_vp1",
                               "dclk_vp2";
+                resets = <&cru SRST_VOP0>,
+                         <&cru SRST_VOP1>,
+                         <&cru SRST_VOP2>;
+                reset-names = "dclk_vp0",
+                              "dclk_vp1",
+                              "dclk_vp2";
                 power-domains = <&power RK3568_PD_VO>;
                 iommus = <&vop_mmu>;
                 vop_out: ports {
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
