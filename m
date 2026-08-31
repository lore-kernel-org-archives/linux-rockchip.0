Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B839C624A4
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Aug 2026 14:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DkIfkXJGwRChjiuDwNAB8Op4RGi1uj2KtmyO/hkt9aM=; b=s85AOr3Dr8RHdY
	zW0ZcK91Ud/90gDqPgbVLXdt1xEbMCoivGoBinNgFeu+K7dRrC1cS6S1S8I4z3EMKDRWShprw1rIT
	uY2zaJFXtc+wE7J4+lUYZ6tV0G0qgRpVhCZt4ZFH+v/5r7QvTy2C+t2+OatrMEZoYjwKVSFxr2KqP
	XCpq7/mEfcp2ft8PpojgIqUWwuVZ9dobaLF1+V7HlRcJiGemPXQ0B/ZLqEyUfY970nDAUjOq9/qWk
	IYlikxc1ZnY9Q5ELpUtQYn1DLiBBh5vkN2Nt2Tod3Ez1Ov6gZ68CTRSfb/twxmqeQ6VbxNCehHZeB
	EzocDe8372KW8cL04asw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x12sy-00000009c6L-0t3T;
	Mon, 31 Aug 2026 14:21:20 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x12su-00000009c00-2mk6;
	Mon, 31 Aug 2026 14:21:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1788186073;
	bh=nnQom02Ih1qwesbG7H+t6ImlBeovlhLhrwVE7x/9+zc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=E51wLAINxykV93UklgsOYS+SQArUDJDgtLX7j6OsAC+kGj20G9ksGp5wCMjbPzRmT
	 PYSoVixzV7v3ONNu860TUsnWT2j1H5pEGIWprHb5qzESpSxKxeUAIrB3z0/3ArM7re
	 wqZB6wA2mDwu6lf0DEz6GKWQ1hKkmV7D5cTGiLdu6WozoZmfktm3BYUlCzOwahmNAh
	 r2cvSoSrfYPKeVphvIlQgmWfTk7xgGLN0rCr38AFlOx+ztPuat+hKly/TD0x2MqJUj
	 E5V11kv2gh9E7B27Pz+asG9tXCKVyWXjgV+2NQXt+iI+dFPnU63pKcMDiUVVEnhDN0
	 zJ+hdvv1a3MtQ==
Received: from [192.168.0.15] (unknown [100.64.0.170])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id B3FA617E0180;
	Mon, 31 Aug 2026 16:21:11 +0200 (CEST)
From: Detlev Casanova <detlev.casanova@collabora.com>
Date: Mon, 31 Aug 2026 10:20:53 -0400
Subject: [PATCH 6/7] arm64: dts: rockchip: Rename rk3576 HDMI audio card
MIME-Version: 1.0
Message-Id: <20260831-fix-rockchip-hdmi-audio-names-v1-6-5b155ae05293@collabora.com>
References: <20260831-fix-rockchip-hdmi-audio-names-v1-0-5b155ae05293@collabora.com>
In-Reply-To: <20260831-fix-rockchip-hdmi-audio-names-v1-0-5b155ae05293@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Johan Jonker <jbx6244@gmail.com>, Alex Bee <knaerzche@gmail.com>, 
 Christian Hewitt <christianshewitt@gmail.com>, 
 Robin Murphy <robin.murphy@arm.com>, 
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Detlev Casanova <detlev.casanova@collabora.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_072116_864898_3FD36845 
X-CRM114-Status: GOOD (  11.60  )
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

Rename the card from "HDMI" to "RK3576 HDMI" so it identifies the SoC
in user-visible ALSA fields and no longer collides with the identical
"HDMI" string used by other Rockchip SoCs.

Fixes: 7f1561d82e3d3 ("arm64: dts: rockchip: Add RK3576 HDMI audio")
Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index b0c0d3c8b1b1..ca9cbf035265 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -410,7 +410,7 @@ scmi_clk: protocol@14 {
 
 	hdmi_sound: hdmi-sound {
 		compatible = "simple-audio-card";
-		simple-audio-card,name = "HDMI";
+		simple-audio-card,name = "RK3576 HDMI";
 		simple-audio-card,format = "i2s";
 		simple-audio-card,mclk-fs = <256>;
 		status = "disabled";

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
