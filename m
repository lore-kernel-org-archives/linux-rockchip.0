Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 625F6C02192
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Feb 2025 21:40:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PIbID/0PN/wVvPVG7SrKxJl8U9wwj7pPSjbH5AReoWg=; b=auJdzl6RfFoj1h
	SX1AqQWET+n65jpGikvnEflgzNHRmIoYcZCnxAL82i3GWMe98ZazFJdnuy8JavpetWtMDwHYqW6wv
	hMrcqCfBdsaysf2bHqTvOcjr7rTZy810JIHeCdW6yw4h3fM3tZJx0fxBXh/uOMcVq8WLegtyNEbMe
	KEKrc/mxYuMZd/WeFF4lUjnp2TWGSeIQS8nwdc52qEsE+7yzjHc32LZxK8tQx4ypJ/l+xW87KZ+pC
	teIXzwJcALnVt3EperVJcuVj3TyCvOl+FGdYVV1Tw1RwWB5Fuf2OpDFOegi2DvdvzjastYkLNEbKL
	wML9NrqkzRfy9pKSxa9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tf4B2-0000000Gh0V-3Q6Z;
	Mon, 03 Feb 2025 21:40:20 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tf423-0000000GfUP-0FfJ;
	Mon, 03 Feb 2025 21:31:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 12E69A41E12;
	Mon,  3 Feb 2025 21:29:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0E02C4CEE6;
	Mon,  3 Feb 2025 21:31:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738618262;
	bh=k9EUAUSdgz8Hi+LWzo64vfqQmxZJ++evupmA/smLcuw=;
	h=From:To:Cc:Subject:Date:From;
	b=YtUdTdOJt3vrSk8Om8vBARgbR43K0mYKeBkEP6EcvIl2FCHZRsUgQMPU5Vf8tIKNJ
	 A6EjboDC0O0prEQl1HJE57uOkrm4f05KlArcI9kr0/6NEk5qf/sD/9D9W07ZVEReKR
	 wfKTpDFsb70jeQWA3qrPOhU3MLFcuozsuC290Qrv/YQAG8z/0sxwJMuAjIyPPtGR6j
	 xEjryUDro4usDCKwgSEcNt2Bz5IJIvHZS4vi15Di0tH5Uzb+l7fjIflrG4M2eOzCyO
	 86NyBid3WDvv3QgIAMfJR9oOwJKZiD4YTYIt4KW9REXORj8fgs95K2vQCiOgFKOmFn
	 bnrKUBjIe+l/A==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Elaine Zhang <zhangqing@rock-chips.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: rockchip: pmu: Ensure all properties are defined
Date: Mon,  3 Feb 2025 15:30:56 -0600
Message-ID: <20250203213056.13827-1-robh@kernel.org>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250203_133103_157507_AA6371F9 
X-CRM114-Status: UNSURE (   7.88  )
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

Device specific schemas should not allow undefined properties which is
what 'additionalProperties: true' allows. Add the missing child nodes
and fix this constraint.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/rockchip/pmu.yaml | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
index 932f981265cc..52016a141227 100644
--- a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
@@ -53,11 +53,17 @@ properties:
   reg:
     maxItems: 1
 
+  power-controller:
+    type: object
+
+  reboot-mode:
+    type: object
+
 required:
   - compatible
   - reg
 
-additionalProperties: true
+additionalProperties: false
 
 examples:
   - |
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
