Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D5CDE7717F
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Dec 2024 12:01:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FjjJnwWQUMJyjI9WO13M5UPog/zEfmNQhUoI5StKfkk=; b=A3a5o5RJ9SAssj
	fYa49mtISrc/lxCvBtRtIkxUN+LVz4iO/jp8nraIbU8YvRhnxZ9mEEFO3c3SHpCONqvxADMUj5Xf3
	wksAzSlgEoOUyNw6udnk5zCHM9XYQaj0L4cG1ZBEKbllnPww9iJAQ9NbuHCLILTGRh9EetsGM+DvN
	jZHJ36If8Ox0KgwtqwSrLd38DGxgy3r/eKbQU3TJK3IDdPcp1BCrQfAne2+azpYf7nILJ7S1rz18P
	u+MSXHnnVlby1AE2JyfUu7ROM+3T8egt+u8mxtCtgmGFXQKiLMs78Qb7fXMI+gK63iDjwCy9GL1zV
	Z7gsC+rsVxebNiofPE2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN9mo-00000009uSt-0Kvl;
	Mon, 16 Dec 2024 12:01:18 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN9ju-00000009u4A-2kSo
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Dec 2024 11:58:20 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BGBw5Pi028795;
	Mon, 16 Dec 2024 20:58:05 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Subject: [PATCH v3] arm64: dts: rockchip: Add rfkill for wireless modules for Radxa ROCK 5A
Date: Mon, 16 Dec 2024 11:57:59 +0000
Message-ID: <20241216115759.16127-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_035818_910744_E62520FD 
X-CRM114-Status: UNSURE (   7.95  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, FUKAUMI Naoki <naoki@radxa.com>, devicetree@vger.kernel.org, cfsworks@gmail.com, sebastian.reichel@collabora.com, kever.yang@rock-chips.com, alchark@gmail.com, jbx6244@gmail.com, linux-rockchip@lists.infradead.org, krzk+dt@kernel.org, dsimic@manjaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Radxa ROCK 5A has a M.2 E key slot which can be used for wireless
modules. There are two enable/disable switch pins, one for Wi-Fi,
another for Bluetooth. These pins are connected to GPIO.

Add rfkill and rfkill-bt to control these pins via GPIO.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
this patch depends on [1] which depends on [2].

[1] https://patchwork.kernel.org/project/linux-rockchip/cover/20241216113052.15696-1-naoki@radxa.com/
[2] https://patchwork.kernel.org/project/linux-rockchip/cover/20241216114547.15892-1-naoki@radxa.com/
---
Changes in v3
- Reword commit message
Changes in v2
- put rfkill nodes correct place
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 095e1f5f7786..278d372e9b16 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -19,4 +19,18 @@ regulator-vbus-typec {
 		regulator-min-microvolt = <12000000>;
 		regulator-max-microvolt = <12000000>;
 	};
+
+	rfkill {
+		compatible = "rfkill-gpio";
+		label = "rfkill-m2-wlan";
+		radio-type = "wlan";
+		shutdown-gpios = <&gpio0 RK_PD3 GPIO_ACTIVE_HIGH>;
+	};
+
+	rfkill-bt {
+		compatible = "rfkill-gpio";
+		label = "rfkill-m2-bt";
+		radio-type = "bluetooth";
+		shutdown-gpios = <&gpio0 RK_PC6 GPIO_ACTIVE_HIGH>;
+	};
 };
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
