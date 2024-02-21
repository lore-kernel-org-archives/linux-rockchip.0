Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 812E1C48BF6
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Feb 2024 23:01:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E8LLPu7pbdJBiJPQN5F/zTCZc7R0y5PfnznWWOXYQFI=; b=G89KJls2vD4ikH
	GTLcZ3NrIctD/A23XWz5cE8r4pLWmdNenrkP8pNrFUmfH71kgCY2I7YuNchiijqyMEJ9x9VumHD98
	eukoj6fJvxQCsVBqkbgycxBfHUu+TP43pN0+ds2fCYKeKESQa4nA73gs+KwZ2rSuRCFPU5yru+Etp
	VfxCXVHWdZDpd8ftfAzuyGWfxTC1QUVSJW54RMP28F4gFjJxRedOMr7oAi2u+qkxH55mZpLqENtu2
	Wbc8XkwJzodlnwbwcJV7KCrAUIt6kxhr/4+VszremnSYjfNQ130GVJLtGkeF9JC8qwkswtpz1ldMg
	26Fq7F8loJNQ54sn0t2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcvag-00000002qtQ-1UhJ;
	Wed, 21 Feb 2024 23:01:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcvac-00000002qs8-3wuz;
	Wed, 21 Feb 2024 23:01:24 +0000
Received: from i5e861914.versanet.de ([94.134.25.20] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rcvaa-0000rv-NM; Thu, 22 Feb 2024 00:01:20 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip driver changes for 6.9 #1
Date: Thu, 22 Feb 2024 00:01:20 +0100
Message-ID: <5997473.alqRGMn8q6@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_150123_019922_7B8946D7 
X-CRM114-Status: UNSURE (   9.74  )
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

Hi Arnd, Kevin, Olof,

in expectation of more real driver-related changes I had started these
binding additions in a driver-branch, but in hindsight they could've also
just lived in the dt branch. So sorry about the additional pull.

Heiko


The following changes since commit 6613476e225e090cc9aad49be7fa504e290dd33d:

  Linux 6.8-rc1 (2024-01-21 14:11:32 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.9-rockchip-drivers1

for you to fetch changes up to 85a33544afa8895803798553c7510658dcbd3546:

  dt-bindings: soc: rockchip: add rk3588 USB3 syscon (2024-02-13 19:37:15 +0100)

----------------------------------------------------------------
dt-binding additions for some syscons (rk3588 usb3, hdptxphy) and a
clock addition to the rk3588 VO syscon binding.
6#

----------------------------------------------------------------
Cristian Ciocaltea (1):
      dt-bindings: soc: rockchip: Add rk3588 hdptxphy syscon

Sebastian Reichel (2):
      dt-bindings: soc: rockchip: add clock to RK3588 VO grf
      dt-bindings: soc: rockchip: add rk3588 USB3 syscon

 .../devicetree/bindings/soc/rockchip/grf.yaml      | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
