Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C718C61DBE
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Aug 2026 12:36:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xOmVRbVzWriMZIzKuVxjiWK54Epgu3h1u6th9KgORvU=; b=EkMiniYvUma+Zn
	KVPhSIoOE1z1Nc8bBB5Kwh9JdAeB4uACSiK4pRyKQoHbt14/zET9SJOD0Ev5EplA4ph7cRC0ymVAp
	TnyPGAuMFRTEy/VCWrwwNsd2FUU35HdgrEO8F7GAnKboXnx16xwEgQL8tfduX7LFwji4i+goeS6LM
	S+HcB/bLfsCl1ZbQyfu8YA+bdyA8mn7oHDQ/ZHrsjp/50ZnOYiZIL+XlK1IyfdmNwkrB61eYQepX8
	YfMESeqWrhZSySNGXSqEWtwN+EQMvFILGRBi6m3k356aSaCK+BxsigwBHvkhNrIWZYDhByc9dDd4B
	PWaoSxjrK1j4EhGqIHmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCs6-00000002RXA-27t4;
	Wed, 26 Aug 2026 12:36:50 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCrx-00000002RTq-3jBu
	for linux-rockchip@lists.infradead.org;
	Wed, 26 Aug 2026 12:36:47 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-49954b88fffso7457315e9.0
        for <linux-rockchip@lists.infradead.org>; Wed, 26 Aug 2026 05:36:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787747800; x=1788352600; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Wnl1KeJgVHfqTjz+jf+qVoKyfQU1onphkpSJDzU5fyk=;
        b=BVLg1ahrY9K04DcgeJjgp+catWhW9doujB6y0O/77ye3cmdggVqSfe3UAjWSFQE/lB
         quWfyQpzH7JOoeb2KZFs4h6O4aMFjiDOo5VhhZ6LW+SpbzlP/k5hDqvzyMzMQqBk4nAf
         IiRMoJb0I/N7ckn1eQ2wYPiPIaYCihxxxMHhQPhIurgOZYPBS5qQjPw+iDnpSVPqL5r8
         4SyTcy8gaNTUrsjIEhCTUOI2Pfv8JImDghmdV7bQnm6Vc1XXhYmE8AFzpbCv6HldUSFU
         j9k1Si/tGbJlo3P45C5HrX9nIrFcqeFXdvWUbHe0fGDBpHaud+ihGLuglH4I8jGmERpr
         ozTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787747800; x=1788352600;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Wnl1KeJgVHfqTjz+jf+qVoKyfQU1onphkpSJDzU5fyk=;
        b=j63lYSgBxHxY3YHmiYGMNwQuqekKmzOlFsuCLRHJPJ7SSp677sRvyzzimhiM8dulDa
         R53d4weEj4hVk7TRgkNXmXtl2szZVMZSvvjTtfviQnFNcmZ+Zw4sn0a944waT7oIZ2Uy
         zqCuCZmcD945l0zRCnbZyjRjeFK48vbYBfr3cPtnAPMbTRfeJz0lBsC5On2oXUcItDLk
         nPit4TCMU0pG9VAMf3Wq5dnGMJ8JW0JQs5mY/7qpps2RIuq/OAuaZiBr2oQUc2JfA5gl
         CfJscZu0YeA9CBIWogLULqYorHLhxXXGocrbnZNjGMu/EaqPSNFDxl/FGWBzTEo0G4Nv
         EJmw==
X-Forwarded-Encrypted: i=1; AHgh+RoLZFNn2an0xhkras5wPQxZ5jJuJ533LC/+Lg1lH/AKeemoHbwb9CUGiBPB0TSk9QltaO5IlGgdUggwKG/SYQ==@lists.infradead.org
X-Gm-Message-State: AFuF++m8ArQYnBUzbbYCWuhNJaFn5L5TYXQC+BZmJ1vJUpzIt25kKcjv
	NHdfWaDddhb12zIYqd56xTKioRBBaUio0IMZ+EGjQIGmwxSf2yZQNXdc
X-Gm-Gg: AR+sD13QXUNhhJaYswZ21ClNu2wQfUgTLcMYRE72IBqdmuZJvo+fPWnqPfVsgLkh9kZ
	yfHy5XMIXAaPuHCZWkqUPW8yu8vQCED8xCvilHEf5hKk0FmnQ0IpAHCqq0JMHHhn+kXpF2qrJbH
	fGBo5s33anPsFLskR7Yx1WaEHyNGm01cs2FMjF7cN3Wp7XDDPEkjWTJJ+bFUvl954FuzBsp4ben
	mBFqXkpq6/RzeRNJ2nbMpQ4J2clCnGe3LmpLe8zX+gyqK9u7o/e0nMqbbfsSOQUHNK6b9AGfuun
	eOvCF+LDKEDkX3PlOkdF7vhSEFNDYFjl7Qk4HL0GA29T1+W8sW8I0TyOVgd8HGfhWSbMMDYOiGL
	3YywqmzXX8Bc7yfw97rOReptwGsqHipF76Z2kgk8RJAwkIf5VxcyG/YlaWSXJHmz6hJQ6rRGCE4
	PyZQXgDLJd4YdNqHvy3ZiIddeXcACOMRyFEHAkVL3ya+U/Vt4h70TQgkW3WF+c9jOQf0gctN4Q9
	hlOVxAyy+wtYRetnBSVXuJZvU/dH39gjz6zbyt5IPBKHm4=
