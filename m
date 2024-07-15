Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0F68C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jul 2024 17:44:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IccgrBu2X3KOUm3cyKMgalDFIh44TPqI1RKgS4nCDCM=; b=z8xwCx9+s6H9og
	pJHhju9goL5XUrZi74OYqBAtDmNz++Xjnf2lZojWA26ZeC/Z17KlDEOd0NgsXCq8I7t2qzZ8zhVv8
	f5Ss3PBr/0b46sd56auzNosJwaXatW0h/8khvaiSgcn+J/JgOAMOZQHA8h7OM1XMBRzDe6+1uUi6P
	D1NF2gcx/rbguwmrEZTAAvu1w4XPbKTdTkt+/e7pBJtZHl5UGoEbPCiITzu+i6mo3ykqtFwQrVxVV
	0BWte/oBpvobuq5gQt7GGP1EGv7GnBF4BbuVW+rSURt7bSBMFNW5OgVENGIAPDYmSkp1OVonn0qpi
	DijULGDIZWJY1G8JX3rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTPkr-00000007uTm-1jcv;
	Mon, 15 Jul 2024 17:44:53 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTPkW-00000007uPb-2QZv;
	Mon, 15 Jul 2024 17:44:34 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1721065466;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=rsp+zu6VTR0uQWABL0q35jy6aykcocqveLCren7cMYA=;
	b=FwZZid3JjKaP54tZbdVdmLh0cavtpEDtRK9YHJ/8kO2mlLu+Rw0KsF4Em/JGktrGK2OBs0
	CwYCVkCZ2qUweZIJPbVcmMXWLHRqNIPqC4UmGS4XrtfkQtvL6UW0y50XOKiwZNvcJkoJmb
	cdasfkCdWorCihO51aA3vX/iXcQMJmQlEUVI5/Ew3aCXKunpBM7Ex9XoMjvY3b6Jb2OPfn
	YTmoZtmf3ThMV0K5x1vQZQMk/CDxFurLoHJPWG32klZwMFQjufEUET9oWfni3fEvLRhAMf
	mn6LZyKMSpK9nt83n5tyDKaxTosuAv/rjMFwN9iKywBGLu+cXclXqv15BuQiJg==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	stable@vger.kernel.org,
	Marek Kraus <gamiee@pine64.org>
Subject: [PATCH] arm64: dts: rockchip: Correct the Pinebook Pro battery design capacity
Date: Mon, 15 Jul 2024 19:44:20 +0200
Message-Id: <731f8ef9b1a867bcc730d19ed277c8c0534c0842.1721065172.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240715_104432_940901_F3EF6492 
X-CRM114-Status: GOOD (  12.38  )
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

All batches of the Pine64 Pinebook Pro, except the latest batch (as of 2024)
whose hardware design was revised due to the component shortage, use a 1S
lithium battery whose nominal/design capacity is 10,000 mAh, according to the
battery datasheet. [1][2]  Let's correct the design full-charge value in the
Pinebook Pro board dts, to improve the accuracy of the hardware description,
and to hopefully improve the accuracy of the fuel gauge a bit on all units
that don't belong to the latest batch.

The above-mentioned latest batch uses a different 1S lithium battery with
a slightly lower capacity, more precisely 9,600 mAh.  To make the fuel gauge
work reliably on the latest batch, a sample battery would need to be sent to
CellWise, to obtain its proprietary battery profile, whose data goes into
"cellwise,battery-profile" in the Pinebook Pro board dts.  Without that data,
the fuel gauge reportedly works unreliably, so changing the design capacity
won't have any negative effects on the already unreliable operation of the
fuel gauge in the Pinebook Pros that belong to the latest batch.

According to the battery datasheet, its voltage can go as low as 2.75 V while
discharging, but it's better to leave the current 3.0 V value in the dts file,
because of the associated Pinebook Pro's voltage regulation issues.

[1] https://wiki.pine64.org/index.php/Pinebook_Pro#Battery
[2] https://files.pine64.org/doc/datasheet/pinebook/40110175P%203.8V%2010000mAh%E8%A7%84%E6%A0%BC%E4%B9%A6-14.pdf

Fixes: c7c4d698cd28 ("arm64: dts: rockchip: add fuel gauge to Pinebook Pro dts")
Cc: stable@vger.kernel.org
Cc: Marek Kraus <gamiee@pine64.org>
Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index 294eb2de263d..c918968714e4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -37,7 +37,7 @@ backlight: edp-backlight {
 
 	bat: battery {
 		compatible = "simple-battery";
-		charge-full-design-microamp-hours = <9800000>;
+		charge-full-design-microamp-hours = <10000000>;
 		voltage-max-design-microvolt = <4350000>;
 		voltage-min-design-microvolt = <3000000>;
 	};

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
