Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C155ACEFC56
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 20:46:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MwwvMdXse7LHij4vkKfpRV5jDN8J+xH/SzhG9BJJDvI=; b=V4TBrS7cpgQD1U
	/nzk8XURpHljHhugfpcvvmThoSfLnIkrIAh4jzFV4qJXgi/CTrC+HT0RWEt9qZ1D7vzYYmZ6RDRrj
	c5PMnrU4OYlvYM76zKK2LD0iuh31UV4/FxUbMeUVPwn2Xbx2GwIEpFCFQffVaO6qqtWEZxdRowO0l
	uaOTpcGGUL5jACEzNSHmQLvukKycULb58RMTmspJat95d9faFiCwkbMjWxbTQQNG8GwsqHBJ3Kc70
	fOzrCNP+qtuDNhpyphpYr72RSeCWK+HfDzi8JCE4Kix9sbluWassM/LpdEwF8LSv4/mk+Ro3TV6Uh
	cAh+XAWnEoo2VX46Lvzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syH6H-000000076An-1IVs;
	Tue, 08 Oct 2024 20:46:33 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syH0E-000000075I2-3SV1;
	Tue, 08 Oct 2024 20:40:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=k/5sNKevC+o9Lp1ItqUhRy3pPTMdn3RRBndu2fGnT5c=; b=iuwlSqvR36x7nwhum8+pM28/BS
	9ukE513xiryH26afSTnx9Ezf6pqryQE2TESEBFTkfPsb7Boh0+K/Zu23h7LGurxB1gRDtgIx2s5Xj
	EnARFY9IUPjlJdByE9iiGW956unbtqbdqzuPwVaZFUr91IKUFmuQy3V+gp7ZkBej+Lv7h2hznFGpv
	KVgttV3y181J6g445OTS/Gsq4VNPNv3fLohfid0UFuowCGWRe8zVSftJSCDT6sV1xKQj4phm41nCM
	VTdmnoNW/NGH6rBFKcbK4Krr4u0OafZZMnWHQQCko9ILaPZIzCfifk4AQav8aH+gmBHEkqReqCMN1
	VoWurD5w==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syH06-00000004gel-3Lil;
	Tue, 08 Oct 2024 20:40:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=k/5sNKevC+o9Lp1ItqUhRy3pPTMdn3RRBndu2fGnT5c=; b=0Jly2FwYX3Ck1HU3A++7h39T1n
	Qx/WO/nnoMpEc3Fm1fSa0+iLFTiPwN9eSbT7krtfJIF0lYkqZFH1KlP16gMN/fc+VX57Z71Pay3kC
	pj98cjFwi0tU8ZUTSV9YQ9DUwtyq9QI4GvqhO76L8ZCMULQrxx9LNvOVoa8gDJH1RaFoKiWoxpPAv
	i/xCQ8t8TrBZW8rbAXe46BWsqw3AILnpzjetD4V0Dd8IuV9W9C67d8MoJn1X0OpmlgSAGOmwz07dq
	mGs00UADlqGgt3tH/ff/Os2ge7KCnO9sjy6KgjPTgyYnq8t7lUFo0fOOU1vIT2FRodNloQHOYcaQu
	QOjShNyg==;
Received: from i53875ad9.versanet.de ([83.135.90.217] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syGzw-0007ua-Rh; Tue, 08 Oct 2024 22:40:00 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH v2 03/14] arm64: dts: rockchip: Fix bluetooth properties on rk3566 box demo
Date: Tue,  8 Oct 2024 22:39:29 +0200
Message-ID: <20241008203940.2573684-4-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241008203940.2573684-1-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_214015_021555_1178FAD6 
X-CRM114-Status: GOOD (  11.89  )
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

The expected clock-name is different, and extclk also is deprecated
in favor of txco for clocks that are not crystals.

The wakeup gpio properties are named differently too, when changing
from vendor-tree to mainline. So fix those to match the binding.

Fixes: 2e0537b16b25 ("arm64: dts: rockchip: Add dts for rockchip rk3566 box demo board")
Cc: Andy Yan <andyshrk@163.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
index 0c18406e4c59..7d4680933823 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
@@ -449,9 +449,9 @@ &uart1 {
 	bluetooth {
 		compatible = "brcm,bcm43438-bt";
 		clocks = <&pmucru CLK_RTC_32K>;
-		clock-names = "ext_clock";
-		device-wake-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
-		host-wake-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
+		clock-names = "txco";
+		device-wakeup-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
 		shutdown-gpios = <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
