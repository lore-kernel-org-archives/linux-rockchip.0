Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 769F8C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Aug 2024 14:55:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p8WctWYsyISO6PfgX9gwN/K6lg4WIJkaMw5hifUjhRo=; b=l66/QZzEKqZs+M
	oXEkufGn5zxwWS42la1UN6MsGJs4koY3f4K9g/9TRjl0sNsLjvSETPqQIvu1x4vR6mJsFQndqsyXD
	sTu266OVF76T+/RLxdCWBtlUJ8xidnHNM7sjxyjAOhlRDvb4jz0IyKW5dOVmCevasL2ctqXoYQabl
	tbz/oJqfEA8TxyaAu7k4RgHQQ3dCDaiVY1WaAXU1YZgpdtdJg4LS9vDdwv1DDmj3Dk6jtA3ecVvKu
	nqYVDoqaPVR/AaOfoX2VQARNsSXywqkcjxjdrpASRDnSDfDlb7dZ4rFrbfMo7ko++jXJBSrbVTndK
	U35mp8pV7Bz+BVICsZIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZtgl-000000099RU-08nK;
	Fri, 02 Aug 2024 14:55:27 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZtfL-000000098z0-2eG0;
	Fri, 02 Aug 2024 14:54:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1722610438;
	bh=gNY/m0NcpoQEQagcCqUupCWfV1thUtwHYQjp10DWvpA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=IBBhnaBhcEpqb4FNGfgBCiilFQryCPpgr+FuHJ56ePCFEtEOnhvSjXAKwaj/I+J3i
	 uNlGMGzAhT9JFKUv6QphqOK8cPRRk3Tx/NYJ5y1UjZOg07n4Jqf+eF60CPcSIr3Fno
	 c1O/io6DvRRV8bfj6AKow8YqLJWUsL+5Bfa5yjIlaXEKAAsZX85ljwtvPQS8X0d7gv
	 wKdV2uECWxpMKnZu/oE2O9/LnsoQGrpuxMKqBnFHaRNEbylxP8oYJW9wZRaW17D/0z
	 on77vw40ntkrsRQpRk1+gkWp1FZAoiOlGjYkk2BlJj65OgaT02Rxnf3hsnUMC6pM1G
	 N9AqXtYmwSsAw==
Received: from trenzalore.hitronhub.home (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id D597B3782219;
	Fri,  2 Aug 2024 14:53:56 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH 2/2] dt-bindings: pinctrl: Add rk3576 pinctrl bindings
Date: Fri,  2 Aug 2024 10:52:04 -0400
Message-ID: <20240802145458.291890-3-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240802145458.291890-1-detlev.casanova@collabora.com>
References: <20240802145458.291890-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240802_075359_827479_51B84D90 
X-CRM114-Status: UNSURE (   9.54  )
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

This adds the compatible string as well as the optional rockchip,sys-grf field.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 .../devicetree/bindings/pinctrl/rockchip,pinctrl.yaml       | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
index 20e806dce1ecb..a202b6681624c 100644
--- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
@@ -45,6 +45,7 @@ properties:
       - rockchip,rk3368-pinctrl
       - rockchip,rk3399-pinctrl
       - rockchip,rk3568-pinctrl
+      - rockchip,rk3576-pinctrl
       - rockchip,rk3588-pinctrl
       - rockchip,rv1108-pinctrl
       - rockchip,rv1126-pinctrl
@@ -54,6 +55,11 @@ properties:
     description:
       The phandle of the syscon node for the GRF registers.
 
+  rockchip,sys-grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      The phandle of the syscon node for the SYS GRF registers.
+
   rockchip,pmu:
     $ref: /schemas/types.yaml#/definitions/phandle
     description:
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
