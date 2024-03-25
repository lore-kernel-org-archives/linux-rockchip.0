Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B73FC54E58
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 14:17:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3PSXIr2HzPe2u0Ji/hxrZ6r36/3ZGmcpIEikflTnP8Q=; b=Iqbc6ou54Nspyp
	HgCvjF+2Torut8Kuixq8mYXtr2bnbfZljwRuYuRP7kRQmleMrLdjFB1VPP+NdTV1aaIkpJ40JWnq+
	jdhlTOVD8z5tmWRm8DUdihf8+GwxJ1eEFV0atl3pnX9bG3AB5rVsSAif+KYc4MWS8kRkt/XSirsoD
	Mvp8xmFh1K8fMNC/ovuLvzSr4FaDzFq8uXLeskKDt4EE1vQgDJASCFdY4T32PGo9GTUWMk5cT0hSn
	q9m6rxW8GrOJn00NMH1lwblCsO9MNJETh1HQcUsyGzfG+EuJWLaw2YCzYUBVrzAJs15L6Y0XXuEx6
	LaxCZlhrenf34bKnKvjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rol8k-00000000Ab0-3gaa;
	Mon, 25 Mar 2024 14:17:30 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rol8N-00000000AMt-39wO;
	Mon, 25 Mar 2024 14:17:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1711376217;
	bh=czCfbCIPjGP9pvjr6UIUI+9KpI2JwNoa8jr1BZd0FOw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=TEuYmlieIurR7QkMGQV2W5zESDLchoqp7x4uEhP+k89BWsqodu3OaJk5Q22ap60ST
	 +/eL+LrTZj0MmmJ44lFQztTg3+W+BSWhMo4i4nphJ6x9Chd7Zx2+U7scWb2ASpovfC
	 +pJ+1Ee+MwncbmvX+dhwIi95QWORjdvtwit/OdGznVp+6HHR2C5O7baDxZ9UA9OJXw
	 rYujz0/946o/5sA2YbHfW8w+GlNRhAajOLanMeRZd+xmDA4yoOSTGxGKeIwW930CfR
	 7X7QTWPrItcyzCvLvOdnbN684GbqYr5bJksqLgJibsOfW3AtiRN6B459qHk2Xf1gYp
	 V9bZKjEAzBAtQ==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id B3DA737820E7;
	Mon, 25 Mar 2024 14:16:57 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id A1F504800D6; Mon, 25 Mar 2024 15:16:56 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Wang <frank.wang@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v4 09/10] arm64: dts: rockchip: add upper USB3 port to rock-5a
Date: Mon, 25 Mar 2024 15:15:39 +0100
Message-ID: <20240325141653.84910-10-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240325141653.84910-1-sebastian.reichel@collabora.com>
References: <20240325141653.84910-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_071708_174871_7CFD2267 
X-CRM114-Status: UNSURE (   9.32  )
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

Enable full support (XHCI, EHCI, OHCI) for the upper USB3 port from
Radxa Rock 5 Model A. The lower one is already supported.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../boot/dts/rockchip/rk3588s-rock-5a.dts      | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 00afb90d4eb1..b8ca3ee4c89a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -697,6 +697,14 @@ regulator-state-mem {
 	};
 };
 
+&u2phy0 {
+	status = "okay";
+};
+
+&u2phy0_otg {
+	status = "okay";
+};
+
 &u2phy2 {
 	status = "okay";
 };
@@ -720,6 +728,11 @@ &uart2 {
 	status = "okay";
 };
 
+&usbdp_phy0 {
+	status = "okay";
+	rockchip,dp-lane-mux = <2 3>;
+};
+
 &usb_host0_ehci {
 	status = "okay";
 	pinctrl-names = "default";
@@ -730,6 +743,11 @@ &usb_host0_ohci {
 	status = "okay";
 };
 
+&usb_host0_xhci {
+	dr_mode = "host";
+	status = "okay";
+};
+
 &usb_host1_ehci {
 	status = "okay";
 };
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
