Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4066FE7718B
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Dec 2024 15:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RsVpnXpp8KBNzz/obDKbzXEcpcMAbIKNJMJNQUicJpk=; b=YxVe/+l+2TcgWq
	n+OYwcBi6R1QfoeVWAAyRDLuJ5JKu4zml7NIif4CY1yqFJgPZaDXCdDGK53XMy23NunxIeUzkV3xD
	YD0C9gHUsEiw77ICbn9H2b9eZTxgJVh0hXVMsP3RUaIWGK1o71YXXKuYfXIrwhDVhtfADFm0+AA3u
	w8sF9j0pRNmLSdvFOytorqC6IkjGKqvkWYoXWBmc/QJzNCFvFonRhzXcms4iLqIr8cQUWMQ66P/BQ
	0g4euSAbq/2BZx0rXAFBIsUNGa+fJ81gNfvaerRhxSVexOuok0zo4WJ7r76XGKbMY6Lt6jzdbVPxv
	2nUxCuzEruuRxdeorlFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRCVF-00000000YOq-2vXG;
	Fri, 27 Dec 2024 15:43:53 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tRCU3-00000000YCg-2T4B;
	Fri, 27 Dec 2024 15:42:40 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1735314157;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=0ckPKI2CzNl8cXjKXbJSAVhCafvKRom8xvDMX56khao=;
	b=Dm6DgmM2IrUPa8Y/F0BZEcRPLmWcHzL45sjvfHuEtuK7JEZvSiUaHjBAvman5526ClumwU
	lfK0BQISduryBcYuWfxXuFpU3InamGDnnkID1EMbTNpkX6U763CM7gyJ9w4avRwEvZZit2
	ScpvM615aSSGFpmM0Pk6If6lx1Es1ifdfsN7A5sHhIpo2x9kF113K5hEkk1Gj0ci3umjIx
	kCbrjOX+Qzr09IvYM3H0W+LKLC70GvyuG8Y8gw8psNYWO2tODCwjYYlfgsteAzRd9cCk99
	GRDmpytFVF1hyOtIqcgINJQu/37QhfelAgIc1R5BT5RSmmAQ1bxgleRZfx9UMA==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	maz@kernel.org,
	tglx@linutronix.de,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 0/2] Use "dma-noncoherent" to handle Rockchip RK358x 3588001 errata
Date: Fri, 27 Dec 2024 16:42:22 +0100
Message-Id: <cover.1735313870.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_074239_788001_1060C9FF 
X-CRM114-Status: UNSURE (   4.54  )
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

This is a small series that makes the "dma-noncoherent" DT property used
for handling the 3588001 errata for Rockchip RK3588, RK3588S and RK3582
SoCs, which is the preferred way over checking the compatibles. [1]

Older versions of the Rockchip RK3588 and RK3588S SoC dts(i) files failed
to specify the "dma-noncoherent" DT property, so checking the compatibles
remains required for backward SoC dts(i) compatibility.

[1] https://lore.kernel.org/linux-rockchip/86msgoozqa.wl-maz@kernel.org/

Cc: Marc Zyngier <maz@kernel.org>
Cc: FUKAUMI Naoki <naoki@radxa.com>

Dragan Simic (2):
  arm64: dts: rockchip: Use "dma-noncoherent" in base RK3588 SoC dtsi
  irqchip/gic-v3-its: Make "dma-noncoherent" preferred for RK358x errata

 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi |  3 +++
 drivers/irqchip/irq-gic-v3-its.c              | 12 ++++++++++++
 2 files changed, 15 insertions(+)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
