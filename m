Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61370CD11BF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 14:18:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qW413lBJ/rvXolSQZKqhKfhK9knZ9V1LfULQ6W5uz7k=; b=Mdd/N214vkCKcG
	RhAXxLzaCflUlItWeM/Wu0/fU0h/ZO+e1Kwu1NWL6rrEDzjzx0XQ7eWlQFFEBTkOQ1w8SmeoZXckf
	c1z4G+pyEWDr1+tsAGnTKgTgTaYBVWR7Ykh4XE/DNjalZLVH9+T/PCBaPmCwErRE9dasAMcz/STmE
	BqEVidCcvfg/zWHBefqCS6lQug8moCJ/nHR/dqpBvF5f/aRey2/mkiNOJRjqAax4IAedh0JfbNLez
	AJUG7XlFacgrBqTJXRycOmsFkJFe38r6iE3U0tFmRmbxhU8Mi2/CWipVlHfwEY3VrCMf//Afldjdf
	KhADlBqp6GIlShe9Ee8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rol9I-00000000ApR-0NEF;
	Mon, 25 Mar 2024 14:18:04 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rol8O-00000000ANV-3r8r;
	Mon, 25 Mar 2024 14:17:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1711376218;
	bh=kN13aI2AEdhhdrsFLGGnxSDLilufbiwke7JxdqO0vzw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=qJAL1sveD8+Uz+9pL4HPEJSJYG60ZVroRgE1pQKJHiZKX/ueMQYrvnGIKeXTPNtdN
	 DXsNrLBuz1GLshLImK18OJrGHCCCLAMMZ9IAhXVoViytBUDR5s5Y0iwCNqlkHTWZbq
	 pCAmao0VabzMAFKte/aH/3syKg95SSjUVlmyL17xpYipzYjNRYiHFM45BiBMPxTyZT
	 jH8GqiOg+S+8thRJBuVUsw4twixGfYVyGXwmBPBwsvGTtCWvj3kI9eGi1pQs0tvzzv
	 EaQYtjOIoRmUZXyDHSAaGghMee2llKG2tTE1xBvsUwXpv1//t2A3WEc2hgjWmD4+3N
	 kw3b8zUK6Usvw==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id BE33837820EC;
	Mon, 25 Mar 2024 14:16:57 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id A3D1C4800DC; Mon, 25 Mar 2024 15:16:56 +0100 (CET)
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
Subject: [PATCH v4 10/10] arm64: dts: rockchip: add lower USB3 port to rock-5b
Date: Mon, 25 Mar 2024 15:15:40 +0100
Message-ID: <20240325141653.84910-11-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240325141653.84910-1-sebastian.reichel@collabora.com>
References: <20240325141653.84910-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_071709_294597_FE294D1F 
X-CRM114-Status: UNSURE (   9.05  )
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

Enable full support (XHCI, EHCI, OHCI) for the lower USB3 port from
Radxa Rock 5 Model B. The upper one is already supported.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 1fe8b2a0ed75..bb09d0e1e20c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -742,6 +742,14 @@ &uart2 {
 	status = "okay";
 };
 
+&u2phy1 {
+	status = "okay";
+};
+
+&u2phy1_otg {
+	status = "okay";
+};
+
 &u2phy2 {
 	status = "okay";
 };
@@ -761,6 +769,10 @@ &u2phy3_host {
 	status = "okay";
 };
 
+&usbdp_phy1 {
+	status = "okay";
+};
+
 &usb_host0_ehci {
 	status = "okay";
 };
@@ -777,6 +789,11 @@ &usb_host1_ohci {
 	status = "okay";
 };
 
+&usb_host1_xhci {
+	dr_mode = "host";
+	status = "okay";
+};
+
 &usb_host2_xhci {
 	status = "okay";
 };
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
