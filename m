Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F67FC43217
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Nov 2022 14:49:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=62Q5xSKRr8PbDLopKE/eH/wD+dBQLK8Nq0GvwJzx8yc=; b=yqWEUhQ4XlkR5Z
	yfjU6y3VZEF7UBTQUxC1xFTTszTs91VgEHvA9mhAgdpLMfWZxwxq4xJwXRHyiOqbcfSwNbVMxdat2
	tewv1aM1PJUgMUYDuTk1ps+glyjs5yMWGgZHGYx041XBEaJlZF2MrO9fKA1UgfuciELUPdxrztKWs
	oGtrVfpVJyO7OzzHFI1rtS56Mmv0tqXWXONFfoIAExranYkQkj0zvUBRU/IB9VViAn9cS3gDT51N4
	b99s95Xj2WdzjLM1gQG8jDrIculEL7MnUJyo9YS0cCWLcsv4uuYG38TJPz3nQLIaft+aRfPOUCd0/
	Tr5yXFpgBt+sdinfES3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyDXq-009RoY-55; Thu, 24 Nov 2022 14:49:42 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyDXl-009Rk2-58
	for linux-rockchip@lists.infradead.org; Thu, 24 Nov 2022 14:49:40 +0000
Received: from jupiter.universe (dyndsl-095-033-156-095.ewe-ip-backbone.de [95.33.156.95])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id AB4636602B33;
	Thu, 24 Nov 2022 14:49:31 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1669301371;
	bh=qlnzhQ44iCK3pxL9XYC8nPs32bPPQp/Y7GvWZaFXzdk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=MIjVS7Nsr9bSLu4kpYViFrNB+THuCpypYnqAdsy4Ue2+ij4JNZlmgd3Upwc95gOLf
	 fUfO/9X6VJrYSGgg8cW9BN96n9oGSb3DPaa00glUfLyrhslsyqS926RNQycJTMQKJc
	 je1xTN1lTLw3v9XqqV2Sr102ZZUjpk2EhUgJWM/iPwAaFVNmzWIijdvyOAuVPzN7a8
	 3ue7FIIxUhiL0j4Td8zyBl6F8Rn0BST+nao93WwD1dnpDnjZB4w8wMDLY4Aevphdu6
	 0C1F+Zw+cVaYFmgqZGrvkx64ykqaVrtzsVm5T/gYCh4zQYaTo2JS+Ficka/sOu3Xrk
	 Y1DX1LrjIdVIw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 59BC3480116; Thu, 24 Nov 2022 15:49:29 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com,
	Rob Herring <robh@kernel.org>
Subject: [PATCHv4 1/7] dt-bindings: soc: rockchip: add initial rk3588 syscon compatibles
Date: Thu, 24 Nov 2022 15:49:22 +0100
Message-Id: <20221124144928.35381-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221124144928.35381-1-sebastian.reichel@collabora.com>
References: <20221124144928.35381-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221124_064937_364862_84548EF2 
X-CRM114-Status: UNSURE (   7.87  )
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

Add IOC and PHP GRF syscon compatibles for RK3588.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 2ed8cca79b59..e682b407a383 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -20,6 +20,11 @@ properties:
               - rockchip,rk3568-pipe-grf
               - rockchip,rk3568-pipe-phy-grf
               - rockchip,rk3568-usb2phy-grf
+              - rockchip,rk3588-bigcore0-grf
+              - rockchip,rk3588-bigcore1-grf
+              - rockchip,rk3588-ioc
+              - rockchip,rk3588-php-grf
+              - rockchip,rk3588-sys-grf
               - rockchip,rk3588-pcie3-phy-grf
               - rockchip,rk3588-pcie3-pipe-grf
               - rockchip,rv1108-usbgrf
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
