Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BFA2C48BEF
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Feb 2024 17:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6HW7F9zr6dDRW7y9eHgozuvaO9EVC83/sZ0TkuGXwU8=; b=3uRTWWJDcagEi1
	BkGwRS+P2/XKk2PEN5THVRiIcreU6CJ50DrNpQ8Y8PO7pzYEN43rLhgbBeewKk9K6AptvhL7wlnqg
	zp7ScPlJXiWAhsj40xblH0qNDGqWqOeyJkEf+ToPSN11qUWlN5z+OfC854460kh1NKqHvIcHSLipr
	tr7z5cIRjh3tYkLDnVrmo7MSVHSAtm8RNavPVDYDYOrMdR8CmnXcCjWlb8LKtZ/umfBHCTrKizWFG
	VqLYRkmWc7eVEncfQ5ZB7AF76DU1cnGLQQ6Bk8lBRDKcvJtbFcFlSu2TcWKvuCY8Ah0pmgglKX/is
	uK76pt/nMk3zZI7D+aNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rb1ei-000000036rT-1dr2;
	Fri, 16 Feb 2024 17:05:44 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rb1eO-000000036Yy-2GJS;
	Fri, 16 Feb 2024 17:05:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1708103118;
	bh=x0cgeWgRq1pe/oohivryYMlY5YOEjfyvfHcbCiW1XMI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=yVOfGmgfraL06iJ+8UCpf8xLwh84VngZqeSPAIoqmAntiiDpEVFPM+79fu0z8/+T4
	 FBA1T0eqqbwFPgcyrw3V1kOhILcR4MoyokWnPiGWDVfrVSq7i3tfEreU548+SUw8iz
	 RJnbhwKR+W9TBNDoDApI/QlTg7MZbpyfKNW8Hqp0tOoqW5Eg/253DErKJEzwSsc+Hu
	 dOY9/ztofv+SyIGg7YoFyWTr3aNh+BOnHm9MersuNXtqmt3YSImSduqDw9WagGyhrB
	 HijpFQFVaawLAxrrSVIo4LmHa+XEtOc9HnW9gQrii7lWaaY7UI1KeaMndA3kFZI5WW
	 /BzB+9B2K9MZw==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id EF38C37820C1;
	Fri, 16 Feb 2024 17:05:17 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id E1F0B4800D6; Fri, 16 Feb 2024 18:05:16 +0100 (CET)
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
Subject: [PATCH v3 10/10] arm64: dts: rockchip: add lower USB3 port to rock-5b
Date: Fri, 16 Feb 2024 18:01:25 +0100
Message-ID: <20240216170514.75200-11-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240216170514.75200-1-sebastian.reichel@collabora.com>
References: <20240216170514.75200-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_090524_995214_66EF00CF 
X-CRM114-Status: UNSURE (   9.10  )
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
index a0e303c3a1dc..149bd44ffd1c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -736,6 +736,14 @@ &uart2 {
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
@@ -755,6 +763,10 @@ &u2phy3_host {
 	status = "okay";
 };
 
+&usbdp_phy1 {
+	status = "okay";
+};
+
 &usb_host0_ehci {
 	status = "okay";
 };
@@ -771,6 +783,11 @@ &usb_host1_ohci {
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
