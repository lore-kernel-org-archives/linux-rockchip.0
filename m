Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1E4CCAC5A7
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Sep 2025 21:02:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qTLWEzoz6Ua2zuqfl7yWcD9EEeOW3yobn0/OyDz6+VM=; b=kga1fl7hQjy/WA
	r2XGpG9P6ckKf9O8GAVIthU4I0DMXMonF4KTREyBbJgkv3NBiy3nmG+go4G4Ua0CPYw+C+XjzyXqg
	T3dVxLvX7twNLqnIIrZoDLNOTcrgVbcOWreDXiU6iH2tq209aT2bAZwzwkyd6nHgrUg4vzRt8VZ/f
	e+xHJ7hxf1UD1uC9btvrpwSyoV97CeDNWGVcBxkngNmXH+OV1MFvoXkW/YX+ixYIMZyU5S8e17cYr
	hP5qdyrk/zwfnwiLTAqpPs1t2J5gllOfsXqvOHc25kqvlkO2wDy61P1EMcoClTfIByrvsY3Fazb1Y
	F9PmvClCsMRFTrtkoXiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0RCH-00000008CXm-16HL;
	Sun, 21 Sep 2025 21:02:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0RCE-00000008CX4-0iGD;
	Sun, 21 Sep 2025 21:02:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:In-Reply-To:References;
	bh=gp/wZE0fDakAICLTarIzJLK2I+Hr8K7LrcHSpG0GvCA=; b=yeMChb36K7dkO4z2vnZJtQClrS
	hGJYFGSy9y2EgFQWXC8jsN1QTAOIIh40d7dK9kj4mdTqOy3aG7s3QrMzUX0MWd6z/tPYCKdtVjCHr
	lLQ+GwMMoth49XBHM9ORoFnAPquOXEcInzpK/9kPPRUGuQGcDA1qa3dnO2R7Vg1+YbA7T3cmzk6HX
	3f3hVUBdo8GV5S2SHeT49yuhuOlYw7tPSJVrFPVZyGKT7BrycNoId065KpH2vyXKWNdsBapdbQy0l
	GUdi+GHO1REIFU9UiSfAXzKSgEE91V0GGQXQietNje7eaC5Mwes0YY6jMv8dqgdKnNKXLwg4Lm+XU
	29eq05OQ==;
Received: from i53875add.versanet.de ([83.135.90.221] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1v0RCC-0007dq-GS; Sun, 21 Sep 2025 23:02:08 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip soc32 changes for 6.18 #1
Date: Sun, 21 Sep 2025 23:02:07 +0200
Message-ID: <6025175.zQ0Gbyo6oJ@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250921_140210_218581_56271E66 
X-CRM114-Status: UNSURE (   9.35  )
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

The following changes since commit 8f5ae30d69d7543eee0d70083daf4de8fe15d585:

  Linux 6.17-rc1 (2025-08-10 19:41:16 +0300)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.18-rockchip-arm32-1

for you to fetch changes up to a1b20e062245571c128ec521c4df56ad1bff9bd0:

  ARM: rockchip: remove REGULATOR conditional to PM (2025-09-18 21:05:39 +0200)

----------------------------------------------------------------
Commit d1bef995f61a ("ARM: rockchip: force built-in regulator support for PM")
introduced the REGULATOR if PM dependency for the suspend code, while
commit d1558dfd9f22 ("ARM: rockchip: Force CONFIG_PM on Rockchip systems")
later always enabled PM.

So we can simplify the REGULATOR dependency by dropping the if PM.

----------------------------------------------------------------
Mikko Rapeli (1):
      ARM: rockchip: remove REGULATOR conditional to PM

 arch/arm/mach-rockchip/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
