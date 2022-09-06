Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51850ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Sep 2022 15:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mYXM22W72rKmahtToxDQBgDGP3S5/oYV2Gv0LN3Ec9U=; b=HC7ETSp62UXk0H
	nEQruxEZvIHJPWOd882d9qXGWpRZu81Ev0DwgxV7HqO6Y2L4NRGe1MenjMQgC/J3pwh/33QGTlBZq
	qiq2jVYqjEbSuW4USbgJSrHYWUT5nEr06Oq+0sHvKCF3k5WzYkSo/+mLqpoWP6zAXSc2uXxTIK2id
	ISAsEscRwpfrTIptoCA9zI68nliJXBEDKpUpb5g42jb8rsnjy5+tj9UBfzMRdoYuZEh9JJOZrq1mD
	mpa6KLfo0I3BY2v2mSJJ7cSCtSKEcSUJCJ8o67cN5naGYdyfHyOHJsbFfLi3lR84LfFB49TENfrgy
	gBwstE5X4NmhvwaqqmuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVaZP-00Eq1y-Nc; Tue, 06 Sep 2022 15:32:59 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVZij-00ENaC-N5; Tue, 06 Sep 2022 14:38:35 +0000
Received: from jupiter.universe (dyndsl-037-138-186-136.ewe-ip-backbone.de [37.138.186.136])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 78D856601F4C;
	Tue,  6 Sep 2022 15:38:29 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1662475109;
	bh=+rwcY1WUac1w3sXnyj1l5+zLst961YRJ5Tdpg70DUtA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kTwD//X4kobZr+u40dV2WLnCOY89qQLPQ8VzD2hHrdpcAFJyCPTWVnSYhFiaMlaDU
	 PhhMaiYSseJfgLc+yGx3b7bshw40DEP9e/VMGhoODzdv/HV4tvRFWwH85GeSZw9oM4
	 EqvHLdickfjBl+Au0LcH6kHRn7aOJoj85e34ooDezi1siJijnSZnH3CyMmTvRbI9BK
	 0MxICevKSk2Msi8Cm/xHICbML6Rj8VnUtsMT8bmGY1zG1BTQUnWrgaC3zL5vZyQCqC
	 s39fSnQECmh8QR4Rg6IdQnAs+rV7V9n1/cKJRyAOEGZDwU2Yfh0sdAzx56goR7sE7Y
	 4nXbeHtxO5qJg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 4022648016D; Tue,  6 Sep 2022 16:38:27 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Lee Jones <lee@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com,
	Rob Herring <robh@kernel.org>
Subject: [PATCHv3 3/6] dt-bindings: power: rockchip: Add bindings for rk3588
Date: Tue,  6 Sep 2022 16:38:22 +0200
Message-Id: <20220906143825.199089-4-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220906143825.199089-1-sebastian.reichel@collabora.com>
References: <20220906143825.199089-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220906_073834_088786_8A6A1A42 
X-CRM114-Status: UNSURE (   9.72  )
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

Add the compatible string for RK3588 SoC.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../devicetree/bindings/power/rockchip,power-controller.yaml    | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
index 3deb0fc8dfd3..5a769517f5c4 100644
--- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
+++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
@@ -41,6 +41,7 @@ properties:
       - rockchip,rk3368-power-controller
       - rockchip,rk3399-power-controller
       - rockchip,rk3568-power-controller
+      - rockchip,rk3588-power-controller
 
   "#power-domain-cells":
     const: 1
@@ -119,6 +120,7 @@ $defs:
           "include/dt-bindings/power/rk3368-power.h"
           "include/dt-bindings/power/rk3399-power.h"
           "include/dt-bindings/power/rk3568-power.h"
+          "include/dt-bindings/power/rk3588-power.h"
 
       clocks:
         minItems: 1
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
