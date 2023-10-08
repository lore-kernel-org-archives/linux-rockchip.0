Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7F4DE95A67
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Oct 2023 13:06:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nzb9iOXBeSQlxH2jvJKAa5MXoucOMIpI2os0Etb4YIE=; b=tNib0RxR4wfEe8
	E6yC8ErFbvLBvwqPo0+GNYhUlNAMP0zaKkrOLY+iHWYaaX94EKqTwM/Stcvu+fB3ANTruv5ZYoRJL
	HFBV6w8E6N0jGGsGVC1+mKEKaX09YxHKWTFJEgOSh1Iro1iGolLPFouqyyb/7U4qs/03UNp4hPuO1
	lbrcPG77JRmPk8vDK5w1P+BNSLNpSSBwzdq92cUUZ/GPVcSrMM0+86ww1+cdsDLzaKN+QYixcllrB
	7Q2HlT9aLq7MhwwblB+drQhQoLGBEmHc+75v/H6BjwOqhPiaHXj5G/sKqLRdkuAewnA5iaIc7nRad
	baDRAga/qcc/PYTW01nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpTUJ-008sbu-0e;
	Sun, 08 Oct 2023 13:06:27 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpTU9-008sVz-2P;
	Sun, 08 Oct 2023 13:06:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1696770368; bh=RR80q5tjzziqB2LGjQvlUWzbTeLf/Y2/TnpugtEscbc=;
	h=From:To:Cc:Subject:Date:References:From;
	b=BlWThhwOsaTCvKljn7BTZAw3iQakA826UlbM0OoCmagHD1bjxNlrI/LdEPjaC0svc
	 hCCiteZ8MDBBTSkdHs1J77QARJsXNT+rT9VfKmSswPSf3F6ioYauMPhO2Byk5q6sVm
	 dzyWp43+9iaxS5Epft3trtmtQk0aATP2WW3NB6UY=
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
Subject: [PATCH 2/4] arm64: dts: rockchip: rk3588s-pinctrl: Add UART9 M0 pin definitions
Date: Sun,  8 Oct 2023 15:05:00 +0200
Message-ID: <20231008130515.1155664-3-megi@xff.cz>
In-Reply-To: <20231008130515.1155664-1-megi@xff.cz>
References: <20231008130515.1155664-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231008_060617_931676_ED28F884 
X-CRM114-Status: UNSURE (   8.29  )
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

This is used on Orange Pi 5 Plus.

Signed-off-by: Ondrej Jirman <megi@xff.cz>
---
 arch/arm64/boot/dts/rockchip/rk3588s-pinctrl.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-pinctrl.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-pinctrl.dtsi
index 72708b1d8036..63151d9d2377 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-pinctrl.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-pinctrl.dtsi
@@ -3342,6 +3342,15 @@ uart8_xfer: uart8-xfer {
 	};
 
 	uart9 {
+		/omit-if-no-ref/
+		uart9m0_xfer: uart9m0-xfer {
+			rockchip,pins =
+				/* uart9_rx_m0 */
+				<2 RK_PC4 10 &pcfg_pull_up>,
+				/* uart9_tx_m0 */
+				<2 RK_PC2 10 &pcfg_pull_up>;
+		};
+
 		/omit-if-no-ref/
 		uart9m1_xfer: uart9m1-xfer {
 			rockchip,pins =
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
