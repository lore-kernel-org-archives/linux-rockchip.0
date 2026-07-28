Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2ECB8C53219
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jul 2026 15:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OapzQ7WwPPWp+idfiO3/EEkImhrr3MI3+RbCD028oSU=; b=hjzyXz3zcfBjvT
	EGyHOzXJTZCVjhlrRyd+RwUzUcIyYhTG1lwXgRn//OTUc4LKVdA0irBESUnyGGBzoX/ikZe570hEE
	0GynQBOEEXwvMtb5sf7fS43aaizsMu9UE/sSRzc8ETN4pkvHso+ctaqn2N+ksLk1bTDUMqSA4Ttku
	O+nH/mGCF0E+d51bxoANmCvhoH8Y2ZzH136+QZ3F+yVXY/xFjuVY8XqREuJjy+Cgs1LedNEnccrAo
	/pL87yRiKMLika9Xp9t86N46Ppm557x5TUghOIGs5ovV364g1h4k/MoUp4xOCIPqvKITmyLNyBe6K
	sRgxXJ+Q5KzQKuVVl5Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wojd6-00000005d0k-3amK;
	Tue, 28 Jul 2026 15:22:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wojd4-00000005d0I-1rhv;
	Tue, 28 Jul 2026 15:22:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:In-Reply-To:References;
	bh=GYgWCp7NGaAFjYa0ok9PVd0tJSm0v/Qnvp18IDoxXVA=; b=AtlQ7Vj5pbnebPXyB1yaKo2SxS
	+MeQSqwHHhvlqwnhRyIPPE07iGve4TzfOVFPBoU8JHOt63VZOhHUKUBFTADxbLQXtRr1XmPUhjmQ/
	YY0TGQw9IYItUJr0RrecBGWSgwI0mFacjGRT5n0BRLp97EhtM/XKaIg5RZb0jxxzhK2S/BVk9A12X
	sDnyrYp5RYa7JhzgUxknUD/+MTBw1vh/8RbFEpg+jOWYaRyDTqeGo9CgsRGnwDVY9Lvg3NtFkP+Pj
	WBP3/YUppfPQcSbeTDxl93WPd0/4JdCp5fTOa7mFCOi1xkgxL1WQFqHSFlXo7yYTXW/Dj0F9QQKdA
	oV0mTF6A==;
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts32 changes for 7.3 #1
Date: Tue, 28 Jul 2026 17:21:57 +0200
Message-ID: <2102545.PIDvDuAF1L@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_082202_530030_5D68F410 
X-CRM114-Status: GOOD (  10.16  )
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

Hi soc maintainers,

please find below Rockchip ARM32 DT changes for the merge-window for 7.3 .


Please pull.
Thanks
Heiko


The following changes since commit dc59e4fea9d83f03bad6bddf3fa2e52491777482:

  Linux 7.2-rc1 (2026-06-28 12:01:31 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v7.3-rockchip-dts32-1

for you to fetch changes up to 44045aa7a9a9e6484617f44f77a3efb2d8e78565:

  ARM: dts: rockchip: Add Alientek DLRV1126 (2026-07-12 22:03:41 +0200)

----------------------------------------------------------------
New board: Alientek DLRV1126
Eeprom for RK3288-Tinker-board

----------------------------------------------------------------
Marius Dinu (1):
      ARM: dts: rockchip: add eeprom node to rk3288-tinker

Yanan He (4):
      dt-bindings: vendor-prefixes: add alientek
      dt-bindings: arm: rockchip: Add Alientek DLRV1126
      ARM: dts: rockchip: Add RV1126 I2C5
      ARM: dts: rockchip: Add Alientek DLRV1126

 .../devicetree/bindings/arm/rockchip.yaml          |   7 +
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 arch/arm/boot/dts/rockchip/Makefile                |   1 +
 arch/arm/boot/dts/rockchip/rk3288-tinker.dtsi      |   5 +
 .../dts/rockchip/rv1126-alientek-clrv1126f.dtsi    | 291 +++++++++++++++++++++
 .../boot/dts/rockchip/rv1126-alientek-dlrv1126.dts | 256 ++++++++++++++++++
 arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi     |  10 +
 arch/arm/boot/dts/rockchip/rv1126.dtsi             |  15 ++
 8 files changed, 587 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip/rv1126-alientek-clrv1126f.dtsi
 create mode 100644 arch/arm/boot/dts/rockchip/rv1126-alientek-dlrv1126.dts




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
