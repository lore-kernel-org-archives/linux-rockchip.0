Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7D8AC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Dec 2023 08:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L/2xuZDCCURIkWWWwy5vhK/a10PfIvydz9L2n3yHOkw=; b=ex2dMcHMLkGfD9
	9ASotmQJV6zjQviuocUyF/AxgXZ6feMB7BgU4a/Kj8/dPhIbF0yiJJfby0R9rXtRvnIoAtDVlhQgv
	sd56p9c7Fr1B0T8U//Jc7Dr4hrepk0SHvnn6TXJ8tviZ9t5yHFmsftgB7ehgKGjFleA9sjYbU1TW8
	sIsbMhnV1ZFlX2P0iuQXX0ls+Ly+LGB2kTichIEx1Fd/6ETtsY9MAyAbaOV+Cw6f+SlOSEMdON0m2
	Ve6YH06dsPwcQPIJ1IAWTufSANaDtxP1Yfez3IXOwcJ2xWiqCMRX6QI2mY2WAZXkq0qJWgI3hgbRX
	MYL1le95IgxMI6PPdDzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCxiE-00AzYB-2T;
	Tue, 12 Dec 2023 08:01:54 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rCxi4-00AzQM-2w;
	Tue, 12 Dec 2023 08:01:47 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1702368103;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=prPI+o2ux/zMU+D+sJCwA6l3L5stzsv25R3y8h+D+EM=;
	b=jyoC8DuyE0Cq+yHW7FrTyWPwE0zKsee8hHSLWMtzuHmO00tgSlAt3XLr3rZPZYP0XyurdF
	CgdVYIXHCXST6zpf1So7Yf7kxCnCzUSS3KdP2YXDTlxBk44DcvFZRqi0jk45cEFsDqshd1
	kVGpu4AFHZqCDwmJ0JzT7K8reiTyp2u0gqGl/k56Et1hFelMaWixdGQRChcikKJr9oYbWt
	+L6NXGvC5wx4R4Hl/ZGJyy0J2AN8A4+/PsAIeNYWgFPngifJJGbYUzYR2ia7zXWPehkKLS
	HC9dGV4BC9Stiq24U4q5SrmM4FLyePce1crT3Pga23mZzqoZ9ruoPKRLq6fiPQ==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Subject: [PATCH 2/2] arm64: dts: rockchip: Add ethernet0 alias to the dts for RK3588(S) boards
Date: Tue, 12 Dec 2023 09:01:40 +0100
Message-Id: <9af2026bf8a5538aff627381289cb06f2fab4263.1702368023.git.dsimic@manjaro.org>
In-Reply-To: <cover.1702368023.git.dsimic@manjaro.org>
References: <cover.1702368023.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231212_000145_104561_87A0E2FA 
X-CRM114-Status: UNSURE (   8.09  )
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

Add ethernet0 alias to the board dts files for a few supported RK3588 and
RK3588S boards that had it missing.

Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts    | 1 +
 arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts | 1 +
 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts | 1 +
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts    | 1 +
 4 files changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
index b9d789d57862..3cd748ee84c6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
@@ -16,6 +16,7 @@ / {
 	compatible = "rockchip,rk3588-evb1-v10", "rockchip,rk3588";
 
 	aliases {
+		ethernet0 = &gmac0;
 		mmc0 = &sdhci;
 		serial2 = &uart2;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
index 5c59f9571dce..467622a8c008 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
@@ -17,6 +17,7 @@ / {
 	compatible = "pine64,quartzpro64", "rockchip,rk3588";
 
 	aliases {
+		ethernet0 = &gmac0;
 		mmc0 = &sdhci;
 		mmc1 = &sdmmc;
 		serial2 = &uart2;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
index e3a839a12dc6..36269100d2ee 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
@@ -13,6 +13,7 @@ / {
 	compatible = "xunlong,orangepi-5", "rockchip,rk3588s";
 
 	aliases {
+		ethernet0 = &gmac1;
 		mmc0 = &sdmmc;
 		serial2 = &uart2;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 8347adcbd003..abd6934ab3b7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -12,6 +12,7 @@ / {
 	compatible = "radxa,rock-5a", "rockchip,rk3588s";
 
 	aliases {
+		ethernet0 = &gmac1;
 		mmc0 = &sdhci;
 		mmc1 = &sdmmc;
 		serial2 = &uart2;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
