Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC6E3C25B7A
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 May 2024 15:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DWyX18ax+1K7z1vcdsP5Lm57PDe1bMl8jKk5xqT5TwA=; b=UhU8MpFpguZqNK
	6Lr1jsEM9NXV9IMnH8GmW1+JwgRXm874vlAu99vHw/9xPgwhNEQmAZ7O78ZAXgfQAK7dHSJk4raWb
	XXorjn2YsCUQO4W/XnSgeRgYxPPkOZnKjUClLCW4XK5emuC6wtXOnlB3bJgpaKdl2CZpv5JjQdWi3
	4MlP/TmpPcuv+HeGOAzibtA+6yM21fSs/jvjZLUcgDLHGGgHyXunddbzgu6awsq2i9ipBTBwIU1mi
	euB0e3g83Xh5pqE3DU88KiHUB1rPJfYp8FpaoSu7YNA2AG5zTOahff3GJwe9BZeYKCIqmKALSgdUO
	d47WRYdHt5MWcK7gtu4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6u0y-0000000GJf9-2zBL;
	Tue, 14 May 2024 15:24:28 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6u0p-0000000GJXB-1ux7;
	Tue, 14 May 2024 15:24:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1715700258;
	bh=r3Fx1MKTIpt0X27ue0Y4XgM4MOWhxwM0vB8PYtwySfs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BXK1+Wklm7FOLRZkfhUFoZSpyv6Dym+xBQ18JYUutLSyxwrBvBzgFT5cweUI3jcvj
	 K1JiI654qKuV0zDABaBUJ/jgC0gqyXX12BCLd4JPtnqi6bFcCKDZOMA44KLA4O+6xN
	 +czk+HRC89F2Fufc58nRVkWyx4xWX5L7el+lOfvSB1VdkFjcxMQroIPg2tyiHXhQax
	 lkp6TOo4jjdjMZImi814JUwawbanqzYR5JmzXhAurJvCIYtnWLdumVvefw6PgwGWdg
	 2syvr382zNcyr1xQsu/OPwQoPbXOaCb1gOFrzfQwZGXCZg2RQ77uH2V6z7mDEIj7Yq
	 8i3I7rTp12WeA==
Received: from arisu.hitronhub.home (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id C30FE3782197;
	Tue, 14 May 2024 15:24:14 +0000 (UTC)
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
Subject: [PATCH 2/3] arm64: dts: rockchip: Add VOP clock resets for rk3588s
Date: Tue, 14 May 2024 11:19:46 -0400
Message-ID: <20240514152328.21415-3-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240514152328.21415-1-detlev.casanova@collabora.com>
References: <20240514152328.21415-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240514_082419_716284_30A5ABFC 
X-CRM114-Status: UNSURE (   9.47  )
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
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 6ac5ac8b48abb..8560c92cd406c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1193,6 +1193,14 @@ vop: vop@fdd90000 {
 			      "pclk_vop";
 		iommus = <&vop_mmu>;
 		power-domains = <&power RK3588_PD_VOP>;
+		resets = <&cru SRST_D_VOP0>,
+			 <&cru SRST_D_VOP1>,
+			 <&cru SRST_D_VOP2>,
+			 <&cru SRST_D_VOP3>;
+		reset-names = "dclk_vp0",
+			      "dclk_vp1",
+			      "dclk_vp2",
+			      "dclk_vp3";
 		rockchip,grf = <&sys_grf>;
 		rockchip,vop-grf = <&vop_grf>;
 		rockchip,vo1-grf = <&vo1_grf>;
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
