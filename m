Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89403C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Oct 2022 19:02:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3SWpsTVg3KrOJ4/3Aa1dFffsYy4jVpbQZ4XnviuBwbo=; b=r1SdAwZvAwq1hk
	9Lq9AdtD6Ls41pwZ2hQr1mYBV804rs0IFw1WmcdcOXqGF5U0SCj4Yoo+8lpP/N4gJEyerzO+Y7yUz
	0mCv1fbgUEPOlIQ/IwdImjK2HdmLFbxmBq5fElsrneML/DqxUhE76SXsYWFQbCkBThfKRAVn11I8V
	OOGgJfq1L0Ljiu/h2HYnedoiGB8Qiit48GVTnF/nYDREOVTOgh4wkqUPgPoM9kA3jNZbfcUwm0WeM
	P9gDkPHzE3PVC7lyldnksH7Xlod0FoolCoN4Wswu8BiPdchQulSJ/pkZsDzzYdJF/My3cCEHOhuHc
	evoSVv1bkT97akJIUcTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohy2h-001tCq-0o; Mon, 10 Oct 2022 19:02:23 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohy2e-001tCE-Ec
	for linux-rockchip@lists.infradead.org; Mon, 10 Oct 2022 19:02:21 +0000
From: Furkan Kardame <f.kardame@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1665428538;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=S6EYX/25onRq61ZO1nERvuEdAfDysESbF6EbgQnMp8o=;
	b=DA53R7sb7K6/cVbsuDNDGSOzGtOdEEsRz+NQpqZ25XxkQTpsJFYTLz5oMEdz+dSKrckgOc
	6X4kGWOpap0Gx42o8UjQ/DiEPTDn16FjkHUzwt+YcYSay7gE8v0rqF12mgDFut2YedeYdB
	L/E7et/3lJ2Dp4MrVzI/iDaHRDR15cGNCThBF6JSC2jPnIbnKA01piZ4nEGdqtICYx+tOS
	3+wjzmW6eu5EzSXBZ5EjppGBvnArXEAyWlTXalrkBly6sP15yc1VUvce7cYX6M/dphpSX3
	bSkuzBqoXYj8pkCp75fav8+OZ8Rn1+rMdb0vinaRiMtgyC6X1PwHMencwjEycg==
To: pgwipeout@gmail.com
Cc: heiko@sntech.de,
	linux-rockchip@lists.infradead.org,
	Furkan Kardame <f.kardame@manjaro.org>
Subject: [PATCH 1/3] arm64: dts: rockchip: Fix gmac failure of rgmii-id
Date: Mon, 10 Oct 2022 22:01:40 +0300
Message-Id: <20221010190142.18340-2-f.kardame@manjaro.org>
In-Reply-To: <20221010190142.18340-1-f.kardame@manjaro.org>
References: <20221010190142.18340-1-f.kardame@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=f.kardame@manjaro.org smtp.mailfrom=f.kardame@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221010_120220_660683_58D4B60B 
X-CRM114-Status: UNSURE (   8.59  )
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

Lan does not work on rgmii-id, most rk356x devices lan
is being switched to rgmii.

Signed-off-by: Furkan Kardame <f.kardame@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
index dba648c2f..72c91d2fc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
@@ -142,7 +142,7 @@ &gmac1 {
 	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru SCLK_GMAC1>;
 	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru SCLK_GMAC1>, <&gmac1_clkin>;
 	clock_in_out = "input";
-	phy-mode = "rgmii-id";
+	phy-mode = "rgmii";
 	phy-supply = <&vcc_3v3>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac1m0_miim
-- 
2.37.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
