Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5589C3DA59
	for <linux-rockchip@archiver.kernel.org>; Sat, 20 Jul 2024 21:12:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A3YTYU7Gwrc7zCv+Dm9/ngs/FJFHaqt1asJiJlnY8aU=; b=q83BeYAHBmPL7z
	KIneoL/5x8fyDCpF927JNXUrVEzuQTfhECWUu3HsEoC7/h/2fLXkeQAwsKmMWtoTSGBJvCKPRU00l
	MFYU8MSJy65cIrawan7aO81ZZo5Esorw5T5nNc4VmvYGiInNuON1DFWjNs1+ccaN/76dotwn4zt8H
	8hBDFaguXzIVzAcVbgXiNcJqzEoySKBvsgfcPZ2uyC9XCiFVjbl+AgSilQy9Egmg/aWNScEM4oY6J
	8b3LzcPzuA4JpHXdgZ5Uw1/44n3UscPt3DxVc6M2MXhu1j7p14FoFZW2mo/e1wBB2V6SNuog+wm56
	+moyLydjmTsiTOTmHagg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVHNZ-00000005gSv-3XH5;
	Sat, 20 Jul 2024 21:12:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVHKF-00000005f3M-0f7p;
	Sat, 20 Jul 2024 21:09:08 +0000
Received: from i5e860cd3.versanet.de ([94.134.12.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sVHKD-00061D-RD; Sat, 20 Jul 2024 23:09:05 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: ukleinek@debian.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 7/8] arm64: dts: rockchip: add board-aliases for Qnap-TS433
Date: Sat, 20 Jul 2024 23:08:55 +0200
Message-Id: <20240720210856.778014-10-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240720210856.778014-1-heiko@sntech.de>
References: <20240720210856.778014-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240720_140907_294945_1327A0F0 
X-CRM114-Status: GOOD (  11.42  )
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

Add the aliases for the internal network interface as well as the
emmc on the board.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
index 69bed01cbe4ed..c05433ca7dda4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
@@ -13,6 +13,11 @@ / {
 	model = "Qnap TS-433-4G NAS System 4-Bay";
 	compatible = "qnap,ts433", "rockchip,rk3568";
 
+	aliases {
+		ethernet0 = &gmac0;
+		mmc0 = &sdhci;
+	};
+
 	chosen: chosen {
 		stdout-path = "serial2:115200n8";
 	};
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
