Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67F7BCEF17E
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 20:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1IM0OrzlMARCyTP/cKzBRYf+XaNpIXTDJQSS01m+dqc=; b=UFNebRcb+IkkRp
	VmkoFqBCKaT2UNcK0FcxAQcJCqYbJYo3fH15TX5OfMdz7Pn2X189dy7Pe885zatqOzFWKam056v2z
	JQvESY3zf7n6fdDjGgYVSSOP7Oja+fdjKfcDo6k5VMbNtsJqvQpPdgH2K28xtKDyOSN3pmFPz5doG
	ojAm2nlS+l3rl/EEvYogG2IVtwrd4JMDPqJQWozCDyfAUyAnm/nwhtHjc7VkNvZlf4U8+ZnUosZDg
	jwMPwvwTUH8LZLqTwfmahyBKqh7Af3hZ9FPVu5qDHdjsFTgG2thQckpQXUfEObKOnyp3GFgMp2hQb
	Md9zB0iC2PZr96ifVoeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syH1D-000000075Rs-0dE8;
	Tue, 08 Oct 2024 20:41:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syGzr-0000000759G-0r2r;
	Tue, 08 Oct 2024 20:39:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=277QVKUgBZx9Kqmh10Kpiu8kjEqYEgwLRvpKlI61ue8=; b=o7h9IlgjVc1SIzTNCKVOgehWbk
	xYBuL9RXaDHs+VW9PS7Hvn9QW/UIePNVYtyJIvrn8PT67J0IL1miaGCaoWdgfN6TkcStuFP40KVxV
	3lQg5oTlOGxeG/Ekm7kLUnE5m4NbBL8w6y74XTdbiVMxZF5h321DE2kIEiZ+AmtFmMVVxZ6rbVP2+
	8YVDf3qgN38u6F+DL+JGrlSMX/MPcNWxzhdv2EGqr/+VJ/kO0WynBGIkULRnlzo6Rw4+694OuGdBf
	ipN8G4hNG/tjsjcds4ZFo0Q4pTBBr1KMSRmBv/3fTBEAq4jQn6sHgjJPjI9fbzYhl7YVzq41v6dPf
	yi9joteg==;
Received: from i53875ad9.versanet.de ([83.135.90.217] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1syGzp-0007ua-TI; Tue, 08 Oct 2024 22:39:53 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v2 01/14] arm64: dts: rockchip: fix i2c2 pinctrl-names property on anbernic-rg353p/v
Date: Tue,  8 Oct 2024 22:39:27 +0200
Message-ID: <20241008203940.2573684-2-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241008203940.2573684-1-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_133955_268184_F167F749 
X-CRM114-Status: GOOD (  12.02  )
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

We want to control pins, not beer mugs, so rename pintctrl-names to the
expected inctrl-names.

This was not affecting functionality, because the i2c2 controller
already had a set of pinctrl properties.

Fixes: 523adb553573 ("arm64: dts: rockchip: add Anbernic RG353P and RG503")
Fixes: 1e141cf12726 ("arm64: dts: rockchip: add Anbernic RG353V and RG353VS")
Cc: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Acked-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
index a73cf30801ec..9816a4ed4599 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
@@ -92,7 +92,7 @@ button-r2 {
 };
 
 &i2c2 {
-	pintctrl-names = "default";
+	pinctrl-names = "default";
 	pinctrl-0 = <&i2c2m1_xfer>;
 	status = "okay";
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
index e9954a33e8cd..a79a5614bcc8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
@@ -79,7 +79,7 @@ button-r2 {
 };
 
 &i2c2 {
-	pintctrl-names = "default";
+	pinctrl-names = "default";
 	pinctrl-0 = <&i2c2m1_xfer>;
 	status = "okay";
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
