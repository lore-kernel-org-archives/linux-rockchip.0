Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2817EC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Nov 2022 15:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Quox6IX1Rh4xMOPQiLr/ppv0D9wkntAtpr+JWjPxWro=; b=HhI+rPqkAXtwJK
	KF+RrFaUarz3jzJGLOgb3K0idsswfwEfCsiQyMUwd9+lByeZKWuVdhkkyuFkkPiHCRHN36t/ick8V
	Ly1k+dIy7Ej30SE/Vfx04B2A0qajtyb0fp8zNgzrdpluXoJjbB/jE49Roz49Gpw48UImN+NrmyD2S
	isKRYi06dhHevUqepK1/A+Pa8UYoy3LyFhfe4T4C6ssTx3usfR0jj4y4aMIFyUrEuBSmaJgRNujGP
	+2MBRNa/16RrAOxSNqU1SutO1+ihr9CLH/ymN0+LJFfnOBSMKUsJvFeH7mtT003FbEU1rkQeJyhcO
	cMy64o2TylhtkElfwg+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox8iV-00FBV0-9K; Mon, 21 Nov 2022 15:28:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ox8Yk-00F5CH-BJ
	for linux-rockchip@lists.infradead.org; Mon, 21 Nov 2022 15:18:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1ox8Yb-0004BZ-LZ; Mon, 21 Nov 2022 16:18:01 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mtr@pengutronix.de>)
	id 1ox8YV-005gHK-Ph; Mon, 21 Nov 2022 16:17:56 +0100
Received: from mtr by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mtr@pengutronix.de>)
	id 1ox8YV-008hFH-Jx; Mon, 21 Nov 2022 16:17:55 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	jacob-chen@iotwrt.com,
	ezequiel@vanguardiasur.com.ar,
	robh+dt@kernel.org
Cc: krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	michael.riesch@wolfvision.net,
	linux-arm-kernel@lists.infradead.org,
	m.tretter@pengutronix.de,
	kernel@pengutronix.de
Subject: [PATCH 0/2] media: rockchip: rga: Add rk3568 support
Date: Mon, 21 Nov 2022 16:17:53 +0100
Message-Id: <20221121151755.2072816-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_071810_436240_7C56046B 
X-CRM114-Status: UNSURE (   9.56  )
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

The RGA2 on the Rockchip rk3568 is the same core as the RGA2 on the Rockchip
rk3288.

This series adds the necessary device tree binding and node in the device tree
to enable the RGA2 on the Rockchip rk3568.

I tested the driver with the GStreamer v4l2convert element on a ROCK3A board.

Michael

Michael Tretter (2):
  media: dt-bindings: media: rockchip-rga: add rockchip,rk3568-rga
  arm64: dts: rockchip: Add RGA2 support to rk356x

 .../devicetree/bindings/media/rockchip-rga.yaml       |  4 +++-
 arch/arm64/boot/dts/rockchip/rk356x.dtsi              | 11 +++++++++++
 2 files changed, 14 insertions(+), 1 deletion(-)

-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
