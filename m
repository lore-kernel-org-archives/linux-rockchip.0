Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A271FC4345F
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Apr 2024 12:58:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MpEy8fV8ybWSlPDTO6oDrvJXmVeALVbFbmSwUsbESFY=; b=SdG7PzN9zeVdJH
	nRvbwp6GXCxzxEn7elsatdpRPtxpsJ1TU6y9xvYXBg7SNpJONVvgk2iSFz6Zq3ooZk1Src617aT5Y
	v+LK6el0XZLokvC/BDiU2kpi5KGVsv2oxLVYdxg5+OTLFGG94ET83d+BY9kFgBteD42WA2pSIbjPy
	JfZi7//gHdO+8ASviv//QQzsodBDzO5qWYk2VqFzk0u47/KHIXY/6vCPrlT1OHM3YNqP0KuQH8P7e
	5AHWORdkNahuJQ/9EDvSpNloXPaZ/NgBZrWI+Rc1Ht6vqDFUll4FLVlm1FRr7eG+9idHka7tKspjV
	sbAf9gUMoSJUXVz+FhTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvGUR-0000000HCMx-1pk1;
	Fri, 12 Apr 2024 12:58:47 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvGUJ-0000000HCHz-158b;
	Fri, 12 Apr 2024 12:58:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 4F475CE38AB;
	Fri, 12 Apr 2024 12:58:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8E58C113CD;
	Fri, 12 Apr 2024 12:58:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712926716;
	bh=RTnOOyhSSzq7yOOQdouJl7Zn9C8MsF7x+mJejs6MMtg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=XFv7JIo6qB7IV01Vby8IqkFwg3gi+jNgorUQEf2tSsWJLOBtcu1zsgh4WIhAoGkfT
	 b6ajXQ4oacIqpKvhOJPbMOkPAeqFhx3qFUecWqii6jqazMLlgKil/2KJQvJ4DGcULp
	 G048C8ZKA0eyGMZEFlObS5ynoNYjcuR/2uBsq9l9cVT/BRaYhzlnMD74N2SyK3eZVs
	 Vvrf3pAlxVxWp+OLhXxhGoBS1sAEt8on1N7SugZwbDzoMW2gzT3WgJRx7mDn/FA3yO
	 zXY/ScCxZBBfB92zRbcwU6LDSQow2oKq6X2h1Fo3T5NbioTjONbNyJZ15lykJeblq8
	 URuz7B6AHjZQA==
From: Niklas Cassel <cassel@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Michal Tomek <mtdev79b@gmail.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Niklas Cassel <cassel@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 1/2] dt-bindings: phy: rockchip,pcie3-phy: add rockchip,rx-common-refclk-mode
Date: Fri, 12 Apr 2024 14:58:15 +0200
Message-ID: <20240412125818.17052-2-cassel@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240412125818.17052-1-cassel@kernel.org>
References: <20240412125818.17052-1-cassel@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_055839_515977_87DC161F 
X-CRM114-Status: GOOD (  11.36  )
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

From the RK3588 Technical Reference Manual, Part1,
section 6.19 PCIe3PHY_GRF Register Description:
"rxX_cmn_refclk_mode"
RX common reference clock mode for lane X. This mode should be enabled
only when the far-end and near-end devices are running with a common
reference clock.

The hardware reset value for this field is 0x1 (enabled).
Note that this register field is only available on RK3588, not on RK3568.

The link training either fails or is highly unstable (link state will jump
continuously between L0 and recovery) when this mode is enabled while
using an endpoint running in Separate Reference Clock with No SSC (SRNS)
mode or Separate Reference Clock with SSC (SRIS) mode.
(Which is usually the case when using a real SoC as endpoint, e.g. the
RK3588 PCIe controller can run in both Root Complex and Endpoint mode.)

Add a rockchip specific property to enable/disable the rxX_cmn_refclk_mode
per lane. (Since this PHY supports bifurcation.)

Signed-off-by: Niklas Cassel <cassel@kernel.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/phy/rockchip,pcie3-phy.yaml    | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
index c4fbffcde6e4..ba67dca5a446 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
@@ -54,6 +54,16 @@ properties:
     $ref: /schemas/types.yaml#/definitions/phandle
     description: phandle to the syscon managing the pipe "general register files"
 
+  rockchip,rx-common-refclk-mode:
+    description: which lanes (by position) should be configured to run in
+      RX common reference clock mode. 0 means disabled, 1 means enabled.
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 1
+    maxItems: 16
+    items:
+      minimum: 0
+      maximum: 1
+
 required:
   - compatible
   - reg
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
