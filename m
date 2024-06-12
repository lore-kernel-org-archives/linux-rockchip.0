Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98825C27C78
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jun 2024 01:13:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zNqvUAvQoOZgZL2EJZR6McifhnI9LiI+6NIpEOBGuwE=; b=Tp9YD+QcYJ16Ji
	GTI2m5GzJr/ehHvhMCdaZx5JVrhL6eFpWsca4BMcUWsB7MJ+4vNIZtm/Dc4tubcPjs990nHsv7bye
	IdiedZ8JzCJj5kY2ZFdM4r0KmOK8wvHFx1BMtoQgkkouRC4XqYAuYQdKslWqtLDaGiohu0Gga4VSn
	xvpqBzdL30JDzZHCPtzH34DA3BWhisnO/M/gcfgVAiGF966U4RpXCCv72lMZdAtXcggg8DNpG5WSW
	4+dpGWmq6trAkHSJ0lTf3A6lbFR2L0vu8QWifuW9x/gpxFdMyMjdkvJzkaWZfUE/UVgh1PhuFSukC
	OJTjzanYAwoZdwoVwjAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHCYN-0000000Ae9d-0x2W;
	Wed, 12 Jun 2024 01:13:31 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHCYM-0000000Ae8r-1qWH
	for linux-rockchip@bombadil.infradead.org;
	Wed, 12 Jun 2024 01:13:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=O7qL0TrMqXa8J2cnXX6XtIVbsRtmqnnqZt35+ZfPY30=; b=NhGrecgRzgJq5UA6P97LHZqOW8
	4HYuhR9IW7Om+maRBhjdlPKmxnZ/yMKFFl7cDm2jHFInyvzUD7qcaeu5z+O9MimVbww1387129dkd
	8nRtoypK1Badhj/QPcYlWjKhdcLsFgUQ3s6tanwTERi4OtTDj/1FfU5k8/Mr97aFX4gwp9BVMzx9+
	vkJ18XxIN9jM6w/pe1FYIqiNwMlbk3mYuO+hAcQaSKXBD/JkvT7/8hSKV5JBJM2iLt41JJr50wAas
	6RSFoklzr96JHNZ33OcTzd+ISLCm6uOwH+OmDyT8teSOiVtRLBRus0up2QKWK96ivy9yTd2H54i5+
	Nnkid1eA==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHCYE-0000000EGHj-1FAS
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Jun 2024 01:13:28 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45C1CUMf030131;
	Wed, 12 Jun 2024 10:12:30 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>, Dragan Simic <dsimic@manjaro.org>
Subject: [PATCH v2] arm64: dts: rockchip: make poweroff(8) work on Radxa ROCK 5A
Date: Wed, 12 Jun 2024 10:12:21 +0900
Message-ID: <20240612011221.822-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240611122746.751-1-naoki@radxa.com>
References: <20240611122746.751-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_021322_934406_4F99CF94 
X-CRM114-Status: UNSURE (   7.69  )
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

Designate the RK806 PMIC on the Radxa ROCK 5A as the system power
controller, so the board shuts down properly on poweroff(8).

Fixes: 75fdcbc8f4c1 ("arm64: dts: rockchip: add PMIC to rock-5a")

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
Reviewed-by: Dragan Simic <dsimic@manjaro.org>

Changes in v2:
- remove an empty line above "system-power-controller;"
- reword commit message
- add R-b tag
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index b070955627be..3b9a349362db 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -394,6 +394,7 @@ pmic@0 {
 		pinctrl-0 = <&pmic_pins>, <&rk806_dvs1_null>,
 			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
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
