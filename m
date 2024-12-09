Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F395BE77182
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Dec 2024 13:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qzxvand3YgXNIhE4YAEIvOynhAunZOe0szXarUrNIGs=; b=cRvpr92hZEG0ko
	5ojWXjG/zMk8ny1av+5tO+C33MiiPO1KjqDBqChZYylDF5I0JLjT0Ia9bJHt/pQZkmaaUY0nXWwY9
	wPYgQXPutjcv8ldyT8si4pjUyT/Tv/D9ROxIy2jITiX0Qv9uWDhy7tV4lC6rKwzsqZkh7aAuQuhbk
	CJanhkwVhdNNrVAjNBdSsIA5ek7eZDbRsV1XabufHcgd4hUyhptiWXP7NTMczQhocAqm3CwKOMoZo
	Lcvk77aZMvyIvmMJQT8Y2dxbobVMpAym1O8/jGh/HK0cKnRRRmCFdngW1wqtxaCUTQN8RBbeVupx4
	Ne7KFs9MWm4NWLsAt8Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKdYQ-00000007tq4-0AFT;
	Mon, 09 Dec 2024 13:12:02 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKdF5-00000007nY7-0ncv
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Dec 2024 12:52:06 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4B9CpdQ5031943;
	Mon, 9 Dec 2024 21:51:46 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v4 05/12] arm64: dts: rockchip: add properties for pcie2x1l2 for Radxa ROCK 5C
Date: Mon,  9 Dec 2024 12:51:24 +0000
Message-ID: <20241209125131.4101-6-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241209125131.4101-1-naoki@radxa.com>
References: <20241209125131.4101-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_045203_563062_2F5B5961 
X-CRM114-Status: UNSURE (   7.99  )
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

by schematic[1], pcie2x1l2 CLKREQ and WAKE pins are connected.
describe them in dts.

[1] https://dl.radxa.com/rock5/5c/docs/hw/v1100/radxa_rock_5c_schematic_v1100.pdf

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v4:
- none
Changes in v3:
- none
Changes in v2:
- reword commit message
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 61d75ab503b2..01537b47f880 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -419,7 +419,9 @@ rgmii_phy1: ethernet-phy@1 {
 
 &pcie2x1l2 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie20x1_2_perstn_m0>;
+	pinctrl-0 = <&pcie20x1_2_perstn_m0>,
+		    <&pcie20x1m0_clkreqn>,
+		    <&pcie20x1m0_waken>;
 	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_pcie2x1l2>;
 	status = "okay";
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
