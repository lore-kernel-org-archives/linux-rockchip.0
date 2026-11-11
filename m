Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 632D760A3828
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Nov 2026 10:00:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Ge0gVt/O;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=WJEKJMRj
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=PNgJ6qZI2uIZGN89pIf0mD2h4mLaI5MkD9jys12pNC4=; b=Ge0gVt/ODXTr9HBJuoMisCiIOJ
	mWLKHEZFK9jnq1+v4eZMtNL7Q9iW9GjmWWpGKYYxhHrQmo23wdpJ5DbZLtzhB6RzM7T0eNUVmMunb
	CIjcOjNM0554UuJPDIDDz97F4H5Qeiu2Q+kbLAdUoRQXt9ajmxNOdTSdH8chhQkTvfg82kBvw3sOc
	BauTG2+tt5FY5320NxHRZj76xML1DIaA6wWmg1w8yqMF8B3ZzTkwiexuu2253boIGaYMEWH5CKufq
	si1jtNjBnfR7L3uSAD/YgE4/T0U5aKBygaJ/V4RbTW0ywkR7T4RGkptqPaQQyhIm+6Q5TLoqxrwtZ
	CQ2dONZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR57p-00000006H4s-3mGF;
	Wed, 11 Nov 2026 10:00:17 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR57i-00000006H06-2vtE;
	Wed, 11 Nov 2026 10:00:10 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E7547459C2;
	Wed, 11 Nov 2026 10:00:09 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1794391209;
	b=VHXnsClc4H9Zi8x/M/WNiORlyOthLf193QRs7/69q3MacHKtKLd9cU1X8elZjDHgROln
	 afV4mrJsiekdzKlwWHAwGcbb8kRDwVvGl2F29xYpIIBvRMspgUiI7v20AksVgUiZoU5cC
	 yjqbkTovXEL//ZEzrrZU1EMREzUwz20FUclur2l9fqgGuQxRomJ/4AS+eZqLgcspulkSy
	 PDKozO/KWDnOPn/GRu/tUELHnKUu8lEB2Rrf8gHi6MbUC1Xn47pzUuJDaqmz4dzehJSuv
	 l7nVkdEtuuuOhFBDmAKWsxW65/OrCrkIgCuHxnTifb2b7QNGOG1lCrVSGtmNRt0fOfQ==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1794391209;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=Hm1SJBv9PRkAkfvr27EUes418WVIEQBi/LGbqVaUBrQ=;
	b=ilqHOYxWn6WOmbVaNBECsNjti6UNUeQIEIpyAEaoyCIHAbX/PCMOr39dmY/WHJdnTEnV
	 KNtVOiyvcrNEnYNXEzNIuFSsfzsPvJjtaAqXZ1Wa/BiskAxRDlR3mdnFdrW5xhwOqKNbI
	 pFWmhJxwawsjhZA7z4jwjy24SaUSFKDscVbBBXkmCkOOHjb0b1QiK2+2PPGuueuZPTurQ
	 r+MgZhtC71lDQ7CtOKpDulBcwVxV+jwmtQIo0kWDMTOoMGqjA0dQFXfAsTQ75u/l2wBhR
	 yjn3Ry220rEQnJ6DA23mf3DqRpxgudsOUZgfKLjKQqhjMuz5JUwxfYN0De2k3CTm9nQ==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 7BFFE1F00A06;
	Wed, 11 Nov 2026 10:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794391209;
	bh=Hm1SJBv9PRkAkfvr27EUes418WVIEQBi/LGbqVaUBrQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=WJEKJMRjog55o/d0vtpkv6m09chbopvnkMLCKxCKs1wmHBSBW41tSloUp/Q+P3DUG
	 IGnSeDwaPBi3UluSzIl8ynWKMtifpv4so6SIh/2cQoIBL/C1UlNzghTOVtTMENwshS
	 mvruTIej5D3paO5XlrotRm3lt+JlIwLyEZCJl484PYzBg2VK+F1NN4SXrguuqwX1qa
	 EGWCxFTBqz8IZnSMoUjRF3OnqgHI/fAEV0Ah/Xot/TdcV33UukgwY4Ju8l9dZZCsP2
	 AltVtzdLxuVqViaMMXOuEgvGIp4lVEs3u4g0en/y+j8VseUNeEsD9+oLFcV/qTnbKA
	 mmTWPCpEs1fQA==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id EC02748F1A;
	Wed, 11 Nov 2026 10:00:07 +0000 (UTC)
From: Cunhao Lu via B4 Relay <devnull+1579567540.qq.com@kernel.org>
Date: Wed, 11 Nov 2026 17:56:28 +0800
Subject: [PATCH net-next v2 1/2] dt-bindings: net: rockchip-dwmac: Add
 RK3572
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261111-add-board-ok3572-c-net-v2-1-304466394970@qq.com>
References: <20261111-add-board-ok3572-c-net-v2-0-304466394970@qq.com>
In-Reply-To: <20261111-add-board-ok3572-c-net-v2-0-304466394970@qq.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 David Wu <david.wu@rock-chips.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
 Jose Abreu <joabreu@synopsys.com>, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Cunhao Lu <1579567540@qq.com>, netdev@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794391206; l=2086;
 i=1579567540@qq.com; s=20261015; h=from:subject:message-id;
 bh=mU0yKgD5Rx8eSSVpwF/Chy/2gZ0r++kW24f/R5Jo8gA=;
 b=XkGmqoAuv2LzhL7CCpNsDL2kKOuW8q/VkorJlfbO44n/CkQBmI/3FKLoOYe5NmwR/FHXraodY
 W9hcCyaaI/zAro8e6BNxrR1yauBtUvOw3wtESU9U8lPfZLtHCCD35eH
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
X-Spam-Status: No, score=-14.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_REPLYTO_END_DIGIT,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Cunhao Lu <1579567540@qq.com>

Add the rockchip,rk3572-gmac compatible with the snps,dwmac-4.20a
fallback and require rockchip,php-grf.

Signed-off-by: Cunhao Lu <1579567540@qq.com>
---
Changes in v2:
- Add RK3572 to the shared Synopsys compatible list for consistency.
---
 Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 3 +++
 Documentation/devicetree/bindings/net/snps,dwmac.yaml     | 1 +
 2 files changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
index e8dda1961ab3..f0596513e031 100644
--- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
@@ -27,6 +27,7 @@ select:
           - rockchip,rk3506-gmac
           - rockchip,rk3528-gmac
           - rockchip,rk3568-gmac
+          - rockchip,rk3572-gmac
           - rockchip,rk3576-gmac
           - rockchip,rk3588-gmac
           - rockchip,rv1108-gmac
@@ -54,6 +55,7 @@ properties:
               - rockchip,rk3506-gmac
               - rockchip,rk3528-gmac
               - rockchip,rk3568-gmac
+              - rockchip,rk3572-gmac
               - rockchip,rk3576-gmac
               - rockchip,rk3588-gmac
               - rockchip,rv1126-gmac
@@ -146,6 +148,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - rockchip,rk3572-gmac
               - rockchip,rk3576-gmac
               - rockchip,rk3588-gmac
     then:
diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
index 2c4842404bf6..80d3b43e2889 100644
--- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
@@ -94,6 +94,7 @@ properties:
         - rockchip,rk3506-gmac
         - rockchip,rk3528-gmac
         - rockchip,rk3568-gmac
+        - rockchip,rk3572-gmac
         - rockchip,rk3576-gmac
         - rockchip,rk3588-gmac
         - rockchip,rv1108-gmac

-- 
2.34.1



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
