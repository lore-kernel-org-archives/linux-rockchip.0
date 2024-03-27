Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7835C47DD9
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Mar 2024 19:56:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0w9pyzOdQICIqmzII0/EYnbzS/wJuTdmgBUhaLCg9KM=; b=F3yCy310qJlxyu
	oKKdjFknaeqk10GY6aarQ6QXGeT8DuCwSXSz+RdAjnN/x6Bm8ue/hmizrw4cJg1e0poMseKng+KQi
	wleQFCZ5QIl3/7UOqz8gLqiKHYzisD5Jfu4mEaHytzevx61QkaNxx9RLe5f5mhRSq3QTVGhUlL08B
	81eoO902rsNT8pKwHB2nc/Huiehvw1aLAK/uve2MMZrR/+M0YoGKHMRA96V+swqldYDtY5Qfw8hts
	VgobAKWnOH9C4GmgN1NWaeCWLdMhL5NWw535Mh7veartniTKRlmZazTnoVoqmIfG3IjsAo9Kt83iV
	Bxa09R0mBnN9K8fUCEJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpZOA-0000000Asyy-36NE;
	Wed, 27 Mar 2024 19:56:46 +0000
Received: from www522.your-server.de ([195.201.215.122])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpZO5-0000000Asxu-1lZ0;
	Wed, 27 Mar 2024 19:56:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=folker-schwesinger.de; s=default2212; h=Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=PbW/dVoNioC9H6nvXtciGc7SM7HI15MyzienCfKIkR4=; b=VR8kDsBcDbAEnaXTexmEIWas1t
	b2KR+fJi/XsXdOE1V5MMnZVMxq+8uMaUz04wzmN+wb13IgLK02yZtNeDGVjG4pQ4+iBemvahrXXOK
	a/xmDMbSeXX0Yk6BIByz4W0CW7/q17x1DsyiZ0cm3FVdQ4PC16h7Y09OoYOfY19fi6Y7aDtSX5eFZ
	GE+u8lB2OrlJRt4fHmCWrFTJxLwXjnfRFFmmk9R14VMxi8vsH0qTPEAVsfnN49ILe0VQqDUYjC5mO
	GSpfupQcYcfrrzfGw2j3qWsENzLylLIXG0vNrUkEsfp+VhUcE2LlHSjKbXnNC2QDJzSVRC+Anc4nD
	Tu8HyuKw==;
Received: from sslproxy06.your-server.de ([78.46.172.3])
	by www522.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <dev@folker-schwesinger.de>)
	id 1rpYvT-000Isr-4F; Wed, 27 Mar 2024 20:27:07 +0100
Received: from [185.209.196.215] (helo=homedev.localdomain)
	by sslproxy06.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <dev@folker-schwesinger.de>)
	id 1rpYvS-000Iyc-EA; Wed, 27 Mar 2024 20:27:06 +0100
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
Subject: [PATCH 2/2] arm64: dts: rockchip: Add enable-strobe-pulldown to emmc phy on ROCK 4C+
Date: Wed, 27 Mar 2024 20:26:38 +0100
Message-ID: <20240327192641.14220-3-dev@folker-schwesinger.de>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240327192641.14220-1-dev@folker-schwesinger.de>
References: <20240327192641.14220-1-dev@folker-schwesinger.de>
MIME-Version: 1.0
X-Authenticated-Sender: dev@folker-schwesinger.de
X-Virus-Scanned: Clear (ClamAV 0.103.10/27227/Wed Mar 27 09:33:27 2024)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_125642_237849_0239F22F 
X-CRM114-Status: GOOD (  10.76  )
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

Enable the internal strobe pull-down for the ROCK 4C+ board. Also re-enable
HS400 mode, that was replaced with HS200 mode as a workaround for the
stability issues in:
2bd1d2dd808c ("arm64: dts: rockchip: Disable HS400 for eMMC on ROCK 4C+").

Fixes: 8b5c2b45b8f0 ("phy: rockchip: set pulldown for strobe line in dts")
Signed-off-by: Folker Schwesinger <dev@folker-schwesinger.de>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
index 7baf9d1b22fd..972aea843afd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
@@ -151,6 +151,7 @@ &cpu_b1 {
 };
 
 &emmc_phy {
+	rockchip,enable-strobe-pulldown;
 	status = "okay";
 };
 
@@ -549,7 +550,8 @@ &saradc {
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
