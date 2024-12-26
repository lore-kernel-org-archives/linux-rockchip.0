Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36C9DE7718B
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Dec 2024 02:47:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KFDL5nXHYJF4YQjTRhLjdy7nVskU9lpStwUwiZfE9qY=; b=ejzIUL7hRJOglQ
	IyRn2z8+uuNJphNVkTP0TgHPMr+2VQotaXuj9sXTdq8wAkcCNW+QvEJzGRTSvB1Ol/ZLtboa7Fl0E
	mUYm+l6+7rqoofLrlIPz86yCBefqMMpdJNcqLJa4H0E/t/DmLcrFXVXocSkcRLOiQgnXFAuuPhkK+
	6TedXFr3hR/V8A+m7E8EuclCvRv6X5qRGNiVRQzkhhTxZa5iYuitoak1B4q8VVDXRKBCeo5B6uajH
	CugrCTwdQtKZ66xktGoObCdX0qz8hCfjFDpLF7cywc064yg75yOOLKGQOaV49qXZBb6g/Lfvufavh
	H4dx4JSfius7jKLynQag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQdu7-0000000Ezp4-2T56;
	Thu, 26 Dec 2024 02:47:15 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQdu4-0000000Ezo4-27HA
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Dec 2024 02:47:14 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BQ2kbEK004300;
	Thu, 26 Dec 2024 11:46:37 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Subject: [PATCH v3 0/2] rockchip: Add support for RK3582
Date: Thu, 26 Dec 2024 02:46:28 +0000
Message-ID: <20241226024630.13702-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241225_184712_768509_D46A434F 
X-CRM114-Status: UNSURE (   8.65  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, liujianfeng1994@gmail.com, jonas@kwiboo.se, cfsworks@gmail.com, dmt.yashin@gmail.com, jbx6244@gmail.com, sebastian.reichel@collabora.com, tim@feathertop.org, marcin.juszkiewicz@linaro.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>, michael.riesch@wolfvision.net, macromorgan@hotmail.com, krzk+dt@kernel.org, jing@jing.rocks, dsimic@manjaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Rockchip RK3582 is a scaled down version of Rockchip RK3588(S).

- Dual Cortex-A76 and quad Cortex-A55 CPU
- No GPU
- 5TOPS NPU
- H.264/H.265 video encoder up to 4K@60fps

This patch series adds support for the Radxa E52C compact network
computer based on the RK3582.

FUKAUMI Naoki (2):
  dt-bindings: arm: rockchip: Add Radxa E52C
  arm64: dts: rockchip: Add Radxa E52C

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3582-radxa-e52c.dts   | 743 ++++++++++++++++++
 3 files changed, 750 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
