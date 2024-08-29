Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F22DC83F17
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Aug 2024 13:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RLeLy6Z3LzsjrktqcocLapsv6F7samhV48L8FaqhROQ=; b=Rh/J9O+yw6wkWM
	MawyJ2swVLqKqVPs98vrJMO6/LPbkrJ7gx2BVKVVaYm38vJBu9ji/FDCBcFW8uCu8zG0rl1oIk73k
	9w4eNe9DTAW0CgMpLHvd8ZeK87Os8seIlqtipLqO7T2DzgaitmCDa3lC9P49CY8usW0elqaUTL4jT
	VK+UafrKDfzehNjn3BG05Pjpv2ZWmQn9BlTCnlTjJPaxX+f5C6uaYmkXlzuH7BLaiUycjVjI+HLqU
	V6njalhBgtCRnljTE5hmOhWy0v83gHwJznlXgJ5AbkpHTn8sAyupJFUOkHdYkxvTGwb0miUV/hg5u
	xTK6cuTrgL7r398IvjLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjf6A-000000028hW-1APi;
	Thu, 29 Aug 2024 13:22:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjf5G-000000028Vb-2nax;
	Thu, 29 Aug 2024 13:21:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Uel2mVUmH/WOIAa067Q3w0IU839A2xFd601zVHRwGqU=; b=ICZsVjTN9sr1TP2vOxGF5YxhEc
	9Jhvsei4+cOnu1KE/bUgYRyWWyIsV5UcGseG2w49bXX6msryp6HT4ToazqrvHgeBSwo43ITRUeHdq
	lz2BTb4SqXYvkmh8X9ikMvu4VMIX4q1RYd5Od+L220VXInjs7Y0aPYnsJKr4ECNdo8fKlDHSz0u+5
	pMFMP26u5HrDRb/qYaZQqrjKdz7vIGKH9EtjX+FuLo1Kjp9cSvizasDHEh0Je2O7+OJ9vwdWilVG0
	xqNVLx2/GgA9pYjMPFpdexJx7HeKLFURJe6WXcGhFqcGpF2QmEzu/2y9vpfZBdpnShbfgFFiFcFAi
	RM2OOeSQ==;
Received: from i5e861916.versanet.de ([94.134.25.22] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sjf5E-0004Es-Rj; Thu, 29 Aug 2024 15:21:04 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: marcin.juszkiewicz@linaro.org,
	didi.debian@cknow.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] arm64: dts: rockchip: drop unsupported regulator property from NanoPC-T6
Date: Thu, 29 Aug 2024 15:20:59 +0200
Message-ID: <20240829132100.1723127-3-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240829132100.1723127-1-heiko@sntech.de>
References: <20240829132100.1723127-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_062106_730049_883D5D46 
X-CRM114-Status: GOOD (  10.74  )
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

regulator-init-microvolt is used in the vendor-kernel, but not part
of the specification.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
index 066b964a7ea8..94a1c83a322d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
@@ -735,7 +735,6 @@ vdd_vdenc_s0: vdd_vdenc_mem_s0: dcdc-reg4 {
 				regulator-boot-on;
 				regulator-min-microvolt = <550000>;
 				regulator-max-microvolt = <950000>;
-				regulator-init-microvolt = <750000>;
 				regulator-ramp-delay = <12500>;
 				regulator-name = "vdd_vdenc_s0";
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
