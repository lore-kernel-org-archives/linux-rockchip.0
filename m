Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 500CAC9830E
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2026 10:23:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ryxd7uA3CoDV06+X3VRolsJwLrRMHu7gsjGTzMPWBXs=; b=Tni0MrXnSJy80T
	Fpytlem10S9DX8ky1OoO/vMAUulEJTk6MRgvIAFo8Y1SkySaf4ExLIl2684K1AfZSn4OvGwU9NHQx
	WwcfFKMz5tzM+YTNxVZLHqXSZc7wwQeLDlxwEViLyO/huGsMN+9g0MSSfgNk5dT6D5sNbYiaNTOBi
	j5vQr99bucF4MXMpJp5oUuqajeNua47AEb9HklHkPiFzX5qn8U4xILZ9Wcvv/ewHoLaz/OX8nXRg4
	5D7GBqGEfSU/OPEmccfbZgEY/Ng1uYLUWir3s75MBEY+FM6HodEx6XgbF3Cp5M1HajPK4qf4q5mRG
	PcJmry4ASgYh6jPS7T/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9gbh-0000000Ahm4-3uxP;
	Thu, 24 Sep 2026 10:23:13 +0000
Received: from fhigh-b6-smtp.messagingengine.com ([202.12.124.157])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9gbZ-0000000AhhD-2YHy;
	Thu, 24 Sep 2026 10:23:06 +0000
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 382717A00A3;
	Thu, 24 Sep 2026 06:23:04 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-05.internal (MEProxy); Thu, 24 Sep 2026 06:23:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gahingwoo.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm3; t=1790245384; x=
	1790331784; bh=0DpoiKQK/pAK6+VRgnar1lFxM3UetYvMfvKdfg6sGSU=; b=K
	ktBEdoU5gsFnD9KybH5juVltRRIhaJKOM4BE7uUIdllRfXZ9DZUK6DqlhY79sF1U
	5F0dhr2Stbm5/l6bHj2kKL7Nz0OHDOakqphB+MLts5Lu2cEKhFEP+PqUQlBtAaKL
	ugjmNhlfe7riT3FOBHhAL+6fyhEhImgqCmLMJqK8uH+icQnM8pYzck02uXMyIBZD
	yU6If62/RLT9nNpzySsfyeBGDUTjVuZDbdn3/pYsFVh19+wUa74q7L7uMFLBhgEs
	gJw8wFwEN4ag/Nf+8ZVWnzSJ/bA2THdqE8EMeEl35xPYBLFDGaZnVBdrmlU4N0R4
	zQf37PAka75wJ9xfgRBOQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; t=1790245384; x=1790331784; bh=0
	DpoiKQK/pAK6+VRgnar1lFxM3UetYvMfvKdfg6sGSU=; b=I8xdiyIsE026WTQN4
	pEfp2huSywhP/VeSkH4+5ookcPh9hOSIzvT22dS7j1HbSgFHmGnL+DxxZ92BDDQ8
	eF4CENe62HBunk0w1lhXj23b/ozeNRLO1AValH+OkflaiTEgp8cf+flUDbW4e+Bc
	g7pUTN4oEgg8LHMgetOnmpd2iySkzV0VFUeOgdbwHr0FztLbGxeKqA3W+G44i0y4
	/2C3TNj3VwUsFB4Za+2AhKjtinOr2Bk7FFFcb2DlLEm67oXM8F9k6q+XoRbZ1M3D
	XsGs4I/4dYDbdRMi6NmIQYPi18MzqGSgwVLgCD3NKJw33iM85GQSMZiSmREL+umf
	xSixw==
X-ME-Sender: <xms:B_q0alprBRrZruDSS7U-ZBIIVr62GWQe34_lsauIxJJ35FHQO2PTUw>
    <xme:B_q0aoaaLDdtqZb89gYY4Z-kh6wNoHLs7a9VHcWcfDs8DH46kr5VotWM3JWyNMwDv
    UYlcpIgYoHDPuxESzSBJohozGa3vFMF7QcWDP9T9vfljp5Sk2zTwAA>
X-ME-Received: <xmr:B_q0arFeH2Y-0NAsERy9kMTcx5Bi0wnWo-a5RVOt9ksZ0PvjxwMm6MrTN0UOoiJ0cQFx_p5j1Q>
X-ME-Proxy-Cause: dmFkZTFedTl3F1DIrTHCICe4Fo+6yuH2iIryXb4vaD1hJk5uz+D3fdxBaPEGleMmtjQ9jj
    /AH1EkwAh8wKmQiLT/9bSvDiQhW+TZmRyikvMLrEzAS6A5ogRqUhM4yxUxSgAmF4L6zbNq
    JU1CrDOUHEJdjtSdpDsxEskFn/aWSY8EhEM69IoGnovQNyACerECRpwt+2pE+OuDo6j5C2
    BOOC64LiXafVGJCK8SqFHoQAP2FF+TvLHYjrI91po4XURVMn1pQeIKHxydNlGe/KKK+FAO
    2AUxd7OWs8ZDGv/h0aNNMjxPVGQhrAw5D/31vFjHI5S7swl3HoagxPlYCWUyU9dgrzlHFV
    9ued//M7bvfNrjaALGaNXU06mxZi2UVe0kaRvozT0as1aZOpp9EU8g9PKO6raYXt8sp0g+
    T0b8yZtwROIYhaU2kCcRXrEGtPCrg9SK6NH0hjcZxU7n3SzsPlubWw+UZlSoaU40myTd3R
    HPzUd2zt/Q7bohcpmKKOhNGyGQP0pw3tVyDtlx7y0zKyeMqenYPrJyXkvKK2LFlAxI0K5W
    DJK6B7aQwBizD50zHV1Z8RHuIVdIb4YO4EOUBIt/HlpC7PDhl1jbkEyr5hTe1pbZlGPBGp
    N5c4Ktr0hrHSIRL4fkh710iSkOvTtY2cpi5nssX6Mhx00NE5u+avreaEBc5w
