Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF208CEB2C9
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 22:15:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=73QZnASGVSAx9fKzOkSdT2L7sb47hDiA8Fsbk/0MBeY=; b=2BBQt1K5EqQYPA
	ltgupqN+wTuCj46UJYqcR6fBW0061T/TAwVrDBG+eAlRmtA/KHxJNH7/8r6kPq/jfdTAc8SsWbAMG
	EDu+imT6qZWuNYuWx5p2e4tGLuYaAD2USQmH+sScs9F0hqz/27eo2fCmQ2MngvIsq14rulAC2N5Co
	a0BP9WLSlPCQE9snW6Uxm+HXxjuRG2GQGVqWC0fWxiPVuTI3M1xTWKsIfuHb+OS0Bbjv2P164g+IW
	UhSA5FKp9xVs1KOFnXx6A+VvCQjy3QRJcaDMHC1IJvqPwq3hk8HFrUvywCGrXj6lJFhiCwUa6/QAQ
	I7I/lDN3/iXORZ3mT6ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svOg1-000000010Da-2tAO;
	Mon, 30 Sep 2024 22:15:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svNWD-00000000qKd-3uO3;
	Mon, 30 Sep 2024 21:01:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=QMJP2jh4ERwAUjnirFF+xztb/7OvBG8WxNmUQyElJXM=; b=yoHS7S6ImQ/jZLtrj4fROduHd8
	s61nr1M5gUdDI2n48p5bRf/9Ouv9nYXjGsMt5qVXejtuh1hvo4dclU3bkZKwl+jEFCyhZqPSoxstc
	vvLH2aYG6CZTnMgk6sRi8QQzXIIXUUN+YtYh6jCLSUcbB2w5BZhRg15Cp/5smiF4K4jXTF7+cIoEx
	MVJ4jV07JVPm8li72PyXIquaheUhM23JoZe1mn+0iRyWahP/JwHtfyHO9FKoLIvdd6510/n1nBpQG
	l2KBVB7rWbI/T2PYi1CRj5UFt+h4+NOBy1Qr6L+rRDgYJQfgLm+GLnHlRH8KKUdRcbSl0SLbdkMQ/
	3CFqYdjg==;
Received: from i5e861925.versanet.de ([94.134.25.37] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svNWB-00087h-J1; Mon, 30 Sep 2024 23:01:19 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 0/8] Fixing some dtbscheck warnings
Date: Mon, 30 Sep 2024 23:01:04 +0200
Message-ID: <20240930210112.1993625-1-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_140122_021704_B0634462 
X-CRM114-Status: GOOD (  10.44  )
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

Fixing dtbs-check warnings should be declared addictive, one starts
with one warning, then another one and then it's oh, I'll just fix
this "last" one over and over ;-)

We still have more, if others want to play too :-D .


Heiko Stuebner (8):
  arm64: dts: rockchip: fix i2c2 pinctrl-names property on
    anbernic-rg353p
  arm64: dts: rockchip: fix i2c2 pinctrl-names property on
    anbernic-rg353v
  arm64: dts: rockchip: Drop regulator-init-microvolt from rk3568-roc-pc
  arm64: dts: rockchip: Drop regulator-init-microvolt from
    rk3588-toybrick-x0
  arm64: dts: rockchip: Fix bluetooth properties on rk3566 box demo
  arm64: dts: rockchip: Fix bluetooth properties on Rock960 boards
  arm64: dts: rockchip: Remove undocumented emmc property from
    PX30-Ringneck
  arm64: dts: rockchip: Remove #cooling-cells from fan on Theobroma
    boards

 arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi         | 2 --
 arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi           | 1 -
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi           | 1 -
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts        | 6 +++---
 arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts          | 3 ---
 arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts     | 1 -
 9 files changed, 6 insertions(+), 14 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
