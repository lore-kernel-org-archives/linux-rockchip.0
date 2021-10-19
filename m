Return-Path: <SRS0=otL+=PH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D49BC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Oct 2021 22:00:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2FA4660FDA
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Oct 2021 22:00:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2FA4660FDA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x6/d2diqqgTC0AwbnyEkOK36w4vwRzp43AaTU68aj5M=; b=wkiGia5/EwS6cQ
	SuVhyaTwREo92OuMyUFAEaHlaZXJMke3RttvX7iZ6ppbhCetp+wP0NzQTHAgryAGolioWpRPr8Bqa
	yjYRAS/Lt6PEyPQAWwK8AgGZTi+ZjtP+eJiH4GMdXd/D0puZXnwfWZK/HvZDtTk882s6clzgQylG5
	nzNX86FCOLlAsuwNDZ6nOLDw3W+A2X5Ii++oF/gAjegyzYxXoton/PnPqq4eLXggmefeHypIfo4Sk
	HzWEL/d4eWtI2Jwyi+q8LkuTKcnhdYhDlDcvdX771PJCkq/YhcpC+i65AWiL5hB2opn5q/Z6FozHW
	7viWXFDhM90u9a/5zWJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mcx9I-002jH5-CN; Tue, 19 Oct 2021 21:59:56 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcx8P-002ikX-LK; Tue, 19 Oct 2021 21:59:04 +0000
Received: by mail-wm1-x332.google.com with SMTP id
 a140-20020a1c7f92000000b0030d8315b593so5820655wmd.5; 
 Tue, 19 Oct 2021 14:59:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uCZAM1vvyZIsuTswhisB5UCt6gNS7FCdaVGaaFS3YV4=;
 b=N9x2DcoC3Zq7l+EXYxzzDvYTGb6e0oKBL/owgOeCIM34js4lC6qA/TCA1k1opUXEUK
 iJyLxAfyGd/1irS6OFaK6/VaWbkuhUSrXcg5VejFWZOTCNEheBAERgim9vZebgpODSTB
 0zfpE8VREGwYumyR5wQB7OI+ZVttjvlGw4zUdGt1trfhORiUkTkmFI/a6PYbJB9TlFRb
 I4/WknNvC/do0cuW/idOQdbadmwvcobJTrlHbgf+cZmrX4RxL7vwtJjMvYku0e8WGnjY
 iS38SlU6UOMwxnLaCRBqu8RVDT19yUl9mcbSU9vrJpfbI91HZeeKpD3RKOsshqR4E+dm
 lwBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uCZAM1vvyZIsuTswhisB5UCt6gNS7FCdaVGaaFS3YV4=;
 b=ZtozeJ/Sb8WHJMd0KU8pz9+jU0TGMxtub9urEkLpu0peP+z2iuJ2IC1R1fHuveNHM9
 qHCTWYIko+2U8h6BiSzTBkwKYqtNCH+3e85ImJhtwyX6QbEcNfwrOrShf+PSsYkfunx1
 0CBcvHQB3SMQ983RS4X8YXtjeKYhUhJtCq45tsXs2DiMPP1/NiiNRQvqFnX+mlbRos0f
 1XrbESWVB/tYzAtCRK2IIyD7dtp8BYkhoudKR0Z0Hc1Q6BomDWFG9H0VV3yNWRgHwdp3
 FN+/YFLCLWmVhGZclMvqFYxIKZpr9nWPpTx6TYTWKFpPCTm4wtv3+U6EakPiCKZdZ84f
 SKJw==
X-Gm-Message-State: AOAM532tmkKpoFPpmG1bg92UfYgCYfs57494dXW9qNEbXkobGNhzn4uH
 U3AFIO+Y+oMp3e1o2nrxeyTtLUEVnPd/ho9y
X-Google-Smtp-Source: ABdhPJxx3QAL6lyP35xXPqTB47LPyaFAa19cRinJBEnDBpBQBMv+2xmSW5ECPRIbVOY9Eer57KphDw==
X-Received: by 2002:adf:a413:: with SMTP id d19mr48203915wra.246.1634680739774; 
 Tue, 19 Oct 2021 14:58:59 -0700 (PDT)
Received: from apple.sigmaris.info (ebrouter.sigmaris.info. [82.69.107.165])
 by smtp.gmail.com with ESMTPSA id s3sm178540wrm.40.2021.10.19.14.58.59
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 19 Oct 2021 14:58:59 -0700 (PDT)
From: Hugh Cole-Baker <sigmaris@gmail.com>
To: heiko@sntech.de,
	hjc@rock-chips.com
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, ezequiel@collabora.com,
 Hugh Cole-Baker <sigmaris@gmail.com>
Subject: [PATCH v2 3/3] arm64: dts: rockchip: enable gamma control on RK3399
Date: Tue, 19 Oct 2021 22:58:43 +0100
Message-Id: <20211019215843.42718-4-sigmaris@gmail.com>
X-Mailer: git-send-email 2.24.3 (Apple Git-128)
In-Reply-To: <20211019215843.42718-1-sigmaris@gmail.com>
References: <20211019215843.42718-1-sigmaris@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211019_145901_757551_331C36C9 
X-CRM114-Status: GOOD (  11.48  )
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

Define the memory region on RK3399 VOPs containing the gamma LUT at
base+0x2000.

Signed-off-by: Hugh Cole-Baker <sigmaris@gmail.com>
---

Changes from v1: no changes in this patch

 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 3871c7fd83b0..9cbf6ccdd256 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1619,7 +1619,7 @@ i2s2: i2s@ff8a0000 {
 
 	vopl: vop@ff8f0000 {
 		compatible = "rockchip,rk3399-vop-lit";
-		reg = <0x0 0xff8f0000 0x0 0x3efc>;
+		reg = <0x0 0xff8f0000 0x0 0x2000>, <0x0 0xff8f2000 0x0 0x400>;
 		interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH 0>;
 		assigned-clocks = <&cru ACLK_VOP1>, <&cru HCLK_VOP1>;
 		assigned-clock-rates = <400000000>, <100000000>;
@@ -1676,7 +1676,7 @@ vopl_mmu: iommu@ff8f3f00 {
 
 	vopb: vop@ff900000 {
 		compatible = "rockchip,rk3399-vop-big";
-		reg = <0x0 0xff900000 0x0 0x3efc>;
+		reg = <0x0 0xff900000 0x0 0x2000>, <0x0 0xff902000 0x0 0x1000>;
 		interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH 0>;
 		assigned-clocks = <&cru ACLK_VOP0>, <&cru HCLK_VOP0>;
 		assigned-clock-rates = <400000000>, <100000000>;
-- 
2.24.3 (Apple Git-128)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
