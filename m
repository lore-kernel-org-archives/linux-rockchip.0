Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6EECC3271E
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jul 2024 15:32:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6bcNP1+fskRanEYYgAbsDCy0ggoo++WN0J3jR9JbCss=; b=uEXRnyGbq+TkIo
	c1ERYfuK5R1EJpjzZmd3xb71xgZOJlsi9ItAEMl1VPb88hSx3UalQUJTdfmoVEziMQolNN2ll4+Lg
	pxssD6ZpsEZDFfphIK/v5qGaaCfq8YAxjsYWoJ9yCr7RlsGkCgWvBJzGkDvykNTryZDqP+qv5KJOx
	jFhngLD3G6N2mVFk8EdLUFGjB9FtV7wi4sHli1PpMBuYdkhdaZJ/jnbTltdP7POtyOH8O0nN/sp6m
	fGsup7HFXE58Es0A+CoCNlGRnQs/LysumZn/epmaRp/2M1aNi5kqizncoQYrafbP899Ciy+41qNZQ
	zqM9LyEA6odg+Q24IUlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQqLZ-00000004ER1-1q80;
	Mon, 08 Jul 2024 15:32:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQqLW-00000004EQE-473i;
	Mon, 08 Jul 2024 15:32:08 +0000
Received: from i5e8616d7.versanet.de ([94.134.22.215] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sQqLV-00021H-HO; Mon, 08 Jul 2024 17:32:05 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts32 changes for 6.11 #2
Date: Mon, 08 Jul 2024 17:32:04 +0200
Message-ID: <2169115.3Lj2Plt8kZ@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240708_083207_054678_E561D87E 
X-CRM114-Status: UNSURE (   8.42  )
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

The following changes since commit 313da6f69fa41d044b03f2ea37e56fe49f1e8a42:

  ARM: dts: rockchip: add #sound-dai-cells to hdmi node on rk3128 (2024-06-27 20:57:05 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.11-rockchip-dts32-2

for you to fetch changes up to 9c29e5d7a2d1d91c29976c0c8aa7f42780e4a254:

  ARM: dts: rockchip: Drop ethernet-phy-ieee802.3-c22 from PHY compatible string on edgeble-neu2 (2024-07-04 19:42:44 +0200)

----------------------------------------------------------------
Removal of a fallback ethernet-phy compatible that is not conformant
to the binding.

----------------------------------------------------------------
Marek Vasut (1):
      ARM: dts: rockchip: Drop ethernet-phy-ieee802.3-c22 from PHY compatible string on edgeble-neu2

 arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io.dts | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
