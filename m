Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1050CD128A
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Mar 2024 12:51:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=llBL0Rd5763/p6Vny/GwTy9df+VYOPX6CtLKhCrLnpg=; b=3pJ96ASaRTz1Na
	uKHpIgT57LaTqhGR+DWvwEP0eBsI0VchTV75bqFwTFbiEeIE5DEhie9pmGSFtjZ5d0XObDyXtv70u
	N273QxyfiSZnIsK652pM0GszvQO5AX7jTWgsEzqXFqxvcrJbsAQpjIybWRt8GXAy27o6AqbSABBre
	GX1xaHEI3n1tBvS8T05OXj17U2xEvfJ6i+YC3BhL4ZBuehVPm3Wb2fuZG49SC7JZRBRsxRaLrK/GL
	u0I6+lJ05NOf8A67y35NLFCUlJvXsbAbPm8pIxMYNgQOR8EpswTuNbbYl8cTfX+8Etb78NzAb/2+f
	ZMVDxgu83x6obEPv0zTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBhp-00000000UXw-17j9;
	Fri, 29 Mar 2024 12:51:38 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBfb-00000000Thj-02U6;
	Fri, 29 Mar 2024 12:49:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 48EA661931;
	Fri, 29 Mar 2024 12:49:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F7F9C43390;
	Fri, 29 Mar 2024 12:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711716558;
	bh=jwu9FsJbtbfHk1QsMJaENO9ehk3wZUqqexLs6ekxb6I=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=bB4uAECRpcpDkkHlTJff1ihSgLed7ihN2Odgk88gcrhPlEHNCkYXLIBdOhsoWGYcZ
	 0HUp8I0SUmSqD/ecoRHXvDTuTx6d/jkISK9PPQDNWx4M+CurXESbwftCbowkySxG1X
	 twtfjLKsen2m5S+8dyhtZEo+BJoRuws5gNUa9F+vy/Aa6IyEF2C8ythSDIVd4AV+MJ
	 6slDVkRNMYeYFM/W9+ZqlYxvaEDvcH76C6Nqdzcx8BVQZJoOn00loj+Ms1pMqK9oJM
	 /1gsRuzvSBZvFOhB539muSFQ7juM5+oecVj6v2OSuNaoAI6BEiJigTZPCBtIIe6Bd+
	 HQUonkp1I2Udw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Johan Jonker <jbx6244@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	dsimic@manjaro.org,
	jonas@kwiboo.se,
	shironeko@tesaguri.club,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.10 09/31] arm64: dts: rockchip: fix rk3328 hdmi ports node
Date: Fri, 29 Mar 2024 08:48:26 -0400
Message-ID: <20240329124903.3093161-9-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240329124903.3093161-1-sashal@kernel.org>
References: <20240329124903.3093161-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.10.214
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_054919_354908_D8D1B7C5 
X-CRM114-Status: UNSURE (   9.35  )
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

From: Johan Jonker <jbx6244@gmail.com>

[ Upstream commit 1d00ba4700d1e0f88ae70d028d2e17e39078fa1c ]

Fix rk3328 hdmi ports node so that it matches the
rockchip,dw-hdmi.yaml binding.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Link: https://lore.kernel.org/r/e5dea3b7-bf84-4474-9530-cc2da3c41104@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 72112fe05a5c4..10df6636a6b6c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -732,11 +732,20 @@ hdmi: hdmi@ff3c0000 {
 		status = "disabled";
 
 		ports {
-			hdmi_in: port {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			hdmi_in: port@0 {
+				reg = <0>;
+
 				hdmi_in_vop: endpoint {
 					remote-endpoint = <&vop_out_hdmi>;
 				};
 			};
+
+			hdmi_out: port@1 {
+				reg = <1>;
+			};
 		};
 	};
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
