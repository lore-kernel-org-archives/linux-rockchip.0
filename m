Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A4C7D637D7
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Nov 2024 02:39:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gbDdvPZhaZ8pv3xUmRHSHMTnIbV8syPWbD0iEKS54jc=; b=x/uM6OwKIxf/FH
	8ivQhhXlcpCa3Y6B4I73nN9l3FEertC6ZPTJgqo8sFZwI0CQPoDJgVxchT6jD1EHdEbHXCsh8sSgV
	+oXqp7lUYy2Q0OdYKuOj6G90TnPycg0r8tDvmMjdZeOz76DdWjOjcBd0ivqLeqvYPeoPMSMzu72/6
	nAf9NVAB5tjoyDTKHCd4pKK9GUGp1R86xZu6lv2dguMm9kfBwfDQzckhLZBtX75CI0T/i7Rr5mDVM
	kka690yCGH43M6tE7oGkDnlIJUou5Sp7dm+RtDUIEQBs1nAPEaPMFyNgc9X2pytnQX/Gw/t2rYP/s
	df33ThKycgHljcN5+p9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBPlv-00000008Zu9-2XHU;
	Thu, 14 Nov 2024 02:39:51 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBPki-00000008ZnZ-0ht0
	for linux-rockchip@bombadil.infradead.org;
	Thu, 14 Nov 2024 02:38:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=nJYAOJG6LbfnHsV0zG81eCuCCjdlzgjsDPdIckvBGNc=; b=Rd0GAtfW4xeigXF1ZP/3OpehyB
	JY6GoNX9y5xiimHiwROp9ShKzUlhi8kIrn+7Nodzqy6LF6HE0usQ9VNKb6QBoh4SUwOk1zSZAq6vz
	cOhg0nVKy74b6K6u7nRc90OdIsmZ3wNpQiKksYPPygCyyoWGwuN0mR52zzSWm2lKP60uRIr1M0rj7
	y8Pp1e23Ao4ymunt/napJ1BV3n0X8dD7y3utsiSlQl7OXGAkh9dYpu9h5Obg2Yj+snGNuumq0b0+x
	dPsEQfLJIluSY1PAE8Sj5tFgKI/ZxqwJ4Mu8U3AELKgaDedJpDDcgYsEuQifUzc6eYik9fdXSkJJ4
	wOHqJVsw==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBPkc-0000000HLk5-0Ewi
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Nov 2024 02:38:35 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AE2bpln029356;
	Thu, 14 Nov 2024 11:37:52 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 1/9] arm64: dts: rockchip: add properties for pcie2x1l2 for Radxa ROCK 5C
Date: Thu, 14 Nov 2024 02:37:38 +0000
Message-ID: <20241114023746.4867-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241114_023830_690638_98809792 
X-CRM114-Status: UNSURE (   6.61  )
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
Changes in v2:
- reword commit message
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 9b14d5383cdc..997e95bb5b74 100644
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
 	vpcie3v3-supply = <&pcie2x1l2_3v3>;
 	status = "okay";
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
