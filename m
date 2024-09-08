Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29D56ECE577
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Sep 2024 21:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w5JBVIa6v/V8Zt2sD/cpAMVt/43bPa3Yql23NI1ypbU=; b=f7wRSNCqEcpKb6
	Mo5FIDwCCdjIMmPwqMGFzzhwXmaBH0O2juZ+dcdywpceKvSue3cSQaL58TJTMrr85fL+7NyBWT6fE
	gk487u43ggu5r0JNkpR7x/tlN2CfLdWPczfzk3SsGzaE69d2tTWNslaeWMQrjDp0d+wBbM0pDJ4Hj
	gFwN4PSRXu6MZ8VbCYl+Ms/EM0jEXvu9KF/VxI8n2HecND14v3j1Cgsaizn01vwkN/ykuCmYiOYQS
	c6euDL9PQ/agSSDkQc3zZ0HA2uJmpRRwiDVWx9mzCLDsLQOzYuSWY3eA/XcIAKXmnssRV8195muPP
	sj6q5KZlKMyPtz3ZlliA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snPpc-0000000HXCK-2Uyc;
	Sun, 08 Sep 2024 21:52:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snPp4-0000000HX9D-2MyK;
	Sun, 08 Sep 2024 21:51:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=HdzA9hOC0hHzGRZqed6XmF0v1kxmuoN/HSkiwuamSm8=; b=nmRnrrvNagarSqJeTAKjvZjmGH
	3bJlcLtn2hbyFjoTMT+/o51YrJat7sqi44Q+Dq2bCXR6kxeUxobgJVo9HJX/9YFdbOGt18TZf6vJm
	P63Fw0wNkPdlX35eHE+XneOSagzvJNATjtuWWpKAHkemzpcVgdbnww65PkPCh2k+lTqe1wl4xY3GB
	6JK1nuA8bPIYqvpECXFFsVUS153izOcUtRlBQE1VGBPiZmKNnt8V7pj23TD4kEjvOogUHzw416SRP
	K9LQF6/xG/yC60+NPBYUlsH1S2fk1MbQKJJxREGfN9gtIecOsA4A833LMKojTCzgXF48ynfPA5J2S
	gYU00DSw==;
Received: from i5e8616cc.versanet.de ([94.134.22.204] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1snPp3-0004IJ-8y; Sun, 08 Sep 2024 23:51:53 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts32 changes for 6.12 #2
Date: Sun, 08 Sep 2024 23:54:08 +0200
Message-ID: <1862312.dTVjPilprF@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240908_145154_640321_7EB825E5 
X-CRM114-Status: UNSURE (   8.23  )
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

The following changes since commit 0296f20c72d23f41ca0ccd64eb849e9ef1aa8977:

  ARM: dts: rockchip: Do not describe unexisting DAC device on rv1108-elgin-r1 (2024-08-29 19:37:00 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.12-rockchip-dts32-2

for you to fetch changes up to 898eb75f443eaf6cb46facf52fc337fbdbdca079:

  ARM: dts: rockchip: Add pwm node for RV1126 (2024-09-04 11:20:00 +0200)

----------------------------------------------------------------
More pwm, i2s and i2c nodes for the RV1126 soc.

----------------------------------------------------------------
Karthikeyan Krishnasamy (3):
      ARM: dts: rockchip: Add i2c3 node for RV1126
      ARM: dts: rockchip: Add i2s0 node for RV1126
      ARM: dts: rockchip: Add pwm node for RV1126

 arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 256 +++++++++++++++++++++++++
 arch/arm/boot/dts/rockchip/rv1126.dtsi         | 151 +++++++++++++++
 2 files changed, 407 insertions(+)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
