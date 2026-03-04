Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D305EFCE47
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Mar 2026 21:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/GwrZ7ciqjTK/2TA6Dm4wUT4yu5FFyO1IXQmDYQS6Bk=; b=q6/u8Ds2Obr0Tz
	jdOJxQ5Bmvz1Eo8DurgRGqy8l43Faqq/jokTiyeY1KLJILt09ddqvlF7uonJM2PAeJ5BPZCymli+E
	q7BLevUHklUDZewqW7iWuLtZNRUm3gHd3j9SaAt/ueBnouSWwZpHxoNksYqttih0p8nG6uZhhEYYR
	kg4QO9spJVWRhqe+7t6Bd72hlOG3mgXiB6cPTVdidbQ7HZU1irv+a5XCHv/UvBWogjMroRSlzWT7p
	6RgbZiQ7zrskCMYUoCXedLlex67BARZMROsbXtsuwd4IMxuvVD+rD7pgs6YaXdLxXJe+V7jYnnaR9
	9DnKboAh6ef/4Et+MzDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxtLb-00000000UAR-1SmX;
	Wed, 04 Mar 2026 21:01:35 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxtLV-00000000U3j-0eF8;
	Wed, 04 Mar 2026 21:01:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1772658084;
	bh=8eJ22plX2MZ8pc5rrDZ6oinNv/HYJGA7/2+Vl7H8TGI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Qqemr+ZNL+WlDOj6us4JYFRAEPWVgcmZKChAkADbXlpr2BJycmSvZ1g7MxGsgMWUX
	 oqeJodNjomJugLkjJINbu8OLlgcRvVNyBr3f4eAH40ajAk4n2RKongSfmN3DCm/C3H
	 ZDQD6Z9Fq/y89rJpaJGUvk3N7HjUaE0VdyjnZ7hGMVNKLisAam8fAqMTCXaw5BgowO
	 ENWXf05HkUeVdI3xIfvh6CWN66Arv/Upr5/rNPjYKEM8KwulkEcdMoPPu2lTLFKtv1
	 iSgWGqtrPJJDas4sHkBDPJSv4UTI77VcYUiqghUvIBfA2YplrdhQOeGM8sJ1wYhYp2
	 E/Yr5KY3JUXBA==
Received: from localhost (unknown [86.123.23.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id A86E317E128A;
	Wed,  4 Mar 2026 22:01:24 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Wed, 04 Mar 2026 23:00:42 +0200
Subject: [PATCH v5 3/4] arm64: dts: rockchip: Fix vdec register blocks
 order on RK3576
MIME-Version: 1.0
Message-Id: <20260304-vdec-reg-order-rk3576-v5-3-7006fad42c3a@collabora.com>
References: <20260304-vdec-reg-order-rk3576-v5-0-7006fad42c3a@collabora.com>
In-Reply-To: <20260304-vdec-reg-order-rk3576-v5-0-7006fad42c3a@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Detlev Casanova <detlev.casanova@collabora.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Hans Verkuil <hverkuil@kernel.org>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>, 
 linux-media@vger.kernel.org
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_130129_423527_B099F6AC 
X-CRM114-Status: GOOD (  13.01  )
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

When building device trees for the RK3576 based boards, DTC shows the
following complaint:

  rk3576.dtsi:1282.30-1304.5: Warning (simple_bus_reg): /soc/video-codec@27b00000: simple-bus unit address format error, expected "27b00100"

Since the video decoder support for the aforementioned SoC in mainline
driver and devicetrees hasn't been released yet (just landed in
v7.0-rc1), fix the issue by providing the register blocks using the
'link,function,cache' listing, which follows the address-based order as
shown in the vendor's datasheet and, implicitly, ensures the unit
address points to the primary register range.

Fixes: da0de806d8b4 ("arm64: dts: rockchip: Add the vdpu383 Video Decoder on rk3576")
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index 49ccdf12ef7e..45eb0d053a6f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -1281,10 +1281,10 @@ gpu: gpu@27800000 {
 
 		vdec: video-codec@27b00000 {
 			compatible = "rockchip,rk3576-vdec";
-			reg = <0x0 0x27b00100 0x0 0x500>,
-			      <0x0 0x27b00000 0x0 0x100>,
+			reg = <0x0 0x27b00000 0x0 0x100>,
+			      <0x0 0x27b00100 0x0 0x500>,
 			      <0x0 0x27b00600 0x0 0x100>;
-			reg-names = "function", "link", "cache";
+			reg-names = "link", "function", "cache";
 			interrupts = <GIC_SPI 308 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cru ACLK_RKVDEC_ROOT>, <&cru HCLK_RKVDEC>,
 				 <&cru ACLK_RKVDEC_ROOT_BAK>, <&cru CLK_RKVDEC_CORE>,

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
