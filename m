Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DFB6C00140
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Aug 2022 12:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v9SgQYrURZWkpKqhjLBEAELaWjhGAhec0hDCFC2zX4M=; b=yQ60l4S31n+zzg
	ZcQVkbFhxD5MtIWsi2QEQYQ0b8ol0TDBRt0EFw5MOQnWaIUEII3zK5LWdglBvYjkPraloV11xFTCc
	ZAI4c/Ml8t4gzvzfjCj/fk+KlNeKf/aBKVkhJ2S06fnlH1JKWCzh+x86tjsICBkD1JEAcglVgPs9d
	x0OTFZCduwVDljtvAJI6IEwRxGhRd/5GlZw6L2/I93ah0ongNUp3W1EVXcWSRhWcOIfZaq0aPZJI6
	khC8/f0hfk9RDQ7za8TquJZ0TXcMVHKOTS/huydLkzD8npkJJE4H899jktd8sISWoAX5FcmbBEs7G
	+Uplugb16LK+Swmwtzhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPjvu-00A7jh-U3; Sun, 21 Aug 2022 12:20:03 +0000
Received: from mxout1.routing.net ([2a03:2900:1:a::a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPjvY-00A7ao-PK; Sun, 21 Aug 2022 12:19:42 +0000
Received: from mxbox4.masterlogin.de (unknown [192.168.10.79])
	by mxout1.routing.net (Postfix) with ESMTP id A8E1D4043C;
	Sun, 21 Aug 2022 12:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=20200217; t=1661084377;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=+mX+E2U5Kj1obVCkKq6AgjmAmQIXffJWSfiqX88EuGE=;
	b=mPrTo19/zdfuuf4XSdUu3a9C83/V1IlITtVj2wWpXYYZN3TBXEOMtBRVOj4RKD7ppBr/Uk
	0I4VNR1Imj9BFqN+2LsE9Oa9Fw7Rih1GEJ0QqpvnKltCReCBNZev18dn4h4bAVPynni9hT
	elkbmT7JDNgkEiTv87smlhvUdvfP4no=
Received: from frank-G5.. (fttx-pool-80.245.78.134.bambit.de [80.245.78.134])
	by mxbox4.masterlogin.de (Postfix) with ESMTPSA id D954580238;
	Sun, 21 Aug 2022 12:19:36 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: rockchip: fix upper usb port on BPI-R2-Pro
Date: Sun, 21 Aug 2022 14:19:29 +0200
Message-Id: <20220821121929.244112-1-linux@fw-web.de>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mail-ID: 8810f431-9f53-4528-8e8f-6e28cf61227a
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220821_051941_038439_6986F69A 
X-CRM114-Status: GOOD (  11.11  )
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
index 5e34bd0b214d..93d383b8be87 100644
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
