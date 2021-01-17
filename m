Return-Path: <SRS0=q/kP=GU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7FAE2C433DB
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Jan 2021 10:07:37 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F058B2076C
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Jan 2021 10:07:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F058B2076C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8PqGcossIwxVqd9qpkn/Pad/8ExAjdjnvpv5ZS2TAHs=; b=pIhlyzmI491aI2LRNc4B4zb8Z
	yVZZgA1N7Oy0y9nPTyzY/HzyscuyHRRvp1qvg1sT7OdNCOBO0bmj+Cjo3pXl7wFe+aiAMV6v/R+XA
	dW/5cAlm0q1vMNkYB0WE9TbMu0dwl5kx7R9wMdAt12dNM/9mfPEnQvV6VvfmB3EeuzlNmKAM1gFMk
	aBuO5sm2TqMqpoYmC0Pi5G5MgwBlSVC4JZZFuknZ12jDAKNgPAQ+2TergA3zVKrRXUL9ccOBSKIyf
	hIuM4CxSt2YO8ML14wLEqbJYPsR74Z4MsWn+9fZ8yeV2dVNPPJbtLv3wmcO5OQiCChOtl+4qg9w9y
	dXmbb0Cuw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l14y2-0005A4-FJ; Sun, 17 Jan 2021 10:07:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l14xu-000584-VJ; Sun, 17 Jan 2021 10:07:24 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 975642074F;
 Sun, 17 Jan 2021 10:07:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610878040;
 bh=vTiBApCzqK9dM+81eGRA53o9IWiK4KFj+sBqbGi2ZPE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NiUTGO/iZC6jp/Vz1a47aMaebZzowHkE+6UzVE2t4KF60lyZ6M9kfbrXm7swz54fC
 EJtJqxLd8/H4rLgQYjmRV9OGNzPex8C2yVGkALwNAVmJ6/Olmue/gnCCC2beAit0nW
 ovws8rysmfDOTqcLwpoSqbnQH+V6ApL3VIAbqNYY5ibzPI5ETZY59NmY/LkLfhHEUC
 MzZQ9+D8q7AuWSLhIQwIv7MhJ4X5jEy9DmJTg+MOgLNnLe1obqsPFjlOeY2rKuk6Il
 5d7VIta5ox1PtHhfrq6QawQsGHlqmxVhCHqVToyg/g2FQ/HfqaC4t0vA7IT39Zqieb
 8zowSHo0nG0Kw==
Received: by wens.tw (Postfix, from userid 1000)
 id BA4445FB90; Sun, 17 Jan 2021 18:07:17 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Rob Herring <robh@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2 2/3] dt-bindings: arm: rockchip: Add Radxa ROCK Pi E
Date: Sun, 17 Jan 2021 18:07:09 +0800
Message-Id: <20210117100710.4857-3-wens@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210117100710.4857-1-wens@kernel.org>
References: <20210117100710.4857-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210117_050723_187430_25219E84 
X-CRM114-Status: GOOD (  13.25  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

Radxa ROCK Pi E is a router oriented SBC based on Rockchip's RK3328 SoC.
As the official wiki page puts it, "E for Ethernets".

It features the RK3328 SoC, gigabit and fast Ethernet RJ45 ports, both
directly served by Ethernet controllers in the SoC, a USB 3.0 host port,
a power-only USB type-C port, a 3.5mm headphone jack for audio output,
two LEDs, a 40-pin Raspberry Pi style GPIO header, and optional WiFi+BT
and PoE header.

The board comes in multiple configurations, differing in the amount of
onboard RAM, the level of WiFi+BT (none, 802.11n 2.4GHz, or 802.11ac
2.4 GHz & 5 GHz), and whether PoE is supported or not. These variants
can all share the same device tree.

The USB 2.0 OTG controller is available on the 40-pin header. This is
not enabled in the device tree, since it is possible to use it in a
host-only configuration, or in OTG mode with an extra pin from the
header as the ID pin.

The device tree is based on the one of the Rock64, with various parts
modified to match the ROCK Pi E, and some parts updated to newer styles,
such as the gmac2io node's mdio sub-node.

Add a compatible string for the new board.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 773fd4c531ed..c3036f95c7bc 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -468,6 +468,11 @@ properties:
           - const: radxa,rockpi4
           - const: rockchip,rk3399
 
+      - description: Radxa ROCK Pi E
+        items:
+          - const: radxa,rockpi-e
+          - const: rockchip,rk3328
+
       - description: Radxa ROCK Pi N8
         items:
           - const: radxa,rockpi-n8
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
