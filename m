Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF126072B02
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Oct 2026 16:12:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=InAUsBtp;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=J9Ef8cxY
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T7xYyLUMa4rsqwD3hIJlEs854DyEQv27rToz0wxAwgo=; b=InAUsBtp92n3qT
	giBBy9HU18oA61GXsgT/FMWeMVcCVEzTE9nvdYsIc9yoOr90wM3R5eGG9qMuy5FTDdCp9OQQODeVR
	9AZKOftvIk+g5wsjzDWFRQNybgDQrsMyjSf147Kn1/eZFwEW/jpeR0CNmhah3tFLfNNujuCk/58zc
	CEyPilM+pCW5sVFLfvjSyl7Qv60vNla0KqciAYhPa3bTuRgDRpjsOBq9JM2sCrSP390zAtIr7O0hX
	ZY+gqy+v6MD58d7IRIo/8ymmxXytpKmsZ8z9Vg26lpStqeg4HN3kprV4f3d3y7hNutc77aWUJhyVf
	QIvdCsZ/lUemrcgySQ7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJYvo-0000000CMjc-0V8n;
	Wed, 21 Oct 2026 16:12:48 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJYvd-0000000CMTu-1NUE;
	Wed, 21 Oct 2026 16:12:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1142641FC7;
	Wed, 21 Oct 2026 16:12:37 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1792599156;
	b=AskeLuO9DhVUVcQ2oPT+aeDX6JPA26PTuWs15MFNmhQhC+8odIIs3NK0HCFakO0zoSKA
	 xObQ3bIVAy9z4BmOv0pLspnGCn/qDWWCF64gzNoE04+N4TKS7AOk0xVGOul4WO90RN76S
	 p7/ppxqyGdzlplQNcmJGbb9/5Ty0wZxdv2FgKL3PH1LelZjnXTQ21bNCLkSOZ7gGEXD16
	 72LbE+mW+gC/J3rYsvzsZdMhjuBH8/4yaDGieraDedB0LwpH+cfW2OwEasPI0FD5cF2Ry
	 6KWxGA+PqEoBVC6T3DT+m7VEFpXg/Kd6HwYW+TKJT4YDCcXf7ecZCNJDLamIYDeXByQ==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1792599156;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=ghjDVnN9LsVPKNNzN/vbJQ3mpejB87UEXyfdI53eas4=;
	b=dNVDip+1leId2un+E63yr9C6CuWYVGP5+LR8n4gvTVVealxNybpgDWhyX8H01k9QjhLa
	 qsL6TUELJYGLwpdP/HM4gUxqxX2sScIyj9Pnfbukp+tzpJEntydRYT52OAmSVgygByzY7
	 PrunTgZ4F5WEhe/hgdRU/WDWvtq8qZXJXh21v3O68vJSTrRzHG+HuIyCBZPRsPmYH9I7e
	 0Oj93bt8NevQh4yw81TkNOIjkOzZk9YfTLGA1hgWvRgz+gsryrlzND6XzZqXzq9Z5Juhb
	 LLq7Atk2J4bvhYjpnVq7/frqgVxA7kUvLBwWsXXwF75O1hTzzynjWtdDKrAZQo1eyVg==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id CC9401F0157F;
	Wed, 21 Oct 2026 16:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792599156;
	bh=ghjDVnN9LsVPKNNzN/vbJQ3mpejB87UEXyfdI53eas4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=J9Ef8cxYIo4Cf5DTgAn5U4aMl/aLMcL25vdKOdiGJ/3bXLAJBJzlXZEtNY357FKhP
	 lY3h52ms1KOLKZvV59A9lgVE/1vzmG9uTORrrixiXptxvknJxR7/1471IVjsO26zyh
	 rxoVbOdIN+4tsY47BM6cjMUBtIsjLiMaCHq78Zm8TSl3y9fut8E48mR59Q5sO7e7MO
	 KHE48Z99IGvW3KMYEqQrgdASVloy/u18Vwl6TyJ+kTgeqsDuPbi7YKKbhWljTtCBen
	 aJHYbMBRHokYO6h8juffFIDZEshXh8tx20Mxe7d+PWFofQW/j4sAznNUQmhyb4uZCD
	 JxRiB2FKwTTSQ==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 6D084433D1;
	Wed, 21 Oct 2026 16:12:23 +0000 (UTC)
