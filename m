Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E2D5C83F17
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Aug 2024 13:21:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IPW1tch81ShaWGrWiGMMVC7hy4x8Bmo/h1y/PPIyQxc=; b=KLvUyPxCMH6GBT
	p38oLTK6HWHoG3xFQxyqauU2YqTvxAupg6oyN5tQL4aukAjnTS8Gt0/ZW1365EqsCgG58TYKbremy
	IRDYiILJoXUwNN8Y2jStohyE2sVI+oe28X72folLZ5Qm+VqaeRky79WYviYOowaZLNpZKoF1D1j1m
	sNmHZNVPj3T8cmG0SM1fHDHkz2nbBrauCjdYz4l4gFei0s4skOxnn+HxM22dt+YZ1LZQh71I4kxvc
	Mo5jDyvK7ad4oVLT7hFQMvz4s/RpmfAC+f9+61ZwT1YTqhQx5pTSkeDOTvURUdFGPiK7tZfFAfYa+
	qagB1YF5npDUZtUB+ahg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjf5J-000000028XF-29Ct;
	Thu, 29 Aug 2024 13:21:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjf5F-000000028Ur-2qTV;
	Thu, 29 Aug 2024 13:21:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=xXofggpmprYI0+LiWMk83WStXSHiuZHD3sONFvEo+Ag=; b=MuvirVY4y68Zaxnse2JV8A+IPT
	hO1Q83V6o2tCLUULcWwyfZZPfSgyC1TpNf0zURoOJJYXK+DJHoQl9CdJljSkcjlRJufkHmaE0DYg9
	FrDwDTlD6cfTeyjfvuddwjqYCl+dbFoo0E9vMf2P68VbgpD3KAvHcdd2ZFq8DyassM4qxf2WNDLFB
	z9noUWLn3Rv9oztdwHHVF38spxDTWaFhlKyNy9HcvVJWX1VuQBlLfuvMUEWNX+Lhzan1iaJr3scbS
	KuujVkEFMSE1EBrbPFwvAMkUykbwuNkqvkeIFli3Mg5eP3cJD67DQyAXXzJcMLI1xrrWaZT9I6ex7
	K2LYamrg==;
Received: from i5e861916.versanet.de ([94.134.25.22] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sjf5D-0004Es-TT; Thu, 29 Aug 2024 15:21:03 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: marcin.juszkiewicz@linaro.org,
	didi.debian@cknow.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] arm64: dts: rockchip: use correct fcs,suspend-voltage-selector on NanoPC-T6
Date: Thu, 29 Aug 2024 15:20:58 +0200
Message-ID: <20240829132100.1723127-2-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240829132100.1723127-1-heiko@sntech.de>
References: <20240829132100.1723127-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_062105_734755_DDB7B2AF 
X-CRM114-Status: GOOD (  12.87  )
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

A remant from moving from the vendor kernel, the regulator is using
a fairchild fcs prefix instead of rockchip,* in the mainline kernel
according to its binding.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
index b5f5ce3459a4..066b964a7ea8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
@@ -366,7 +366,7 @@ &i2c2 {
 	vdd_npu_s0: regulator@42 {
 		compatible = "rockchip,rk8602";
 		reg = <0x42>;
-		rockchip,suspend-voltage-selector = <1>;
+		fcs,suspend-voltage-selector = <1>;
 		regulator-name = "vdd_npu_s0";
 		regulator-always-on;
 		regulator-boot-on;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
