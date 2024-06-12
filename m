Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C149CC27C53
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jun 2024 20:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=almLFX1N2inRebK7zSm08wAo5f06pNG/MauNjcQC+Xk=; b=Hvciu5LovJkkuG
	s2TFAFS5C/hWjBFQKDSAd46pra6XOqMP7hREBNUfeCKQuTJux8JVSRWE5CWE619TNUDeKUy9fMoiz
	zbHjjZTKSaTwNiOYsKFYPpiSffeQw89GmtJFNlQZtUnmA6hCUIGWLb/gFfppKy1Bp9pMjQ+BKThtU
	zjyGM8GG4b2w/xe5IMPlusXVIWw45VhX3j6Y0vohJHNwrin00uGWZnS36id/s6szH1GmWgfErlXuw
	sMX64GFCT3t1Y8/nVmTmQuKWOlG80ZroQnUiHzCSMOq4Yj6mXCf79CGT0orR43UXrFSSNTnzu3bjF
	E1BaTpq+dZlfrmJMJ9Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHUzh-0000000E6aB-10XN;
	Wed, 12 Jun 2024 20:54:57 +0000
Received: from shout12.mail.de ([2001:868:100:600::f154])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHUzF-0000000E6EP-2mgn;
	Wed, 12 Jun 2024 20:54:31 +0000
Received: from shout01.mail.de (unknown [10.0.120.221])
	by shout12.mail.de (Postfix) with ESMTPS id 0B797241949;
	Wed, 12 Jun 2024 22:54:21 +0200 (CEST)
Received: from postfix01.mail.de (postfix01.bt.mail.de [10.0.121.125])
	by shout01.mail.de (Postfix) with ESMTP id E62722405B9;
	Wed, 12 Jun 2024 22:54:20 +0200 (CEST)
Received: from smtp01.mail.de (smtp01.bt.mail.de [10.0.121.211])
	by postfix01.mail.de (Postfix) with ESMTP id C6BD68016E;
	Wed, 12 Jun 2024 22:54:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.de;
	s=mailde202009; t=1718225660;
	bh=X/r/oHMy8dOwR8VKQt0p0IMSLPiew0x6KHjtkpK4Q7M=;
	h=From:To:Cc:Subject:Date:Message-ID:From:To:CC:Subject:Reply-To;
	b=lDhlTD5Kv+jOfeVrYfJo0m45ybKSOinIQlktcMl5tem0Hhv1LnueMppD4D3hgcBg0
	 c1mz1wG13LHivrN9YlWPeiRRVdl1jSdZKft2Zn7fWnkAGfqEPl0IEH3s0MyZoWea2+
	 Jy6c/mK99//RkhBvxQ/a72IXWcrhE+ZBLSkkp5lsdpX9oLG21hkdoZgrx12hmqan72
	 Bd828D8kIj7192kiNLnWp2Jrs1/HH8zrg1P8MmR1V8x7UZej/PWvehXc58J2iHUFXe
	 dfzM5ilw/7AqEWgRgo0vXGGn+l9G1HvlCk6nuLGMHtzmEUReOc7uUJLFlKyzdZ4F5Y
	 B5GzCG46inNbw==
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp01.mail.de (Postfix) with ESMTPSA id 444B6240EB5;
	Wed, 12 Jun 2024 22:54:20 +0200 (CEST)
From: Sebastian Kropatsch <seb-dev@mail.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 5/5] arm64: dts: rockchip: Enable GPU on NanoPi R6C/R6S
Date: Wed, 12 Jun 2024 22:48:14 +0200
Message-ID: <20240612205056.397204-6-seb-dev@mail.de>
In-Reply-To: <20240612205056.397204-1-seb-dev@mail.de>
References: <20240612205056.397204-1-seb-dev@mail.de>
MIME-Version: 1.0
X-purgate: clean
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate: clean
X-purgate-size: 760
X-purgate-ID: 154282::1718225660-FE5BF670-E64745C7/0/0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_135429_866438_62B62BB9 
X-CRM114-Status: UNSURE (   7.54  )
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

Enable the Mali GPU on the FriendlyElec NanoPi R6C and R6S.

Signed-off-by: Sebastian Kropatsch <seb-dev@mail.de>
---
 arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
index 9676e7194451..3620677dc7b4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
@@ -207,6 +207,12 @@ &gmac1_rgmii_clk
 	status = "okay";
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu_s0>;
+	sram-supply = <&vdd_gpu_mem_s0>;
+	status = "okay";
+};
+
 &i2c0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c0m2_xfer>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
