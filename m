Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43E88E77188
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Dec 2024 01:54:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VyuPjMMjWxvRGzMPILmUA5i5z0k463OMhdMfsE+yH1o=; b=Jvz6TAbNUVG7zm
	IpI0kdGqCN44+Huv18NuOIo1HUllKA4tPPhJtC3trYT1iU2aL8mKKKX7W0Mo1qh+GtKpcE4/sjEaT
	VHkVoA/zzAF+I/BKo8UHV4gmM1wRVPZdDQ3xTX9MmcSLsCAAXqj4J4TzLeh00fXbm1n0UxQoLbgIv
	rvohbHyyYlBvPSh/bI+2qZyPVv+HgyUaCVl8h8+HScN/d00GSjVVSXlO5mPyTXdGo/vR0ReQNNb01
	eq2OD2rDpD6HdII4iSYjEzCrCvyqne64jUCwr177UJJ5QmPlf0Iy+PrrSF5+Xa87k5efZCbIirkO6
	HNrYKtFp22s2vuo1Tbjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tPXe4-000000096oi-05Vf;
	Mon, 23 Dec 2024 01:54:08 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tPXdz-000000096mn-3ZZ3
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Dec 2024 01:54:06 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BN1rORf024581;
	Mon, 23 Dec 2024 10:53:24 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, jonas@kwiboo.se, macromorgan@hotmail.com,
        andyshrk@163.com, dmt.yashin@gmail.com, liujianfeng1994@gmail.com,
        tim@feathertop.org, marcin.juszkiewicz@linaro.org,
        michael.riesch@wolfvision.net, alchark@gmail.com, jbx6244@gmail.com,
        kever.yang@rock-chips.com, jing@jing.rocks, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 0/2] rockchip: Add support for RK3582
Date: Mon, 23 Dec 2024 01:53:16 +0000
Message-ID: <20241223015318.1999-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241222_175404_117130_8DDEE643 
X-CRM114-Status: UNSURE (   8.61  )
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
 .../boot/dts/rockchip/rk3582-radxa-e52c.dts   | 738 ++++++++++++++++++
 3 files changed, 745 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
