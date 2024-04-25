Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AADAC4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Apr 2024 21:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M3liphJLD7LkUqE1FI/rUeYiTeHp8D40Eepy0Ch2dBg=; b=nF62OrR6Warh7o
	xJJb0iocc+cOfVbO+qyXqIfE92StZqdBZRyzDckQoBdBfqXDTWcGqkKTdwVaify518KGr/VirkrVS
	jvH8uAkyEaZ1SUGFjSha5OeXYA4OJvv90dGpKea81uFLy6A2/+ap/QI+qylR6H5zOePa1enLObSXY
	rX2E6XsdYXPQGqarUGvdDPEL5Z6GAAys0mh84l3c1wTS5vX/GCHA1ndEOW/1ljRNDIuwgFZn1noPk
	DNN/kPS4knPfQ0tl+6ryJwXbxil1ZMenNANS2dKhUWp1Hv9tSaJYrGMvJ+iMX+O48SCj6YBpv3D2N
	Joiirdy3CZMDkebN8iBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s06vB-0000000AJL2-1Qtf;
	Thu, 25 Apr 2024 21:46:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s06v8-0000000AJJg-3nQD;
	Thu, 25 Apr 2024 21:46:24 +0000
Received: from i53875b01.versanet.de ([83.135.91.1] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1s06v7-0007Jr-JA; Thu, 25 Apr 2024 23:46:21 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip arm64 defconfig changes for 6.10 #1
Date: Thu, 25 Apr 2024 23:46:20 +0200
Message-ID: <8976550.lOV4Wx5bFT@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_144622_979108_0E45CD9C 
X-CRM114-Status: UNSURE (   6.97  )
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

The following changes since commit 4cece764965020c22cff7665b18a012006359095:

  Linux 6.9-rc1 (2024-03-24 14:10:05 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.10-rockchip-defconfig64

for you to fetch changes up to 7cdf7efefc02189cf9a228d4c5c4253d273e9b1a:

  arm64: defconfig: enable Rockchip Samsung USBDP PHY (2024-04-12 16:22:53 +0200)

----------------------------------------------------------------
Enablement of rk3308 audio codec, panthor driver for Valhall GPUs
and USBDP phy driver for rk3588.

----------------------------------------------------------------
Luca Ceresoli (1):
      arm64: defconfig: enable Rockchip RK3308 internal audio codec driver

Sebastian Reichel (2):
      arm64: defconfig: support Mali CSF-based GPUs
      arm64: defconfig: enable Rockchip Samsung USBDP PHY

 arch/arm64/configs/defconfig | 3 +++
 1 file changed, 3 insertions(+)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
