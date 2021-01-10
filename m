Return-Path: <SRS0=32dy=GN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E431C433E0
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Jan 2021 03:59:19 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BE12922E03
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Jan 2021 03:59:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BE12922E03
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+SZjl6Mn+qJSTgDEC1cqf5i+fK81kLSlz/qvUx8v2zs=; b=BPGrVO306aET8WvEIYE7Xjfbt
	HcC4gApDtZivbSyqRZuhTY/ga0ZdfhO6rE8LHuoOYLV+G4564qMoP3OUNu3i1PQrO2MOV2yb2ei2Q
	GIcY2G9sCOwObbgfbiNXXzztPka0GACJUnTgaGy3ryGmmdDbF9XBek5TWPEx98P1IHsq+YXFEHzcP
	wThUsMdlOBJqgaDceeli3B7wIbmJBjsH9CcoUsEfL2QiBXW7xmjOHj8CJFnCJfMQwdZuT2fYMBmXV
	TZwGQ8nB6pRWfvygNFcLmXU4wONEy53wer38OIaRqf23wetJqfsccfYhSjvrs+TuBonymp6sDfvqN
	bSpFiEjdA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kyRsl-0001UB-A2; Sun, 10 Jan 2021 03:59:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kyRsS-0001N5-Fv; Sun, 10 Jan 2021 03:58:54 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id EE6B722DBF;
 Sun, 10 Jan 2021 03:58:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610251130;
 bh=XBh3xURhtblajRqazPG5HcxWnzDN6UC7F4000rWWthI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RumPg9Fr/nuLuP/rZ1sD74CYEP4SrdGa1xb2S14JE4K2Prx/NLHp+wrBa1FpRPSvv
 U0L4bsr8LyFGlxWAQyzTaM/PRYCD0AWlvbmZVM9c4SAeFKrWOELMArf6FObNj1zr6X
 lP/VrV+aioeRO4UNaj6/CHsWpx38Ws0tYR0EHBWHF7PE6DbvlLTHJc0RChnyLBmP9O
 jn5ErlYuVM3MhcLgNtE6euX3p9CFNNxVSLzT1bRYEQ45leSIzH3/a/nUQymkz6dw/A
 0s5DhAxJ6YUEJZdoPPJVv3IkR4V8M+lKPvf6jAScGRWOP5eK33OcpuEbO/5OVrgod6
 v/RSN7JZQKlhA==
Received: by wens.tw (Postfix, from userid 1000)
 id 095595F74A; Sun, 10 Jan 2021 11:58:47 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Rob Herring <robh@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 2/3] dt-bindings: arm: rockchip: Add Radxa ROCK Pi E
Date: Sun, 10 Jan 2021 11:58:45 +0800
Message-Id: <20210110035846.9155-3-wens@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210110035846.9155-1-wens@kernel.org>
References: <20210110035846.9155-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210109_225852_665290_D0A00207 
X-CRM114-Status: GOOD (  13.19  )
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
