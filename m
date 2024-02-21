Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B041C48BEB
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Feb 2024 22:58:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3qt+hsIEKMTqjWZ8j51UioR6SuLRDC1MfaeNswNskcI=; b=larXqmfHB1c+WK
	/Nf26gUzhQYHyXiWF0Rm1nnV3Z6+d1l7ilu51i8zawPsYcsUgsZzbn6NaaX9sGrwwrxeEjHQLd4fv
	YkZ3phIfQ8DOy2JCfLiPBojc7gNucSeR4h9EYwkYdUUeZ0dw34AgixlOvmiBkDp1vftyKgTsKHxXC
	JwU/PwbH5UVdWLy/Wbka1V/fNdorRPam0yjFB7yV9xMkB8nxMxOakauB0Vfe5csVoGsgfB7wD7xI0
	OwoOI5McEmnZlCic9xzz7bm0/dMFXgcWwZ1+hpL0AI0+cjPj1k17QPJZ/a9xkmcD0eC9WGvY40/PZ
	4b4vEBnF25Mp7nDJvC8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcvXl-00000002qTi-3u0S;
	Wed, 21 Feb 2024 22:58:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcvXj-00000002qTA-0clC;
	Wed, 21 Feb 2024 22:58:24 +0000
Received: from i5e861914.versanet.de ([94.134.25.20] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rcvXh-0000pG-TV; Wed, 21 Feb 2024 23:58:21 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts32 changes for 6.9 #1
Date: Wed, 21 Feb 2024 23:58:21 +0100
Message-ID: <37970455.XM6RcZxFsP@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_145823_223712_25B84D5C 
X-CRM114-Status: UNSURE (   9.79  )
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

The following changes since commit 6613476e225e090cc9aad49be7fa504e290dd33d:

  Linux 6.8-rc1 (2024-01-21 14:11:32 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.9-rockchip-dts32-1

for you to fetch changes up to 15a5ed03000cf61daf87d14628085cb1bc8ae72c:

  ARM: dts: rockchip: fix rk322x hdmi ports node (2024-02-13 20:22:34 +0100)

----------------------------------------------------------------
Display output for rk3128 and some adaptions to binding clarifications
for hdmi nodes on some older socs.

----------------------------------------------------------------
Alex Bee (3):
      ARM: dts: rockchip: Add display subsystem for RK3128
      ARM: dts: rockchip: Add HDMI node for RK3128
      ARM: dts: rockchip: Enable HDMI output for XPI-3128

Johan Jonker (2):
      ARM: dts: rockchip: fix rk3288 hdmi ports node
      ARM: dts: rockchip: fix rk322x hdmi ports node

 arch/arm/boot/dts/rockchip/rk3128-xpi-3128.dts | 29 +++++++++++++
 arch/arm/boot/dts/rockchip/rk3128.dtsi         | 60 ++++++++++++++++++++++++++
 arch/arm/boot/dts/rockchip/rk322x.dtsi         | 16 ++++---
 arch/arm/boot/dts/rockchip/rk3288.dtsi         | 16 +++++--
 4 files changed, 113 insertions(+), 8 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
