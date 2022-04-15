Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA409C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Apr 2022 10:51:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F9oLN1LeDlhlSFGbxeSurgNwFbukZDksQLB7Y/EVMXU=; b=WLzgD8HyiOmeHC
	OlDMQFv99IO1PkpeqJ5Kt2FLaXhbYyZOboQTKqOVw3uuxJuMAKmFPinC4VsFzv6VBXLzQWaAgo/Zz
	sAlxM9NrsODORUmJSjIioZ4yZ2Q4zkaFtuRB8k+0eON+HiOH/R/Va1jxZM8duqt7re1QLOkttXMuh
	4A1mDW5KOdHq8oj33E1AQQlkwvTcABaEPghNsb/0LpRm5mKD1UkT22CTZgr+huTNUS61L3qwvtlBL
	SO3rZLxrBt3iTRp5FEhtX/t9EwVnFm9KtHbKAQpuRc8qBgVsSjjrr448s3VU/bVkeORXkfD2hfcO8
	VvqhQQPkbo0Nj/UYak1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nfJXX-009i2L-1W; Fri, 15 Apr 2022 10:50:59 +0000
Received: from mxout3.routing.net ([2a03:2900:1:a::8])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nfJWr-009hfM-4k; Fri, 15 Apr 2022 10:50:20 +0000
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
 by mxout3.routing.net (Postfix) with ESMTP id 58A216046B;
 Fri, 15 Apr 2022 10:50:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1650019811;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5/r9DJSM9esswD1O3AzR1QO335XskjFIKH/yz95f+Oo=;
 b=q1nObm52xIBoPNRhN+q/auCKEUXd4PFVqo11iXybCFUGnQt9STlVnRFZeQZ2hU2eLIna+h
 HZzRNAsE3nmZnzbed15gt4u8ymY7aFnJRB221ITCRvbJ1IXgkxSKEIxv3q6vx7l3Zt6utN
 v75mWpqkg4IOxlNKS2mYWmyEx4Momp4=
Received: from localhost.localdomain (fttx-pool-217.61.153.244.bambit.de
 [217.61.153.244])
 by mxbox2.masterlogin.de (Postfix) with ESMTPSA id 25BEA100501;
 Fri, 15 Apr 2022 10:50:10 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] arm64: dts: rockchip: set display regulators to always-on
 on BPI-R2-Pro
Date: Fri, 15 Apr 2022 12:49:49 +0200
Message-Id: <20220415104951.27104-2-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220415104951.27104-1-linux@fw-web.de>
References: <20220415104951.27104-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: a209ccd2-0066-4cf5-b936-ad920be5a2a8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220415_035017_374120_B48EBAA2 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

From: Frank Wunderlich <frank-w@public-files.de>

Set display related regulators to always-on on Banana PI R2 Pro
board.

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
index 2700fb18a3bc..0950f9659bb4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
@@ -225,6 +225,7 @@ regulator-state-mem {
 
 			vdd_gpu: DCDC_REG2 {
 				regulator-name = "vdd_gpu";
+				regulator-always-on;
 				regulator-init-microvolt = <900000>;
 				regulator-initial-mode = <0x2>;
 				regulator-min-microvolt = <500000>;
@@ -274,6 +275,7 @@ regulator-state-mem {
 
 			vdda0v9_image: LDO_REG1 {
 				regulator-name = "vdda0v9_image";
+				regulator-always-on;
 				regulator-min-microvolt = <900000>;
 				regulator-max-microvolt = <900000>;
 
@@ -369,6 +371,7 @@ regulator-state-mem {
 
 			vcca1v8_image: LDO_REG9 {
 				regulator-name = "vcca1v8_image";
+				regulator-always-on;
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
