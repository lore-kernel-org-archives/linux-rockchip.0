Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBCE1C0218D
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jan 2025 06:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0eq2HBq7eODKY/FZ4xWB/ViMPVojfOWwY+IdX0sCYUQ=; b=dJyuLaXQu0cSHW
	bBljb+49SssjmRe2Mb5GfVK8wTfgGrPhsOg1Xf0SPFjtc66kIq2i7fdpMNycMRn5kJl/8llscnTDc
	YB8NPiWAKGEboWTOPDABPVXhqoSo1qhvh1rBXcHcsUqkZ642RzKZA5xKpkhRHdlj50o3eLeg99/S9
	dO7S+11gw0q5UJfOh38+rE9Z3/CgAnpsxvZOjRa4ksl5m379TTOh1foi9qFbLKd8NaAklPIV4hUyj
	Yw60+t5zkpkoCUYS9PmpxZE0g625lZiaiGuFwdFgyih1HGWpxrLDO6X8n2sTeydRvJpL5zCVhS/p8
	aCMPW4zVcNftWcs6N3pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1td1kl-00000006QY4-1fz1;
	Wed, 29 Jan 2025 06:40:47 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1td1kg-00000006QXE-3N0W
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Jan 2025 06:40:46 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 50T6e7RC009991;
	Wed, 29 Jan 2025 15:40:08 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, twoerner@gmail.com, didi.debian@cknow.org,
        jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH] arm64: dts: rockchip: Enable USB OTG for Radxa ROCK Pi E
Date: Wed, 29 Jan 2025 06:40:04 +0000
Message-ID: <20250129064004.162136-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250128_224043_057297_09128A8F 
X-CRM114-Status: UNSURE (   6.15  )
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

The Radxa ROCK Pi E has USB D+/D- signals on the 40-pin header[1].
Enable it for use as an OTG port.

[1] https://docs.radxa.com/en/rockpi/rockpie/hardware/gpio

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
index 6310b58de77f..a4bdd87d0729 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
@@ -428,10 +428,18 @@ &u2phy_host {
 	status = "okay";
 };
 
+&u2phy_otg {
+	status = "okay";
+};
+
 &uart2 {
 	status = "okay";
 };
 
+&usb20_otg {
+	status = "okay";
+};
+
 &usbdrd3 {
 	dr_mode = "host";
 	status = "okay";
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