X-ME-Proxy: <xmx:B_q0aoztOLntchIIP8UiIyxd7L2dMcl72afwZNX17XfJ1iT9PQAXxw>
    <xmx:B_q0akAvi0IM_Os0cEc3oyuhgI3xA8tLvaQzmYOE80mDou6V_xVieA>
    <xmx:B_q0avUNyscvgScdMZ18LuhRFgl_kP3vgyOwEWUXdC-HKgO7fHlAQw>
    <xmx:B_q0aujJQu-tACx60G-UT8PgvUxmK7geTtqY3e-WR2bbTVi0UiCzww>
    <xmx:CPq0as4uoDYYSWw7WsmYlIo5edFF2Gw3vCrhc3EVY4InOp35k6c8eCbG>
Feedback-ID: i7a5e4b5f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 24 Sep 2026 06:22:54 -0400 (EDT)
From: Jiaxing Hu <gahing@gahingwoo.com>
To: tomeu@tomeuvizoso.net,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	joro@8bytes.org,
	will@kernel.org,
	robin.murphy@arm.com,
	ulfh@kernel.org,
	p.zabel@pengutronix.de,
	ogabbay@kernel.org,
	zhangqing@rock-chips.com
Cc: royalnet026@gmail.com,
	abel.vesa@oss.qualcomm.com,
	sebastian.reichel@collabora.com,
	sidong.yang@furiosa.ai,
	u.kleine-koenig@baylibre.com,
	chaoyi.chen@rock-chips.com,
	diederik@cknow-tech.com,
	alchark@flipper.net,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	iommu@lists.linux.dev,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v14 06/15] dt-bindings: npu: rockchip: add rockchip,rk3576-rknn-core
Date: Thu, 24 Sep 2026 22:21:26 +1200
Message-ID: <20260924102135.92217-7-gahing@gahingwoo.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260924102135.92217-1-gahing@gahingwoo.com>
References: <20260924102135.92217-1-gahing@gahingwoo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_032305_694727_4C56EB17 
X-CRM114-Status: UNSURE (   7.80  )
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

The RK3576 NPU has two cores of the RKNN block this binding describes, with
two extra CBUF clocks, two power domains per core, one reset instead of
two, and no SRAM supply. Widen the properties and pin each SoC to its own
shape in allOf; sram-supply stays required for RK3588.

Signed-off-by: Jiaxing Hu <gahing@gahingwoo.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../npu/rockchip,rk3588-rknn-core.yaml        | 47 +++++++++++++++++--
 1 file changed, 44 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/npu/rockchip,rk3588-rknn-core.yaml b/Documentation/devicetree/bindings/npu/rockchip,rk3588-rknn-core.yaml
index caca2a490..3b611b64c 100644
--- a/Documentation/devicetree/bindings/npu/rockchip,rk3588-rknn-core.yaml
+++ b/Documentation/devicetree/bindings/npu/rockchip,rk3588-rknn-core.yaml
@@ -21,6 +21,7 @@ properties:
 
   compatible:
     enum:
+      - rockchip,rk3576-rknn-core
       - rockchip,rk3588-rknn-core
 
   reg:
@@ -33,14 +34,18 @@ properties:
       - const: core # Main NPU core processing unit registers
 
   clocks:
-    maxItems: 4
+    minItems: 4
+    maxItems: 6
 
   clock-names:
+    minItems: 4
     items:
       - const: aclk
       - const: hclk
       - const: npu
       - const: pclk
+      - const: aclk_cbuf
+      - const: hclk_cbuf
 
   interrupts:
     maxItems: 1
@@ -51,12 +56,15 @@ properties:
   npu-supply: true
 
   power-domains:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
 
   resets:
+    minItems: 1
     maxItems: 2
 
   reset-names:
+    minItems: 1
     items:
       - const: srst_a
       - const: srst_h
@@ -75,7 +83,40 @@ required:
   - resets
   - reset-names
   - npu-supply
-  - sram-supply
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3588-rknn-core
+    then:
+      properties:
+        clocks:
+          maxItems: 4
+        clock-names:
+          maxItems: 4
+        power-domains:
+          maxItems: 1
+        resets:
+          minItems: 2
+        reset-names:
+          minItems: 2
+      required:
+        - sram-supply
+    else:
+      properties:
+        clocks:
+          minItems: 6
+        clock-names:
+          minItems: 6
+        power-domains:
+          minItems: 2
+        resets:
+          maxItems: 1
+        reset-names:
+          maxItems: 1
+        sram-supply: false
 
 additionalProperties: false
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
