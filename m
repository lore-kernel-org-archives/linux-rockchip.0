Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC561C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jul 2022 13:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sjvm18MHOrz3Gv5rDr4dPej6fdy322C14T8Xt+aUqJs=; b=JJhgyVWt+EcyQI
	VOU/XjkFTjKm5A9XZLb6oLnfBImXOqGacN9XyFKque507+CAIGyzyGSqw9Q2vf6YdZX5Xi0woMRTs
	cF5Xnk50uAWVHKrYUg4p4eeA4UM9iOlaZS5OjEwNCVbKuXgIxCmK1l6YpBq/gU7ZCQ5HWUvmiFB2u
	2oXYUWfGsQ9KS0T39zFI7Ai0pUrxIWxym56nyQUxKdvT+xJfd8ZQUIAjfhaUnXRcoUWH8PLv4qn8x
	UTUn9SXTPhPiZg0rB2hkfCkq4g9LHNAjiNUkFXkAFiJLA8Yc460eCndY8vnCzELQHhChZZgDUIBKW
	d/ucp1V8imfuQGfjdX7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9o1T-003uNj-ID; Fri, 08 Jul 2022 13:27:55 +0000
Received: from mxout4.routing.net ([2a03:2900:1:a::9])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9o1I-003uKa-KE; Fri, 08 Jul 2022 13:27:46 +0000
Received: from mxbox4.masterlogin.de (unknown [192.168.10.79])
	by mxout4.routing.net (Postfix) with ESMTP id 1379A100463;
	Fri,  8 Jul 2022 13:27:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=20200217; t=1657286859;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=fR7O+l5or7VHcLvd1mcGAyTpT5RtG0rRA1NvN2Fb1Zo=;
	b=qnxo+P6VXmEXFjzvIT0zNhzr/LOw53Z8vsAFhQcyxpkgXl6JvRueF63cVywimnh48DjzI3
	CNHaMB2QfxXjDorcOroL7wVhwqssxPDys++4p268BZz5LbAee4Yo318h4lJiTOrXDezYpU
	unFpu5JudGO8z4HgfpEhS8wGeHsn4bk=
Received: from frank-G5.. (fttx-pool-157.180.225.69.bambit.de [157.180.225.69])
	by mxbox4.masterlogin.de (Postfix) with ESMTPSA id 5199580798;
	Fri,  8 Jul 2022 13:27:38 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Frank Wunderlich <frank-w@public-files.de>
Subject: [PATCH] arm64: dts: rk356x: fix upper usb port on BPI-R2-Pro
Date: Fri,  8 Jul 2022 15:27:06 +0200
Message-Id: <20220708132706.81450-1-linux@fw-web.de>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mail-ID: b312386b-2fd2-4af4-91ee-331822f9d4ad
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220708_062744_850653_AC7E0292 
X-CRM114-Status: GOOD (  11.37  )
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

From: Frank Wunderlich <frank-w@public-files.de>

- extcon is no more needed in 5.19 - so drop it
  commit 51a9b2c03dd3 ("phy: rockchip-inno-usb2: Handle ID IRQ")
- dr_mode was changed from host to otg in rk356x.dtsi
  commit bc405bb3eeee ("arm64: dts: rockchip: enable otg/drd
    operation of usb_host0_xhci in rk356x")
  change it back on board level as id-pin on r2pro is not connected

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
for hostmode to work this fix is needed:
https://patchwork.kernel.org/project/linux-rockchip/patch/20220708061434.38115-1-samuel@sholland.org/
---
 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
index acc6b3a98415..02bafb938fb6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
@@ -678,7 +678,7 @@ &usb_host0_ohci {
 };
 
 &usb_host0_xhci {
-	extcon = <&usb2phy0>;
+	dr_mode = "host";
 	status = "okay";
 };
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
