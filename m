Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00228CCFA18
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Nov 2025 07:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CoFsmvLZfHX5DY62PqlkmotNW0TnW/I2mI9da86K51o=; b=2PX6h9jy3Egk6l
	iej+wAvgZAKgNX8I6Be6zL0mrAcRvSmHiP1J+ZVE05aTiPDbmEi4tdADVkm96qjIFoq5goQ9oxD3Q
	04cG4SwukJxe4g8TZ/rnLlQWTNAZ5hiJv6ipLe6cwCyxfAETfGY+93xczriUKIogMrZHVirzsbRJ1
	wM1+xhEoxR1j7uCLg2OTrAAOL3pPsjgpwiugU5+9unBHVEuy4bN5zeDvscZQ1+UXDkX03SxicTD26
	MNfvDBCI5id0bFwOExK2qZIbPMD9jVh3hs+apynG+GT0/QQ/X3w/P7Jxc0FD3/Smh5XCHpz6QUrsa
	pvH0PLzPjFkjLheAlnhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIidd-00000006fvq-0FDl;
	Tue, 11 Nov 2025 07:18:01 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIida-00000006fvC-2IdA
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Nov 2025 07:18:00 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5AB7HYhR022271;
	Tue, 11 Nov 2025 16:17:34 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        liujianfeng1994@gmail.com, dmitry.baryshkov@oss.qualcomm.com,
        sebastian.reichel@collabora.com, andy.yan@rock-chips.com,
        nicolas.frattaroli@collabora.com, dmitry.osipenko@collabora.com,
        detlev.casanova@collabora.com, didi.debian@cknow.org,
        damon.ding@rock-chips.com, jbx6244@gmail.com,
        kylepzak@projectinitiative.io, dsimic@manjaro.org, alchark@gmail.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 0/3] Fixes and improvements to sdmmc descriptions for Radxa ROCK 5 ITX/5B/5B+/5T/5A/5C
Date: Tue, 11 Nov 2025 07:17:27 +0000
Message-ID: <20251111071730.126238-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_231758_828567_ACB52323 
X-CRM114-Status: UNSURE (   5.66  )
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

This patch series fixes microSD card detection for ROCK 5 ITX/5C and
improves sdmmc properties for ROCK 5 ITX/5B/5B+/5T/5A/5C.

FUKAUMI Naoki (3):
  arm64: dts: rockchip: Fix microSD card detect for Radxa ROCK 5 ITX/5C
  arm64: dts: rockchip: Add sdmmc pinctrl for Radxa ROCK 5
    ITX/5B/5B+/5T/5C
  arm64: dts: rockchip: Remove sdmmc max-frequency for Radxa ROCK 5
    ITX/5B/5B+/5T

 arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts     | 10 ++++++++--
 .../arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi |  9 ++++++++-
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts       |  8 ++++++++
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts       |  9 +++++++++
 4 files changed, 33 insertions(+), 3 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
