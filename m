Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D469AC54798
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 16:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+AIBG7fyI7ThEHb7cRXDTp++P8YnwVSr31iq/q6ml1U=; b=u0kvPqQ2lVZVr6
	xNs67UGZ1v5hcC2MkwcjBY8FhDQGCtg1vo/jsytPhpn49l1bi6vq3YoGpmoi5pZZRP6OqjtzWzWcZ
	+49XXB1FZn1PUzCJ4vJrUKy9ExOaXyatEFC9bCf01G9IzeE/wUvUdZ9mTvwKKiF9nW0RNqcXfHpu3
	uwOQFoPxmPpY8BiURuCBYjn9QbCw4p2dLogcBYbhD/1nA52cBhocUsH0ISGmmpOmVGKBGbzLBpG6d
	YoNX9EbO0jQ1Y1Sb9UJY30lXSsPaQ6LokolBlyMYh6kwQVBSJzo5L8zeQJ9jMTpbasf9oNZuRhpfx
	rzbFa0TCZpXRCLYWwb5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf0cU-000000063VX-2FIt;
	Tue, 27 Feb 2024 16:47:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf0bv-000000063C6-2B0Q;
	Tue, 27 Feb 2024 16:47:20 +0000
Received: from i53875b6c.versanet.de ([83.135.91.108] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rf0bk-0006qV-0g; Tue, 27 Feb 2024 17:47:08 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	quentin.schulz@theobroma-systems.com,
	heiko@sntech.de
Subject: [PATCH 0/4] Add support for Theobroma-Systems Tiger SoM
Date: Tue, 27 Feb 2024 17:46:55 +0100
Message-Id: <20240227164659.705271-1-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_084719_609773_6217C84B 
X-CRM114-Status: GOOD (  12.47  )
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

This adds support for the rk3588-based Tiger system-on-module from
Theobroma Systems and includes support for the combination with
the Haikou-baseboard.

Included is also a fix for the rk3588's i2s nodes to remove a
yet-unsupported devicetree property that slipped in.


Heiko Stuebner (4):
  arm64: dts: rockchip: drop rockchip,trcm-sync-tx-only from rk3588 i2s
  dt-bindings: arm: rockchip: Add Theobroma-Systems RK3588 Q7 with
    baseboard
  arm64: dts: rockchip: add RK3588-Q7 (Tiger) SoM
  arm64: dts: rockchip: add Haikou baseboard with RK3588-Q7 SoM

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3588-tiger-haikou.dts | 266 +++++++
 .../arm64/boot/dts/rockchip/rk3588-tiger.dtsi | 691 ++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     |   2 -
 5 files changed, 964 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
