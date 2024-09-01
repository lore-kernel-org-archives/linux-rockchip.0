Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3565ACA101E
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Sep 2024 21:37:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sUxE1hHER1JRNYneYgbpcrCMoLcwjbcdGf4qSQC966A=; b=2mhUOJ/4+rqaN5
	iBDjCg2g0EVzgqFPsuYBYUjzPAoHhKnJhSdZJ1QFTqybflEK4yj/9e/UvSx0CkK+uTwBvTzRPtQHS
	jbPs7qqDxWZQvF1agSmxB/7+hR3bgPdALNfBTZrg+sPK4CvRsFoKVljmm8UZto+//Hv1o5QpMAjwc
	/TScz9YwxeoOFULgKzXstQX4fAdi8JSj2MnOMqUeePANbpgJGmrWtUATf6S5eDblMMZkhDHUo6JPP
	BXJ53+4/SYxgxYWMZP5RbWS8b41vSZDXcR319b5X7uP1gVIZYBOCByR8eo50j7Jb8+Q6irtmacQ0v
	QrbbMPn9Z6NuHhhW6pbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sksGN-0000000CN1j-3CYC;
	Sun, 01 Sep 2024 21:37:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sksGK-0000000CN0v-1DI8;
	Sun, 01 Sep 2024 21:37:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=snnfLF0zX/k6vqmUSCiyJxmlQT9GI+pf+ndg4Yy93Ck=; b=Yp1HZvUftrRvWQHkgMFySa/8Eb
	rG2N8y7Mb7wR8wV40Q9Gpud1O63UcJOFQG7wAwjspq1AOkQhCvnhVZbOen8vUtDEqEZDPRR3W0PVc
	zNq+BjOfsvfAomDTwOF/QBbz2Y+CTafnKJqvLteJPyqUXz+d4coQ481LUPLLu7Ycamq9AT5hLPZvt
	bA+nUMeCdYsO7HeaVBSLiGeVouZguFzzBtBLLjMrdaN0bo3doDnn9Lf0CR8XHG0V1ru0tGY74voEw
	ZFIP9MtgkI9spangP1HsY0unzx9bYw4DHzTE9LQfHj2PcFGTjVlhjmHOgrUCozG6CAS7dSAUUefkz
	GJGTBLNg==;
Received: from i5e860d0f.versanet.de ([94.134.13.15] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sksGG-0006Y1-LE; Sun, 01 Sep 2024 23:37:28 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts fixes for 6.11
Date: Sun, 01 Sep 2024 23:39:02 +0200
Message-ID: <7602696.A5hrfCrGMc@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240901_143732_385316_0B8CA57A 
X-CRM114-Status: GOOD (  11.33  )
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

Hi Arnd, Kevin, Olof,

please find a below a collection of fixes for the current release 6.11
cycle.

Please pull

Thanks
Heiko


The following changes since commit 8400291e289ee6b2bf9779ff1c83a291501f017b:

  Linux 6.11-rc1 (2024-07-28 14:19:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.11-rockchip-dtsfixes

for you to fetch changes up to 5956ee09c8254273c587b07f5b4d42da59a0325c:

  arm64: dts: rockchip: Fix compatibles for RK3588 VO{0,1}_GRF (2024-08-29 13:54:33 +0200)

----------------------------------------------------------------
A number of pin fixes for Puma, Rock-Pi-E and rk356x, and as it turns
out the VO0 and VO1 general register files are not identical as suggested
by their original compatible. As there are no users of those yet,
everybody agreed that we should fix the compatibles.

----------------------------------------------------------------
Alexander Shiyan (1):
      arm64: dts: rockchip: Remove broken tsadc pinctrl binding for rk356x

Cristian Ciocaltea (2):
      dt-bindings: soc: rockchip: Fix compatibles for RK3588 VO{0,1}_GRF
      arm64: dts: rockchip: Fix compatibles for RK3588 VO{0,1}_GRF

FUKAUMI Naoki (1):
      arm64: dts: rockchip: fix PMIC interrupt pin in pinctrl for ROCK Pi E

Quentin Schulz (2):
      arm64: dts: rockchip: fix eMMC/SPI corruption when audio has been used on RK3399 Puma
      arm64: dts: rockchip: override BIOS_DISABLE signal via GPIO hog on RK3399 Puma

 .../devicetree/bindings/soc/rockchip/grf.yaml      | 10 +++++-
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts  |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi      | 36 ++++++++++++++++++++--
 arch/arm64/boot/dts/rockchip/rk356x.dtsi           |  7 ++---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi      |  6 ++--
 5 files changed, 49 insertions(+), 12 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
