Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8540FCDB485
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Oct 2023 16:58:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5QdFIjOfjUVK+uIWmoO3HHVkwFNMTyElpB5FyGwljdY=; b=1mNLxOogwwvYo5
	AvJ7aJrVIsTlmFch+r3JiYXdU0XKLP3tyVhhx/vjXJeK6X/BbyW21fRw136F0uIX0d3AEFLrU1sje
	LMw6WNCM1hdvOR41ITgMdFB66k9VkgQiKvcxU13lI4rFdW2MfiXcue3RddXNelmOJxl3a7+H3gyZU
	JjnguI4IVVrBMdT7Spv+xprYGCCbjVeazHTakYCEjSdxDNv9f/aogko/PSKWoGhUSIe4kXgBy1dXa
	G0w6UrOQLkPi9ZaFCeieeSQRf0MZq22m9zHuQtw4NE7IHJ19JqVTDRhzFHqbWRXb4qlm8ZJ4F76cQ
	gLoHpsZrIX4e2Y92oNqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtWLN-000Mvw-21;
	Thu, 19 Oct 2023 16:57:57 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtWL7-000Mkc-0X;
	Thu, 19 Oct 2023 16:57:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1697734656; bh=Fj8aJKU7DWLRGOAkmo8ksuB3I0hdR2JFWf7TkxgKTuQ=;
	h=From:To:Cc:Subject:Date:References:From;
	b=YB65RgKyqjDKlUsn3OmxI+sCijdwMf+Z5XzUdSA02/1I6dRZWqBSW5Oqa234RjJvo
	 sg3bAliq45Lyt38aO2r6vLX3LLB3Nzo1lhm1IPevcxWU8EGiMO05AlQWJGR2bXBusV
	 RcCwT4dwj9kXO8Etay+noUvbG5U9sxIbDhk3n0io=
From: =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>
Subject: [RESEND PATCH v3 2/4] dt-bindings: mfd: rk806: Allow system-power-controller property
Date: Thu, 19 Oct 2023 18:57:24 +0200
Message-ID: <20231019165732.3818789-3-megi@xff.cz>
In-Reply-To: <20231019165732.3818789-1-megi@xff.cz>
References: <20231019165732.3818789-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231019_095741_987566_5FD8E941 
X-CRM114-Status: UNSURE (   7.06  )
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

Declare support for this property.

Signed-off-by: Ondrej Jirman <megi@xff.cz>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml
index cf2500f2e9a0..3c2b06629b75 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml
@@ -29,6 +29,8 @@ properties:
   '#gpio-cells':
     const: 2
 
+  system-power-controller: true
+
   vcc1-supply:
     description:
       The input supply for dcdc-reg1.
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
