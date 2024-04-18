Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C958C04FFF
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Apr 2024 14:15:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eTGZAqs0P7zxSDyDH2pftUCrWb+lvGxzxSwGL/mSvw0=; b=zP8jLa9/tRDcR7
	9pb71uo6YlSi8yrX2Spk7Xsw2ueAKXKHXCrmerBMPpSGt4KhDeFmOt/Zgegb1MxzhJJ/GqXCHImPt
	rpRC2D6wskhkGiuzr1IQoNYpp5Dg1C7tPT+hv/4waMFwnY0Nuz5pojM7gyknk5vtnpRtkrrSBZhMx
	0d/upPrtd+SYnKpxJ75aT9uvwwRuqwFLhQ1eVflZcSr1wunmUVGwbEnQ1ES4vLi/kCkIINPxszE2c
	S9ZI8odiBNBHxZyBSXKd1Ph3YBxiGvST2LVVEWPYfeoRKs9mXDR2Z8Py/XQyxM3Q3Ao9BN8qvwrre
	UYrmZmm/7mnxG2TqEulQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxSY8-00000002Xmq-0vaa;
	Thu, 18 Apr 2024 14:15:40 +0000
Received: from [2a01:e0a:828:c7c0:e2d5:5eff:fe2d:8e8] (helo=luna.linkmauve.fr)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxSXy-00000002XiC-41Mf;
	Thu, 18 Apr 2024 14:15:37 +0000
Received: by luna.linkmauve.fr (Postfix, from userid 1000)
	id 5DEBD10D1B05; Thu, 18 Apr 2024 16:15:14 +0200 (CEST)
From: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
To: linux-kernel@vger.kernel.org
Cc: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	iommu@lists.linux.dev,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 1/2] =?UTF-8?q?media:=20dt-binding:=20Document=20rk3588?= =?UTF-8?q?=E2=80=99s=20VEPU121?=
Date: Thu, 18 Apr 2024 16:15:05 +0200
Message-ID: <20240418141509.2485053-2-linkmauve@linkmauve.fr>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240418141509.2485053-1-linkmauve@linkmauve.fr>
References: <20240418141509.2485053-1-linkmauve@linkmauve.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_071531_242673_2AE943D7 
X-CRM114-Status: GOOD (  10.61  )
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

This encoder-only device is present four times on this SoC, and should
support everything the rk3568 vepu supports (so JPEG, H.264 and VP8
encoding).

According to the TRM[1], there is also the VEPU580 encoder which
supports H.264 and H.265, and various VDPU* decoders, of which only the
VDPU981 is currently supported.  This patch describes only the VEPU121.

[1] https://github.com/FanX-Tek/rk3588-TRM-and-Datasheet

Signed-off-by: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../devicetree/bindings/media/rockchip,rk3568-vepu.yaml   | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml b/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml
index 9d90d8d0565a..4c6cb21da041 100644
--- a/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml
+++ b/Documentation/devicetree/bindings/media/rockchip,rk3568-vepu.yaml
@@ -15,8 +15,12 @@ description:
 
 properties:
   compatible:
-    enum:
-      - rockchip,rk3568-vepu
+    oneOf:
+      - const: rockchip,rk3568-vepu
+      - items:
+          - enum:
+              - rockchip,rk3588-vepu121
+          - const: rockchip,rk3568-vepu
 
   reg:
     maxItems: 1
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
