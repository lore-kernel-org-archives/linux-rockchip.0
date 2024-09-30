Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06A48CEB2C2
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 22:15:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Phv5WvnjiVpEQf7fieuTjyjJ3syV4DRCQCe56WUIFqU=; b=q/0xuGOXshmrxA
	RxseW2+zpHIMQCqXCcFnKHC/cMM4btl5+9aiOljl/Z/I085I4cAGwmddpLDxN71RNysecXDO2Btw4
	0uyQdLwd0nYnSaYtHXqyC9dfNvlRlFO6BJnmFhOyQHM9NvXf1iCtcRSE+ByqltpRVZCGXUpNU5Gri
	GGBlrM/laQCKW//F8I05LSATcTlpIECfRZ63GnnFePFKLKP9JJg5yKIUZPlQpJMecJB3ZTyOW1ybE
	89bWGZAj1MgAOWGyH9arFA7fRYZwYa292oTzkhGHEjkP/pUbYvgRGTk+F8TJhORa4Qvl31VYswTSe
	iQXl5logxetsGq7MmsMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svOg0-000000010DA-344O;
	Mon, 30 Sep 2024 22:15:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svNWD-00000000qKi-3uQx;
	Mon, 30 Sep 2024 21:01:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=rD1V2zJVVln/oAZ8iEetZQPLFBMCPxyCjDTaqdF8gR8=; b=ErpyWS0XnDMbNh7FpVJp01keXh
	wY/aiY3ETjGwQFV3BWiMtFBEKfeseSuHlp9k/y3i2jUDX97XamdmvlsyskhmnTnsz7fK5zj42kJS2
	PYJ00wK2P5ssEaOQK2lttSfrR8J9D9fz/6YE1jnfPzd7RFlousN4sdb2sOdPDqXN12U/7WU1GNMVL
	ookmtXE4lFdDAirQexs/JwUGi+y3hQBCyHoUawH/Yzayarox08cdf/Ha+jzYgCHshtaJMaMgNi3qN
	mhNrR4giMunW0hf4yEPJpDyv4BOJq3kk49iTXTimRyh/RQ+GkrJkaSdrlST/+4KtJiRjyzJ4C/l7v
	k3yYFj7Q==;
Received: from i5e861925.versanet.de ([94.134.25.37] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svNWB-00087h-SC; Mon, 30 Sep 2024 23:01:19 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/8] arm64: dts: rockchip: fix i2c2 pinctrl-names property on anbernic-rg353p
Date: Mon, 30 Sep 2024 23:01:05 +0200
Message-ID: <20240930210112.1993625-2-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240930210112.1993625-1-heiko@sntech.de>
References: <20240930210112.1993625-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_140122_021575_7BDA7F81 
X-CRM114-Status: GOOD (  12.26  )
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
Cc: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

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
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
