Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72199C001B2
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Dec 2022 18:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dCFCzGv/5G0BwOhsHNuD7JoNk+e8UheGePunoiHC3Gg=; b=T0Ekir5Yo1NIHx
	HgAy0RGC/GkzHzgJt1N84EurmCjHOQhwQXQ04mQDx8I0e/SxqffNtJgLnsI/OM99jKGNeqZRah2wS
	O4cNCcTyMzIZl5n3ICWdyXl94USqLPY1X457aXQXIAaMoHXrm+vxdncnaMEGINNonJHYaxGe7PSZc
	XDwSd7HC0nk8WqgyTWBl8+VEHIqwBX19VobXDBm0i2FbRoGrs6vWVRbji/AAg4NR83MJ2aTmArMcA
	Zm5KT5Z7HAEgcaZUR+SuNb5U0HjZ2YnueaN8tyZJbFgFXcZaGNC3IeebZfhB6EF0JIQOuXTulzz/h
	PBKXEfnSqkp1xOyoeSCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5WPA-001ZFK-K8; Wed, 14 Dec 2022 18:22:56 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5WP7-001ZAA-C9
	for linux-rockchip@lists.infradead.org; Wed, 14 Dec 2022 18:22:54 +0000
Received: from jupiter.universe (dyndsl-095-033-169-234.ewe-ip-backbone.de [95.33.169.234])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B08C16602C05;
	Wed, 14 Dec 2022 18:22:51 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1671042171;
	bh=km48d5+uuKrtU+jKn1qKtyEltR/pLoMVSjioNlT7fVs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=li/kTdDTTPbK0eOsl2Iqdv7GTq09aGgSF4+eXv1lY7D35/u4LLATtIBJMdy91C/Jr
	 2sCZqRDzxItTHa8x8+Xc1Z6Yn7bCiaaPC6puw0lnO4+7tjoh5y6tn3g5vLRqN+Ob/a
	 nCnSh9TifWpMtP0G8Uyz/Q+MQG9A42McYkCyub8ka35/wnIKzuEh0YKuAJNSEaXsuE
	 cscfqoY75JhcnKH/DWmyo1r6q6oTAomBBlofh/p+dbwYQRe4F44E0ac1uOmGShG0LU
	 1wtxqT5gb1tm2V+C4hAZliegyXB6V/IQchqChjlp8WMvOO16Vfga1ddOjRfturcDXD
	 lgGGSKIp5u7/A==
Received: by jupiter.universe (Postfix, from userid 1000)
	id B72F5480117; Wed, 14 Dec 2022 19:22:48 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Marc Zyngier <maz@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com,
	Rob Herring <robh@kernel.org>
Subject: [PATCHv6 1/7] dt-bindings: soc: rockchip: add initial rk3588 syscon compatibles
Date: Wed, 14 Dec 2022 19:22:41 +0100
Message-Id: <20221214182247.79824-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221214182247.79824-1-sebastian.reichel@collabora.com>
References: <20221214182247.79824-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221214_102253_566703_6DF5FDF1 
X-CRM114-Status: UNSURE (   7.59  )
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
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