From: Cunhao Lu via B4 Relay <devnull+1579567540.qq.com@kernel.org>
Date: Thu, 22 Oct 2026 00:11:10 +0800
Subject: [PATCH 13/27] dt-bindings: mmc: rockchip: Add RK3572 controllers
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261022-add-board-ok3572-c-v1-13-0b0fd85a31ee@qq.com>
References: <20261022-add-board-ok3572-c-v1-0-0b0fd85a31ee@qq.com>
In-Reply-To: <20261022-add-board-ok3572-c-v1-0-0b0fd85a31ee@qq.com>
To: Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>, 
 Jerome Brunet <jbrunet+clk@baylibre.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Elaine Zhang <zhangqing@rock-chips.com>, Lee Jones <lee@kernel.org>, 
 Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, 
 Richard Cochran <richardcochran@gmail.com>, Ulf Hansson <ulfh@kernel.org>, 
 Andi Shyti <andi.shyti@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Jisheng Zhang <jszhang@kernel.org>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 David Wu <david.wu@rock-chips.com>, "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
 Jaehoon Chung <jh80.chung@samsung.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>
Cc: Cunhao Lu <1579567540@qq.com>, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 mfd@lists.linux.dev, linux-gpio@vger.kernel.org, netdev@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-i2c@vger.kernel.org, 
 linux-serial@vger.kernel.org, linux-mmc@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, linux-phy@lists.infradead.org, 
 linux-usb@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792599138; l=1519;
 i=1579567540@qq.com; s=20261015; h=from:subject:message-id;
 bh=sQ7kmloA49WrSzIqOzAxP/3d4RkCk4R1kcxdgqDQWos=;
 b=pqqKJGkd2U1YPXo/wn/BctY3QQzArrjEr1/m2ewIpOrS/UlTX1rRSsgpmqGc85FC4oFNDXrKO
 nVCbtKiT6XzC4OkVHRePSPO6HPP3iAfEoFVxQaAbRErJlDoPQIpFCFT
X-Developer-Key: i=1579567540@qq.com; a=ed25519;
 pk=sUTWrzlIwT4C7ctjNfVZAzzg0G7QUn2XxRGpYsw4RtM=
X-Endpoint-Received: by B4 Relay for 1579567540@qq.com/20261015 with
 auth_id=1177
X-Original-From: Cunhao Lu <1579567540@qq.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Reply-To: 1579567540@qq.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_REPLYTO_END_DIGIT,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Cunhao Lu <1579567540@qq.com>

Add the RK3572 SD and eMMC compatibles using the RK3576 fallbacks.

Signed-off-by: Cunhao Lu <1579567540@qq.com>
---
 Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml   | 1 +
 Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml | 3 +++
 2 files changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
index 21ecfaa454f45..08db29af3e969 100644
--- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
+++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
@@ -50,6 +50,7 @@ properties:
       # for Rockchip RK3576 with phase tuning inside the controller
       - items:
           - enum:
+              - rockchip,rk3572-dw-mshc
               - rockchip,rv1103b-dw-mshc
           - const: rockchip,rk3576-dw-mshc
       - const: rockchip,rk3576-dw-mshc
diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
index cd823a3ef2130..a4e04fedfd33d 100644
--- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
+++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
@@ -13,6 +13,9 @@ maintainers:
 properties:
   compatible:
     oneOf:
+      - items:
+          - const: rockchip,rk3572-dwcmshc
+          - const: rockchip,rk3576-dwcmshc
       - items:
           - enum:
               - rockchip,rk3528-dwcmshc

-- 
2.34.1



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
