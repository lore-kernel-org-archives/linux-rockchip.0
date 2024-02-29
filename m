Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22323C48BF6
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Feb 2024 20:39:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3v66d03SoVSa0t6xAORZXY94Ll97Y98n6ykTYXlnUX0=; b=xJkhqwMCS/1ADM
	ag92X+0VD3c2W+6/4CF2gkfPahkuq0rDBnaiz+cx0NmxWfUwcwtlF0lcAD/TRIawsFAOaLdvX5UVI
	JWOgHt91mcc926gHpdnly2B9Wlw0D1CJJ/gNvtqqsl1H8/tkMOFfkfe1AuDJ1At2lK4iuTaVKJvAR
	gYWIVGv990+BVU8elxWd1+C4YtmXEzsfZ8TH/IozeLT7QEJHEvAYMSL1J5pkFw3z6UOU5PdIkFUiR
	p6E+bHqLzf0kPA+GJFZix9VHJTXBliMPyVHXkZ7z9eqN1Y9bluhtl6ti08BAPPnOvVOZ9APEpmXPf
	MJSPqeOIRL0NJhIMLs1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfnC1-0000000F7Dk-1lst;
	Thu, 29 Feb 2024 20:39:49 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfnBu-0000000F7AH-2Jj6;
	Thu, 29 Feb 2024 20:39:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 07EF5CE0A0D;
	Thu, 29 Feb 2024 20:39:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58DC8C43390;
	Thu, 29 Feb 2024 20:39:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709239178;
	bh=2BdqdFEP9DNIj4Ti/gNcxrXdKA23Zc1z1zE0/5TQH0U=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KUMxhqDv10qJS+Vt8/05i0tpnRkZcq/t58R4MEH+YesqhmS/yGJAf6hKn09wTTmyy
	 8+6H7OC2GmVqmirIfZCWzGVuEMOqSbxYwFnBvr18EqjhmMKKAs/S+FZHrtaNlSmtAN
	 YT/wjVTKulxzJwh9kbsPdjUMe8nslZGOCoPvF67fZ2c+Mq84FWZtalWMj4MnQ2DaN1
	 1wr4boaSI8IG+D+iCo5m4NdlRfaXqfojDIwLwCFQXwXP7yIPGWxQvUbDmQE7Td8Zp8
	 yBeHjcMLUH3tL3SUV5wpTKU0wTvtrUOmNOy8PAFkIm8tZPsE7uVIGF403v1VOl/JuW
	 9Zf0A7gwuCETw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	dsimic@manjaro.org,
	jagan@edgeble.ai,
	angelogioacchino.delregno@collabora.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 6.6 02/22] arm64: dts: rockchip: mark system power controller on rk3588-evb1
Date: Thu, 29 Feb 2024 15:38:55 -0500
Message-ID: <20240229203933.2861006-2-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240229203933.2861006-1-sashal@kernel.org>
References: <20240229203933.2861006-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.6.18
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_123942_840480_CD4C32F6 
X-CRM114-Status: UNSURE (   8.23  )
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

From: Sebastian Reichel <sebastian.reichel@collabora.com>

[ Upstream commit fc4657971be31ae679e2bbeee2fb8e93a7a063eb ]

Mark the primary PMIC as system-power-controller, so that the
system properly shuts down on poweroff.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Link: https://lore.kernel.org/r/20240117191555.86138-1-sebastian.reichel@collabora.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
index 229a9111f5eb0..fa8286a325af7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
@@ -215,6 +215,7 @@ pmic@0 {
 			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
 		pinctrl-names = "default";
 		spi-max-frequency = <1000000>;
+		system-power-controller;
 
 		vcc1-supply = <&vcc5v0_sys>;
 		vcc2-supply = <&vcc5v0_sys>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
