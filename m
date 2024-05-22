Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A0ACC25B7A
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 May 2024 19:00:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AvXUZPpgt7WJiOt0ulohNcUXU9eTyEqFtEroLNlS/Bw=; b=pDcnMC+0paSO9b
	yFYSIymgEfWEQvyqENzz2cRFAxPDho4dwYscuPv9e6MTpgNtrUGk6ukNEypEGmMyDafInbxV1pwYc
	hxjb1WhfA3NG56XjFLJWiO6CzklGtHuU1U+zjYxRIz4u4R1DpCJU1SDkmKi+V6hCxA1vsM3u6oDBm
	2CVCV13Mnpjuu/Bj7s7p799ke/3PQlJizqeuJbtQEM8K1J3IuCoAGl0N+yU03eq/Jooa2kAZTBkyZ
	NkwCTSw5g3bjw6qJFM4gxG055/G0B/l+8HHxkHfvCBhDy/wWvxvBj3fVa2Pf/4ny7E+Ow5n6cT/q/
	IAEOeSpZ8iPUiQb8tf1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9rCR-00000003s4Q-0tWo;
	Wed, 22 May 2024 19:00:31 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9rC2-00000003rl1-29oo;
	Wed, 22 May 2024 19:00:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1716404405;
	bh=LfctjAd5uH9RnEI2V0jx8z9y7pEnFvsn8ifaV8F3Mx8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=45kzaSJ9T8lf1/Zh9CeVPM38MgoiD8SDrf9tCrazJTsjXVyWvNSa/nIDKi7WRfbj2
	 6I9b89QkEE95FUQkExwMerQySbVOMOE8TWimMwgB3Nzji4cUiwRvYjf3iBsNbxoYHH
	 qJiH5xRlMKYotPQm2MiQ8/h6ftj7W7NlepNWewPpLSraNtJ1t4UCOwV6tjXxFQ0hIy
	 Dx4R++SLb7DKY8gU2DyZZKqFmjm5LKf+SPONJ7IV4ULmuO/wZ4GjbD3i+QOYY5kxOt
	 Cof3tOtLPyloyx3Vf5yhvtp19dVbfz9Bnii+/yDs8/JcjS07CgSAs55t7naznmaRfC
	 lOIcKq9MC0QgQ==
Received: from arisu.mtl.collabora.ca (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 5C6BD37821A4;
	Wed, 22 May 2024 19:00:02 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH v2 2/3] arm64: dts: rockchip: Add VOP clock resets for rk3588s
Date: Wed, 22 May 2024 14:57:49 -0400
Message-ID: <20240522185924.461742-3-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240522185924.461742-1-detlev.casanova@collabora.com>
References: <20240522185924.461742-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240522_120006_816388_C17C87C8 
X-CRM114-Status: UNSURE (   8.96  )
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

This adds the needed clock resets for all rk3588(s) based SOCs.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 6ac5ac8b48abb..490a525700498 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1193,6 +1193,18 @@ vop: vop@fdd90000 {
 			      "pclk_vop";
 		iommus = <&vop_mmu>;
 		power-domains = <&power RK3588_PD_VOP>;
+		resets = <&cru SRST_A_VOP>,
+			 <&cru SRST_H_VOP>,
+			 <&cru SRST_D_VOP0>,
+			 <&cru SRST_D_VOP1>,
+			 <&cru SRST_D_VOP2>,
+			 <&cru SRST_D_VOP3>;
+		reset-names = "aclk",
+			      "hclk",
+			      "dclk_vp0",
+			      "dclk_vp1",
+			      "dclk_vp2",
+			      "dclk_vp3";
 		rockchip,grf = <&sys_grf>;
 		rockchip,vop-grf = <&vop_grf>;
 		rockchip,vo1-grf = <&vo1_grf>;
-- 
2.44.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
