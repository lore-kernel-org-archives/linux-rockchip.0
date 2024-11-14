Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18BA1D637DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Nov 2024 02:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hyPenaryxI9f4FuZBRB1uJSW3eRYCFD3G0UYMLnTmMw=; b=ZVW2MI/HQUHwq2
	99Lu2xMlMSKOz2zoerNWJqMo/nChbHiYmB3WbwaQkm5PfY9sSb4U512AsbJUdKQbDo4wm/C4+vU1B
	KNPLfWyED1+8IG6tPjZ60bR1sfaWB1dLR7umLEVib7mixrQDaO6l/91TqWtq+79hED+i4TCEMILi5
	F4sAY5Kw1nTFP60myARbq7qWphrdlmjwmuNcfMf/f2EHhFerRNQrVURcrjLadmNi9gvNeGUFJYm9K
	3a4cRDlP1GzTVK4gC5+1UUGNZXk0HahRZZ7KiAY9X+LEeltom/W9/Wt2RDswATG5ZNLzwKWvxWueo
	wKKIdwMBd+mv6pbC/uyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBPlw-00000008ZuX-06To;
	Thu, 14 Nov 2024 02:39:52 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBPki-00000008Zna-15c0
	for linux-rockchip@bombadil.infradead.org;
	Thu, 14 Nov 2024 02:38:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=E4XFYgBDp/m/OCIQzCNYg//OhoLLl4paANESy+pjt8U=; b=jcmaabvviFMdXGZzNCgENLgZ/d
	sUc8bNHCHEBrlmA2syscCVREj6QrKZiEMcyKdc/Gso1Vget94M+ZIT0AsqER5XcK9vWErhqr9iR1b
	F76j6RFdZSlR2L0lPDOQm4tEWhczGlHHL1AGhnRpfB3oa23o+5C3lfNpeNkCu006kuBuL+qpgv7mj
	UmtJQ8KBalcqbGvg3n17+4w77dzl+a6Q3RavJ5kIFfKbe5oiMTldCB2V5uQB/E2kpiW0UFRVHwdK5
	unxRLnOZ2opcWK1jMVmqmwEw5qMIkW/5nUSNYxdvcvjTKjfj2n0o8TywIEbGxecJ5TiaIXhjSnFvM
	pWkwDXcw==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBPkc-0000000HLk9-0lUG
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Nov 2024 02:38:35 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AE2bplp029356;
	Thu, 14 Nov 2024 11:37:53 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 3/9] arm64: dts: rockchip: fix pmic dcdc-reg10 label for Radxa ROCK 5C
Date: Thu, 14 Nov 2024 02:37:40 +0000
Message-ID: <20241114023746.4867-3-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241114023746.4867-1-naoki@radxa.com>
References: <20241114023746.4867-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241114_023830_762770_DC3176EB 
X-CRM114-Status: UNSURE (   8.57  )
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

fix pmic dcdc-reg10 label to match with schematic[1].

[1] https://dl.radxa.com/rock5/5c/docs/hw/v1100/radxa_rock_5c_schematic_v1100.pdf

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v2:
- split from "arm64: dts: rockchip: fix pmic properties for Radxa ROCK 5C"
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 3eed50253442..7e7ba14ba151 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -691,8 +691,8 @@ regulator-state-mem {
 				};
 			};
 
-			vcc1v8_pmu_ddr_s3: dcdc-reg10 {
-				regulator-name = "vcc1v8_pmu_ddr_s3";
+			vcc_1v8_s3: dcdc-reg10 {
+				regulator-name = "vcc_1v8_s3";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
