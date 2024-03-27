Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B840C54E67
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Mar 2024 19:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WwhNLKhGl8WZ4CfHGkmWz64AaV8CRWZWJ5nri6em04A=; b=REZeIvx2BBOefC
	1cEExjUgdKrdQMa3Y8cGgMHX/pywN9WH1laBqUuYYrgUu9uCfD02CS0fEsI29PS9HVW+SdA9kvqDc
	zUFRJKmN2Yk73j9kQEqhPHKJZ/8dfK8lu4l0yCQNB6f1NtzynPVmreehneCWToHa5hieaZ66TKHYk
	FhO078mkwyPzopAHURR+T3EPd/3/L0ePswVcnOQttwEa8+6MeUxdLCNvXjLIUPmoTbi4Ju7ujMgYq
	2ZRMtABpBiVJK78gMCOrjVuaonQHV/lzHUorqFTXlWT/v9YJHftlARBwyr56+D/9opDuqObkOTTps
	m9hfxmzcltmK7flzakvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpYvT-0000000AnCF-2Wbd;
	Wed, 27 Mar 2024 19:27:07 +0000
Received: from www522.your-server.de ([2a01:4f8:d0a:6525::2])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpYvR-0000000AnAv-0jtX;
	Wed, 27 Mar 2024 19:27:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=folker-schwesinger.de; s=default2212; h=Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=JvOtujP2hw1jZp38Opj2EyPsjN/F14SK8Ijf8kv0grg=; b=NWHVKnciuFbROEAcxxjmL6mKM5
	G9daR0oSoXCGk1ilMPcgDoF7MStJZfyjFEyL0rlVQRJ6Mt87PAzLyp0MO+sq+tP/m4YImHPeoACHL
	7HAWfzlR0mQ+720/nncIUbFlWSNeGCcIXMr/UeVdQTuwSL1TgpwPQh9G3XLzX0vphuYM7DyLfZ+Nh
	6wivJNpyzd0h03vTtSgzL7Yh5V31G9oDUPzsNTkGwYdLKSXgwptWzvIq0iCNmFoNFke3H2u8bqRmp
	RMnUBlxwG7nOGg4cf2M5VOhU5grsO98XqaYKttE37ZLadzC3IjjqdlylG+25wI1pZ2XrQensl0V2x
	NROXwfSg==;
Received: from sslproxy06.your-server.de ([78.46.172.3])
	by www522.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <dev@folker-schwesinger.de>)
	id 1rpYvN-000IrM-74; Wed, 27 Mar 2024 20:27:01 +0100
Received: from [185.209.196.215] (helo=homedev.localdomain)
	by sslproxy06.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <dev@folker-schwesinger.de>)
	id 1rpYvM-000Iyc-GM; Wed, 27 Mar 2024 20:27:00 +0100
From: Folker Schwesinger <dev@folker-schwesinger.de>
To: Vinod Koul <vkoul@kernel.org>,
	Yogesh Hegde <yogi.kernel@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Ruehl <chris.ruehl@gtsys.com.hk>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Folker Schwesinger <dev@folker-schwesinger.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Christopher Obbard <chris.obbard@collabora.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 1/2] arm64: dts: rockchip: Add enable-strobe-pulldown to emmc phy on ROCK Pi 4
Date: Wed, 27 Mar 2024 20:26:37 +0100
Message-ID: <20240327192641.14220-2-dev@folker-schwesinger.de>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240327192641.14220-1-dev@folker-schwesinger.de>
References: <20240327192641.14220-1-dev@folker-schwesinger.de>
MIME-Version: 1.0
X-Authenticated-Sender: dev@folker-schwesinger.de
X-Virus-Scanned: Clear (ClamAV 0.103.10/27227/Wed Mar 27 09:33:27 2024)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_122705_263826_6CA76619 
X-CRM114-Status: GOOD (  10.95  )
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

Commit 8b5c2b45b8f0 disabled the internal pull-down for the strobe line
causing I/O errors in HS400 mode for various eMMC modules.

Enable the internal strobe pull-down for ROCK Pi 4 boards. Also re-enable
HS400 mode, that was replaced with HS200 mode as a workaround for the
stability issues in:
cee572756aa2 ("arm64: dts: rockchip: Disable HS400 for eMMC on ROCK Pi 4").

This was tested on ROCK 4SE and ROCK Pi 4B+.

Fixes: 8b5c2b45b8f0 ("phy: rockchip: set pulldown for strobe line in dts")
Signed-off-by: Folker Schwesinger <dev@folker-schwesinger.de>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index 281a12180703..b9d6284bb804 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -194,6 +194,7 @@ &cpu_b1 {
 };
 
 &emmc_phy {
+	rockchip,enable-strobe-pulldown;
 	status = "okay";
 };
 
@@ -648,7 +649,8 @@ &saradc {
 &sdhci {
 	max-frequency = <150000000>;
 	bus-width = <8>;
-	mmc-hs200-1_8v;
+	mmc-hs400-1_8v;
+	mmc-hs400-enhanced-strobe;
 	non-removable;
 	status = "okay";
 };
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
