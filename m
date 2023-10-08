Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09DCEE95A82
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Oct 2023 13:06:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rvc/MnNOgmuduDlWIACJp0p9DDfJxnRb/9eekGJ+fdk=; b=2RUg3EVYj7GHT8
	+8cviewFbxMX9aMguQTWDRuG0SMNY+PU4rM5X75pe3dGAHa7HcplSBdiLX65909ZIFJ3ebGOfxgmg
	8+wzPAV8jqsnN1g210QawRjWQ+u/7VrqFpkuJ4MyC2rLpCs8LagpgRHd38KcC2bq6Q4uwaDMkK6BD
	pEdzNMRvoQYwrvlc9WlNwjQ3Z0eMg1/65vJD6RyeouB+isRfFWi2hU80+DpigrSLCM19IBe7FoaZ4
	dsYv1v64so+vY6gRXMU154+5t/5Z9klp72sUpI5FulAezKX0WHa9MP4Tjr+h91b8/KMpkKqVUEWT7
	Pz7BWatgXX8EVP72YabA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpTUI-008sbX-2Q;
	Sun, 08 Oct 2023 13:06:26 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpTU9-008sW0-2M;
	Sun, 08 Oct 2023 13:06:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1696770368; bh=SGueJWzRUgwjjh8gQok9lNmS9RZL18PVUdYVO6wswxM=;
	h=From:To:Cc:Subject:Date:References:From;
	b=Vl/UOEyQifLbMzsnIH/o3Z1kNXYmYAFI3U2C/EsSJuQw4AI3Liq5r4meui1nAJjzf
	 /8FqZzIDVgsQMf+yb4SmCEymsNLDY64FI3KMgvodwOOrXQ3zLVcRSJVI+HCdiIPetv
	 bqT2bBngbwCTcodtYrI9d58zzTWbAwnfZPNqeR8k=
From: =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	Jagan Teki <jagan@edgeble.ai>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chris Morgan <macromorgan@hotmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] dt-bindings: arm: rockchip: Add Orange Pi 5 Plus
Date: Sun,  8 Oct 2023 15:05:01 +0200
Message-ID: <20231008130515.1155664-4-megi@xff.cz>
In-Reply-To: <20231008130515.1155664-1-megi@xff.cz>
References: <20231008130515.1155664-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231008_060617_917132_A1E7D823 
X-CRM114-Status: UNSURE (   7.52  )
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

From: Ondrej Jirman <megi@xff.cz>

Add devicetree binding documentation for Orange Pi 5 Plus SBC made by
Xunlong.

Signed-off-by: Ondrej Jirman <megi@xff.cz>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ca5389862887..1a636ad540ce 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -870,6 +870,11 @@ properties:
           - const: tronsmart,orion-r68-meta
           - const: rockchip,rk3368
 
+      - description: Xunlong Orange Pi 5 Plus
+        items:
+          - const: xunlong,orangepi-5-plus
+          - const: rockchip,rk3588
+
       - description: Xunlong Orange Pi R1 Plus / LTS
         items:
           - enum:
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
