Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0649C7EE2A
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Jun 2025 15:54:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/tqrqgRF5VsjxQRNdLsKQxIUuXaAbMno+aslDZUv1f0=; b=HG5Om/GylbtsUL
	Z+IrSxCj4QO9PHhQDZKjm9TOdomKuTXHxMorBYRk4Iryi9Ky8cu8hQ18MjjXT4CMtvHG8OS0LcAdA
	1vJPvf4XrsB3V1mPoURcMVgvDoWP6dBJlqzpNujt1mRPF81epDYsAGSEC99CoP5V6rOE1zHMgEjnQ
	CnsRQTim+2qg7R05EykrhSxzESBzD2Vj3HHMO3oPtYMfYKzBbdek+kodX2y6lUel03Giao7jNjIRA
	gAeu6Du22LYsqeZrs2KdzDkcr8OFB1J63ygwkQbwwnRY/nZwBbZ10UmFaXNCdLlbw6WlW6MUUOjM7
	yzxYGjeqSglqEsrpAoYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVBP0-0000000FBDu-0nAD;
	Fri, 27 Jun 2025 15:54:10 +0000
Received: from out-173.mta0.migadu.com ([91.218.175.173])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVAyy-0000000F68q-0pYe
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Jun 2025 15:27:17 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1751038034;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FvDG6tIe9cP6E3SSgrjHunQaCLP0z6lp3rhIo96W2Gg=;
	b=PbFQWfjGA5g4dUGelEC6LcLrD46714RJX3ckSPui+8o/i+vQ8KweBZKS5nHxKNaZeTfrvo
	xCFC2wEt3pPWbkhTxpFk/7eEX9DNMSorvpbGpUlzeQkfuyg+uPKfKDQ1Ttp3PFVmrV7aNj
	sbDWC2aRgTG+kcXWDvB7Zta/HupK8rIYAsC4cMVa/bZb2FOX6jrUWLqsFgEoO+0QN1OJhY
	omlK4ARAHUlW2t92vbGnj2O2Yg4IvNV+eXKl0CGZ5k870UtKYvkNSu2UC0DtERgEWD4F8U
	7C7pA5kuLUfW2wnxlEqpdapqtt97a/XSQiDrj8Y8Qx5NP3o8uWuakhOCOTVkug==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Dragan Simic <dsimic@manjaro.org>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH 3/8] dt-bindings: display: rockchip,dw-mipi-dsi: Drop address/size cells
Date: Fri, 27 Jun 2025 17:16:22 +0200
Message-ID: <20250627152645.740981-4-didi.debian@cknow.org>
In-Reply-To: <20250627152645.740981-1-didi.debian@cknow.org>
References: <20250627152645.740981-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_082716_380336_22D1E98D 
X-CRM114-Status: UNSURE (   8.73  )
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

When the dw-mipi-dsi binding was initially added in commit
a20d86e7f964 ("Documentation: dt-bindings: Add bindings for rk3288 DW MIPI DSI driver")
the #address-cells and #size-cells were added as required properties.

When the binding was converted to yaml format in commit
0dac2102cf6b ("dt-bindings: display: rockchip: convert dw_mipi_dsi_rockchip.txt to yaml")
those properties were demoted to optional and removed from the binding
example.

As for the compatibles:
- rockchip,px30-mipi-dsi      removed in this patch set
- rockchip,rk3128-mipi-dsi    never used
- rockchip,rk3288-mipi-dsi    added (invalid); later removed [1]
- rockchip,rk3399-mipi-dsi    removed in this patch set
- rockchip,rk3568-mipi-dsi    never used
- rockchip,rv1126-mipi-dsi    proposed (invalid); never accepted [2]

[1] 282e2e078ba5 ("ARM: dts: rockchip: Remove #address/#size-cells from rk3288 mipi_dsi")
[2] https://lore.kernel.org/all/20230731110012.2913742-12-jagan@edgeble.ai/

The #address-cells and #size-cells are useful (and required) in the
ports node and for panel(s), but those properties are declared in their
schemas already. Now that there are no remaining users, remove these
properties from the Rockchip specific extensions of the Synopsys
DesignWare MIPI DSI host controller.

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 .../bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml     | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml
index ccd71c5324af..0881e82deb11 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml
@@ -58,12 +58,6 @@ properties:
   power-domains:
     maxItems: 1
 
-  "#address-cells":
-    const: 1
-
-  "#size-cells":
-    const: 0
-
 required:
   - compatible
   - clocks
-- 
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
