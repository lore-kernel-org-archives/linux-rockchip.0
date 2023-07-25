Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0C86C001DE
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jul 2023 15:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ktVT0anK37OGnjVN95Hzeq0Wzc7/9eNqkljGR86EPaA=; b=EkvelDFiCk6rCd
	EobWxKa5qcuyZxktKgmcRhAINjLhD2c/9oQ1NNRUyDVFDq04H9GMMLl6UKQQJzs89zCb2ZRCcDxOP
	c1BtmXi9gHCZXnU55xKQhh1cx5ZUjRufubBCAHYBmeKOQwqMP6t2Ta7D+JoF9jgcX/FiNMqTTXpoQ
	qR5A07K0gth8ylfB/+cLES9A+DKyqE4OwMP63LKaH7Mv1IB64enaOrP9HOwpxzjZTUy3cbT/qunjG
	ub31DjFHf8cps/fLyjnD3trd5ysAF4SHNeTEObErtIfKfbl/3jiKcFAmOO35puKvYzih5EqdfE+/G
	pUbmKFU5akkXGQfM47qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOKLX-007xkF-1K;
	Tue, 25 Jul 2023 15:53:11 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOKLU-007xj6-0A;
	Tue, 25 Jul 2023 15:53:09 +0000
Received: from eugen-station.. (unknown [82.76.24.202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: ehristev)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id DD2386606F9F;
	Tue, 25 Jul 2023 16:53:02 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1690300383;
	bh=oTwjKmbIzP/ICl+gGyGP/1DH20byUoeqWEtx/veTs3o=;
	h=From:To:Cc:Subject:Date:From;
	b=JbyBladbKjcskcYcNNABx1wJ/caoCgyx6Ixz11oqpXplKT3bjW0LG8kuPflsO/Zif
	 renQs/CYIAVyKv7FcLymQrorKZxhcfIkkfx0njUNVb7la5dGVo5aPfPufXc2yHMnfx
	 EXFgdsmcXTtePOR1ckYdS4t7Yhx8rKW99t/WYqbKmfVnhIKCvIhk1O1aCZ9kwnZlpZ
	 rk8O5CW2Cspxzdr7jaEh1AfhMmA+UnY+6J3x+m2EZjvL14jcXV/sNyt+qeP4RFAWlt
	 AEZ8UVITATGZDICbwaB/RkA4wvFERFsogJ1ew6WGVnnP1s8jtfAeOrfqFAmgZ1+Vnb
	 1fTcUIui7rA+w==
From: Eugen Hristev <eugen.hristev@collabora.com>
To: linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	netdev@vger.kernel.org
Cc: david.wu@rock-chips.com,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	kernel@collabora.com,
	Eugen Hristev <eugen.hristev@collabora.com>
Subject: [PATCH] dt-bindings: net: rockchip-dwmac: fix {tx|rx}-delay defaults in schema
Date: Tue, 25 Jul 2023 18:52:54 +0300
Message-Id: <20230725155254.664361-1-eugen.hristev@collabora.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230725_085308_246928_D51E267D 
X-CRM114-Status: UNSURE (   9.61  )
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

The defaults are specified in the description instead of being specified
in the schema.
Fix it by adding the default value in the `default` field.

Fixes: b331b8ef86f0 ("dt-bindings: net: convert rockchip-dwmac to json-schema")
Signed-off-by: Eugen Hristev <eugen.hristev@collabora.com>
---
 Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
index bb943c96c196..6d08260ad828 100644
--- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
@@ -92,12 +92,14 @@ properties:
     $ref: /schemas/types.yaml#/definitions/phandle
 
   tx_delay:
-    description: Delay value for TXD timing. Range value is 0~0x7F, 0x30 as default.
+    description: Delay value for TXD timing. Range value is 0~0x7F.
     $ref: /schemas/types.yaml#/definitions/uint32
+    default: 0x30
 
   rx_delay:
-    description: Delay value for RXD timing. Range value is 0~0x7F, 0x10 as default.
+    description: Delay value for RXD timing. Range value is 0~0x7F.
     $ref: /schemas/types.yaml#/definitions/uint32
+    default: 0x10
 
   phy-supply:
     description: PHY regulator
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