X-Received: by 2002:a05:600c:8486:b0:499:49f3:77b1 with SMTP id 5b1f17b1804b1-499dc6e1267mr68666055e9.3.1787747799611;
        Wed, 26 Aug 2026 05:36:39 -0700 (PDT)
Received: from [127.0.1.1] (lmontsouris-656-1-83-121.w82-127.abo.wanadoo.fr. [82.127.110.121])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-499dc977692sm26009465e9.6.2026.08.26.05.36.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Aug 2026 05:36:39 -0700 (PDT)
From: Amin Gattout <amin.gattout@gmail.com>
Date: Wed, 26 Aug 2026 14:33:50 +0200
Subject: [PATCH 2/2] arm64: dts: rockchip: add mipi csi-2 receiver nodes to
 rk3576
MIME-Version: 1.0
Message-Id: <20260826-csi-2-rcv-dts-v1-2-bcd8d459684d@gmail.com>
References: <20260826-csi-2-rcv-dts-v1-0-bcd8d459684d@gmail.com>
In-Reply-To: <20260826-csi-2-rcv-dts-v1-0-bcd8d459684d@gmail.com>
To: Michael Riesch <michael.riesch@collabora.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Amin Gattout <amin.gattout@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787747795; l=2631;
 i=amin.gattout@gmail.com; s=20260818; h=from:subject:message-id;
 bh=qeGW5LpBgkLTF3oueK+lUIcMOPfyOq3EXFr+2a4jTmM=;
 b=Uj2PG2rjARWU4fhCPtVG8vSsygORspaiXfNPYB4WCs73KwD+d8M6ssdACXnNi68ENOup3DFjM
 s1X70tpbA9eBuRdXV9fkuL8Bndo7i8tqM7BzdY2UY2JbtcZPkynJ0IS
X-Developer-Key: i=amin.gattout@gmail.com; a=ed25519;
 pk=MSIqDPkCOkwtyP8Fns1m+KFU9SgqoDl2mpLe18vL+hQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_053641_946631_9A858691 
X-CRM114-Status: GOOD (  11.57  )
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

The Rockchip RK3576 features five MIPI CSI-2 receiver units:
 - MIPI0: connected to MIPI DCPHY0 (not supported)
 - MIPI1: connected to MIPI DPHY0
 - MIPI2: connected to MIPI DPHY0 lanes 2-3 in split mode (not supported)
 - MIPI3: connected to MIPI DPHY1
 - MIPI4: connected to MIPI DPHY1 lanes 2-3 in split mode (not supported)

The PHY to receiver routing is fixed. Only the full/split mode of each
DPHY is selectable, via SYS_GRF_SOC_CON5 bits 1 and 2, whose reset value
selects full mode, so no software configuration is required.

As the MIPI DCPHY as well as the split DPHY mode are not yet supported,
add only the device tree nodes for the MIPI1 and MIPI3 units.

Signed-off-by: Amin Gattout <amin.gattout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 52 ++++++++++++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index b7a527614243..cbf8b70cc15a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -1324,6 +1324,58 @@ vdec_mmu: iommu@27b00800 {
 			#iommu-cells = <0>;
 		};
 
+		csi1: csi@27c90000 {
+			compatible = "rockchip,rk3576-mipi-csi2", "rockchip,rk3568-mipi-csi2";
+			reg = <0x0 0x27c90000 0x0 0x10000>;
+			interrupts = <GIC_SPI 314 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 315 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "err1", "err2";
+			clocks = <&cru PCLK_CSI_HOST_1>;
+			phys = <&csi_dphy0>;
+			power-domains = <&power RK3576_PD_VI>;
+			resets = <&cru SRST_P_CSI_HOST_1>;
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				csi1_in: port@0 {
+					reg = <0>;
+				};
+
+				csi1_out: port@1 {
+					reg = <1>;
+				};
+			};
+		};
+
+		csi3: csi@27cb0000 {
+			compatible = "rockchip,rk3576-mipi-csi2", "rockchip,rk3568-mipi-csi2";
+			reg = <0x0 0x27cb0000 0x0 0x10000>;
+			interrupts = <GIC_SPI 383 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 384 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "err1", "err2";
+			clocks = <&cru PCLK_CSI_HOST_3>;
+			phys = <&csi_dphy1>;
+			power-domains = <&power RK3576_PD_VI>;
+			resets = <&cru SRST_P_CSI_HOST_3>;
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				csi3_in: port@0 {
+					reg = <0>;
+				};
+
+				csi3_out: port@1 {
+					reg = <1>;
+				};
+			};
+		};
+
 		vop: vop@27d00000 {
 			compatible = "rockchip,rk3576-vop";
 			reg = <0x0 0x27d00000 0x0 0x3000>, <0x0 0x27d05000 0x0 0x1000>;

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
