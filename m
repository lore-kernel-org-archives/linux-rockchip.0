Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D88B9C2BD09
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jun 2024 12:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0C+rhXwWjOsd/Sof9qM68OXBo8qd5bfWxriGSqgVZKE=; b=SdaqDvEiGPdw4P
	LxAto/+EEXn0shZWonbcfTz0l1ca+oGEzQwfF2twtfpFRhrWvmSrnebwWL5NuDL7805hYoNbaWgGS
	mJ2k1RuODkUmO17xtJC7GID9ilI2PEcE+6NIgWpEOlQ+3Ufy8pfDMW4e4CTSbSJh3EOxeax6grIkG
	6totIsHr538SP0hPGNBybLusPn1LNC01UWisK4ZoqAV8A4AYKySW76iIt49YUzZ/0gmuN5ROGCQPf
	IPMJHChtUhopqoWTebm7tVv/c1SuPOovLi8/wNl2c+RyiURkJs32MoJEehVMuEAaThAsNrAXDJelf
	Yh9Svr5be0Wquo8vmwEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNAJ1-0000000Dcvi-3Lvp;
	Fri, 28 Jun 2024 12:02:19 +0000
Received: from out-180.mta0.migadu.com ([91.218.175.180])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNAIy-0000000Dcrf-3Da5
	for linux-rockchip@lists.infradead.org;
	Fri, 28 Jun 2024 12:02:18 +0000
X-Envelope-To: heiko@sntech.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1719576129;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=sfuZFBB5M5HzceMLfENqUVqIXCu7nq+4d20hGrJdaF0=;
	b=lHdl2hyMNHhzITHZTrrKvZs6BqdIjLJ1EeebRI2kMoTaXbH1Ai41zCDEcFyzPAe6ciIQf1
	Fu0MOS6RM05zY2Kbbs3J9UDQLNtSOMbzpzaanoMBNoW1+9YlzQ/Ns9r3sVqpRcdagPz0KB
	4gZE8wD7CsHrJ8AAGJLwAZ5M2XOhIrRVwSGn0xYpchIHZIHySemtwvaPInSko7O6WXdDx8
	Iyc0L8mU6YGhl7N0BqLaqNB69LOG1iwPWJ4HrX0+TkUJpwV8DbItjeuk6WloPQnD+tOiLy
	1tLoHDDGudWPu2jNz9ycny1D+m070dru7LJdXar5XJBVPqkbLKIY/2EsDuCHmw==
X-Envelope-To: didi.debian@cknow.org
X-Envelope-To: jonas@kwiboo.se
X-Envelope-To: dsimic@manjaro.org
X-Envelope-To: ukleinek@debian.org
X-Envelope-To: wens@kernel.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Diederik de Haas <didi.debian@cknow.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Dragan Simic <dsimic@manjaro.org>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@debian.org>,
	Chen-Yu Tsai <wens@kernel.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Add dma-names to uart1 on quartz64-b
Date: Fri, 28 Jun 2024 14:00:43 +0200
Message-ID: <20240628120130.24076-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240628_050217_390544_92E3A6AE 
X-CRM114-Status: GOOD (  11.44  )
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

There have been several attempts to set the dma-names property on the
SoC level (in rk356x.dtsi), but that appears to cause problems when set
on channels without flow control.

Quoting part of a previous attempt for clarification:

> Nah, enabling it for bluetooth is fine because you have flow control.
> My issues have been on channels without flow control. Without DMA it
> simply drops messages or the channel hangs until you close and reopen
> it. With DMA, when an overflow locks up the channel it is usually
> unavailable until the board is rebooted.

Setting it on the board level for the bluetooth connection was deemed
safe, so do so for the Quartz64 Model B.

This fixes the following error/warning:

  of_dma_request_slave_channel: dma-names property of node
      '/serial@fe650000' missing or empty
  dw-apb-uart fe650000.serial: failed to request DMA

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
Link: https://libera.irclog.whitequark.org/armlinux/2024-02-29
Link: https://lore.kernel.org/linux-rockchip/18284546.sWSEgdgrri@diego/
---
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
index b908ce006c26..13e599a85eb8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
@@ -652,6 +652,7 @@ &tsadc {
 };
 
 &uart1 {
+	dma-names = "tx", "rx";
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart1m0_xfer &uart1m0_ctsn &uart1m0_rtsn>;
 	status = "okay";
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
