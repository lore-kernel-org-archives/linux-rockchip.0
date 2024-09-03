Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65F1ACD3420
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 10:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E5hD8zsgKltb/Sf5BZpCO8+LAAG7ua9WB4N3bPF/kkI=; b=nJX8+HE7rIJAfb
	bV1zkNLvoWqPS70LiQWam+KS5a8boou6Rgg6IMH1wQWqCU2291dDOACew8opttF7A+XEJDbjEElJP
	DcmifS14sCqnRuvzRv72oBdEDGAzR8gQj2VrStPbUMCu1v1t6Wa9vQaSgQL5lglrzwtT5bfnQtoxt
	b2Lb3MB30xBx5eQymCgr85WJqt25uyp5QvbHmbJ8cTMihyJhQyacf1bCq2RZu5Hm9w9pIim5pQKnv
	SCcOcfM2wGGeD3VWkBfUBXQTvtHlo9bnGJ656nC7NujfUNTI++HO5mMz5uFsRNxl5OJ/2nl1muMhx
	w9b4G8WHaJti8Px5ocyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slREE-0000000HRW1-1SaX;
	Tue, 03 Sep 2024 10:57:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slRBb-0000000HQgl-3GKU
	for linux-rockchip@bombadil.infradead.org;
	Tue, 03 Sep 2024 10:54:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=LI6rWAJozlYK2YSfUr+lCWS6YZ0aqIMdjWAwWkl2+FQ=; b=kx2XywqFe1aESS8tsFDpc1S7nC
	cpDqFs/zkRO3qi+b+PreoP2jpdaX0tStf6WrPxVTNstiwcTipC9pVUFNCl0WDOnMZ5FUDbqIkQsAN
	IIJgx6S2r+Gl3cbnuSkQIgpY0SSkjFcKufVZ9gYeTDH0l2K+MuVITV2GB6APfYw8qNe7eCiKBYVFs
	L8dzOGLR2lWwkCgl+OfX/BOBpb9navAWx0noAH1xkQwEPEnEzvZTIl5UNW5Zhb/xlTP5qwiRPs3LT
	4Aq0ipghz9zeKS0aRTFSttYIfTCPnqmtFlAvki1Kd9e1ZTDZwJxloFs/Pvf/0IbeIznQJNDPd1n15
	DbEoJCOA==;
Received: from omta034.useast.a.cloudfilter.net ([44.202.169.33])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slRBY-0000000CJlX-2Atw
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Sep 2024 10:54:58 +0000
Received: from eig-obgw-6003a.ext.cloudfilter.net ([10.0.30.151])
	by cmsmtp with ESMTPS
	id lGxnsRsph1zuHlR9osd6gU; Tue, 03 Sep 2024 10:53:08 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id lR9kstGaDV2ivlR9msUyUI; Tue, 03 Sep 2024 10:53:07 +0000
X-Authority-Analysis: v=2.4 cv=OLns3jaB c=1 sm=1 tr=0 ts=66d6ea93
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=EaEq8P2WXUwA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8 a=jOwBCQwwsqbqoLW4yoUA:9
 a=HjVMtnDHQlM7PJrv9UYS:22 a=rsP06fVo5MYu2ilr0aT5:22 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=LI6rWAJozlYK2YSfUr+lCWS6YZ0aqIMdjWAwWkl2+FQ=; b=d+LxL8/v+ZrQg7L53jovPW5YOF
	zoo0oaevWBkcNko5hgtnN+xwtmhhhgmld9sSHrGjIGZ6vNP24TL0YERlKA6y8FrbIM/U/gtCsjej0
	6pwEod+/T1pDyzs5nSfHb5+iSbS92itRS6AehcVhY9LCsuL92FTzQQZiUGKfVJuEF1lXdlszVLmSk
	BRKC06XDjiaqavp9X+I1VKnK9t08XfqF0hrS+2fXHUiUoIlDFWcwmEb2ar4OCB6yDvjDv13MwFGwA
	Ay85U6K0eitmUq8+MTiJRL8tpkv1Om8dRjigoTUnMygFTBj/ad+z7GbmQlCXN8uuHS6FXhfBiQ+7H
	JMLsqlxQ==;
Received: from [122.165.245.213] (port=41440 helo=localhost.localdomain)
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1slR9j-000Elu-1Z;
	Tue, 03 Sep 2024 16:23:03 +0530
From: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	alexandre.belloni@bootlin.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
Subject: [PATCH v2 4/8] ARM: dts: rockchip: Add watchdog node for RV1126
Date: Tue,  3 Sep 2024 16:22:41 +0530
Message-Id: <20240903105245.715899-5-karthikeyan@linumiz.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240903105245.715899-1-karthikeyan@linumiz.com>
References: <20240903105245.715899-1-karthikeyan@linumiz.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1slR9j-000Elu-1Z
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (localhost.localdomain) [122.165.245.213]:41440
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 44
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfPrrvByUyphppWvupsYq5TGl4QSkdQlxyRwjjUMC39ATfeaXmqxBpIOLCf1m8aZ8Vx1rEMs9Id4VKmpPALr+mesSdaKQPj6ucqgczy97GwhNU1nMXDUY
 Fu4E0H1CzWz34BgYM8RYIkyzDIu7GCkcOvOHPsrn+oLBpJPRTUV0oEe3nrHq9HYdY76niARE8WaBgtbMXpzFVyNPvPNI0/XBhkUzhacYncqeZk0OheraFzbe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_115456_816807_4402C4E0 
X-CRM114-Status: UNSURE (   6.40  )
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

Add watchdog node for Rockchip RV1126

Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
---

Notes:
    v2:
    - No change

 arch/arm/boot/dts/rockchip/rv1126.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
index abf442804d27..283985608428 100644
--- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
@@ -544,6 +544,14 @@ timer0: timer@ff660000 {
 		clock-names = "pclk", "timer";
 	};
 
+	wdt: watchdog@ff680000 {
+		compatible = "snps,dw-wdt";
+		reg = <0xff680000 0x100>;
+		clocks = <&cru PCLK_WDT>;
+		interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
+		status = "disabled";
+	};
+
 	i2s0: i2s@ff800000 {
 		compatible = "rockchip,rv1126-i2s-tdm";
 		reg = <0xff800000 0x1000>;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
