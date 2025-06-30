Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11E58C8302D
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Jun 2025 16:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7l4BPG9B+/UmgbHmbj9LRh/BnJZHgRMvvPACRdnPwDk=; b=inQbWr0TJeXiWb
	V9XgzDqkrrLcaqFClUEynCqd9T5lki73udlyyAzyKZUyY09y2k7poHsHP3V7Mvwhfm4CvyTRKOyfx
	B9RNS7pqYw1sosAHS2CgU4XxV+cN6/s+RaerBQSyRdMFQUCiYVvm+oMpNlzPB4XbNNaTqiTxyzGDO
	BshhLxkDSrVh1Y/7RCsH7S+P8nvXV7kUOPTyHwZ1uzsJp72z7z4sluEno2Xrpxc9sgKLfRaZvthTc
	6Sb5xj5rGEt0jNnyF9k0pv2WRzE+j53b45PN30bK8URUrDmyUiFYQtonqXCW9kAM1oAnpmdk9HNzM
	3mVJmHws5q9MI9IRYclg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWHAd-00000002rag-1GBQ;
	Mon, 30 Jun 2025 16:15:51 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWGZ0-00000002lyu-1vqn;
	Mon, 30 Jun 2025 15:36:59 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1751297805; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=c30bn2kRQe+kHF0a5fjiGbGefd+J5bnPgFebggqvohGyd2hPWNvEK5943AQfllOP7lbJY2j378bASokshDacGIjcCH6Njydwjm/vvV7Wv1gAGFEnL+67ELHG3obfaMYS10+bQqWiga2JaPVDB93UjsV+exjYtPfQUathMC7Tf8c=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1751297805; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=j9GQKLguf1mAV7iA4o9HzpFt+9CePr8v5rNhiPiX5m0=; 
	b=leNmZK2qTURJXbjcHDg5uZwU2RMI/kbyXSg4yJoLgaGUPlPJDZKZkDRfFgFK4xriV2CLfzEWOGWA7VxQ40rOLx2dFmjQkdDfvQNE8ZwSsyBXucHOFvmV39mH5avxocI96BZ+9drnckdExCg3gEguDurFYU5Vj0cCI5wNqGA+mp0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1751297805;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=j9GQKLguf1mAV7iA4o9HzpFt+9CePr8v5rNhiPiX5m0=;
	b=C0qIcSgXOpIGsZkN89Sp8Rg75Ms36o45KysoBaWXz8Xuo5RjJgGyG0FMkxvvlCQ9
	k0eSrsHa3L2TWPy/nGPWFEtDENvLl1Vw468XBctqE3hwSyVHPR1auw6OKCH9KPkmqc/
	AFb1pIqJZKP4WtbqipgmTHkfXk6nI5ZPnbHopS+0=
Received: by mx.zohomail.com with SMTPS id 1751297804325888.6960560432937;
	Mon, 30 Jun 2025 08:36:44 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Mon, 30 Jun 2025 17:36:33 +0200
Subject: [PATCH 1/3] arm64: dts: rockchip: adjust dcin regulator on ROCK 4D
MIME-Version: 1.0
Message-Id: <20250630-rock4d-reg-usb-wifi-v1-1-1057f412d98c@collabora.com>
References: <20250630-rock4d-reg-usb-wifi-v1-0-1057f412d98c@collabora.com>
In-Reply-To: <20250630-rock4d-reg-usb-wifi-v1-0-1057f412d98c@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_083658_563348_16825C7D 
X-CRM114-Status: GOOD (  10.60  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The ROCK 4D's actual DC input is 5V, and the schematic names it as being
5V as well.

Rename the regulator, and change the voltage it claims to be at.
Furthermore, fix vcc_1v1_nldo_s3's vin-supply as coming from
vcc_5v0_sys, and not the DCIN, as per the schematic. This makes no
functional change; both regulators are always on, and one feeds into the
other.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
index 6756403111e704cad42f6674d5ab55eb0306f1e3..352e3df165688219bfedc19734d9eb32c547ec44 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
@@ -57,13 +57,13 @@ user-led {
 		};
 	};
 
-	vcc_12v0_dcin: regulator-vcc-12v0-dcin {
+	vcc_5v0_dcin: regulator-vcc-5v0-dcin {
 		compatible = "regulator-fixed";
 		regulator-always-on;
 		regulator-boot-on;
-		regulator-min-microvolt = <12000000>;
-		regulator-max-microvolt = <12000000>;
-		regulator-name = "vcc_12v0_dcin";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-name = "vcc_5v0_dcin";
 	};
 
 	vcc_1v1_nldo_s3: regulator-vcc-1v1-nldo-s3 {
@@ -166,7 +166,7 @@ vcc_5v0_device: regulator-vcc-5v0-device {
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
 		regulator-name = "vcc_5v0_device";
-		vin-supply = <&vcc_12v0_dcin>;
+		vin-supply = <&vcc_5v0_sys>;
 	};
 
 	vcc_5v0_host: regulator-vcc-5v0-host {
@@ -190,7 +190,7 @@ vcc_5v0_sys: regulator-vcc-5v0-sys {
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
 		regulator-name = "vcc_5v0_sys";
-		vin-supply = <&vcc_12v0_dcin>;
+		vin-supply = <&vcc_5v0_dcin>;
 	};
 };
 

-- 
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
