Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71628C3DA60
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jul 2024 16:48:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QQjS5JbKsAZecnzJN1cUD2PT55NM5Blb24uzDlZv7ik=; b=Eju20hlErKj21y
	xhsK7J+4mEcOMIy9VJEDME+/KWm4ji8D7P/9N08zt4j+y3yp1gfD1iguYXVl3IoCW/06fnYtX3fZq
	m8D4nj2DRlTiRsx2l4ju/kS/x0C5y+D34TX6MAM+TiKJ93ye1E6SqkMGrjR11Lv8iW+sjkYFxyRnI
	ZkY2q6np+/39W86QWd0pNRtrtlCKW4mz84KU5yBSLkRxblpSxgMWq51BV/Xi2Ai/1kNvdYVckhs/f
	K39DoyN0Mz1QVf3rBVxe2QB7rjdKepEoXIe0HeBCv5KKW+MGYk8yV102oluxR+upvFzGqcLRMZqOP
	1QS90A7IupKwC2u3WnQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU7p8-0000000EOoA-3Lak;
	Wed, 17 Jul 2024 16:48:14 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU7o8-0000000EOO2-3ekj;
	Wed, 17 Jul 2024 16:47:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1721234829;
	bh=k9q0V9TcOQIA1PbY90EhLUeU/WhgnoateJ2JCPh/1u4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=zJGWl85iKQ0TazdnXhopSNq0QA29dN0TLmeIcoVb1SSX4oKQYzpqk2/WDbpaC3bRO
	 53EjQqa9bgvXFHkmfPHhU3tS4LsJRcJjJogXH242aPI0rf1XKC8T7F59SarveOdmM1
	 rojrRHj54gDCg3ztnpUV0YEsvR4z2uAfQX0uviZ54GL8qX7YvG+S6xCd6VjiOVPwfr
	 fU5iU0gzngHN/iBCNZyyK9gapCjdUapxPJq7N6uw5ub8olb9C84+sa36roMlzLj9BS
	 5GD1hZKUcgqzQe2ShPMfFZsnARirdirhRaTox98IUCRfeSPSSkcwJ8eNGPvf4lZ61P
	 mpHYu+OLrcvpQ==
Received: from [127.0.1.1] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 1C81937813C0;
	Wed, 17 Jul 2024 16:47:09 +0000 (UTC)
From: Christopher Obbard <chris.obbard@collabora.com>
Date: Wed, 17 Jul 2024 17:46:59 +0100
Subject: [PATCH v2 1/3] dt-bindings: arm: rockchip: Add Firefly
 Core-PX30-JD4 with baseboard
MIME-Version: 1.0
Message-Id: <20240717-rockchip-px30-firefly-v2-1-06541a5a5946@collabora.com>
References: <20240717-rockchip-px30-firefly-v2-0-06541a5a5946@collabora.com>
In-Reply-To: <20240717-rockchip-px30-firefly-v2-0-06541a5a5946@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Kever Yang <kever.yang@rock-chips.com>, Dragan Simic <dsimic@manjaro.org>, 
 Collabora Kernel Mailing List <kernel@collabora.com>, 
 Christopher Obbard <chris.obbard@collabora.com>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_094713_104953_7D7D22AE 
X-CRM114-Status: UNSURE (   8.38  )
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

Add binding for the Firefly Core-PX30-JD4 SoM when used in conjunction
with the MB-JD4-RK3328 & PX30 baseboard.

Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1ef09fbfdfaf5..33ca8028bc151 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -148,6 +148,12 @@ properties:
           - const: engicam,px30-core
           - const: rockchip,px30
 
+      - description: Firefly Core-PX30-JD4 with MB-JD4-PX30 baseboard
+        items:
+          - const: firefly,px30-mb-jd4
+          - const: firefly,px30-core-jd4
+          - const: rockchip,px30
+
       - description: Firefly Firefly-RK3288
         items:
           - enum:

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
