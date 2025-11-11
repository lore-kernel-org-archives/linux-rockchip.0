Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FCA5CCFA18
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Nov 2025 07:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m67fW3cKEZMPbxftyYW+Y2KYFRiYi9TfOCXeinQYMbg=; b=VQDMKGSrkaGrDR
	gxus5TAB6AMrC7QUUyMes0V/RvbK0rqx0rbb63JxFjhnDi/kIJeyan2m+tm+V5zlV6bzr498FPv1S
	GuYlMSCL2lVlFl8m3HgxZOA53AVHdBv89SBkl+QHGI0ySPBUHSC/Ip27DqEbmrEqypA7ASuSPytFA
	1GceoUMCG4aG8nkvBOgcqP11MPK2nZ4beQKHLi8qAt0u/IhxLX/GKuXQBqvslt6cRNulanz9bddt0
	GL0tOF75ee1XNP3TthCgJ0GZruHwGHahSihO/P7ov+oApW1hE1ck5SHWaQ6gF7q9O820i8un7fOJx
	+k2wHzg4EO/8+3W6fbfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIifA-00000006g77-1nRC;
	Tue, 11 Nov 2025 07:19:36 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIif7-00000006g6c-2YSm
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Nov 2025 07:19:35 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5AB7HYhU022271;
	Tue, 11 Nov 2025 16:17:37 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        liujianfeng1994@gmail.com, dmitry.baryshkov@oss.qualcomm.com,
        sebastian.reichel@collabora.com, andy.yan@rock-chips.com,
        nicolas.frattaroli@collabora.com, dmitry.osipenko@collabora.com,
        detlev.casanova@collabora.com, didi.debian@cknow.org,
        damon.ding@rock-chips.com, jbx6244@gmail.com,
        kylepzak@projectinitiative.io, dsimic@manjaro.org, alchark@gmail.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 3/3] arm64: dts: rockchip: Remove sdmmc max-frequency for Radxa ROCK 5 ITX/5B/5B+/5T
Date: Tue, 11 Nov 2025 07:17:30 +0000
Message-ID: <20251111071730.126238-4-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251111071730.126238-1-naoki@radxa.com>
References: <20251111071730.126238-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_231933_889912_982D7EA7 
X-CRM114-Status: UNSURE (   7.11  )
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

Default max-frequency for sdmmc is "200000000"[1]. Remove redundant
definition.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi?h=v6.17#n2013

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v2:
- New
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts      | 1 -
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi | 1 -
 2 files changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
index 4c218ae6677ec..e9585cc84080e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
@@ -803,7 +803,6 @@ &sdmmc {
 	cap-sd-highspeed;
 	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
 	disable-wp;
-	max-frequency = <200000000>;
 	no-sdio;
 	no-mmc;
 	pinctrl-names = "default";
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
index a35c9469a2574..b3e76ad2d8694 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
@@ -596,7 +596,6 @@ &sdhci {
 };
 
 &sdmmc {
-	max-frequency = <200000000>;
 	no-sdio;
 	no-mmc;
 	bus-width = <4>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
