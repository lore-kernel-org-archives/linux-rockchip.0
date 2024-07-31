Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7671C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jul 2024 20:42:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Mz+txm9IDfttC8UjDyCKgijtATDpiBQfmXC32+dSDfU=; b=huinH7J7Ur4DX6
	0XglTLVPNfIQryvBWSk2BPwWpKX86QxuEAM0kQhR/M4wOTBxb8IqRd++ZDpCeyCWjgnvogsvjRLdE
	bNKQ7CJW0LEfsKiIo7qcTuTll//7uUI7Wz0nGehzMXeOtU0NDuAtzofrDfUQqMSXKzU31sqSWIaJO
	VVJas2wr9AB0aw6LzMl30kpZH9fCEJ4jvcrmvU9F9H6So6/CU1QPSLaVUTbd08yBpeBQLPY80mzQn
	7CHu96gqUiT7lV3CvJ+wU0cEPL0ljS0uzAptSXvhKiEGnTCL2EuML6jppO/IoVZW6d4dn5WpGssRE
	aq58mZJtwdiczyl4t2Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZG9S-00000002U37-2pHr;
	Wed, 31 Jul 2024 20:42:26 +0000
Received: from xn--80adja5bqm.su ([198.44.140.76])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZG9Q-00000002U2B-1T3U
	for linux-rockchip@lists.infradead.org;
	Wed, 31 Jul 2024 20:42:25 +0000
Received: by xn--80adja5bqm.su (Postfix, from userid 1000)
	id DCAA940460CC; Wed, 31 Jul 2024 20:41:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 xn--80adja5bqm.su DCAA940460CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mediatomb.cc;
	s=default; t=1722458505;
	bh=pLFkXrl/tfOaC1AuP3yIh/N5wovBwZwgVp0ssPKBpoU=;
	h=From:To:Cc:Subject:Date:From;
	b=rpvo7j77R67z4vuusATljVhCH172QyoCoGg/d846AB/5hth5QniNLPI/DjDFZg/sg
	 P/SXx9NCkCn49YTFo5lbjQhGg7iCWRZtkVrL+PKWZhW+0osuj+qz3bPVQBwCkqxFgh
	 nhRDnvOfhTQzWK0mX5S+8lQTrifu13x5g8/F+gNuniSm67Jl3dSGZSRx34hibqFasD
	 KVXMWNN1taxcZbSpwnZcGrgIvx3QtO0UVnxiM2WOmHMFonrchGMYJeN7VcD4mamWRU
	 SejMhM6YTV/p+ijY3sbj7YuEB6BISUvEYt6eznsZN1KBZo/hnaO6F/I8DHxVzSwl69
	 1vKDdjeBe4ZAQ==
From: Sergey Bostandzhyan <jin@mediatomb.cc>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	Sergey Bostandzhyan <jin@mediatomb.cc>
Subject: [PATCH 0/2] Add DTS for NanoPi R2S Plus
Date: Wed, 31 Jul 2024 20:41:24 +0000
Message-Id: <20240731204126.8689-1-jin@mediatomb.cc>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_134224_580426_ED2DA930 
X-CRM114-Status: GOOD (  10.27  )
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

Hi,

I noticed, that a DTS for the R2S Plus is not yet available, while the
R2S is already there. The only difference is, that the Plus version has an
eMMC, so we can reuse the R2S definitions and only add an eMMC block, which
I copied from the DTS in the friendlyarm/uboot-rockchip repo.

I applied the same DTS changes to u-boot and tested u-boot 2024.04 with
kernel 6.6.35 on an R2S Plus which I have here and the eMMC became visible
and usable.

Kind regards,
Sergey


Sergey Bostandzhyan (2):
  arm64: dts: rockchip: Add DTS for FriendlyARM NanoPi R2S Plus
  dt-bindings: arm: rockchip: Add NanoPi R2S Plus

 .../devicetree/bindings/arm/rockchip.yaml     |  1 +
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/rk3328-nanopi-r2s-plus.dts   | 31 +++++++++++++++++++
 3 files changed, 33 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts

-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
