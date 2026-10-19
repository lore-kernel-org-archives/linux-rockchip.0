Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71EF8CCF2D6
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Oct 2026 09:24:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1j6cmxHmWsCEUVOUsfNNWNtgSP/WB8M4LaCUjhxxvP0=; b=WglAnWTbGQLyOx
	EMDs34tAs587L+JpECk1YSDgLqhQ6oYjGwQz6HLEW3j63Un7A21mWPVkq29VdEtEikvHFUD+V4ryK
	zKeG/dDJnwYTjzb83dlLu4l6PeDBCWsGkLU/zDtpx0pQEMlgDUnF4xH/euxXrl1AcFBEGIqzWXIUt
	MlaepGdoGB3wt2xr3tJgz/d9SrvFN9aKILA9Ale62R+amZlp2gvCBTRhkuAuMoz+8bqIZRH/c/iQf
	P/4WuiYR5mPJYv8V2W05DTuWT0IudTRFGyUHKNJ/azKUTUMr2gpoUJqqPm5I6KwRRX0D5pM20Y7R0
	2L04ZxNiHFH0ZNlA7g7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIjbj-00000006zDN-1haE;
	Mon, 19 Oct 2026 09:24:39 +0000
Received: from mailgate01.uberspace.is ([95.143.172.20])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIjbW-00000006zAf-0RWi
	for linux-rockchip@lists.infradead.org;
	Mon, 19 Oct 2026 09:24:36 +0000
Received: from devico.uberspace.de (devico.uberspace.de [185.26.156.185])
	by mailgate01.uberspace.is (Postfix) with ESMTPS id 51C8B610F1
	for <linux-rockchip@lists.infradead.org>; Mon, 19 Oct 2026 11:24:24 +0200 (CEST)
Received: (qmail 17388 invoked by uid 990); 19 Oct 2026 09:24:24 -0000
Authentication-Results: devico.uberspace.de;
	auth=pass (plain)
Received: from unknown (HELO unknown) (::1)
	by devico.uberspace.de (Haraka/3.1.1) with ESMTPSA; Mon, 19 Oct 2026 11:24:23 +0200
From: Leonard Lausen <leonard@lausen.nl>
To: ulfh@kernel.org,
	heiko@sntech.de
Cc: leonard@lausen.nl,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	detlev.casanova@collabora.com,
	finley.xiao@rock-chips.com,
	zhangqing@rock-chips.com,
	inindev@gmail.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	gahing@gahingwoo.com
Subject: [PATCH 0/2] Fix Panfrost boot hang on NanoPi M5
Date: Mon, 19 Oct 2026 09:24:14 +0000
Message-ID: <20261019092417.391522-1-leonard@lausen.nl>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-Rspamd-Bar: /
X-Rspamd-Report: SUSPICIOUS_RECIPS(1.5) MIME_GOOD(-0.1) MID_CONTAINS_FROM(1) BAYES_HAM(-2.99944) R_MISSING_CHARSET(0.5)
X-Rspamd-Score: -0.09944
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lausen.nl; s=uberspace;
	h=from:to:cc:subject:date;
	bh=opmJhQyRutddC51J+UVfKfOELmccvq4ueY+QZcg7O50=;
	b=xEVa71HfxgzTXjABTg3LFhDeiY+KPhHuBBLKFjWpvaMgE158Dm1ZrlJzK95jpAGL7N0fd7IpkM
	AqjSk9GAzbbvO5yPzF755FOljuK3bPGTtgofYiwuU8DtUV0MtFeae6tlaJg4XdbsMzwa9+bFJD+c
	R/kRHNdL46B9QjDvse8ZpRsOc9k48uDmwpOYZCOc4ZOSwQpeekfA9iYrxAQMqfmPkOf2rSGxRhKY
	hspsVJPtZW/jznh7ZeSKecyjW/BeW3xTAc5aVi758lFQgMbrOdUA3VPK/kuArPxDkHlqwAF37GBO
	wXgzwbs8r1ZBv/73yO5tMzFBSx2ndkgyS+xbP1J2po8Rbogrux5mo0HfWQeSjckAWA3yZ3yqMXn2
	1UhpHAyK4AYL1szvzY3RCtlZem9oNPMtah119Hi/pR6g2jmnmI/k9HwQDP2zsrNw0Sghv/20Yr+7
	yPXkb3muAca5Emc+XtN+tn1xmLSD4su6bOgkj9VmQ/LNCQ3QQfcQFCFxHYq3KGk3FnDZhfWcPWv5
	F/6JKMd5rzj0XvZfAEVOK88vPsVyDxeo5GTVCgoQhN4MX4IOu1qVMqkxPX6E0IPpjoMC5g/EUXQ0
	PcoIuKn73shWMzhh/mAaaGqC8PjKrF9l+bxUSfWr+nkFUC2m6Ht/DLg7o3Po7cMQ7ndBLTMEt1L2
	0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_022426_307158_19C13089 
X-CRM114-Status: UNSURE (   5.09  )
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

On the NanoPi M5, boot hangs during Panfrost initialization. Before this
fix, booting required blacklisting Panfrost on the kernel command line.
Loading Panfrost after boot reports a GPU power-domain acknowledgment
timeout.

Enable regulator management for the RK3576 GPU power domain and connect
its supply to the NanoPi M5 GPU rail.

The regulator-capable descriptor is based on Jiaxing Hu's RK3576 NPU work:
https://lore.kernel.org/all/20260924102135.92217-10-gahing@gahingwoo.com/

On the NanoPi M5 with CONFIG_DRM_PANFROST=m, boot and Panfrost
initialization succeed, and GPU workloads run successfully. W=1 driver
and DTB builds and schema validation pass.

Leonard Lausen (2):
  pmdomain: rockchip: Manage the RK3576 GPU domain supply
  arm64: dts: rockchip: Fix GPU domain supply on NanoPi M5

 arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts |  4 ++++
 arch/arm64/boot/dts/rockchip/rk3576.dtsi          |  2 +-
 drivers/pmdomain/rockchip/pm-domains.c            | 10 +++++++---
 3 files changed, 12 insertions(+), 4 deletions(-)


base-commit: c03c1a14507dfaf8b856c2608f9ac216021fc222
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
