Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAD68C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Dec 2022 18:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dCFCzGv/5G0BwOhsHNuD7JoNk+e8UheGePunoiHC3Gg=; b=L/35nue8YGDzvB
	AxTvIDVWMihGt3aKfPZc09/EE9HFcUDPPWUlRsnnN0rT2QdV+qKqEN/6vLuWaYQYDNDlw82JBCfoj
	5rRjSrMd+icDELLdhfyb1RB3H4jLRC6wRh2b0P5Qp6WAdn7pQGKtgBbHS1BLMi5NPnfEjbxNx1iD4
	bSu4+KvgNxjE+C2SNrSB5nLb1T1tW0VVE9LWFYViVZ1wNhvleT2zRu8Yj4QidAEfOPSLwWjdpHSCx
	kdt3sKsYBwzad5tQpOFIqJXyOBxuHLzth8C8aOeMR1yTwSwefi4c/+D1kjNjwqtJDZpbKbfOv3vg/
	DIH+LMI072YKtxNJIm1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5szk-00AppE-41; Thu, 15 Dec 2022 18:30:12 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5szg-00ApmH-Qn
	for linux-rockchip@lists.infradead.org; Thu, 15 Dec 2022 18:30:10 +0000
Received: from jupiter.universe (dyndsl-095-033-168-084.ewe-ip-backbone.de [95.33.168.84])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 4C5F16602C75;
	Thu, 15 Dec 2022 18:30:06 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1671129006;
	bh=km48d5+uuKrtU+jKn1qKtyEltR/pLoMVSjioNlT7fVs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=HtAM2ny1YRp0x70eWcZ4Y1JFlEPM8itAndKNcZ6IEFObrUZTkE37rLmbHrtw/aMIw
	 KVI9mrLdBe6pr3g5GKIGzFIVMjvSQuRTMlJOHyQ6NlQEaYiGU78x8Who81b/2OyWuu
	 4e8I7/29x8jqOoyXOZ0vh71USwPPeinIxalNRErkqD4DvPqXJFIOd0weRznyGxH197
	 5FTitEQKXsAguKbQdCcx5+mtf2P6vgWEDQkcFEH647uK5E10gHNpcxXVOLAsdQnk50
	 1hUc+97ruZejgurwBlTB6NiUD16beHN5AAoHb6+txGQ2vaFWy0rvwPYxc73RAnzB5j
	 7WWYU135qfnhA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 4BEFA48011B; Thu, 15 Dec 2022 19:30:03 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Marc Zyngier <maz@kernel.org>,
	Jagan Teki <jagan@edgeble.ai>,
	Linus Walleij <linus.walleij@linaro.org>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com,
	Rob Herring <robh@kernel.org>
Subject: [PATCHv7 1/7] dt-bindings: soc: rockchip: add initial rk3588 syscon compatibles
Date: Thu, 15 Dec 2022 19:29:56 +0100
Message-Id: <20221215183002.211081-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221215183002.211081-1-sebastian.reichel@collabora.com>
References: <20221215183002.211081-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221215_103009_013909_F8C0A521 
X-CRM114-Status: UNSURE (   7.64  )
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
